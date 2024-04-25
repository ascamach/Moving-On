using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoomTrigger : MonoBehaviour
{
    [Header("First Check")]
    [SerializeField] public bool firstTime;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkText;

    private void Awake()
    {
        firstTime = false;
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (!firstTime)
        {
            Debug.Log("It better be in the spawn for this to trigger");
            DialogueManager.GetInstance().EnterDialogueMode(inkText);
            firstTime = true;
        }
    }
}
