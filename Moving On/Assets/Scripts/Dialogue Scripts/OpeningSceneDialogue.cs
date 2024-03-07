using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class OpeningSceneDialogue : MonoBehaviour
{
    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    private bool firstCheck = false;

    public GameObject dialogueUI;

    private void Awake()
    {
        dialogueUI.SetActive(false);
    }

    // Update is called once per frame
    private void Update()
    {
        if (!DialogueManager.GetInstance().dialoguePlaying)
        {
            DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
        } 

        if (DialogueManager.GetInstance().dialogueFinished)
        {
            dialogueUI.SetActive(false);
            SceneManager.LoadScene("tutorialScene");
        }
    }
}
