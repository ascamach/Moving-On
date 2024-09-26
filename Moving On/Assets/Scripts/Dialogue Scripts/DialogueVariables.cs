using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using System.IO;
using Ink;
using Unity.VisualScripting;
using UnityEditor.Experimental.GraphView;

public class DialogueVariables
{
    // Create a dictionary to save key/value pairs
    public Dictionary<string, Ink.Runtime.Object> variables { get; private set; }

    // TESTING DATA PERSISTENCE
    public static string savePath = Application.persistentDataPath + "/globalsData.json";
    // Story globalVariablesStory;

    private Story globalVariablesStory;
    private const string saveVariablesKey = "INK_VARIABLES";

    // -------------------------------------------
    public string isReady = "is_ready"; //originally lookingForName
    public object inkValue1 = ""; //originally wantValue
    public string unityValue1 = ""; //originally result

    public string larryInteractions = "larry_interactions";
    public object inkValue2 = "";
    public string unityValue2 = "";

    // Script that compiles the globals ink file into JSON
    // Adds all current variables and compiles when a value is changed
    public DialogueVariables(TextAsset loadGlobalsJSON)
    {
        globalVariablesStory = new Story(loadGlobalsJSON.text);

        if (PlayerPrefs.HasKey(saveVariablesKey))
        {
            string jsonState = PlayerPrefs.GetString(saveVariablesKey);
            globalVariablesStory.state.LoadJson(jsonState);
        }

        // initialize the dictionary
        variables = new Dictionary<string, Ink.Runtime.Object>();
        foreach (string name in globalVariablesStory.variablesState)
        {
            Ink.Runtime.Object value = globalVariablesStory.variablesState.GetVariableWithName(name);
            variables.Add(name, value);
            Debug.Log("Initialized global dialogue variable: " + name + " = " + value);
        }
    }

    public void SaveVariables()
    {
        if (globalVariablesStory != null)
        {
            VariablesToStory(globalVariablesStory);
            PlayerPrefs.SetString(saveVariablesKey, globalVariablesStory.state.ToJson());
        }
    }

    // Function to check if a variable is changed during a story instance
    public void StartListening(Story story)
    {
        VariablesToStory(story);
        story.variablesState.variableChangedEvent += VariableChanged;
    }

    // Stops the listener when the current story ends
    public void StopListening(Story story) 
    {
        story.variablesState.variableChangedEvent -= VariableChanged;
    }

    // Changes the variable name and value in the dictionary
    private void VariableChanged(string name, Ink.Runtime.Object value)
    {
        if (variables.ContainsKey(name))
        {
            variables.Remove(name);
            variables.Add(name, value);
        }

        Debug.Log("Variable changed: " + name + "=" + value);
        if(name == isReady){
            inkValue1 = value;
            unityValue1 = inkValue1.ToString();
        }

        if(name == larryInteractions){
            inkValue2 = value;
            unityValue2 = inkValue2.ToString();
        }
    }
 
    // Function for different stories to reference the dictionary
    // if any values are accessed or not.
    private void VariablesToStory(Story story)
    {
        foreach(KeyValuePair<string, Ink.Runtime.Object> variable in variables)
        {
            story.variablesState.SetGlobal(variable.Key, variable.Value);
        }
    }
}
