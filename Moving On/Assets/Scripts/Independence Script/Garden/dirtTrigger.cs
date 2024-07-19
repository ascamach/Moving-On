using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class dirtTrigger : MonoBehaviour
{
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
        StartCoroutine(breakFloor());
    }

    IEnumerator breakFloor()
    {
        Debug.Log("Entered the trigger");
        yield return new WaitForSeconds(5f);
        Debug.Log("Breaking the floor...");
    }
}
