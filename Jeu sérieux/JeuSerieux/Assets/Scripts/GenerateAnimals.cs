using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using LitJson;
using System.IO;
using UnityEditor;

public class GenerateAnimals : MonoBehaviour
{
    public Text affirmation;
    private JsonData js_data;
    private string jsonString; 
    // Dictionary <string, HashSet<string>> animalDict = new Dictionary<string, HashSet<string>>();
    Dictionary <string, HashSet<int>> caracteristiques = new Dictionary <string, HashSet<int>>();
    Dictionary <string, HashSet<int>> taxonomie = new Dictionary <string, HashSet<int>>();
    // Start is called before the first frame update
    void Start()
    {
        jsonString = File.ReadAllText(Application.dataPath + "/Resources/animals.json");

        // JsonMapper permet de mapper en dictionnaire les données du fichier json.
        js_data = JsonMapper.ToObject(jsonString);

        for (int animal = 0; animal < js_data["animaux"].Count; animal++) {
            string nom = js_data["animaux"][animal]["nom"].ToString();
            string lieux = js_data["animaux"][animal]["lieu"].ToString();
            string habitats = js_data["animaux"][animal]["habitat"].ToString();
            string apparences = js_data["animaux"][animal]["apparence"].ToString();
            string dietes = js_data["animaux"][animal]["diete"].ToString();
            string classifications = js_data["animaux"][animal]["classification"].ToString();
            
            string[] lieuList = lieux.Split(',');
            string[] habitatList = habitats.Split(',');
            string[] apparenceList = apparences.Split(',');
            string[] dieteList = dietes.Split(',');
            string[] classificationList = classifications.Split(',');

            foreach (string lieu in lieuList) {
                string lieuString = lieu.Trim();
                if (!caracteristiques.ContainsKey(lieuString)) {
                    HashSet<int> value = new HashSet<int>();
                    value.Add(animal);
                    caracteristiques.Add(lieuString, value);
                } else {
                    caracteristiques[lieuString].Add(animal);
                }
            } 

            foreach (string habitat in habitatList) {
                string habitatString = habitat.Trim();
                if (!caracteristiques.ContainsKey(habitatString)) {
                    HashSet<int> value = new HashSet<int>();
                    value.Add(animal);
                    caracteristiques.Add(habitatString, value);
                } else {
                    caracteristiques[habitatString].Add(animal);
                }
            }      

            foreach (string apparence in apparenceList) {
                string apparenceString = apparence.Trim();
                if (!caracteristiques.ContainsKey(apparenceString)) {
                    HashSet<int> value = new HashSet<int>();
                    value.Add(animal);
                    caracteristiques.Add(apparenceString, value);
                } else {
                    caracteristiques[apparenceString].Add(animal);
                }
            }                 

            foreach (string diete in dieteList) {
                string dieteString = diete.Trim();
                if (!caracteristiques.ContainsKey(dieteString)) {
                    HashSet<int> value = new HashSet<int>();
                    value.Add(animal);
                    caracteristiques.Add(dieteString, value);
                } else {
                    caracteristiques[dieteString].Add(animal);
                }
            }               

            foreach (string classification in classificationList) {
                string classificationString = classification.Trim();
                if (!taxonomie.ContainsKey(classificationString)) {
                    HashSet<int> value = new HashSet<int>();
                    value.Add(animal);
                    taxonomie.Add(classificationString, value);
                } else {
                    taxonomie[classificationString].Add(animal);
                }

            } 
        }

        int difficulte = 3;
        int[] animaux_choisis = ChoisirAnimal(js_data, difficulte, caracteristiques, taxonomie);
        int animal_choisi = animaux_choisis[0];

        var nb_affirmation = UnityEngine.Random.Range(0, 1);
        if (nb_affirmation == 0) {
            affirmation.text = js_data["animaux"][animal_choisi]["affirmation_1"].ToString();
        } else {
            affirmation.text = js_data["animaux"][animal_choisi]["affirmation_2"].ToString();
        }

        int compteur = 1;
        foreach(int animal in animaux_choisis) {
            var path_to_texture = "Assets/Art/Textures/";
            Texture2D tex = (Texture2D) AssetDatabase.LoadAssetAtPath(path_to_texture + js_data["animaux"][animal]["image"].ToString(), typeof(Texture2D));
            string nom_panneau = "Panneau" + compteur;
            GameObject panneau = GameObject.Find(nom_panneau);
        
            if (panneau != null)
                {
                    GameObject cube = panneau.transform.GetChild(1).gameObject;
                    cube.GetComponent<Renderer>().material.SetTexture("_MainTex", tex);
                }
            compteur++;
        }


    }



