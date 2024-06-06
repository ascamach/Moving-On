using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playSoundRoomMusic : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;
    private bool playerInRange;
    private bool isGramophonePlaying = false;
    private bool gramophoneFlag = false;

    [SerializeField] public GameObject livingRoomTrigger;

    [SerializeField] private AudioSource audioSource1;
    [SerializeField] private AudioSource audioSource2;
    [SerializeField] private AudioSource audioSource3;

    //Bool to check progress
    public bool soundRoomfinished = false;

    // Update is called once per frame
    void Update()
    {
        if (DialogueManager.GetInstance().dialoguePlaying)
        {
            return;
        }

        if (playerInRange)
        {
            visualCue.SetActive(true);

            if (Input.GetKeyDown(KeyCode.F) && !gramophoneFlag)
            {
                soundRoomfinished = true;
                // disable interaction until music successfully stops/starts
                gramophoneFlag = true;

                audioSource3.Play();

                audioSource1.Stop();
                audioSource2.Stop();

                StartCoroutine(musicStartup());
                if (!livingRoomTrigger.activeSelf)
                {
                    livingRoomTrigger.SetActive(true);
                }
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

    IEnumerator musicStartup()
    {
        yield return new WaitForSeconds(1);
        if (isGramophonePlaying)
        {
            audioSource1.Play();
            audioSource2.Stop();
        } else
        {
            audioSource1.Stop();
            audioSource2.Play();
        }
        isGramophonePlaying = !isGramophonePlaying;
        gramophoneFlag = false;
    }
}
