using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HomeTrigger : MonoBehaviour
{
    [Header("First Check")]
    [SerializeField] public bool firstTime;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkText;

    private void Awake()
    {
        firstTime = true;
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {

        if (collision.gameObject.tag == "Player" && firstTime == true)
        {
            DialogueManager.GetInstance().EnterDialogueMode(inkText);
        }
        firstTime = false;
    }
}
