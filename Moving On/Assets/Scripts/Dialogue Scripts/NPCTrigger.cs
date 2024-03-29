using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCTrigger : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    private int timesInteracted = 0;

    private bool playerInRange;

    private void Awake()
    {
        playerInRange = false;
        visualCue.SetActive(false);
    }

    private void Update()
    {
        if (playerInRange && !DialogueManager.GetInstance().dialoguePlaying)
        {
            visualCue.SetActive(true);
            if (Input.GetKeyDown(KeyCode.F))
            {
                DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
                timesInteracted++;
            }
        } else
        {
            visualCue.SetActive(false);
        }

        if (timesInteracted >= 4)
        {
            depressionLevelManager.Instance.keyObtained = true;
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
