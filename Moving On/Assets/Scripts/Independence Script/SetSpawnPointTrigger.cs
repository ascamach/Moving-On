using UnityEngine;

public class SetSpawnPointTrigger : MonoBehaviour
{
    public Transform newSpawnPoint;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            PlayerController playerController = other.GetComponent<PlayerController>();
            if (playerController != null)
            {
                playerController.SetSpawnPoint(newSpawnPoint.position);
            }
        }
    }
}

