using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class jacketCollision : MonoBehaviour
{
    [Header("Visual Cue")]
    [SerializeField] private GameObject visualCue;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    [Header("Jacket Cue")]
    [SerializeField] public GameObject jacketCue;

    [Header("Player GameObject")]
    [SerializeField] private GameObject player;
    [Header("New Sprite to change to when jacket is obtained")]
    [SerializeField] private Sprite jacketSprite;

    private int count = 0;

    private bool playerInRange;
    public bool jacketCollected = false;

    private SpriteRenderer mySpriteRenderer;

    private void Awake()
    {
        playerInRange = false;
        visualCue.SetActive(false);
        mySpriteRenderer = player.GetComponent<SpriteRenderer>();
    }

    private void Update()
    {
        if (playerInRange && !DialogueManager.GetInstance().dialoguePlaying)
        {
            visualCue.SetActive(true);
            if (Input.GetKeyDown(KeyCode.F))
            {
                Destroy(jacketCue);
                mySpriteRenderer.sprite = jacketSprite;
                mySpriteRenderer.flipX = true;
                DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
                jacketCollected = true;
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
}
