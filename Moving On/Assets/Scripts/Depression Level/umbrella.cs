using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class umbrella : MonoBehaviour
{
    private GameObject depressionManagerObj;
    private void Start()
    {
        depressionManagerObj = GameObject.Find("/depressionLevelManager");
        if(depressionManagerObj == null)
        {
            Debug.Log("Could Not Find Depression Manager");
        }
        else
        {
            Debug.Log("Found something to store");
        }
    }

    private void OnCollisionEnter2D(Collision2D collision)
    {
        if(collision.gameObject.tag == "Player")
        {
            depressionLevelManager.Instance.playerSpawn = 0;
            depressionLevelManager.Instance.keyObtained = false;
            depressionLevelManager.Instance.houseFirstTrigger = false;
            depressionLevelManager.Instance.doughnutsRecieved = false;
            depressionLevelManager.Instance.roofFirstTrigger = false;
            Destroy(depressionManagerObj);

            SceneManager.LoadSceneAsync("creditsMenu"); //Normaly, this will take us to hub world, but for the purpose of v.slice, it takes to credits menu.
        }
    }
}
