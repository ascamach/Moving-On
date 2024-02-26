using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RoomTrigger : MonoBehaviour
{
    [Header("First Check")]
    [SerializeField] private bool firstTime;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkText;

    private bool playerInRange;

    private void Awake()
    {
        firstTime = false;
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (!firstTime)
        {
            DialogueManager.GetInstance().EnterDialogueMode(inkText);
        }
    }
}
