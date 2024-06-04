using UnityEngine;

public class SpecificOrderGateController : MonoBehaviour
{
    private bool gateOpen = false;

    public void OpenGate()
    {
        if (!gateOpen)
        {
            Debug.Log("Gate is now open!");
            gateOpen = true;
        }
    }

    public void ResetGate()
    {
        if (gateOpen)
        {
            Debug.Log("Gate reset!");
            gateOpen = false;
        }
    }
}
