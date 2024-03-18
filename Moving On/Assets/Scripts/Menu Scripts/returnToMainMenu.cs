using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class InGameButtonQuitButton : MonoBehaviour
{
    public int gameStartScene;
    // Start is called before the first frame update
    public void GoToMainMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }
}
