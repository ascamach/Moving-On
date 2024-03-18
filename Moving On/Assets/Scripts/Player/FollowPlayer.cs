using System.Collections;
using System.Collections.Generic;
using UnityEditor.Tilemaps;
using UnityEngine;
using UnityEngine.AI;

public class FollowPlayer : MonoBehaviour
{
    [SerializeField] private Vector3 target;
    [SerializeField] private NavMeshAgent agent;
    [SerializeField] private Transform player;
    [SerializeField] private playerMovement playerDirection;

    //AI motion
    [SerializeField] private int speed;

    Vector3 velocity = Vector3.zero;


    private void Awake()
    {
        agent = GetComponent<NavMeshAgent>();
        agent.updatePosition = false;
        agent.updateUpAxis = false;
        agent.updateRotation = false;
    }

    private void FixedUpdate()
    {
        Follow();
    }

    public void Follow()
    {
        if (agent.speed == 0)
        {
            agent.speed = speed;
        }

        target = player.position;

        if (playerDirection.isFacingRight)
        {
            agent.SetDestination(new Vector3(target.x - 1, target.y, transform.position.z));
            transform.position = Vector3.SmoothDamp(transform.position, agent.nextPosition, ref velocity, 0.1f);
        } else
        {
            agent.SetDestination(new Vector3(target.x + 1, target.y, transform.position.z));
            transform.position = Vector3.SmoothDamp(transform.position, agent.nextPosition, ref velocity, 0.1f);
        }
    }
}