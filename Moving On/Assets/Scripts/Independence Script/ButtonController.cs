using UnityEngine;
using System.Collections.Generic;

public class ButtonController : MonoBehaviour
{
    public GameObject ButtonUnpressed;
    public GameObject ButtonPressed;
    public SpecificOrderGateController gateController; // Reference to the SpecificOrderGateController script
    public GameObject player; // Reference to the player GameObject
    public float activationDistance = 3f; // Maximum distance within which the player can press the button

    // List of buttons in the correct order
    public List<ButtonController> correctOrder;
    private static List<ButtonController> pressedButtons = new List<ButtonController>();

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
        Debug.Log("Attempting to press button...");

        // Check if this button is already pressed
        if (pressedButtons.Contains(this))
        {
            Debug.Log("Button already pressed!");
            return;
        }

        // Add this button to the list of pressed buttons
        pressedButtons.Add(this);
        Debug.Log("Button pressed. Current pressed buttons count: " + pressedButtons.Count);

        // Switch the states of the buttons
        ButtonUnpressed.SetActive(false);
        ButtonPressed.SetActive(true);

        // Check if the pressed buttons match the correct order
        if (IsCorrectOrder())
        {
            // Trigger the gate to open
            if (gateController != null)
            {
                gateController.OpenGate();
            }
        }
        else if (pressedButtons.Count == correctOrder.Count)
        {
            // If the order is incorrect and all buttons are pressed, reset the buttons
            Debug.Log("Incorrect order! Resetting buttons.");
            ResetButtons();
        }
    }

    bool IsCorrectOrder()
    {
        if (pressedButtons.Count != correctOrder.Count) 
        {
            Debug.Log("Pressed buttons count does not match correct order count.");
            return false;
        }

        for (int i = 0; i < correctOrder.Count; i++)
        {
            if (pressedButtons[i] != correctOrder[i])
            {
                Debug.Log("Button at index " + i + " does not match.");
                return false;
            }
        }

        Debug.Log("Pressed buttons match the correct order.");
        return true;
    }

    void ResetButtons()
    {
        // Reset the state of all buttons
        foreach (var button in pressedButtons)
        {
            button.ButtonUnpressed.SetActive(true);
            button.ButtonPressed.SetActive(false);
        }

        // Clear the list of pressed buttons
        pressedButtons.Clear();

        // Optionally reset the gate
        if (gateController != null)
        {
            gateController.ResetGate();
        }
    }
}
