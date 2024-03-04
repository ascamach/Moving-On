using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public interface iDataPersistence
{
    void LoadData(gameData data);

    void SaveData(ref gameData data);
}
