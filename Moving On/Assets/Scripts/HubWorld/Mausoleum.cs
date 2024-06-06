using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UIElements;

public class Mausoleum : MonoBehaviour
{
    // String from player input
    private string input;
    public Image maosoleumBackground;

    // Update is called once per frame
    void Update()
    {
        
    }

    public void ReadString(string story)
    {
        input = story;
        Debug.Log(input);
    }
}
