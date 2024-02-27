import play.api.libs.json.JsValue
import sttp.client3._
import sttp.client3.playJson.asJson
import scala.collection.mutable
import scala.io.StdIn

object Covid_API {

  def main(args: Array[String]): Unit = {
    /**
     * Utilisation de l'API developpé par le groupe M Medias qui renseigne sur les cas de Covid 19, décès et guérison par pays.
     *
     * Entrée utilisateur: nom du pays
     *
     * Sortie: nombre de personnes infectées par la maladie,
     * nombre de décès,
     * nombre de vaccins administrés,
     * nombre de personne vaccinés et partiellement vaccinés + les dates de mise à jour.
     */


    for (_ <- 0 to 9) {

      /** *
       * Pour tester le programme on a utilisé les valeurs suivantes:
       * 1ère itération: "France"
       * 2ème itération: "Switzerland"
       * 3ème itération: "Afghanistan"
       * 4ème itération: "Albania"
       * 5ème itération: "Argentina"
       */


      val countryName = StdIn.readLine("Entrez le nom d'un pays (le premier caractère est en Majuscule): ")

      // Ce dictionnaire contiendra toutes les informations concernant un pays (valeur-> données numéric)
      val dataCountryNumeric = mutable.Map[String, Double]()
      // Le dictionnaire suivant contient toutes les dates de mis-à-jour.
      val dataCountryString = mutable.Map[String, String]()

      val first_backend = HttpURLConnectionBackend()
      val first_request = basicRequest
        // la ressource qui est contenu dans l'url suivant décrit les cas de Covid 19 dans chaque pays.
        .get(uri"https://covid-api.mmediagroup.fr/v1/cases")
        .response(asJson[JsValue].getRight)
      val first_response = first_request.send(first_backend).body
      val firstResponseList = List(first_response)

      // firstResponseList contient 1 seul objet à l'intérieur duquel il y a différents objets d'où l'utilisation de firstResponseList(0)
      // firstResponseList(i) tel que i>0 renverra donc une erreur.
      // On rajoute la clé "All" puisque celle ci contient toutes les données concernant le pays (et donc effectue une moyenne des résultats obtenu pour les différentes villes du pays)

      var correspondingObject = List(firstResponseList.head(countryName) \ "All")


      for (elements <- correspondingObject) {
        val confirmed = (elements \ "confirmed").get.as[Double]
        val deaths = (elements \ "deaths").get.as[Double]
        val update = (elements \ "updated").get.as[String]
        dataCountryNumeric.put("confirmed", confirmed)
        dataCountryNumeric.put("deaths", deaths)
        dataCountryString.put("updateCases", update)
      }


      val second_backend = HttpURLConnectionBackend()
      val second_request = basicRequest
        // la ressource qui est contenu dans l'url suivant décrit les informations sur les vaccins dans chaque pays
        .get(uri"https://covid-api.mmediagroup.fr/v1/vaccines")
        .response(asJson[JsValue].getRight)
      val second_response = second_request.send(second_backend).body
      val secondResponseList = List(second_response)

      val correspondingObject = List(secondResponseList.head(countryName) \ "All")

      for (elements <- correspondingObject) {
        val population = (elements \ "population").get.as[Double]
        val administered = (elements \ "administered").get.as[Double]
        val people_vaccinated = (elements \ "people_vaccinated").get.as[Double]
        val people_partially_vaccinated = (elements \ "people_partially_vaccinated").get.as[Double]
        val update = (elements \ "updated").get.as[String]
        dataCountryNumeric.put("population", population)
        dataCountryNumeric.put("administered", administered)
        dataCountryNumeric.put("people_vaccinated", people_vaccinated)
        dataCountryNumeric.put("people_partially_vaccinated", people_partially_vaccinated)
        dataCountryNumeric.put("percentage_vaccinated", 100 * people_vaccinated/population)
        dataCountryNumeric.put("percentage_partially_vaccinated", 100 * (people_partially_vaccinated-people_vaccinated)/population)
        dataCountryNumeric.put("percentage_non_vaccinated", 100 * (population-people_partially_vaccinated)/population)
        dataCountryString.put("updateVaccins", update)
      }

      val result_data = ujson.Obj("country_name" -> countryName)

      for ((k, v) <- dataCountryNumeric) {
        result_data(k) = v
      }

      for ((k, v) <- dataCountryString) {
        result_data(k) = v
      }

      /**
       * ici on écrit le résultat obtenu pour chaque itération dans un fichier json qui est ici "resultData.json"
       * Ce fichier contiendra donc à la fin de la boucle les résultats obtenus pour les 5 entrées utilisateurs différentes.
       */

      os.write.append(os.pwd / "src" / "main" / "scala" / "resultData.json", result_data)

      println(result_data)

    }


  }


}
