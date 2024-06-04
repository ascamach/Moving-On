using UnityEngine;

public class PlayerInteraction : MonoBehaviour
{
    public float interactionDistance = 7f;
    private Crane crane;

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.F))
        {
            TryInteract();
        }
    }

    void TryInteract()
    {
        GameObject[] cranes = GameObject.FindGameObjectsWithTag("Wrecking Ball");
        foreach (GameObject craneObj in cranes)
        {
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


