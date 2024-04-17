using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class toRoof : MonoBehaviour
{
    [Header("Put Canvas Animator Here for Fade In: ")]
    [SerializeField] private Animator animator;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if(collision.tag == "Player")
        {
            Debug.Log("Player Entered...");
            animator.SetTrigger("playFadeIn");
            StartCoroutine(sceneTransition());
        }
    }


    IEnumerator sceneTransition()
    {
        yield return new WaitForSeconds(1);
        Debug.Log("Spawning in position: " + depressionLevelManager.Instance.playerSpawn);
        SceneManager.LoadSceneAsync("depressionRoofScene");
    }
}
