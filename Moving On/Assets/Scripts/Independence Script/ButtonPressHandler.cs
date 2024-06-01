using UnityEngine;

public class ButtonPressHandler : MonoBehaviour
{
    public GameObject ButtonUnpressed;
    public GameObject ButtonPressed;

    void Start()
    {
        // Ensure the unpressed button is active and the pressed button is inactive at the start
        ButtonUnpressed.SetActive(true);
        ButtonPressed.SetActive(false);
    }

    void Update()
    {
        // Check if the player presses the "F" key
        if (Input.GetKeyDown(KeyCode.F))
        {
            PressButton();
        }
    }

    void PressButton()
    {
        // Switch the states of the buttons
        ButtonUnpressed.SetActive(false);
        ButtonPressed.SetActive(true);

        // Optionally, trigger other actions or events
        Debug.Log("Button Pressed!");
    }
}
