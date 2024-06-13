using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]

public class gameData
{

    public serializableDictionary<string, bool> collectablesCollected;
    public bool[] levelsUnlock;
    public bool[] levelsCompleted;
    public string language;
    public bool tutorialCompleted;

    public gameData()
    {
        levelsUnlock = new bool[] { true, false, false };
        levelsCompleted = new bool[] { false, false, false };
        collectablesCollected = new serializableDictionary<string, bool>();
        tutorialCompleted = false;
        language = "English";
        
    }
}
