using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cible : MonoBehaviour
{
    public void Detruire()
    {
        Destroy(this.gameObject);
    }

    public GameObject ReturnGameObject()
    {
        return this.gameObject;
    }

}
