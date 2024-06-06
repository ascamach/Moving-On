using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class Mausoleum : MonoBehaviour
{
    // String from player input
    private string input;
    public GameObject flowerPot;

    private void Start()
    {
        if (PlayerPrefs.GetString("playerStory") != "")
        {
            flowerPot.SetActive(true);
        }
    }

    public void ReadString(string story)
    {
        input = story;
        PlayerPrefs.SetString("playerStory", input);
    }
}
