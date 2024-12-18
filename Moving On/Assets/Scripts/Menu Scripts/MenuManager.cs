using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.Localization.Settings;
using UnityEngine.Localization;

// https://www.youtube.com/watch?v=FfaG9TvCe5g - menu ui tutorial that was followed

public class MenuManager : MonoBehaviour
{
    [SerializeField] private Button startGameButton;
    [SerializeField] private Button continueGameButton;
    //[SerializeField] private Button how2PlayButton;
    //[SerializeField] private Button creditsButton;
    //[SerializeField] private Button quitButton;
    //[SerializeField] private Button settingButton;


    private void Start()
    {
        if (!dataPersistenceManager.instance.HasGameData())
        {
            continueGameButton.interactable = false;
            
        }
    }

    public void QuitGame()
    {
        Application.Quit();
    }

    public void LoadScene(string sceneName)
    {
        SceneManager.LoadScene(sceneName);
    }

    public void StartGame()
    {
        disableMenuButton();
        //how2PlayButton.interactable = false;
        dataPersistenceManager.instance.NewGame();
        PlayerPrefs.DeleteKey("INK_VARIABLES");
        SceneManager.LoadSceneAsync("disclaimerScene");
        
    }

    public void continueGame()
    {
        SceneManager.LoadSceneAsync("tutorialCheck");
    }

    private void disableMenuButton()
    {
        startGameButton.interactable = false;
        continueGameButton.interactable = false;
        //how2PlayButton.interactable = false;
        //creditsButton.interactable = false;
        //quitButton.interactable = false;
        //settingButton.interactable = false;
    }
}
