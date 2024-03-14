using UnityEngine;

public class ButtonHoverSound : MonoBehaviour
{
    public AudioClip[] hoverSounds;
    private AudioSource audioSource;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    public void PlayRandomHoverSound()
    {
        if (hoverSounds.Length > 0)
        {
            int randomIndex = Random.Range(0, hoverSounds.Length);
            audioSource.clip = hoverSounds[randomIndex];
            audioSource.Play();
        }
    }
}
