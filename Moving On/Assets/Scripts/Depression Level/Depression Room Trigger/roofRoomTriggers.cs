using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class roofRoomTriggers : MonoBehaviour
{
    [SerializeField] private GameObject spawnPoint;

    private void Awake()
    {
        if (depressionLevelManager.Instance.roofFirstTrigger == false)
        {
            spawnPoint.SetActive(true);
        }
        else
        {
            spawnPoint.SetActive(false);
        }
    }

}
