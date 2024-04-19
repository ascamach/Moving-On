using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

// https://youtu.be/JivuXdrIHK0?si=zZpJQfOekIcNn1bt
// pause menu tutorial that I followed
// thx to addison for starting the pause button for making it work with esc key
// thx to william for making it able to not trigger escape when in the games option menu which wouldve
// made the game keep playing but option screen still open

public class PauseMenu : MonoBehaviour
{
    public GameObject PauseMenuUI;
    public bool paused = false;
    [SerializeField] GameObject optionsUI; //add this


    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape)) {
            if (paused) {
                Continue();
            } else if (!paused) {
                Pause();
            }
        }
    }

    public void Continue() {
        PauseMenuUI.SetActive(false);
        optionsUI.SetActive(false); //add this
        Time.timeScale = 1f; 
        paused = false;
    }

    void Pause() {
        PauseMenuUI.SetActive(true);
        Time.timeScale = 0f;
        paused = true;
    }
}