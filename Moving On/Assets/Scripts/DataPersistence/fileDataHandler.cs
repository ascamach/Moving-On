using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;
using System.IO;

public class fileDataHandler
{
    //strings to create the save directory file path
    private string dataDirPath = "";
    private string dataFileName = "";


    //encryption key
    private bool useEncryption = false;

    private readonly string encriptionCodeWorld = "yakitori";

    public fileDataHandler(string dataDirPath, string dataFileName, bool useEncryption)
    {
        this.dataDirPath = dataDirPath;
        this.dataFileName = dataFileName;
        this.useEncryption = useEncryption;
    }

    public gameData Load()
    {
        string fullPath = Path.Combine(dataDirPath, dataFileName);
        gameData loadedData = null;
        if (File.Exists(fullPath))
        {
            try
            {
                //load the serialzed data from the file
                string dataToLoad = "";
                using (FileStream stream = new FileStream(fullPath, FileMode.Open))
                {
                    using (StreamReader reader = new StreamReader(stream))
                    {
                        dataToLoad = reader.ReadToEnd();
                    }
                }

                //optionaly decrypt the data
                if (useEncryption)
                {
                    dataToLoad = EncryptDecrypt(dataToLoad);
                }

                //deserialze the data from Json back into the C# object
                loadedData = JsonUtility.FromJson<gameData>(dataToLoad);
            }
            catch (Exception e)
            {
                Debug.LogError("Error occured when trying to load data from file: " + fullPath + "\n" + e);
            }
        }
        return loadedData;
    }

    public void Save(gameData data)
    {
        string fullPath = Path.Combine(dataDirPath, dataFileName);
        try
        {
            //create the directory the file will be written to if it doesn't already exist
            Directory.CreateDirectory(Path.GetDirectoryName(fullPath));

            //serizalize the C# game data object into Json
            string dataToStore = JsonUtility.ToJson(data, true);

            //optionally encrpyt the data
            if (useEncryption)
            {
                dataToStore = EncryptDecrypt(dataToStore);
            }

            //write the serialized data to the file
            using (FileStream stream = new FileStream(fullPath, FileMode.Create))
            {
                using (StreamWriter writer = new StreamWriter(stream))
                {
                    writer.Write(dataToStore);
                }
            }
        }

        catch (Exception e)
        {
            Debug.LogError("Error occured when trying to save data to file: " + fullPath + "\n" + e);
        }
    }


    private string EncryptDecrypt(string data)
    {
        string modifiedData = "";
        for (int i = 0; i < data.Length; i++)
        {
            modifiedData += (char)(data[i] ^ encriptionCodeWorld[i % encriptionCodeWorld.Length]);
        }
        return modifiedData;
    }
}
