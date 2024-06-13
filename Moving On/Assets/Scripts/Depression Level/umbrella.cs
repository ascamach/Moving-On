using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class umbrella : MonoBehaviour
{
    private GameObject depressionManagerObj;
    private GameObject audiomanagerObj;
    [Header("Put Canvas Animator Here for Fade In: ")]
    [SerializeField] private Animator animator;
    private void Start()
    {
        depressionManagerObj = GameObject.Find("/depressionLevelManager");
        audiomanagerObj = GameObject.Find("/BackgroundMusic");

        if(depressionManagerObj == null)
        {
            Debug.Log("Could Not Find Depression Manager");
        }
        else
        {
            Debug.Log("Found something to store for Depression Manager");
        }

        if (audiomanagerObj == null)
        {
            Debug.Log("Could Not Find Audio Manager");
        }
        else
        {
            Debug.Log("Found something to store for Audio Manager");
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
            levelManager.Instance.levelsCompleted[0] = true;
            levelManager.Instance.levelsUnlocked[1] = true;
            Destroy(depressionManagerObj);
            Destroy(audiomanagerObj);

            SceneManager.LoadSceneAsync("hubWorld"); //Normaly, this will take us to hub world, but for the purpose of v.slice, it takes to credits menu.
        }
    }


}
