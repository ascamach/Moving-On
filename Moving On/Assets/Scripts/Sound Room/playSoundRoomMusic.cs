using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playSoundRoomMusic : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;
    private bool playerInRange;

    [SerializeField] public GameObject livingRoomTrigger;

    [SerializeField] private AudioSource audioSource1;
    [SerializeField] private AudioSource audioSource2;
    [SerializeField] private AudioSource audioSource3;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (playerInRange)
        {
            visualCue.SetActive(true);

            if (Input.GetKeyDown(KeyCode.F))
            {
                Debug.Log("Playing Sound...");
                audioSource3.Play();
                audioSource1.Pause();

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
        audioSource2.Play();
    }
}
