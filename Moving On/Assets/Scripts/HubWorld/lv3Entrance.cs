using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class lv3Entrance : MonoBehaviour
{
    private bool lvUnlock;
    private bool inEntrance;

    //Script to Enter into Independence Level
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;
    [SerializeField] private SpriteRenderer visualCueColor;

    // Start is called before the first frame update
    void Start()
    {
        lvUnlock = levelManager.Instance.levelsUnlocked[2];
        inEntrance = false;
        visualCue.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.F) && inEntrance)
        {
            Debug.Log("Entering Level 4...");
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
