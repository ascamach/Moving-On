using UnityEngine;

public class LeverInteraction : MonoBehaviour
{
    public GameObject platform;
    private MovingPlatformHorizontalWithLever platformScript;
    private int leverPressCount = 0;

    void Start()
    {
        if (platform == null)
        {
            Debug.LogError("Platform reference is not set in the Inspector!");
            return;
        }

        platformScript = platform.GetComponent<MovingPlatformHorizontalWithLever>();

        if (platformScript == null)
        {
            Debug.LogError("MovingPlatformHorizontal script is not found on the platform GameObject!");
        }
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.F))
        {
            float distance = Vector3.Distance(transform.position, platformScript.Player.transform.position);
            Debug.Log("Distance to player: " + distance);

            if (distance < 2f) // Adjust the distance threshold as needed
            {
                leverPressCount++;
                platformScript.ToggleControl(leverPressCount);
            }
        }
    }
}
