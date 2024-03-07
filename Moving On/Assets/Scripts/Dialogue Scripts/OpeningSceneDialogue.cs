using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OpeningSceneDialogue : MonoBehaviour
{
    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkJSON;

    // Update is called once per frame
    private void Update()
    {
        if (!DialogueManager.GetInstance().dialoguePlaying)
        {
            DialogueManager.GetInstance().EnterDialogueMode(inkJSON);
        }
    }
}
