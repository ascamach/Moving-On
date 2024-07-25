using UnityEngine;

public class MovingPlatform2D : MonoBehaviour
{
    public float speed = 2.0f;
    public float height = 3.0f;
    public LayerMask playerLayer;

    private Vector2 startPosition;
    private bool movingUp = true;
    private bool playerDetected = false;

    void Start()
    {
        startPosition = transform.position;
    }

    void Update()
    {
        playerDetected = Physics2D.OverlapBox(transform.position, new Vector2(GetComponent<Collider2D>().bounds.size.x, 0.1f), 0f, playerLayer);
        if (!playerDetected)
        {
            float newY = transform.position.y + (movingUp ? speed : -speed) * Time.deltaTime;
            if (newY >= startPosition.y + height)
            {
                newY = startPosition.y + height;
                movingUp = false;
            }
            else if (newY <= startPosition.y)
            {
                newY = startPosition.y;
                movingUp = true;
            }
            transform.position = new Vector2(transform.position.x, newY);
        }
    }

    void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.contacts[0].normal.y > 0)
        {
            movingUp = !movingUp;
        }
    }

    // void OnDrawGizmos()
    // {
    //     Gizmos.color = Color.red;
    //     Gizmos.DrawWireCube(transform.position, new Vector2(GetComponent<Collider2D>().bounds.size.x, 0.1f));
    // }
}
