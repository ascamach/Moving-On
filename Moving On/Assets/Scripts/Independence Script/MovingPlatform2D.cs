using UnityEngine;

public class MovingPlatform2D : MonoBehaviour
{
    public float speed = 2.0f; // Speed of the platform movement
    public float height = 3.0f; // The maximum height the platform will reach
    public LayerMask playerLayer; // Layer mask to identify the player

    private Vector2 startPosition; // Initial position of the platform
    private bool movingUp = true; // Direction of movement
    private bool playerDetected = false; // Player detection flag

    void Start()
    {
        startPosition = transform.position; // Store the initial position
    }

    void Update()
    {
        // Check for the player underneath the platform
        playerDetected = Physics2D.OverlapBox(transform.position, new Vector2(GetComponent<Collider2D>().bounds.size.x, 0.1f), 0f, playerLayer);

        if (!playerDetected)
        {
            // Calculate the new position
            float newY = transform.position.y + (movingUp ? speed : -speed) * Time.deltaTime;

            // Check if the platform has reached the desired height
            if (newY >= startPosition.y + height)
            {
                newY = startPosition.y + height;
                movingUp = false; // Change direction to down
            }
            else if (newY <= startPosition.y)
            {
                newY = startPosition.y;
                movingUp = true; // Change direction to up
            }

            // Update the platform's position
            transform.position = new Vector2(transform.position.x, newY);
        }
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        // Check if the collision is with the bottom of the platform
        if (collision.contacts[0].normal.y > 0)
        {
            movingUp = !movingUp; // Change direction
        }
    }

    void OnDrawGizmos()
    {
        // Draw a box gizmo for the overlap area for debugging purposes
        Gizmos.color = Color.red;
        Gizmos.DrawWireCube(transform.position, new Vector2(GetComponent<Collider2D>().bounds.size.x, 0.1f));
    }
}
