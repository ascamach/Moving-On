using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class playerMovement : MonoBehaviour
{
    private float horizontal;
    [SerializeField] private float speed;
    [SerializeField] private float jumpPower;
    public bool isFacingRight = true;

    [SerializeField] private GameObject ghost;

    [SerializeField] private Rigidbody2D rb;
    [SerializeField] private Transform groundCheck;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private bool dialogueInScene;

    private void Update()
    {
        Flip();
        //Debug.Log("Player Position: " + rb.position);
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
    }

    private bool isGrounded()
    {
        //return Physics2D.OverlapCircle(groundCheck.position, 0.1f, groundLayer);
        RaycastHit2D hit = Physics2D.Raycast(transform.position, Vector2.down, 0.9f, groundLayer);
        return (hit.collider != null);

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
