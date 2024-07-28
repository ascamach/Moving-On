using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class OpeningSceneDialogue : MonoBehaviour
{
    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    public string scene;

    private bool firstCheck = false;

    public GameObject dialogueUI;

    private void Awake()
    {
        dialogueUI.SetActive(false);
    }

    private void Start()
    {
        if (!DialogueManager.GetInstance().dialoguePlaying)
        {
            DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
        }
    }

    // Update is called once per frame
    private void Update()
    {
        if (!DialogueManager.GetInstance().dialoguePlaying)
        {
            //Debug.Log("hello world please work.");
            firstCheck = true;
            dialogueUI.SetActive(false);
            SceneManager.LoadScene(scene);
        }
    }
}
