using System;
using UnityEditor;
using UnityEngine;

public class Fusil : MonoBehaviour
{
    public Camera fpsCam;
    public ParticleSystem muzzleFlash;
    public GameObject balle;
    public GameObject groundEffect;
    public float impactForce = 30f;
    
    void Update()
    {
        Cursor.visible = false;
        if (Input.GetButtonDown("Fire1"))
        {
            Tir();
        }
    }

    void Tir()
    {
        muzzleFlash.Play();
        RaycastHit hit;
        if (Physics.Raycast(fpsCam.transform.position, fpsCam.transform.forward, out hit))
        {
            
            //Debug.Log(hit.transform.name);
            Cible cible_cub = hit.transform.GetComponent<Cible>();
            
            if (cible_cub != null)
            {
                GameObject currentObject = cible_cub.ReturnGameObject();
                Debug.Log(currentObject.transform.name);
                // On récupère le parent
                GameObject rootGameObject = currentObject.transform.root.gameObject;
                //Debug.Log(rootGameObject.transform.name);
                //Debug.Log(rootGameObject.transform.position);
                Destroy(rootGameObject);
            }

            if (hit.rigidbody != null)
            {
                hit.rigidbody.AddForce(-hit.normal*impactForce);
            }
            GameObject bullet =  Instantiate(balle, hit.point, Quaternion.LookRotation(hit.normal));
            GameObject ground_effect = Instantiate(groundEffect, hit.point, Quaternion.LookRotation(hit.normal));
            // On fait disparaître la balle après 2 secondes.
            Destroy(bullet,2f);
            Destroy(ground_effect, 2f);
        }
        
    }
}
