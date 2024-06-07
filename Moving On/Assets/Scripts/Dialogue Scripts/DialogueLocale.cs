using Ink.Runtime;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Localization.Settings;

public class DialogueLocale : MonoBehaviour
{
    [SerializeField] private TextAsset globalsJSON;

    private Story globalsFile;

    private string test;

    public void ChangeLocaleID()
    {
        globalsFile = new Story(globalsJSON.text);

        string localeID = LocalizationSettings.SelectedLocale.Identifier.Code;

        globalsFile.variablesState["localeID"] = localeID;

        test = DialogueManager.GetInstance().GetVariableState("localeID");

        Debug.Log(test);
    }
}
