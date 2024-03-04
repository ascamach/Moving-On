using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class lv1Entrance : MonoBehaviour
{
    private bool lvUnlock;
    private bool inEntrance;
    private SpriteRenderer rend;

    private void Start()
    {

        lvUnlock = levelManager.Instance.levelsUnlocked[0];

        inEntrance = false;
        rend = GetComponent<SpriteRenderer>();
        rend.color = Color.black;
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.F) && inEntrance)
        {
            Debug.Log("Entering Level 1...");
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.tag == "Player" && lvUnlock)
        {
            rend.color = Color.green;

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
        }
    }
}
