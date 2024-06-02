using UnityEngine;

public class SetSpawnPointTrigger : MonoBehaviour
{
    public Transform newSpawnPoint;

    private void OnTriggerEnter(Collider other)
    {
        // Check if the object entering the trigger is the player
        if (other.CompareTag("Player"))
        {
            // Assuming the player has a script named PlayerController with a method to set the spawn point
            PlayerController playerController = other.GetComponent<PlayerController>();
            if (playerController != null)
            {
                playerController.SetSpawnPoint(newSpawnPoint.position);
            }
        }
    }
}

