using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerMovement : MonoBehaviour
{
    private float horizontal;
    [SerializeField] private float speed;
    [SerializeField] private float jumpPower;
    public bool isFacingRight = true;


    

    [SerializeField] private Rigidbody2D rb;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private bool dialogueInScene;

    //Method 1 of Grounded
    [SerializeField] private float rayCastDistance;

    //Method 2 of Grounded
    public Vector2 boxSize;
    public float castDistance;

    

    private void Update()
    {
        Flip();
        //Debug.Log("Player Position: " + rb.position);
        if (dialogueInScene)
        {
            if (DialogueManager.GetInstance().dialoguePlaying)
            {
                // Deccelerate player
                rb.velocity -= 0.1f * rb.velocity;
                return;
            }
        }
        if (Input.GetButtonDown("Jump") && isGrounded())
        {
            rb.AddForce(new Vector2(rb.velocity.x, jumpPower * 50f));
        }
    }

    private void FixedUpdate()
    {
        // Check if a Dialogue Instance is playing
        if (dialogueInScene)
        {
            if (DialogueManager.GetInstance().dialoguePlaying)
            {
                // Deccelerate player
                rb.velocity -= 0.1f * rb.velocity;
                return;
            }
        }

        //horizontal = Input.GetAxis("Horizontal");

        //Method 1 of Moving and Jumping
        /*
        if (Input.GetKey(KeyCode.A)) {
            horizontal = -1f;
        } else if (Input.GetKey(KeyCode.D)) {
            horizontal = 1f;
        } else
        {
            horizontal = 0f;
        }
        
        float yVelocity = rb.velocity.y;

        if (Input.GetButton("Jump") && isGrounded())
        {
            yVelocity = jumpPower;
        }

        rb.velocity = new Vector2(horizontal * speed, yVelocity);
        */

        //Method 2 of Moving and Jumping
        if (Input.GetKey(KeyCode.A))
        {
            horizontal = -1f;
        }
        else if (Input.GetKey(KeyCode.D))
        {
            horizontal = 1f;
        }
        else
        {
            horizontal = 0f;
        }
        rb.velocity = new Vector2(horizontal * speed, rb.velocity.y);

        


    }

    //private bool isGrounded()
    //{

    //    RaycastHit2D hit = Physics2D.Raycast(transform.position, Vector2.down, rayCastDistance, groundLayer); //Default at 0.85f
    //    return (hit.collider != null);

    //}

    private bool isGrounded()
    {
        if(Physics2D.BoxCast(transform.position, boxSize, 0, -transform.up, castDistance, groundLayer))
        {
            return true;
        }
        else
        {
            return false;
        }
        
    }

    private void OnDrawGizmos()
    {
        Gizmos.DrawWireCube(transform.position-transform.up * castDistance, boxSize);
    }

    private void Flip()
    {
        if((isFacingRight && horizontal < 0f) || (!isFacingRight && horizontal > 0f))
        {
            isFacingRight = !isFacingRight;
            Vector3 localScale = transform.localScale;
            localScale.x *= -1f;
            transform.localScale = localScale;
        }
    }
}