    // Update is called once per frame
    void Update()
    {
        
    }

    int[] ChoisirAnimal(JsonData js_data, int difficulte, Dictionary <string, HashSet<int>> caracteristiques, Dictionary <string, HashSet<int>> taxonomie) 
    {
        int animal_choisi = UnityEngine.Random.Range(0, js_data["animaux"].Count-1);
        int[] animaux_choisis = {animal_choisi, -1, -1, -1};
        switch (difficulte)
        {
            case 1:
                for (int i = 0; i < 3; i++) {
                    int nombre_aleatoire = 0;
                    do {
                        nombre_aleatoire = UnityEngine.Random.Range(0, js_data["animaux"].Count-1);
                    } while(Array.Exists(animaux_choisis, x => x == nombre_aleatoire));
                    int compteur = 1;
                    var ajouter = false;
                    do {
                        if (animaux_choisis[compteur] == -1) {
                            animaux_choisis[compteur] = nombre_aleatoire;
                            ajouter = true;
                        }
                        compteur++;
                    } while(!ajouter && compteur < animaux_choisis.Length);
                }
            break;

            case 2:
            string apparences = js_data["animaux"][animal_choisi]["apparence"].ToString();
            string choix = ChoixPossible_2(apparences, caracteristiques);

            if (choix == "") {
                return ChoisirAnimal(js_data, difficulte, caracteristiques, taxonomie);
            }

            int nb_animaux = 0;
            foreach (int element in caracteristiques[choix]) {
                if (nb_animaux < 3 && element != animal_choisi) {
                    int compteur = 1;
                    var ajouter = false;
                    do {
                        if (animaux_choisis[compteur] == -1) {
                            animaux_choisis[compteur] = element;
                            ajouter = true;
                        } 
                        compteur++;
                    } while(!ajouter && compteur < animaux_choisis.Length);
                    nb_animaux++;
                }


            }
            break;

            case 3:
            apparences = js_data["animaux"][animal_choisi]["apparence"].ToString();
            string classification = js_data["animaux"][animal_choisi]["classification"].ToString();
            HashSet<int> choixSet = ChoixPossible_3(apparences, caracteristiques, classification, taxonomie);
            
            if (choixSet.Count == 0) {
                return ChoisirAnimal(js_data, difficulte, caracteristiques, taxonomie);
            }

            nb_animaux = 0;
            foreach (int element in choixSet) {
                if (nb_animaux < 3 && element != animal_choisi) {
                    int compteur = 1;
                    var ajouter = false;
                    do {
                        if (animaux_choisis[compteur] == -1) {
                            animaux_choisis[compteur] = element;
                            ajouter = true;
                        } 
                        compteur++;
                    } while(!ajouter && compteur < animaux_choisis.Length);
                    nb_animaux++;
                }


            }
            break;

        }

        return animaux_choisis;
    }

    string ChoixPossible_2(string caracteristique, Dictionary <string, HashSet<int>> caracteristiques) 
    {
        string[] list = caracteristique.Split(',');
        foreach (string element in list) {
            string proper_element = element.Trim();
            if (caracteristiques[proper_element].Count > 3) {
                return proper_element;
            }
        }
        return "";
    }

    HashSet<int> ChoixPossible_3(string caracteristique, Dictionary <string, HashSet<int>> caracteristiques, string classification, Dictionary <string, HashSet<int>> taxonomie) 
    {
        string[] car_list = caracteristique.Split(',');
        string[] class_list = classification.Split(',');
        string groupe = class_list[2].Trim();
        foreach (string element in car_list) {
            string proper_element = element.Trim();
            HashSet<int> SetA = caracteristiques[proper_element];
            HashSet<int> SetB = taxonomie[groupe];
            SetA.IntersectWith(SetB);
            if (SetA.Count > 3) {
                return SetA;
            }
        }
        HashSet<int> EmptySet = new HashSet<int>();
        return EmptySet;
    }
}

