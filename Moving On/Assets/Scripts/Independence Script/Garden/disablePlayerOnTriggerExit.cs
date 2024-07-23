using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class disablePlayerOnTriggerExit : MonoBehaviour
{
    [SerializeField] private GameObject player;
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerExit2D(Collider2D collision)
    {
        if (collision.tag == "Player")
        {
            player.SetActive(false);
            StartCoroutine(toIndependece());
        }
    }

    IEnumerator toIndependece()
    {
        Debug.Log("Heading to Independence in 3 seconds...");
        yield return new WaitForSeconds(3f);
        SceneManager.LoadSceneAsync("Independence");
        
    }
}
