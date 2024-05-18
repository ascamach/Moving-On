using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class BGMPersistence : MonoBehaviour
{
    private static BGMPersistence instance = null;
    private static AudioSource bgm;

    public static BGMPersistence Instance
    {
        get { return instance; }
    }
    // Start is called before the first frame update
    void Awake()
    {
        bgm = GetComponent<AudioSource>();
        if (instance != null && instance != this)
        {
            Destroy(gameObject);
            return;
        } else
        {
            instance = this;
        }
        DontDestroyOnLoad(gameObject);
        if (!bgm.isPlaying)
        {
            bgm.Play();
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
