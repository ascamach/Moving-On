using UnityEngine;

public class SpecificOrderGateController : MonoBehaviour
{
    private bool gateOpen = false;

    public void OpenGate()
    {
        if (!gateOpen)
        {
            Debug.Log("Gate is now open!");
            transform.position = new Vector3(transform.position.x, transform.position.y + 5, transform.position.z);
            gateOpen = true;
        }
    }

    public void ResetGate()
    {
        if (gateOpen)
        {
            Debug.Log("Gate reset!");
            transform.position = new Vector3(transform.position.x, transform.position.y - 5, transform.position.z);
            gateOpen = false;
        }
    }
}
