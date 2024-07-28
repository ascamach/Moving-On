using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MovingPlatformHorizontal : MonoBehaviour
{
    public float moveSpeed = 2f;
    public float minX = -5f;
    public float maxX = 5f;

    public GameObject Player;

    void Update()
    {
        float newPositionX = Mathf.PingPong(Time.time * moveSpeed, maxX - minX) + minX;
        transform.position = new Vector3(newPositionX, transform.position.y, transform.position.z);
    }

    private void OnCollisionEnter2D (Collision2D other) {
        if (other.gameObject.CompareTag("Player")) {
            Player.transform.parent = transform;
        }
    }  

    private void OnCollisionExit2D (Collision2D other) {
        if (other.gameObject.CompareTag("Player")) {
            Player.transform.parent = null;
        }
    } 
}