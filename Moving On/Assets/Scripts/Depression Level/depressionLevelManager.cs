using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class depressionLevelManager : MonoBehaviour
{
    public static depressionLevelManager Instance;
    public int playerSpawn = 0;

    private void Awake()
    {
        if (Instance != null)
        {
            Destroy(gameObject);
        }
        else
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
    }
}
