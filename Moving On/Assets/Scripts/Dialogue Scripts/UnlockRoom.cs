using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UnlockRoom : MonoBehaviour
{
    public RoomTrigger unlocked;
    public GameObject collision;

    [Header("Ink JSON")]
    [SerializeField] private TextAsset inkText;
    // Start is called before the first frame update
    void Start()
    {
         
    }

    // Update is called once per frame
    void Update()
    {
        if(unlocked.firstTime == true){
            Destroy(collision);
            //Debug.Log("Ok it works");
        } 
    }

    public void OnCollisionEnter2D(Collision2D col){
       if(col.gameObject.tag == "Player" && unlocked.firstTime == false){
            DialogueManager.GetInstance().EnterDialogueMode(inkText);
       }
    }
}
