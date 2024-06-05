using UnityEngine;

public class LeverInteraction : MonoBehaviour
{
    public GameObject platform;
    private MovingPlatformHorizontalWithLever platformScript;
    private int leverPressCount = 0;
    public float activationDistance = 1f;

    void Start()
    {
        if (platform == null)
        {
            Debug.LogError("Platform reference is not set in the Inspector!");
            return;
        }

        platformScript = platform.GetComponent<MovingPlatformHorizontalWithLever >();

        if (platformScript == null)
        {
            Debug.LogError("MovingPlatformHorizontalWithLever  script is not found on the platform GameObject!");
        }
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.F))
        {
            float distance = Vector3.Distance(transform.position, platformScript.Player.transform.position);
            // Debug.Log("Distance to player: " + distance);

            if (distance < activationDistance) 
            {
                leverPressCount++;
                platformScript.ToggleControl(leverPressCount);
            }
            // else
            // {
            //     Debug.Log("Player is too far from the lever to activate it.");
            // }
        }
    }
}
