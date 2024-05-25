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
                return;
            }
        }
        if (Input.GetButtonDown("Jump") && isGrounded())
        {
            rb.AddForce(Vector2.up * jumpPower * 50f);
        }
    }

    private void FixedUpdate()
    {
        // Check if a Dialogue Instance is playing
        if (dialogueInScene)
        {
            if (DialogueManager.GetInstance().dialoguePlaying)
            {
                rb.velocity = new Vector2(0, rb.velocity.y);
                return;
            }
        }

        // Moving and Jumping
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
    /*
    // simpler version of isGrounded()
    // use this if the complicated version of isGrounded() doesn't work
    private bool isGrounded()
    {
        RaycastHit2D hit = Physics2D.BoxCast(transform.position, boxSize, 0, -transform.up, castDistance, groundLayer);
        return (hit);
    }
    */

    // isGrounded() that involves one-way platforms
    private bool isGrounded()
    {
        bool groundCheck = false;
        bool oneWayPlatformCheck = false;

        // get all "Ground" hits
        RaycastHit2D[] hits = Physics2D.BoxCastAll(transform.position, boxSize, 0, -transform.up, castDistance, groundLayer);
        PolygonCollider2D playerCollider = gameObject.GetComponent<PolygonCollider2D>();

        foreach (RaycastHit2D hit in hits)
        {
            bool isOneWay = hit.collider.gameObject.CompareTag("OneWayPlatform");

            // detect if player is on ground that player can jump
            if (hit && (!isOneWay || (isOneWay && hit.collider.IsTouching(playerCollider))))
            {
                groundCheck = true;
            }

            // detect if player is currently phasing through a one-way platform
            if (isOneWay && !hit.collider.IsTouching(playerCollider))
            {
                oneWayPlatformCheck = true;
            }
        }

        if (groundCheck)
        {
            return true;
        }
        else if (oneWayPlatformCheck)
        {
            return false;
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
