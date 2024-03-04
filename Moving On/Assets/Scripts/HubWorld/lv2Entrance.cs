using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class lv2Entrance : MonoBehaviour
{
    private bool lvUnlock;
    private bool inEntrance;
    private SpriteRenderer rend;
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;

    private void Start()
    {

        lvUnlock = levelManager.Instance.levelsUnlocked[1];

        inEntrance = false;
        rend = GetComponent<SpriteRenderer>();
        rend.color = Color.black;
        visualCue.SetActive(false);
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.F) && inEntrance)
        {
            Debug.Log("Entering Lv.2...");
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Player" && lvUnlock)
        {
            rend.color = Color.green;
            visualCue.SetActive(true);

        }
        else if (collision.tag == "Player" && lvUnlock == false)
        {
            rend.color = Color.red;
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
            rend.color = Color.black;
            visualCue.SetActive(false);
        }
    }
}
