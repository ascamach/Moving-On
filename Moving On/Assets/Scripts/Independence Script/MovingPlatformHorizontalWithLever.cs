using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MovingPlatformHorizontalWithLever : MonoBehaviour
{
    public float moveSpeed = 2f;
    public float minX = -5f;
    public float maxX = 5f;

    public GameObject Player;
    private bool playerControl = false;
    private bool platformPaused = false;
    private float startTime;

    void Start()
    {
        startTime = Time.time;
    }

    void Update()
    {
        if (platformPaused)
        {
            // Platform is paused, do nothing
            return;
        }

        if (playerControl)
        {
            float inputX = Input.GetAxis("Horizontal");
            float newPositionX = Mathf.Clamp(transform.position.x + inputX * moveSpeed * Time.deltaTime, minX, maxX);
            transform.position = new Vector3(newPositionX, transform.position.y, transform.position.z);
        }
        else
        {
            float elapsedTime = Time.time - startTime;
            float newPositionX = Mathf.PingPong(elapsedTime * moveSpeed, maxX - minX) + minX;
            transform.position = new Vector3(newPositionX, transform.position.y, transform.position.z);
        }
    }

    private void OnCollisionEnter2D(Collision2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Player.transform.parent = transform;
        }
    }

    private void OnCollisionExit2D(Collision2D other)
    {
        if (other.gameObject.CompareTag("Player"))
        {
            Player.transform.parent = null;
        }
    }

    public void ToggleControl(int leverPressCount)
    {
        if (leverPressCount % 2 == 0)
        {
            // Even number of presses: pause the platform
            platformPaused = !platformPaused;
            if (!platformPaused)
            {
                // Resume the platform movement, reset startTime
                startTime = Time.time - (transform.position.x - minX) / moveSpeed;
            }
        }
        else
        {
            // Odd number of presses: toggle player control
            playerControl = !playerControl;
            if (!playerControl)
            {
                // Reset the platform to its automatic movement
                startTime = Time.time - (transform.position.x - minX) / moveSpeed;
            }
        }
    }
}