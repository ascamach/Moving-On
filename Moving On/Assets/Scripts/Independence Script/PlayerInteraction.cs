using UnityEngine;

public class PlayerInteraction : MonoBehaviour
{
    public float interactionDistance = 7f;  // Distance within which the player can interact with the crane
    private Crane crane;

    void Update()
    {
        // Check if the player presses the 'F' key
        if (Input.GetKeyDown(KeyCode.F))
        {
            TryInteract();
        }
    }

    void TryInteract()
    {
        // Find all objects tagged as "Crane"
        GameObject[] cranes = GameObject.FindGameObjectsWithTag("Wrecking Ball");
        foreach (GameObject craneObj in cranes)
        {
            // Check the distance between the player and the crane
            if (Vector3.Distance(transform.position, craneObj.transform.position) <= interactionDistance)
            {
                crane = craneObj.GetComponent<Crane>();
                if (crane != null)
                {
                    crane.DestroyBoulders();
                    Debug.Log("Rocks are gone");
                    return;
                }
            }
        }
    }
}


