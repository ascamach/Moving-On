using UnityEngine;

public class SetSpawnPointTrigger2D : MonoBehaviour
{
    public Transform newSpawnPoint;

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            Debug.Log("Player entered the trigger zone.");
            PlayerController playerController = other.GetComponent<PlayerController>();
            if (playerController != null)
            {
                playerController.SetSpawnPoint(newSpawnPoint.position);
                Debug.Log("New spawn point set to: " + newSpawnPoint.position);
            }
            else
            {
                Debug.LogWarning("PlayerController component not found on the player!");
            }
        }
    }
}
