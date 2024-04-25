using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCTrigger : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    [Header("Drag the NPC object that this script is \nattached to down here")]
    [SerializeField] private GameObject npc;

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
        //Depression Level Checks Start Here
        if (timesInteracted >= 1 && npc.name == "Rowan NPC")
        {
            depressionLevelManager.Instance.doughnutsRecieved = true;
        }

        if (timesInteracted >= 4 && npc.name=="LarryNPC")  //This check to see if we are actually interacting with Larry and if we have interacted 4 times w/ larry
        {
            depressionLevelManager.Instance.keyObtained = true;
        }
        //Depression Level Checks End Here
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
