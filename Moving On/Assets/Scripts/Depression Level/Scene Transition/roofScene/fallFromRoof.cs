using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class fallingFromRoof : MonoBehaviour
{
    [Header("Which Hole did player fall\n(1 is the most left, 4 is the most right):")]
    [SerializeField] private int hole;
    [Header("Put Canvas Animator Here for Fade In: ")]
    [SerializeField] private Animator animator;
    [Header("Put Player's Rigidbody to freeze it when entering: ")]
    [SerializeField] private Rigidbody2D rb;

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if(collision.tag == "Player")
        {
            depressionLevelManager.Instance.roofFirstTrigger = true;
            Debug.Log("Entering the Left Side Trigger");
            rb.constraints = RigidbodyConstraints2D.FreezePosition;
            animator.SetTrigger("playFadeIn");
            depressionLevelManager.Instance.playerSpawn = hole;
            StartCoroutine(sceneTransition());
        }
    }


    IEnumerator sceneTransition()
    {
        yield return new WaitForSeconds(1);
        Debug.Log("Spawning in position: " + depressionLevelManager.Instance.playerSpawn);
        SceneManager.LoadSceneAsync("depressionStoreScene");
    }
}

