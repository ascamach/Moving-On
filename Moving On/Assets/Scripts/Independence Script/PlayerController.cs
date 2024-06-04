using UnityEngine;

public class PlayerController : MonoBehaviour
{
    private Vector3 spawnPoint;

    void Start()
    {
        spawnPoint = transform.position;
        Debug.Log("Initial spawn point set to: " + spawnPoint);
    }

    public void SetSpawnPoint(Vector3 newSpawnPoint)
    {
        spawnPoint = newSpawnPoint;
        Debug.Log("New spawn point set to: " + spawnPoint);
    }

    public void Respawn()
    {
        transform.position = spawnPoint;
        Debug.Log("Player respawned to: " + spawnPoint);
    }
}
