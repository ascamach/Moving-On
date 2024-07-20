using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class dirtTrigger : MonoBehaviour
{
    [SerializeField] private GameObject dirtBlock;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerEnter2D(Collider2D collision)
    {
        if(collision.tag == "Player")
        {
            StartCoroutine(breakFloor());
        }
        
    }

    IEnumerator breakFloor()
    {
        Debug.Log("Entered the trigger");
        yield return new WaitForSeconds(1f);
        Debug.Log("Breaking the floor...");
        dirtBlock.SetActive(false);
    }
}
