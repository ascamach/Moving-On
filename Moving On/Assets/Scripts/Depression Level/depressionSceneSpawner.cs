using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class depressionSceneSpawner : MonoBehaviour
{
    [SerializeField] private Rigidbody2D player;
    [SerializeField] private Transform Ghost;
    private Vector3 tempPos;
    //private Rigidbody2D rb;
    private void Awake()
    {
        tempPos = Ghost.position;
        if(depressionLevelManager.Instance.playerSpawn == 0)
        {
            player.position = new Vector2(-11.79f, -3.19f);
            tempPos = new Vector3(-12.8737917f, -2.43151498f, 0);
            
            
        }
        else if (depressionLevelManager.Instance.playerSpawn == 1)
        {
            player.position = new Vector2(-11.79f, 0f);
            tempPos = new Vector3(-14.4300003f, 2.33999991f, 0);
            Ghost.position = tempPos;
        }
        else if(depressionLevelManager.Instance.playerSpawn == 2)
        {
            player.position = new Vector2(-0.52f, 0f);
            tempPos = new Vector3(-1.91999996f, 2.24000001f, 0);
            Ghost.position = tempPos;
        }
        else if (depressionLevelManager.Instance.playerSpawn == 3)
        {
            player.position = new Vector2(10.54f, 0f);
            tempPos = new Vector3(9.68999958f, 1.89999998f, 0);
            Ghost.position = tempPos;
        }
        else if (depressionLevelManager.Instance.playerSpawn == 4)
        {
            player.position = new Vector2(23.11f, 0f);
            tempPos = new Vector3(21.2700005f, 2.31999993f, 0);
            Ghost.position = tempPos;

        }

    }
}
