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
        if (Input.GetKeyDown(KeyCode.Space))
        {
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
            dialogueText.text = currentStory.Continue();
            DisplayChoices();
        }
        // If the next line in the Ink file is END, end the dialogue mode.
        else
        {
            ExitDialogueMode();
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
        currentStory.ChooseChoiceIndex(choiceIndex);
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
