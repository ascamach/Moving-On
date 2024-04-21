using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class AutoMovement : MonoBehaviour
{
    private float horizontal;
    [SerializeField] private float speed = 4f;
    [SerializeField] private float jumpPower = 10f;
    public bool isFacingRight = true;

    [SerializeField] private GameObject ghost;

    [SerializeField] private Rigidbody2D rb;
    [SerializeField] private Transform groundCheck;
    [SerializeField] private LayerMask groundLayer;
    [SerializeField] private string sceneName = "EndingScene"; // The specific scene name where movement is restricted
    
    private void Update()
    {
        // Check if the current scene is the one where movement is restricted
        if (SceneManager.GetActiveScene().name == sceneName)
        {
            // Stop all movement
            rb.velocity = Vector2.zero;
            return;
        }

        horizontal = Input.GetAxis("Horizontal");

        if (Input.GetButtonDown("Jump") && isGrounded())
        {
            rb.velocity = new Vector2(rb.velocity.x, jumpPower);
        }

        if (Input.GetButtonUp("Jump") && rb.velocity.y > 0.5f)
        {
            rb.velocity = new Vector2(rb.velocity.x, rb.velocity.y * 0.5f);
        }
        Flip();
    }

    private void FixedUpdate()
    {
        // If the current scene is the one where movement is restricted, move automatically to the right
        if (SceneManager.GetActiveScene().name == sceneName)
        {
            rb.velocity = new Vector2(speed, rb.velocity.y);
            return;
        }

        rb.velocity = new Vector2(horizontal * speed, rb.velocity.y);
    }

    private bool isGrounded()
    {
        return Physics2D.OverlapCircle(groundCheck.position, 0.3f, groundLayer);
    }

    private void Flip()
    {
        if (isFacingRight && horizontal < 0f || !isFacingRight && horizontal > 0f)
        {
            isFacingRight = !isFacingRight;
            Vector3 localScale = transform.localScale;
            localScale.x *= -1f;
            transform.localScale = localScale;
        }
    }
}

