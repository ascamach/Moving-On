
using UnityEngine;

public class playerMovement : MonoBehaviour
{
    private float horizontal;
    [SerializeField] private float speed;
    [SerializeField] private float jumpPower;
    public bool isFacingRight = true;

    [SerializeField] private Rigidbody2D rb;
    [SerializeField] private LayerMask groundLayer;

    // Booleans to pause player movement depending on game activity
    [SerializeField] private bool dialogueInScene;
    [SerializeField] private bool inputInScene;

    //public PhysicsMaterial2D[] material;

    //Method 2 of Grounded
    public Vector2 boxSize;
    public float castDistance;

    //Movement State
    private bool isMoving;

    private void Start()
    {
        
    }

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

        // Check if player text input is active
        if (inputInScene)
        {
            if (Mausoleum.Instance().inputActive)
            {
                return;
            }
        }

        if (Input.GetButtonDown("Jump") && isGrounded())
        {
            rb.isKinematic = false;
            rb.AddForce(Vector2.up * jumpPower * 50f);
            isMoving = true;
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

        // Check if player text input is active
        if (inputInScene)
        {
            if (Mausoleum.Instance().inputActive)
            {
                return;
            }
        }

        // Moving and Jumping
        if (Input.GetKey(KeyCode.A))
        {
            //rb.isKinematic = false;
            isMoving = true;
            horizontal = -1f;
            
        }
        else if (Input.GetKey(KeyCode.D))
        {
            //rb.isKinematic = false;
            isMoving = true;
            horizontal = 1f;  
        }
        else
        {
            horizontal = 0f;
        }

        rb.velocity = new Vector2(horizontal * speed, rb.velocity.y);
    }


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
