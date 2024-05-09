using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering.PostProcessing;

// https://www.youtube.com/watch?app=desktop&v=rmlJUaWfmzQ&ab_channel=spaderdabomb
// https://stackoverflow.com/questions/59188747/how-to-create-blur-effect-to-all-the-scene-except-for-one-object-focus-on-that

public class InputScript : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
    
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Tab)) 
        {
            PostProcessVolume ppVolume = Camera.main.gameObject.GetComponent<PostProcessVolume>();
            ppVolume.enabled = !ppVolume.enabled;
            //ppVolume.enabled = !ppVolume.enabled;
        }
        //ppVolume.enabled = false;
    }
}
