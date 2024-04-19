using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class FinishTutorialScene : MonoBehaviour
{
    // Using Will's initial code here
    // Just adding a variable to check
    // if the player has collected the jacket or not.

    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    public jacketCollision jacket;

    private bool playerInRange;

    private SpriteRenderer rend;
    // Start is called before the first frame update
    void Start()
    {
        rend = GetComponent<SpriteRenderer>();
        rend.color = new Color32(144, 81, 21, 255);
        visualCue.SetActive(false);


    }

    // Update is called once per frame
    void Update()
    {
        if (playerInRange)
        {
            visualCue.SetActive(true);
            if (Input.GetKeyDown(KeyCode.F) && jacket.jacketCollected == true)
            {
                Debug.Log("Entering Hub World...");
                levelManager.Instance.tutorialCompleted = true;
                SceneManager.LoadSceneAsync("hubWorld");
            } else if (Input.GetKeyDown(KeyCode.F) && jacket.jacketCollected == false)
            {
                if (!DialogueManager.GetInstance().dialoguePlaying)
                {
                    DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
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
}
