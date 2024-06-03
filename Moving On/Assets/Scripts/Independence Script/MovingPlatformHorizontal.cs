using UnityEngine;

public class MovingPlatformHorizontal : MonoBehaviour
{
    public float moveSpeed = 2f;
    public float minX = -5f;
    public float maxX = 5f;

    void Update()
    {
        float newPositionX = Mathf.PingPong(Time.time * moveSpeed, maxX - minX) + minX;
        transform.position = new Vector3(newPositionX, transform.position.y, transform.position.z);
    }
}



