using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class homeRoomTriggers : MonoBehaviour
{
    
    [SerializeField] private GameObject spawnPoint;
    private void Awake()
    {
        if(depressionLevelManager.Instance.houseFirstTrigger == false)
        {
            spawnPoint.SetActive(true);
        }
        else
        {
            spawnPoint.SetActive(false);
        }
    }

}
