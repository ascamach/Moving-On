using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class stopSoundRoomMusic : MonoBehaviour
{
    [SerializeField] private AudioSource audioSource1;
    [SerializeField] private AudioSource audioSource2;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.gameObject.tag == "Player" && audioSource2.isPlaying)
        {
            audioSource2.Stop();
            audioSource1.Play();
        }
    }
}
