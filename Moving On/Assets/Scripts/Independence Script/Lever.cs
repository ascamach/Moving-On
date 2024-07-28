using UnityEngine;

public class Lever : MonoBehaviour
{
    public LeverMovingPlatform platform;
    private bool isActivated = false;
    private bool playerNear = false;

    void Update()
    {
        if (playerNear && Input.GetKeyDown(KeyCode.G))
        {
            ToggleLever();
        }
    }

    void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            playerNear = true;
        }
    }

    void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            playerNear = false;
        }
    }

    void ToggleLever()
    {
        isActivated = !isActivated;
        platform.ToggleMovement(isActivated);
    }
}
