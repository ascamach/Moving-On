using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class fadeIn : MonoBehaviour
{
    // Start is called before the first frame update
    [Header("Black Image that will fade:")]
    [SerializeField] private GameObject blackImage;
    void Start()
    {
        blackImage.SetActive(true);
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
