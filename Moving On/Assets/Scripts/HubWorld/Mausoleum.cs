using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UIElements;

public class Mausoleum : MonoBehaviour
{
    // String from player input
    private string input;
    public GameObject flowerPot;
    public GameObject InputUI;
    public GameObject mausoleumStory;

    public TextMeshProUGUI storyText;

    private static Mausoleum instance;

    public bool inputActive = false;

    [SerializeField] private GameObject visualCue;

    private bool playerInRange;

    private void Start()
    {
        if (instance != null)
        {
            Debug.LogWarning("More than one Mausoleum instance found.");
        }

        InputUI.SetActive(false);
        mausoleumStory.SetActive(false);

        Debug.Log("Player Pref current value: " + PlayerPrefs.GetString("playerStory"));
        input = PlayerPrefs.GetString("playerStory");
        if (PlayerPrefs.GetString("playerStory") != "")
        {
            flowerPot.SetActive(true);
        }

        instance = this;
    }

    public static Mausoleum Instance()
    {
        return instance;
    }

    private void Update()
    {
        if (playerInRange)
        {
            if (Input.GetKey(KeyCode.F) && input == "")
            {
                InputUI.SetActive(true);
            } else if (Input.GetKey(KeyCode.F) && input != "")
            {
                storyText.text = input;
                mausoleumStory.SetActive(true);
            }
        } else
        {
            mausoleumStory.SetActive(false);
            InputUI.SetActive(false);
        }

        if (InputUI.activeSelf) 
        {
            inputActive = true;
        } else if (!InputUI.activeSelf) 
        {
            inputActive = false;
        }
    }

    public void ReadString(string story)
    {
        input = story;
        PlayerPrefs.SetString("playerStory", input);
        if (!flowerPot.activeSelf)
        {
            flowerPot.SetActive(true);
        }
        Debug.Log("Captured player story: " + input);
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            playerInRange = true;
        }
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.CompareTag("Player"))
        {
            mausoleumStory.SetActive(false);
            InputUI.SetActive(false);
            playerInRange = false;
        }
    }
}