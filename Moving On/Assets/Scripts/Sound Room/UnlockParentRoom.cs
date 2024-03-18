using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnlockParentRoom : MonoBehaviour
{
    public playSoundRoomMusic soundRoom;
    public GameObject collision;
    public bool touching;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkText;

    // Start is called before the first frame update
    void Start()
    {
        touching = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (soundRoom.soundRoomInteraction == true)
        {
            Destroy(collision);
            //Debug.Log("Ok it works");
        }
    }

    public void OnCollisionEnter2D(Collision2D col)
    {
        if (col.gameObject.tag == "Player")
        {
            DialogueManager.GetInstance().EnterDialogueMode(inkText);
        }
    }
}
