using UnityEngine;

public class PlatformController : MonoBehaviour
{
    private void OnCollisionEnter2D(Collision2D collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            Rigidbody2D playerRB = collision.gameObject.GetComponent<Rigidbody2D>();
            Rigidbody2D platformRB = GetComponent<Rigidbody2D>();

            // Match the platform's velocity
            playerRB.velocity += platformRB.velocity - platformRB.GetPointVelocity(playerRB.position);
        }
    }

    private void OnCollisionExit2D(Collision2D collision)
    {
        if (collision.gameObject.CompareTag("Player"))
        {
            // Reset the player's velocity to avoid unexpected behavior
            Rigidbody2D playerRB = collision.gameObject.GetComponent<Rigidbody2D>();
            playerRB.velocity = Vector2.zero;
        }
    }
}
