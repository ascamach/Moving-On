using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class umbrella : MonoBehaviour
{
    private void OnCollisionEnter2D(Collision2D collision)
    {
        if(collision.gameObject.tag == "Player")
        {
            SceneManager.LoadSceneAsync("creditsMenu"); //Normaly, this will take us to hub world, but for the purpose of v.slice, it takes to credits menu.
        }
    }
}
