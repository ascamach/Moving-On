using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class checkTutorial : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        if (!levelManager.Instance.tutorialCompleted)
        {
            SceneManager.LoadSceneAsync("introDream");
        }
        else
        {
            SceneManager.LoadSceneAsync("hubWorld");
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
