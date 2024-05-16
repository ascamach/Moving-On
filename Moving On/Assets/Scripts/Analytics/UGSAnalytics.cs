using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Unity.Services.Analytics;
using Unity.Services.Core;
using Unity.Services.Core.Analytics;


public class UGS_Analytics : MonoBehaviour
{
    async void Start()
    {
        try
        {
            await UnityServices.InitializeAsync();
            GiveConsent(); //Get user consent according to various legislations
            LevelCompletedCustomEvent();
        }
        catch (ConsentCheckException e)
        {
            Debug.Log(e.ToString());
        }
    }

    private void LevelCompletedCustomEvent()
    {
        int currentLevel = Random.Range(1, 4);

        Dictionary<string, object> parameters = new Dictionary<string, object>()
        {
            { "levelName", "level" + currentLevel.ToString() }
        };

        AnalyticsService.Instance.CustomData("levelCompleted", parameters);

        AnalyticsService.Instance.Flush();
    }

    public void GiveConsent()
    {
        // Call if consent has been given by the user
        AnalyticsService.Instance.StartDataCollection();
        Debug.Log($"Consent has been provided. The SDK is now collecting data!");
    }

}