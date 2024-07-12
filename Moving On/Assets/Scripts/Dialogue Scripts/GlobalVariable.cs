using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlobalVariable : MonoBehaviour
{

    public TextAsset globalInk;
    public Ink.Runtime.Story currentStory;

    private static GlobalVariable instance;
    public DialogueManager dialogueManager; //originally want
    public string isReadystr = "";
   
    public bool is_ready = false;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("More than one instance of Dialogue Manager found in the scene.");
            Destroy(gameObject);
        }
        else
        {
            instance = this;
            DontDestroyOnLoad(this);
        }
        

        currentStory = new Ink.Runtime.Story(globalInk.text);
    }

    // Start is called before the first frame update
    void Start()
    {
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if (!dialogueManager)
        {
            dialogueManager = GameObject.FindWithTag("Dialogue Manager").GetComponent<DialogueManager>();
        }
        isReadystr = dialogueManager.dialogueVariables.unityValue1;      
    }
}
