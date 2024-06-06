using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using System.IO;
using Ink;

public class DialogueVariables
{
    // Create a dictionary to save key/value pairs
    public Dictionary<string, Ink.Runtime.Object> variables { get; private set; }

    //Temporary solution - Tristyn please clean this up
    public string lookingForName = "is_ready";
    public object wantValue = "";
    public string result = "";

    public string lookingForName2 = "roof";
    public object wantValue2 = "";
    public string result2 = "";

    public string lookingForName3 = "key";
    public object wantValue3 = "";
    public string result3 = "";

    // Script that compiles the globals ink file into JSON
    // Adds all current variables and compiles when a value is changed
    public DialogueVariables(TextAsset loadGlobalsJSON)
    {
        // create the story
        Story globalVariablesStory = new Story(loadGlobalsJSON.text);

        // initialize the dictionary
        variables = new Dictionary<string, Ink.Runtime.Object>();
        foreach (string name in globalVariablesStory.variablesState)
        {
            Ink.Runtime.Object value = globalVariablesStory.variablesState.GetVariableWithName(name);
            variables.Add(name, value);
            Debug.Log("Initialized global dialogue variable: " + name + " = " + value);
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
        if(name == lookingForName){
            wantValue = value;
            result = wantValue.ToString();
        }

        if(name == lookingForName2){
            wantValue2 = value;
            result2 = wantValue2.ToString();
        }

        if(name == lookingForName3){
            wantValue3 = value;
            result3 = wantValue3.ToString();
        }

    
        //Debug.Log("YOO LOOK AT THIS: " + wantValue.ToString());
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
