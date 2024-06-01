using UnityEngine;

public class Crane : MonoBehaviour
{
    public GameObject[] boulders;  // Array to hold all the boulders to be destroyed

    public void DestroyBoulders()
    {
        foreach (GameObject boulder in boulders)
        {
            Destroy(boulder);
        }
    }
}
