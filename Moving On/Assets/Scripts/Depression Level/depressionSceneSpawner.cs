using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class depressionSceneSpawner : MonoBehaviour
{
    [SerializeField] private Rigidbody2D player;
    //private Rigidbody2D rb;
    private void Start()
    {
        
        if(depressionLevelManager.Instance.playerSpawn == 0)
        {
            player.position = new Vector2(-11.79f, -3.19f);
        }
        else if (depressionLevelManager.Instance.playerSpawn == 1)
        {
            player.position = new Vector2(-11.79f, 0f);
        }
        else if(depressionLevelManager.Instance.playerSpawn == 2)
        {
            player.position = new Vector2(-0.52f, 0f);
        }
        else if (depressionLevelManager.Instance.playerSpawn == 3)
        {
            player.position = new Vector2(10.54f, 0f);
        }
        else if (depressionLevelManager.Instance.playerSpawn == 4)
        {
            player.position = new Vector2(23.11f, 0f);
        }

    }
}
