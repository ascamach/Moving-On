using UnityEngine;

public class Spike : MonoBehaviour
{
    private void OnCollisionEnter2D(Collision2D collision)
    {
        Debug.Log("2D Collision detected with: " + collision.gameObject.name);
        
        // Check if the object colliding with the spike is the player
        if (collision.gameObject.CompareTag("Player"))
        {
            Debug.Log("Player collided with spike!");

            // Assuming the player has a script named PlayerController with a Respawn method
            PlayerController playerController = collision.gameObject.GetComponent<PlayerController>();
            if (playerController != null)
            {
                Debug.Log("PlayerController component found on the player. Respawning player.");
                playerController.Respawn();
            }
            else
            {
                Debug.LogWarning("PlayerController component not found on the player!");
            }
        }
    }
}
