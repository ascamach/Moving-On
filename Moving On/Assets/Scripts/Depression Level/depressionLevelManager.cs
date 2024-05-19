using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class depressionLevelManager : MonoBehaviour
{
    public static depressionLevelManager Instance;

    //Variables Needed for Depression Level
    public int playerSpawn = 0;
    public bool keyObtained = false;
    public bool houseFirstTrigger = false;
    public bool doughnutsRecieved = false;
    public bool roofFirstTrigger = false;

    //Variables to check what scene we're currently in
    private Scene currentScene;
    private string sceneName;

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

    private void Update()
    {
        currentScene = SceneManager.GetActiveScene();
        sceneName = currentScene.name;
        if(sceneName == "MainMenu")
        {
            Debug.Log("No Longer in Depression Level, reset and destroy Object");
            playerSpawn = 0;
            keyObtained = false;
            houseFirstTrigger = false;
            doughnutsRecieved = false;
            roofFirstTrigger = false;
            Destroy(gameObject);
        }
    }
}
