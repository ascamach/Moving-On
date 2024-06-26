using UnityEngine;

public class ButtonPressHandler : MonoBehaviour
{
    public GameObject ButtonUnpressed;
    public GameObject ButtonPressed;
    public GameObject gateToDestroy;
    public GameObject objectToDestroy;
    public GameObject player;
    public float activationDistance = 3f;
    private SpriteRenderer spriteRenderer;

    void Start()
    {
        ButtonUnpressed.SetActive(true);
        ButtonPressed.SetActive(false);
    }

    void Update()
    {
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

        // Destroy the gate
        if (gateToDestroy != null)
        {
            Destroy(gateToDestroy);
        }

        // Destroy another specified object
        if (objectToDestroy != null)
        {
            Destroy(objectToDestroy);
        }

        // Optionally, trigger other actions or events
        Debug.Log("Button Pressed!");
    }
}

