using UnityEngine;

public class SpecificOrderGateController : MonoBehaviour
{
    private bool gateOpen = false;

    public void OpenGate()
    {
        if (!gateOpen)
        {
            // Your logic to open the gate
            Debug.Log("Gate is now open!");
            // Example: Change position or state of the gate here
            transform.position = new Vector3(transform.position.x, transform.position.y + 5, transform.position.z);
            gateOpen = true;
        }
    }

    public void ResetGate()
    {
        if (gateOpen)
        {
            // Your logic to reset the gate state
            Debug.Log("Gate reset!");
            // Example: Reset position or state of the gate here
            transform.position = new Vector3(transform.position.x, transform.position.y - 5, transform.position.z);
            gateOpen = false;
        }
    }
}
