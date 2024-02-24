using System.Collections;
using System.Collections.Generic;
using UnityEngine; 
using TMPro;
using UnityEngine.UI;

// https://www.youtube.com/watch?v=FfaG9TvCe5g - menu ui tutorial that was followed

public class TextSlider : MonoBehaviour
{
    public TextMeshProUGUI numberText;
    private Slider slider;

    void Start(){
        slider = GetComponent<Slider>();
        SetNumberText(slider.value);
    }

    public void SetNumberText(float value)
    {
        numberText.text = value.ToString();
    }
}
