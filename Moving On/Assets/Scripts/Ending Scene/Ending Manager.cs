using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EndingManager : MonoBehaviour
{
    public static EndingManager Instance;
    public bool plantFlower = false;
    [SerializeField] private GameObject flowers;

    private void Awake()
    {
        if (Instance != null)
        {
            Debug.LogWarning("More than one instance of Dialogue Manager found in the scene.");

        }
        Instance = this;
    }
    private void Start()
    {
        flowers.SetActive(false);   
    }

    // Update is called once per frame
    void Update()
    {
        if (plantFlower)
        {
            flowers.SetActive(true);
        }
    }
}
