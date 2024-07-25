// using UnityEngine;
// using System.Collections;
// using System.Collections.Generic;

// public class MovingPlatformHorizontal : MonoBehaviour
// {
//     public float speed;
//     public int startingPoint;
//     public Transform[] points;

//     private int i;

//     void Start() {
//         if (points.Length > 0) {
//             transform.position = points[startingPoint].position;
//         }
//     }

//     void FixedUpdate() {
//         if (points.Length == 0) return;

//         if (Vector2.Distance(transform.position, points[i].position) < 0.02f) {
//             i++;
//             if (i == points.Length) {
//                 i = 0;
//             }
//         }

//         transform.position = Vector2.MoveTowards(transform.position, points[i].position, speed * Time.deltaTime);
//     }

//     private void OnCollisionEnter2D(Collision2D collision) {
//         if (collision.transform.CompareTag("Player")) {
//             collision.transform.SetParent(transform);
//         }
//     }

//     private void OnCollisionExit2D(Collision2D collision) {
//             collision.transform.SetParent(null);
//     }
// }
using UnityEngine;

public class MovingPlatformHorizontal : MonoBehaviour
{
    public float speed = 2.0f;
    public float width = 3.0f;
    public LayerMask playerLayer;

    private Vector2 startPosition;
    private bool movingRight = true;
    private bool playerDetected = false;

    void Start()
    {
        startPosition = transform.position;
    }

    void Update()
    {
        playerDetected = Physics2D.OverlapBox(transform.position, new Vector2(0.1f, GetComponent<Collider2D>().bounds.size.y), 0f, playerLayer);
        if (!playerDetected)
        {
            float newX = transform.position.x + (movingRight ? speed : -speed) * Time.deltaTime;
            if (newX >= startPosition.x + width)
            {
                newX = startPosition.x + width;
                movingRight = false;
            }
            else if (newX <= startPosition.x)
            {
                newX = startPosition.x;
                movingRight = true;
            }
            transform.position = new Vector2(newX, transform.position.y);
        }
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        collision.transform.SetParent(transform);
    }

    private void OnCollisionExit2D(Collision2D collision)
    {
        collision.transform.SetParent(null);
    }
}
