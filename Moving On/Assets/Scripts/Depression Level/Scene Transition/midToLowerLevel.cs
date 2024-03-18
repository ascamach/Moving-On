using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class midToLowerLevel : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;
    [Header("Put Canvas Animator Here for Fade In: ")]
    [SerializeField] private Animator animator;
    private bool playerInRange;

    private void Update()
    {
        if (playerInRange)
        {
            visualCue.SetActive(true);
            if (Input.GetKeyDown(KeyCode.F))
            {
                animator.SetTrigger("playFadeIn");
                StartCoroutine(sceneTransition());
            }
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
            visualCue.SetActive(false);
        }
    }

    IEnumerator sceneTransition()
    {
        yield return new WaitForSeconds(1);
        Debug.Log("Spawning in position: " + depressionLevelManager.Instance.playerSpawn);
        SceneManager.LoadSceneAsync("depressionHomeScene");
    }
}
