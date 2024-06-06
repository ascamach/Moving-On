using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GlobalVariable : MonoBehaviour
{

    public TextAsset globalInk;
    public Ink.Runtime.Story currentStory;

    private static GlobalVariable instance;
    public DialogueManager want;
    public string bitch = "";
    //public string bitch2 = "";
   
    public bool is_ready = false;

    private void Awake()
    {
        if (instance != null)
        {
            Debug.LogWarning("More than one instance of Dialogue Manager found in the scene.");
        }
        instance = this;
        DontDestroyOnLoad(this);

        currentStory = new Ink.Runtime.Story(globalInk.text);
    }

    // Start is called before the first frame update
    void Start()
    {
        //want = DialogueVariables.FindWithTag("Dialogue Manager")
        //result = "";
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        bitch = want.dialogueVariables.result;
        //if(bitch != ""){
            //Debug.Log(bitch);
        //}
        //Debug.Log("LOOK AGAIN: " + want.dialogueVariables.result);        
    }
}
