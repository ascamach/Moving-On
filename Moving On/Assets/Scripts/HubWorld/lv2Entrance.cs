using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class lv2Entrance : MonoBehaviour
{

    //Script to Enter into Anger Level
    private bool lvUnlock;
    private bool inEntrance;
    
    [Header("Visual Cue")]

    [SerializeField] private GameObject visualCue;
    [SerializeField] private SpriteRenderer visualCueColor;

    private void Start()
    {

        lvUnlock = levelManager.Instance.levelsUnlocked[1];

        inEntrance = false;
        
        visualCue.SetActive(false);
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.F) && inEntrance)
        {
            Debug.Log("Entering Lv.2...");
            SceneManager.LoadSceneAsync("EndingScene");
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Player" && lvUnlock)
        {
            visualCueColor.color = Color.green;
            
            visualCue.SetActive(true);

        }
        else if (collision.tag == "Player" && lvUnlock == false)
        {
            
            visualCueColor.color = Color.red;
            visualCue.SetActive(true);
        }
    }

    private void OnTriggerStay2D(Collider2D collision)
    {
        if (collision.tag == "Player" && lvUnlock)
        {
            inEntrance = true;

        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.tag == "Player")
        {
            inEntrance = false;
            
            visualCueColor.color = Color.white;
            visualCue.SetActive(false);
        }
    }
}
