using UnityEngine;

public class Crane : MonoBehaviour
{
    public GameObject[] boulders;

    public void DestroyBoulders()
    {
        foreach (GameObject boulder in boulders)
        {
            Destroy(boulder);
        }
    }
}
