using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class fadeIn : MonoBehaviour
{
    // Start is called before the first frame update
    [Header("Black Image that will fade:")]
    [SerializeField] private Image blackImage;
    //private SpriteRenderer blackImageV2;

    void Start()
    {
        //blackImage.SetActive(true);
        blackImage.enabled = true;
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
