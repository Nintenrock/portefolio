package controllers

import play.api.libs.json.{JsValue, Json}
import play.api.mvc._
import sttp.client3.playJson.asJson
import sttp.client3.{HttpURLConnectionBackend, UriContext, basicRequest}
import scala.collection.mutable.{ArrayBuffer, Map, Set}
import javax.inject._


/**
 * This controller creates an `Action` to handle HTTP requests to the
 * application's home page.
 */
@Singleton
class HomeController @Inject()(cc: ControllerComponents) extends AbstractController(cc) {

  /**
   * Create an Action to render an HTML page.
   *
   * The configuration in the `routes` file means that this method
   * will be called when the application receives a `GET` request with
   * a path of `/`.
   */

  def index() = Action { implicit request: Request[AnyContent] =>
    Ok(views.html.index())

  }


  /**
   * ---------------------------------TEMPERATURE-------------------------------------------
   * Production d'un flot de données qui produit chaque 5 min
   * la valeur maximale de la temperature mesurée durant les 5 dernières minutes par le capteur.
   */

  def cases = Action { implicit request: Request[AnyContent] =>

    val tempValues = Set[Double]()
    var update_time = 0

    /**
     * Il faudra 30 itération puisque le capteur fourni la valeur de
     * la température toutes les 10 secondes. Mais ce temps est beaucoup trop long pour le serveur.
     * Donc le programme n'attendra pas 10s avant de passer à chaque itération. */

    for (_ <- 0 to 29) {
      val backend = HttpURLConnectionBackend()
      val request = basicRequest
        .get(uri"http://10.194.69.214:3671/sensors/2/get_temperature")
        .response(asJson[JsValue].getRight)
      val response = List(request.send(backend).body)
      for (elmnt <- response) {
        tempValues += (elmnt \ "value").get.as[Double]
        update_time = (elmnt \ "updateTime").get.as[Int]
      }
    }
    val maxValue = tempValues.max
    // On crée notre objet json
    val json: JsValue = Json.obj(
      "Max-T" -> maxValue,
      // le update_time correspond au moment à partir duquel l'information sur la température a été prise.
      "update_time" -> update_time
    )
    // Il faut toujours prendre le Ok -> status.
    Ok(json)
  }


  /**
   * ---------------------------------HUMIDITÉ-------------------------------------------
   * Production d'un agrégateur de type filtre, qui produit chaque 10 secondes,
   * la valeur des 12 précédentes dernières mesures prises à 10 seconde d'intervalles.
   * durant les 2 dernières mesures.
   */


  def vaccines = Action { implicit request: Request[AnyContent] =>

    val humdityValues = ArrayBuffer[Double]()
    val mapOf_humidity = Map[Int, Double]()
    var update_time = 0

    /** Il faudra 12 itérations, puisqu'il faut récupérer les mesures à 10 secondes d'intervalles*
     * Comme avant le temps d'attente est beaucoup trop long pour le serveur. */

    for (i <- 0 to 11) {
      val backend = HttpURLConnectionBackend()
      val request = basicRequest
        .get(uri"http://10.194.69.214:3671/sensors/2/get_humidity")
        .response(asJson[JsValue].getRight)
      val response = List(request.send(backend).body)

      for (elmnt <- response) {
        humdityValues += (elmnt \ "value").get.as[Double]
        if (i == 11) {
          update_time = (elmnt \ "updateTime").get.as[Int]
          mapOf_humidity.put(update_time, humdityValues.sum / humdityValues.length)
        }
      }
    }

    val keys = mapOf_humidity.keySet.toArray
    val u_json = ujson.Obj(
      keys(0).toString -> mapOf_humidity(keys(0))
    )

    // On stock les résultats dans un fichiers  json (humidityResult.json).
    os.write.append(os.pwd / "app" / "controllers" / "humidityResult1.json", u_json)
    os.write.append(os.pwd / "app" / "controllers" / "humidityResult1.json", ",")
    Ok(u_json.toString())
  }

  // Le but de la fonction ci-dessous est d'envoyer continuellement des requêtes à notre API sur la température moyenne.

  def test = Action { implicit request: Request[AnyContent] =>
    var backend = HttpURLConnectionBackend()
    var request = basicRequest
      .get(uri"http://localhost:9000/moy_humidity")
      .response(asJson[JsValue].getRight)
    var response: JsValue = request.send(backend).body
    for (_ <- 0 to 98) {
      backend = HttpURLConnectionBackend()
      request = basicRequest
        .get(uri"http://localhost:9000/moy_humidity")
        .response(asJson[JsValue].getRight)
      response = request.send(backend).body
    }
    Ok(response)
  }


  /** Production d'un agrégateur de type transformateur. Un aggrégateur de type transformateur prend en entrée
   * un flot de données de type E1 et fourni en sortie un flot de données de type E2.
   * Objectif: produire un flot de données qui produit chaque minute l'information sur le niveau de luminosité
   * produit par le capteur chaque minute.
   */

  def getLux = Action { implicit request: Request[AnyContent] =>
    Thread.sleep(60000)
    val backend = HttpURLConnectionBackend()
    val request = basicRequest
      .get(uri"http://10.194.69.214:3671/sensors/2/get_luminance")
      .response(asJson[JsValue].getRight)
    val response = List(request.send(backend).body)
    var luminaceValue = 0
    var updateTime = 0
    var niveau: String = ""

    for (elmnt <- response) {
      luminaceValue = (elmnt \ "value").get.as[Int]
      updateTime = (elmnt \ "updateTime").get.as[Int]
    }
    if (luminaceValue >= 0 && luminaceValue <= 10) niveau = "Bas"
    else if (luminaceValue >= 10 && luminaceValue <= 100) niveau = "Modere"
    else if (luminaceValue > 100) niveau = "Haut"

    val u_json = ujson.Obj(
      updateTime.toString -> niveau
    )

    os.write.append(os.pwd / "app" / "controllers" / "luxResult2.json", u_json)
    os.write.append(os.pwd / "app" / "controllers" / "luxResult2.json", ",")
    Ok(u_json.toString())

  }

  // Le  but de cette fonction est d'envoyer des requêtes GET à notre API pour les 100 lignes concernant la luminosité.
  def requestLux = Action { implicit  request: Request[AnyContent] =>
    var backend = HttpURLConnectionBackend()
    var request = basicRequest
      .get(uri"http://localhost:9000/getLux")
      .response(asJson[JsValue].getRight)
    var response = request.send(backend)
    for (_ <- 0 to 98) {
      backend = HttpURLConnectionBackend()
      request = basicRequest
        .get(uri"http://localhost:9000/getLux")
        .response(asJson[JsValue].getRight)
      response = request.send(backend)
    }
    val reponse = response.body
    // Les données renvoyé ici n'ont pas d'importance.
    Ok(reponse)

  }

  /*
  def postREquest = Action(parse.json) {
    request =>
      Ok(Json.obj("received" -> Json.toJson(request.body)))
  }

   */


}




