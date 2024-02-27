package controllers

import play.api.libs.json.{JsValue, Json}
import sttp.client3.playJson.asJson
import sttp.client3.{HttpURLConnectionBackend, UriContext, basicRequest}
import util.control.Breaks._
import java.util.{Timer, TimerTask}

import java.io.FileInputStream

import models._

import scala.collection.mutable.ArrayBuffer


object getDatas {

  def getRequest(): Unit = {
    // Première requête pour récupérer les données sur les cas.
    val first_backend = HttpURLConnectionBackend()
    val first_request = basicRequest
      .get(uri"https://covid-api.mmediagroup.fr/v1/cases")
      .response(asJson[JsValue].getRight)
    val first_response = first_request.send(first_backend).body
    // On stocke le résultat dans un fichier json
    os.write.over(os.pwd / "app" / "controllers" / "cases.json", first_response.toString())
    // Deuxième requête pour récupérer les données sur les vaccins.
    val second_backend = HttpURLConnectionBackend()
    val second_request = basicRequest
      .get(uri"https://covid-api.mmediagroup.fr/v1/vaccines")
      .response(asJson[JsValue].getRight)
    val second_response = second_request.send(second_backend).body
    // On stocke le résultat dans un autre fichier json
    os.write.over(os.pwd / "app" / "controllers" / "vaccins.json", second_response.toString())
  }

  def getAllcountries(): ArrayBuffer[objectToReturn] = {
    // On parse le fichier cases.json
    var stream = new FileInputStream("C:\\Users\\Nikita\\IdeaProjects\\Projet Mashup\\app\\controllers\\cases.json")
    val jsonCountries = try {
      Json.parse(stream)
    }
    finally {
      stream.close()
    }
    // On parse le fichier vaccins.json
    stream = new FileInputStream("C:\\Users\\Nikita\\IdeaProjects\\Projet Mashup\\app\\controllers\\vaccins.json")
    val jsVaccins = try {
      Json.parse(stream)
    }
    finally {
      stream.close()
    }
    val allCountriesName = ArrayBuffer[JsValue]()
    val cases = jsonCountries \\ "All"
    for (i <- cases) {
      // On récupère uniquement les données qui ont une classe définie afin d'éliminer les données inutiles.
      // Puis on les ajoutes dans le tableau
      if ((i \ "country").isDefined) allCountriesName.addOne((i \ "country").get)
    }
    val jsCountriesList = List(jsonCountries)
    val jsVaccinsList = List(jsVaccins)
    val arrayOfObject = ArrayBuffer[objectToReturn]()

    for (j <- allCountriesName) {
      breakable {
        // On récupère les données sur les cas
        val country = (jsCountriesList(0)(j.as[String]) \ "All" \ "country").as[String]
        val abbreviation = (jsCountriesList(0)(j.as[String]) \ "All" \ "abbreviation").as[String]
        val confirmed = (jsCountriesList(0)(j.as[String]) \ "All" \ "confirmed").as[Double]
        val deaths = (jsCountriesList(0)(j.as[String]) \ "All" \ "deaths").as[Double]
        // val update_cas = (jsCountriesList(0)(j.as[String]) \ "All" \ "updated").as[String]

        try {
          // On essaie de récupérer les données sur les vaccins
          (jsVaccinsList(0)(j.as[String]) \ "All" \ "administered").as[Double]
          (jsVaccinsList(0)(j.as[String]) \ "All" \ "people_vaccinated").as[Double]
          (jsVaccinsList(0)(j.as[String]) \ "All" \ "people_partially_vaccinated").as[Double]
          //val update_vaccins = (jsVaccinsList(0)(j.as[String]) \ "All" \ "updated").as[String]
        }
        catch {
          case _: java.util.NoSuchElementException =>
            println("Les données sur " + j.toString() + " concernant les vaccins n'existe pas")
            // On passe donc à la prochaine itération
            break()
        }
        // On récupère les données sur les vaccins
        val administered = (jsVaccinsList(0)(j.as[String]) \ "All" \ "administered").as[Double]
        val people_vaccinated = (jsVaccinsList(0)(j.as[String]) \ "All" \ "people_vaccinated").as[Double]
        val people_partially_vaccinated = (jsVaccinsList(0)(j.as[String]) \ "All" \ "people_partially_vaccinated").as[Double]
        //val update_vaccins = (jsVaccinsList(0)(j.as[String]) \ "All" \ "updated").as[String]

        val objToReturn = new objectToReturn(country, abbreviation, confirmed, deaths,
          administered, people_vaccinated, people_partially_vaccinated)
        arrayOfObject.addOne(objToReturn)
      }
    }
    return arrayOfObject
  }



  // Fonctions qui va exécuter toutes les tâches.
  def executeTask(): Unit = {
    val timer = new Timer()
    val taskRequest = new TimerTask {
      override def run(): Unit = {
        getRequest()
      }
    }
    val taskAllCountries = new TimerTask {
      override def run(): Unit = {
        getAllcountries()
      }
    }

    // On planifie les tâches à exécuter.
    // On envoie les requêtes toutes les 10 secondes
    timer.schedule(taskRequest,0L,10000L)
    // On exécute la fonction getAllcountries toutes les milli secondes
    timer.schedule(taskAllCountries,2000L,2000L)

    Thread.sleep(2*300000L)

    timer.cancel()
    taskRequest.cancel()
    taskAllCountries.cancel()


  }


  def main(args: Array[String]): Unit = {
    executeTask()


  }

}
