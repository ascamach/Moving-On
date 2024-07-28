using UnityEngine;

public class LeverMovingPlatform : MonoBehaviour
{
    public float speed = 2.0f;
    public float width = 3.0f;
    public LayerMask playerLayer;

    private Vector2 startPosition;
    private bool movingRight = true;
    private bool playerDetected = false;
    private bool isMoving = false; // Variable to control movement

    void Start()
    {
        startPosition = transform.position;
    }

    void Update()
    {
        playerDetected = Physics2D.OverlapBox(transform.position, new Vector2(0.1f, GetComponent<Collider2D>().bounds.size.y), 0f, playerLayer);
        if (!playerDetected && isMoving) // Check if the platform should move
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

    // Method to toggle movement
    public void ToggleMovement(bool shouldMove)
    {
        isMoving = shouldMove;
    }
}

