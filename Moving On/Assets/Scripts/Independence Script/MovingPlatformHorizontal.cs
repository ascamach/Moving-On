using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MovingPlatformHorizontal : MonoBehaviour
{
    // public float moveSpeed = 2f;
    // public float minX = -5f;
    // public float maxX = 5f;

    // public GameObject Player;

    // void Update()
    // {
    //     float newPositionX = Mathf.PingPong(Time.time * moveSpeed, maxX - minX) + minX;
    //     transform.position = new Vector3(newPositionX, transform.position.y, transform.position.z);
    // }

    // private void OnCollisionEnter2D (Collision2D other) {
    //     if (other.gameObject.CompareTag("Player")) {
    //         Player.transform.parent = transform;
    //     }
    // }  

    // private void OnCollisionExit2D (Collision2D other) {
    //     if (other.gameObject.CompareTag("Player")) {
    //         Player.transform.parent = null;
    //     }
    // } 
    public float speed;
    public int startingPoint;
    public Transform[] points;

    private int i;

    void Start() {
        if (points.Length > 0) {
            transform.position = points[startingPoint].position;
        }
    }

    void FixedUpdate() {
        if (points.Length == 0) return;

        if (Vector2.Distance(transform.position, points[i].position) < 0.02f) {
            i++;
            if (i == points.Length) {
                i = 0;
            }
        }

        transform.position = Vector2.MoveTowards(transform.position, points[i].position, speed * Time.deltaTime);
    }

    private void OnCollisionEnter2D(Collision2D collision) {
        if (collision.transform.CompareTag("Player")) {
            collision.transform.SetParent(transform);
        }
    }

    private void OnCollisionExit2D(Collision2D collision) {
            collision.transform.SetParent(null);
    }
}