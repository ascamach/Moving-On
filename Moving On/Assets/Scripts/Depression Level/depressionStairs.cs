using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class depressionStairs : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] public GameObject visualCue;
    [Header("Put Canvas Animator Here for Fade In: ")]
    [SerializeField] private Animator animator;


    private bool playerInRange;

    private void Awake()
    {
        playerInRange = false;
        visualCue.SetActive(false);
    }

    private void Update()
    {
        if (playerInRange)
        {
            visualCue.SetActive(true);
            if (Input.GetKeyDown(KeyCode.F))
            {
                depressionLevelManager.Instance.houseFirstTrigger = true;
                animator.SetTrigger("playFadeIn");
                depressionLevelManager.Instance.playerSpawn = 0;
                StartCoroutine(sceneTransition());
            }
        } else
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

    IEnumerator sceneTransition()
    {
        yield return new WaitForSeconds(1);
        SceneManager.LoadSceneAsync("depressionStoreScene");
    }
}
