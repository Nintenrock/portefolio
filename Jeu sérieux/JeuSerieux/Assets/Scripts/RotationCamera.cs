using UnityEngine;
using System.Collections;

public class RotationCamera : MonoBehaviour
{
    float rapiditeCam = 0.25f; 
    private Vector3 lastMouse = new Vector3(255, 255, 255); 
    
    void Update()
    {
        // Pour chaque image du jeu on applique ceci
        lastMouse = Input.mousePosition - lastMouse;
        lastMouse = new Vector3(-lastMouse.y * rapiditeCam, lastMouse.x * rapiditeCam, 0);
        lastMouse = new Vector3(transform.eulerAngles.x + lastMouse.x, transform.eulerAngles.y + lastMouse.y, 0);
        transform.eulerAngles = lastMouse;
        lastMouse = Input.mousePosition;
    }

}