using UnityEngine;
using UnityEngine.SceneManagement;

// made the text red with this guide 
// https://www.youtube.com/watch?v=kWAd7Qtn_Tw

// disclaimer scene was set up following this 
// https://chat.openai.com/share/aa87c400-776e-4c77-8b32-1146ca94433f

public class disclaimerDisplay : MonoBehaviour
{
    public string MainMenu;
    public void LoadMainMenu()
    {
        SceneManager.LoadSceneAsync("introDream");
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Space)) {
            SceneManager.LoadSceneAsync("introDream");
        }
    }
}