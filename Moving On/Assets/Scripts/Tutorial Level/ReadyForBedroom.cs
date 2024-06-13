using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ReadyForBedroom : MonoBehaviour
{
    public playSoundRoomMusic sound;
    public Interactable kitchen;
    public bool bedTime;
    // Start is called before the first frame update
    void Start()
    {
        bedTime = false;
    }

    // Update is called once per frame
    void Update()
    {
        if(sound.soundRoomfinished && kitchen.kitchenRoomFinished){
            bedTime = true;
        }
    }
}
