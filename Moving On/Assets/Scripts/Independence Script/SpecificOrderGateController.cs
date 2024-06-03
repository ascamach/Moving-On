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
            gateOpen = true;
        }
    }

    public void ResetGate()
    {
        if (gateOpen)
        {
            // Your logic to reset the gate state
            Debug.Log("Gate reset!");
            gateOpen = false;
        }
    }
}
