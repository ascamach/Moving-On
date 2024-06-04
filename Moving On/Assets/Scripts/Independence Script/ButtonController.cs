using UnityEngine;
using System.Collections.Generic;

public class ButtonController : MonoBehaviour
{
    public GameObject ButtonUnpressed;
    public GameObject ButtonPressed;
    public SpecificOrderGateController gateController;
    public GameObject player; 
    public float activationDistance = 3f; 

    // List of buttons in the correct order
    public List<ButtonController> correctOrder;
    private static List<ButtonController> pressedButtons = new List<ButtonController>();

    void Start()
    {
        ButtonUnpressed.SetActive(true);
        ButtonPressed.SetActive(false);
    }

    void Update()
    {
        // Check if the player presses the "F" key and is within the activation distance
        if (Input.GetKeyDown(KeyCode.F) && IsPlayerCloseEnough())
        {
            PressButton();
            Debug.Log("Button pushed");
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
        // Check if this button is already pressed
        if (pressedButtons.Contains(this))
        {
            Debug.Log("Button pushed already");
            return;
        }

        // Add this button to the list of pressed buttons
        pressedButtons.Add(this);

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

            Debug.Log("Correct order! Gate is opening!");
        }
        else if (pressedButtons.Count == correctOrder.Count)
        {
            // If the order is incorrect and all buttons are pressed, reset the buttons
            ResetButtons();
            Debug.Log("Incorrect order! Resetting buttons.");
        }
    }

    bool IsCorrectOrder()
    {
        if (pressedButtons.Count != correctOrder.Count) return false;

        for (int i = 0; i < correctOrder.Count; i++)
        {
            if (pressedButtons[i] != correctOrder[i])
            {
                return false;
            }
        }

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
