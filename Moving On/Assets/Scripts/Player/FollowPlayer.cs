using System.Collections;
using System.Collections.Generic;
using System.Runtime.CompilerServices;
using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.AI;

public class FollowPlayer : MonoBehaviour
{
    [SerializeField] private Vector3 target;
    [SerializeField] private GameObject player;
    [SerializeField] private playerMovement playerDirection;
    NavMeshAgent agent;

    // Start is called before the first frame update
    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
        agent.updateRotation = false;
        agent.updateUpAxis = false;

        InvokeRepeating("Flip", 2.0f, 1);
    }

    // Update is called once per frame
    void Update()
    {
        target = player.transform.position;
        if (playerDirection.isFacingRight)
        {
            agent.SetDestination(new Vector3(target.x - 1, target.y, transform.position.z));
        } else
        {
            agent.SetDestination(new Vector3(target.x + 1, target.y, transform.position.z));
        }
        Flip();
    }


    private void Flip()
    {
        Vector3 ghostScale = transform.localScale;

        if (transform.position.x > target.x)
        {
            ghostScale.x = -1;
            transform.localScale = ghostScale;
        } else if (transform.position.x < target.x)
        {
            ghostScale.x = 1;
            transform.localScale = ghostScale;
        }
    }
}
