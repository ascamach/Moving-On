using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PauseMenu : MonoBehaviour
{
    public GameObject PauseMenuUI;
    bool paused = false;

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

    void Pause() {
        paused = true;
        Time.timeScale = 0f;
        PauseMenuUI.SetActive(true);
    }

    void Continue() {
        paused = false;
        Time.timeScale = 1f;
        PauseMenuUI.SetActive(false);
    }
}
