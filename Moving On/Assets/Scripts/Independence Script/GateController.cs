using UnityEngine;

public class GateController : MonoBehaviour
{
    public Vector3 openPosition; // Position to move the gate to when it opens
    public float openSpeed = 2f; // Speed at which the gate opens

    private Vector3 closedPosition;
    private bool isOpening = false;

    void Start()
    {
        closedPosition = transform.position; // Save the initial closed position
    }

    void Update()
    {
        if (isOpening)
        {
            // Move the gate towards the open position
            transform.position = Vector3.MoveTowards(transform.position, openPosition, openSpeed * Time.deltaTime);

            // Stop opening once the gate reaches the open position
            if (transform.position == openPosition)
            {
                isOpening = false;
            }
        }
    }

    public void OpenGate()
    {
        isOpening = true;
    }
}
