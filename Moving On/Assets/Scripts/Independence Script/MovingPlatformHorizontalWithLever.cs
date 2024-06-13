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
            platformPaused = !platformPaused;
            if (!platformPaused)
            {
                startTime = Time.time - (transform.position.x - minX) / moveSpeed;
            }
        }
        else
        {
            playerControl = !playerControl;
            if (!playerControl)
            {
                startTime = Time.time - (transform.position.x - minX) / moveSpeed;
            }
        }
    }
}
