using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization.Settings;

public class DialogueLocale : MonoBehaviour
{
    [SerializeField] private TextAsset globalsJSON;

    private Story globalsFile;
    private DialogueVariables dialogueVariables;

    private void Awake()
    {
        dialogueVariables = new DialogueVariables(globalsJSON);
    }

    public void ChangeLocaleID(string localeID)
    {
        globalsFile = new Story(globalsJSON.text);

        dialogueVariables.StartListening(globalsFile);

        globalsFile.variablesState["localeID"] = localeID;

        dialogueVariables.StopListening(globalsFile);
    }
}
