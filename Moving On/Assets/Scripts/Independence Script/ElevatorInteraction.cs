using UnityEngine;
using UnityEngine.SceneManagement;

public class ElevatorInteraction : MonoBehaviour
{
    // Tag to identify the elevator
    public string elevatorTag = "Elevator";
    
    // Distance within which the player can interact with the elevator
    public float interactionDistance = 1.5f;
    
    private GameObject nearestElevator;

    void Update()
    {
        // Check for player input
        if (Input.GetKeyDown(KeyCode.F))
        {
            Debug.Log("F key pressed");
            // Find all objects with the elevator tag
            GameObject[] elevators = GameObject.FindGameObjectsWithTag(elevatorTag);
            float nearestDistance = Mathf.Infinity;
            nearestElevator = null;

            // Determine the nearest elevator
            foreach (GameObject elevator in elevators)
            {
                float distance = Vector3.Distance(transform.position, elevator.transform.position);
                Debug.Log($"Found elevator at distance: {distance}");
                if (distance < nearestDistance)
                {
                    nearestDistance = distance;
                    nearestElevator = elevator;
                }
            }

            // Check if the nearest elevator is within interaction distance
            if (nearestElevator != null && nearestDistance <= interactionDistance)
            {
                Debug.Log("Nearest elevator within interaction distance, loading scene GardenAfter");
                // Transition to the new scene
                SceneManager.LoadScene("GardenAfter");
            }
            else
            {
                Debug.Log("No elevator within interaction distance");
            }
        }
    }

    // Optional: Draw gizmos to visualize interaction distance in the editor
    void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, interactionDistance);
    }
}
