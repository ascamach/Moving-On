using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class levelManager : MonoBehaviour, iDataPersistence
{
    public static levelManager Instance;
    public bool[] levelsCompleted = new bool[] { false, false};
    public bool[] levelsUnlocked = new bool[] { true, false};
    public bool tutorialCompleted = false;
    private void Awake()
    {
        if (Instance != null)
        {
            Destroy(gameObject);
        }
        else
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
    }

    public void LoadData(gameData data)
    {
        levelsCompleted = data.levelsCompleted;
        levelsUnlocked = data.levelsUnlock;
        tutorialCompleted = data.tutorialCompleted;
    }

    public void SaveData(ref gameData data)
    {
        data.levelsCompleted = levelsCompleted;
        data.levelsUnlock = levelsUnlocked;
        data.tutorialCompleted = tutorialCompleted;
    }


}
