using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.EventSystems;

public class DialogueManager : MonoBehaviour
{
    // Variables needed for Dialogue UI
    // dialogueUI: UI game object
    // dialogueText: TMP text associated with the UI
    [Header("Dialogue UI")]
    [SerializeField] private GameObject dialogueUI;
    [SerializeField] private TextMeshProUGUI dialogueText;
    [SerializeField] private TextMeshProUGUI nameplateText;
    [SerializeField] private GameObject continueIcon;

    public Story currentStory;

    [Header("Load Globals JSON")]
    [SerializeField] private TextAsset loadGlobalsJSON;

    // Variables needed for Choices UI
    [Header("Choices UI")]
    [SerializeField] private GameObject[] choices;
    private TextMeshProUGUI[] choicesText;

    // Instance of dialogue playing
    private static DialogueManager instance;
    public bool dialoguePlaying { get; private set; }

    public bool dialogueFinished { get; private set; }

    private DialogueVariables dialogueVariables;

    private const string speaker_tag = "speaker";

    private Coroutine displayLineCoroutine;

    private bool canContinueLines = false;

    [Header("Dialogue Typing Speed")]
    [SerializeField] private float typingSpeed = 0.04f;

    private void Awake()
    {
        // Checks if there is more than one dialogue manager in the scene
        if (instance != null)
        {
            Debug.LogWarning("More than one instance of Dialogue Manager found in the scene.");
        }
        instance = this;

        dialogueVariables = new DialogueVariables(loadGlobalsJSON);
    }

    public static DialogueManager GetInstance()
    {
        return instance;
    }

    private void Start()
    {
        // Hides Dialogue UI at start of game
        dialoguePlaying = false;
        dialogueUI.SetActive(false);

        // Gets all choices text
        choicesText = new TextMeshProUGUI[choices.Length];
        int index = 0;
        foreach( GameObject choice in choices)
        {
            // Grabs the text of the choices buttons (children of the buttons)
            choicesText[index] = choice.GetComponentInChildren<TextMeshProUGUI>();
            index++;
        }
    }

    private void Update()
    {
        // Return if no dialogue is playing
        if(!dialoguePlaying)
        {
            return;
        }

        // If dialogue is playing, the player can press space to progress through dialogue
        if (canContinueLines == true
            && currentStory.currentChoices.Count == 0 
            && Input.GetKeyDown(KeyCode.Space))
        {
            // Debug.Log("Moving to next dialogue");
            canContinueLines = false;
            ContinueStory();
        }
    }

    public void EnterDialogueMode(TextAsset inkJSON)
    {
        // Load the JSON file associated with the game object 
        // Shows the Dialogue UI
        currentStory = new Story(inkJSON.text);
        dialoguePlaying = true;
        dialogueUI.SetActive(true);

        dialogueVariables.StartListening(currentStory);

        ContinueStory();
    }

    private void ExitDialogueMode()
    {
        dialogueVariables.StopListening(currentStory);
        // After dialogue is finished, hide the Dialogue UI again
        // and set the dialogue text to nothing.
        dialoguePlaying = false;
        dialogueUI.SetActive(false);
        dialogueText.text = "";

        dialogueFinished = true;
    }

    private void ContinueStory()
    {
        // If the dialogue is NOT on the last line, we can continue the story.
        if (currentStory.canContinue)
        {
            // Set text of current line
            if (displayLineCoroutine != null)
            {
                StopCoroutine(displayLineCoroutine);
            }
            displayLineCoroutine = StartCoroutine(DisplayLine(currentStory.Continue()));

            HandleTags(currentStory.currentTags);
        }
        // If the next line in the Ink file is END, end the dialogue mode.
        else
        {
            ExitDialogueMode();
        }
    }

    private IEnumerator DisplayLine(string line)
    {
        Debug.Log("-------------------------");

        Debug.Log("Start DisplayLine coroutine. State of canContinue Lines:" + canContinueLines);
        // Clear previous dialogue
        dialogueText.text = "";

        canContinueLines = false;

        Debug.Log("Changing canContinueLines here. State of canContinue Lines:" + canContinueLines);
        HideChoices();

        continueIcon.SetActive(false);

        // Display each letter in the current line
        foreach(char letter in line.ToCharArray())
        {
            // Display whole line if the player presses the interact button
            // during the typing effect.
            if (Input.GetKeyDown(KeyCode.F))
            {
                Debug.Log("Pressing F here.");
                dialogueText.text = line;
                break;
            } 
            dialogueText.text += letter;
            yield return new WaitForSeconds(typingSpeed);
            // Debug.Log("Dialogue Finished");
        }

        continueIcon.SetActive(true);
        // If choices are available, show all available choices
        DisplayChoices();
        canContinueLines = true;

        Debug.Log("End DisplayLine coroutine. State of canContinue Lines:" + canContinueLines);
        Debug.Log("Dialogue Finished.\n-------------------------");
    }

    private void HandleTags(List<string> currentTags)
    {
        foreach (string tag in currentTags)
        {
            string[] splitTag = tag.Split(":");
            if (splitTag.Length != 2)
            {
                Debug.Log("Tag could not be properly parsed:" + tag);
            }
            string tagKey = splitTag[0].Trim();
            string tagValue = splitTag[1].Trim();

            switch (tagKey)
            {
                case speaker_tag:
                    nameplateText.text = tagValue;
                    break;
                default:
                    Debug.Log("Tag parsed but not implemented.");
                    break;
            }
        }
    }

    private void DisplayChoices()
    {
        List<Choice> currentChoices = currentStory.currentChoices;

        // Checks if there are more choices than the number of UI buttons
        if (currentChoices.Count > choices.Length)
        {
            Debug.Log("More choices than the UI supports. Number of choices given:" + currentChoices.Count);
        }

        int index = 0;
        // Loads and initializes all available choices
        foreach(Choice choice in currentChoices)
        {
            choices[index].gameObject.SetActive(true);
            choicesText[index].text = choice.text;
            index++;
        }

        for (int i = index; i < choices.Length; i++)
        {
            choices[i].gameObject.SetActive(false);
        }

        // Starts the function to have the first choice be defaulted.
        // This allows the player to move between the choices when dialogue is playing.
        StartCoroutine(selectFirstChoice());
    }

    private void HideChoices()
    {
        foreach(GameObject choice in choices)
        {
            choice.SetActive(false);
        }
    }

    private IEnumerator selectFirstChoice()
    {
        // Defaults the first selected choice as the first choice in our list
        EventSystem.current.SetSelectedGameObject(null);
        yield return new WaitForEndOfFrame();
        EventSystem.current.SetSelectedGameObject(choices[0]);
    }

    public void MakeChoice(int choiceIndex)
    {
        // Function that takes the index and links it to the button used in the choices
        if (canContinueLines)
        {
            currentStory.ChooseChoiceIndex(choiceIndex);

            ContinueStory();
        }
    } 

    public Ink.Runtime.Object GetVariableState (string variableName)
    {
        Ink.Runtime.Object variableValue = null;
        dialogueVariables.variables.TryGetValue(variableName, out variableValue); 
        if (variableValue == null)
        {
            Debug.LogWarning("Ink variable not found: " + variableName);
        }
        return variableValue;
    }
}
