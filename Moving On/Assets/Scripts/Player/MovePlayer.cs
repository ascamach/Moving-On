using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovePlayer : MonoBehaviour
{
    public GameObject player;

    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;

    [Header("New Position")]
    [SerializeField] private Vector3 newPosition;

    [Header("Cameras")]
    [SerializeField] private GameObject upstairsCam;
    [SerializeField] private GameObject downstairsCam;

    private bool playerInRange;

    private void Awake()
    {
        playerInRange = false;
        visualCue.SetActive(false);
        upstairsCam.SetActive(true);
        downstairsCam.SetActive(false);
    }

    private void Update()
    {
        if (playerInRange)
        {
            visualCue.SetActive(true);
            if (Input.GetKeyDown(KeyCode.F))
            {
                upstairsCam.SetActive(!upstairsCam.activeInHierarchy);
                downstairsCam.SetActive(!downstairsCam.activeInHierarchy);
                player.transform.position = newPosition;
            }
        }
        else
        {
            visualCue.SetActive(false);
        }
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            playerInRange = true;
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.gameObject.tag == "Player")
        {
            playerInRange = false;
        }
    }
}
