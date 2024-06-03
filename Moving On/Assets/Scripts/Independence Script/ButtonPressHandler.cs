using UnityEngine;

public class ButtonPressHandler : MonoBehaviour
{
    public GameObject ButtonUnpressed;
    public GameObject ButtonPressed;
    public GateController gateController; // Reference to the GateController script
    public GameObject player; // Reference to the player GameObject
    public float activationDistance = 3f; // Maximum distance within which the player can press the button

    void Start()
    {
        // Ensure the unpressed button is active and the pressed button is inactive at the start
        ButtonUnpressed.SetActive(true);
        ButtonPressed.SetActive(false);
    }

    void Update()
    {
        // Check if the player presses the "F" key and is within the activation distance
        if (Input.GetKeyDown(KeyCode.F) && IsPlayerCloseEnough())
        {
            PressButton();
        }

    }

    bool IsPlayerCloseEnough()
    {
        if (player == null) return false;

        // Calculate the distance between the player and the button
        float distance = Vector3.Distance(player.transform.position, transform.position);
        return distance <= activationDistance;
    }

    void PressButton()
    {
        // Switch the states of the buttons
        ButtonUnpressed.SetActive(false);
        ButtonPressed.SetActive(true);

        // Trigger the gate to open
        if (gateController != null)
        {
            gateController.OpenGate();
        }

        // Optionally, trigger other actions or events
        Debug.Log("Button Pressed!");
    }
}
