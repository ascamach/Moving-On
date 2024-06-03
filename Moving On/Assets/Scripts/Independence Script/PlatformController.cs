using UnityEngine;

public class PlatformController : MonoBehaviour
{
    private FixedJoint2D playerJoint;

    private void OnTriggerEnter2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            // Create a FixedJoint2D component and attach it to the player
            playerJoint = other.gameObject.AddComponent<FixedJoint2D>();

            // Connect the joint to the platform
            playerJoint.connectedBody = GetComponent<Rigidbody2D>();
            playerJoint.autoConfigureConnectedAnchor = false;
            playerJoint.connectedAnchor = Vector2.zero;
        }
    }

    private void OnTriggerExit2D(Collider2D other)
    {
        if (other.CompareTag("Player"))
        {
            // Remove the FixedJoint2D component from the player
            Destroy(playerJoint);
        }
    }
}
