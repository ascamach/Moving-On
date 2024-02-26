using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

// https://www.youtube.com/watch?v=FfaG9TvCe5g - menu ui tutorial that was followed

public class StartGameButton : MonoBehaviour
{
    public int gameStartScene;
    // Start is called before the first frame update
    public void StartGame()
    {
        SceneManager.LoadScene("SampleScene");
    }
}
