using System.Collections;
using System.Collections.Generic;
using UnityEngine; 
using TMPro;
using UnityEngine.UI;

// https://www.youtube.com/watch?v=FfaG9TvCe5g - menu ui tutorial that was followed
// https://chat.openai.com/share/73c544d5-b755-4f4d-a6a9-28d6722c6079

public class TextSlider : MonoBehaviour
{
    public TextMeshProUGUI numberText;
    private Slider slider;

    // Starting volume value
    private float startingVolume;
    

    void Start()
    {
        startingVolume = AudioListener.volume * 20f;
        slider = GetComponent<Slider>();
        // Set the slider value to match the starting volume
        slider.value = startingVolume;
        // Update the text to display the starting volume
        SetNumberText(startingVolume);
        // Set the volume based on the starting volume
        AudioListener.volume = startingVolume / 20.0f; // Map 7 to the range between 0 and 1
    }

    public void SetNumberText(float value)
    {
        numberText.text = value.ToString();
        // Set the volume based on the slider value
        AudioListener.volume = value / 20.0f; // Map the slider value to the range between 0 and 1
    }
}
