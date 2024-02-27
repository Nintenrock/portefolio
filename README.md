# Portefolio des projets académiques effectués
Dans ce repositoire git, vous trouverez les codes rédigés pour la plupart des projets effectués lors de mes études. Ces projets, à l'exception du dernier, ont été réalisés avec un groupe d'autres étudiants. Dans ce README, vous trouverez les détails sur ces projets, notamment le but du projet, les technologies utilisés, ma contribution et qu'ai-je appris de ces projets. Vous trouverez plus de détails à ces projets dans les rapports se trouvant dans leurs dossiers dédiés, s'ils sont disponibles. 

-----
*English below:* \
In this git repository, you will find codes that were written for various projects in my college degree. These projects were all, except for the last one, made with a group of other students. In this README, you will find details on these projects, mainly the goal of the project, the technologies that were used, my contribution to the project and what I had learned from these projects. You will find more details on these projects in the reports found in their dedicated folders, if they are available.

## Table des matières
1. [Création d'une carte interactive avec des données d'API](#interactive-map-fr) / *[Interactive map using data from an API](#interactive-map-eng)*
2. [Proposition de cours à options pour étudiants](#recommended-courses-fr) / *[Optional courses proposal for students](#recommended-courses-eng)*
3. [Jeu sérieux](#serious-game-fr) / *[Serious game](#serious-game-eng)*
4. [Plateforme portfolio de projets pour étudiants](#platform-portfolio-fr) / *[Portfolio platform of projects for students](#platform-portfolio-eng)*
5. [Suivi des doctorants](#PhD-tracking-fr) / *[Tracking of PhD students](#PhD-tracking-eng)*
6. [Comparaison de techniques de résumés par clustering](#summarization-techniques-fr) / *[Comparing summarization techniques by clustering](#summarization-techniques-eng)*


<a id="interactive-map-fr"></a>

## Création d'une carte interactive avec des données d'API
Dans ce projet réalisé en binôme, nous avions développé un simple service qui renseigne aux utilisateurs divers informations concernant la pandémie liée au COVID-19 (décès, guérison, infection, nombre de personne vaccinées ou partiellement vaccinées, historique des cas de covid) pour chaque pays dans le monde. \
Ce service récupère des données d'un API, qui en fournit quotidiennement. À partir de ces données, nous avions créer une carte interactive pour les nouveaux cas recensés, ainsi que pour les nombre de personnes vaccinés dans chaque pays.\
Ce service a été développé avec Play Framework, un framework de Scala. Les cartes ont été réalisés avec Leaflet, une librarie JavaScript, et OpenStreetMap. 

-----
<a id="interactive-map-eng"></a>
*English below:* \
In this project done with another student, we have developed a simple service that informs users about various information regarding the COVID-19 pandemic (deaths, recoveries, infections, number of vaccinated or partially vaccinated people, history of cases) for each country of the world. \
Our service retrieves data from an API, that provides them daily. From this data, we have created an interactive map for new identified cases and for the number of vaccinated people. \
This service was developed with Play Framework, a Scala framework. The maps were made with Leaflet, a JavaScript library, and OpenStreetMap.

<a id="recommended-courses-fr"></a>

## Proposition de cours à options pour étudiants
Dans ce projet réalisé en binôme, nous avions développé un service numérique déstiné aux étudiants qui ont choisit l'orientation libre dans un cursus spécifique de l'université, à savoir une orientation dans laquelle ils peuvent choisir librement des cours à options dans n'importe quelle faculté, tout en continuant de suivre les cours obligatoires du cursus. \
Afin de réaliser ce projet, le service demande à l'étudiant d'entrer ses coordonnées (nom, prénom et numéro d'immatriculation), ainsi que leur semestre d'étude courant, les cours déjà suivis et ses centres d'intérêts. Ces données permettent au service de proposer à l'étudiant une liste de cours correspondant à ses critères et qui ne se produisent pas en même temps que les cours obligatoires du semestre. Le service prend également en compte les prérequis pour un cours : le service ne va pas proposer un cours avancé si l'étudiant n'a pas validé les bases et va plutôt proposer les cours prérequis, s'ils sont disponibles. Le service peut également proposer d'autres cours, sur la base des cours que l'étudiant a déjà suivi. L'étudiant peut ensuite cliquer sur un cours de la liste personalisée pour obtenir plus d'informations, notamment l'objectif et la description du cours, et peut ensuite générer un calendrier de la semaine, où apparaîtront les séances du cours sélectionné. ainsi que les cours obligatoires du semestre. \
Pour réaliser ce projet, nous avions fait appel à l'API de cours fournis par la division informatique de l'université. Ce projet a été réalisé avec Flask, un framework Python. Dans la partie interface, nous avons utilisé Bootstrap, framework CSS, et Jinja, un template pour le langage Python générant des pages web. Ce projet a permis de mettre en pratique la transformation d'un problème réel en un problème logique qui peut être résolu par un ordinateur.

-----
<a id="recommended-courses-eng"></a>
*English below:* \
In this project done with another student, we have developed a service aimed for students who have chosen to follow a free-style orientation in a specific college curriculum, i.e. an orientation in which students can freely choose their optional courses in whichever faculty, all the while keeping up with the mandatory courses of the curriculum. \
In order to realize this project, the service asks the student to enter their coordinates (i.e. name, surname and student number), as well as their current semester of study, the courses that were already taken and their interests. This data allows the service to recommend a list of courses, that correspond to the student's criteria and that don't happen at the same time as the mandatory courses of the semester. The service also takes into account the prerequisites for a course: the service will not recommend an advanced course if the student hasn't mastered the basics, and instead recommends the prerequisite courses if they are available. The service may also recommend other courses, based on what courses the student has taken. The student can then click on a course from the personalized list to get more information, particularly the objective and the description of the course, and then generate a weekly calendar, where the sessions for the course appear alongside those for the mandatory courses of the semester. \
In order to accomplish this project, we made use of the courses API provided by the IT department of the university. This project was done using Flask, a Python framework. For the front-end, we have used Bootstrap, a CSS framework, and Jinja, a template for the Python language that generates Web pages. This project allowed me to put into practice the transformation of a real-world problem into a logical problem that can be solved by a computer.


<a id="serious-game-fr"></a>

## Jeu sérieux
Dans ce projet réalisé dans l'engin de jeux vidéos Unity en binôme, nous avons développé un jeu pédagogique. Le but du jeu est de répondre à une série de questions à choix multiples en tirant sur des panneaux affichant des illustrations d'animaux. La difficulté du jeu varie en fonction de la performance du joueur : en répondant correctement, le temps disponible pour répondre diminue et les panneaux s'éloignent et commencent à se déplacer. Avec un plus grand risque, vient également une multiplication du score. Le joueur doit essayer de faire le meilleur score possible. \
Le but de ce projet est de créer un jeu qui peut être addictif et en même temps être un exercice de mémoire pour associer une illustration à un animal particulier. Ce projet nous a permis de se familiariser avec la conception des jeux vidéos, notamment l'essence des risques et récompenses.

-----
<a id="serious-game-eng"></a>
*English below:* \
In this project done with another student using the Unity video game engine, we have developed an educational video game. The goal of the game is to respond to a series of multiple-choice questions by shooting on boards with illustrations of animals on them. The difficulty of the game varies on the player's performance: by responding correctly, there's less time available to answer and the boards are pulled away and start moving. With a bigger risk, comes a multiplication of the score. The player should aim for the highest score possible. \
The goal of this project is to create a video game that can be both addictive and be a memory exercise to associate an illustration with a particular animal. This project allowed us to familiarize ourselves with the gaming design, especially with the essence of risk and reward.

<a id="platform-portfolio-fr"></a>

## Plateforme portfolio de projets pour étudiants
Dans ce projet réalisé en binôme, nous avons développé une plateforme dans laquelle les étudiants peuvent déposer leurs projects académiques, afin de faire valoir leurs qualités, ainsi que de faire valoir la faculté de l'université. Ce projet a été réalisé dans le cadre de deux cours différents. \
Dans un premier temps, nous avons conçu une interface personne-machine permettant d'accomplir certaines tâches que nous avons identifiés suite à une enquête auprès des étudiants, à savoir déposer un projet, modifier le projet déposé, rendre public ou privé un projet, voir les fichiers annexes au projet qui ont été déposés, partager les projets et rechercher des projets associés à un cours académique. Nous avons également relevés que les enseignants doivent pouvoir voir les projets des étudiants et déposer des lettres de recommandations à leurs étudiants. Nous avons d'abord fait des interfaces en format papier, puis des prototypes interactives en utilisant l'outil d'interface Axure RP. Nous avons ensuite testés ces interfaces en effectuant des tests utilisateurs dans lesquelles nous mesurions la performance de différents utilisateurs face à ces interfaces et leurs demandions de remplir des questionnaires de satisfaction. Dans l'ensemble, les interfaces que nous avons conçus ont bien été accueillis, et nous pouvions conclure qu'ils étaient efficaces et efficients. \
Dans un second temps, nous avons développés cette plateforme en full stack, tout en prenant en compte les tâches, que le système doit permettre de faire. La technologie principale utilisée est Laravel, un framework PHP. La base de données a été conçue en MySQL (phpMyAdmin), et en front-end, nous avons utilisés jQuery, une librarie JavaScript, pour permettre plus d'interactivité au niveau de l'interface, notamment avec la fonctionalité d'autocomplétion dans les formulaires et pour révéler des informations relatives à un projet, qui sont initialement cachés, lorsque l'on passe la souris sur ce projet. 

-----
<a id="platform-portfolio-eng"></a>
*English below:* \
In this project done with another student, we have developed a platform in which students can upload their academic projects, in order to assert their qualities, as well as bring value to the faculty of the university. This project was done as part of two different courses. \
First, we have designed a user interface that is able to accomplish certain tasks, that we have identified, following a survey of students, mainly upload projects, edit the uploaded projects, set projects to public or private, view the files attached to the uploaded projects, share projects and search the projects by their associated courses. We have also noted that teachers should also be able to view projects done as part of their courses and upload letters of recommendation for their students. We have first made user interfaces in a paper format, and then made an interactive prototype with the help of the interface tool Axure RP. We have tested these user interfaces, by doing user tests, in which we mesured the performances of various users when faced with these interfaces and we asked them to fill a satisfaction survey. Overall, the interfaces that we have designed were positively met and we could conclude that they were effective and efficient. \
Second, we have developed a platform in full stack, all the while taking into account the tasks, that the system should allow the user to do. The main technology used for developing this platform is Laravel, a PHP framework. The database was designed in MySQL (phpMyAdmin), and in the front-end, we have used jQuery, a JavaScript library that would bring more interactivity within the interface, mainly the autocomplate functionality to more easily fill out forms and reveal information relative to a project, which are initially hidden, when the user hovers their mouse over that project. 

<a id="PhD-tracking-fr"></a>

## Suivi des doctorants
Dans ce projet réalisé avec un groupe de 4 autres étudiants, nous avions développé un service déstiné aux doctorants universitaires. Ce service permet à la fois de faciliter le suivi des doctorants pour les superviseurs et le comité scientifique, et aux doctorants d'avoir un meilleur aperçu de leurs délais pour chaque étape de leurs PhD. Les délais sont personalisés pour chaque étudiant en fonction de leurs dates d'admission, ainsi que les règlements de la faculté auquel le doctorant est inscrit. Notre service propose un aperçu de ces délais par le biais d'une interface interactive que nous avons intitulé la timeline. L'étudiant peut voir à quel semestre il se trouve sur cette timeline et quels étapes a-t-il de doctorat a-t-il déjà accompli. Si le délai d'un rendu n'a pas été respecté, cette étape apparaîtra en rouge sur la timeline. Similairement, les superviseurs et le comité scientifique, qui suivent un certain nombre de doctorants à la fois peuvent également voir la timeline de ses étudiants. \
Pour pouvoir réaliser ce projet, la technologie principale que nous avons utilisé a été Moodle LMS, une plateforme d'apprentissage en ligne open-source distribuée sous la Licence publique générale GNU, écrite en PHP. L'université utilise déjà Moodle LMS pour les programmes de cours dédiés aux étudiants en bachelor et master, ainsi que pour les examens en ligne. Il a fallu également comprendre comment intégrer les réglements des facultés universitaires dans notre système. Pour cela nous avons analysé le réglement pour les doctorats de deux facultés et avons structuré les fichiers XML avec un fichier DTD commun pour les deux facultés. \
Étant un projet réalisé par un groupe d'étudiants, nous avons utilisé la méthode agile Scrum dans le développement de cette application Web et répartit les tâches entre chaque membre du groupe pour chaque sprint, durant 2 semaines. Durant ce projet, j'étais notamment en charge du développement des fichiers XML, ainsi que des tests unitaires et des tests fonctionnels. Le projet fut très ambitieux, nous nous sommes alors limités au développement des fonctionnalités décrites plus haut pour nos sprints. D'autres fonctionnalités, tels que la transcription automatique des réglements du format PDF au format XML, ainsi que le système de rappel par e-mail quelques mois avant les échances, seront développé par d'autres personnes.

-----
<a id="PhD-tracking-eng"></a>
*English below:* \
In this project done with a group of 4 other students, we have developed a service destined to PhD students. This service allows for a better following of the PhD students by their supervisors and the scientific committee, as well as for PhD students to get a better overview of their deadlines for each step of the PhD. The deadlines are personalized for each student, based on their admission date, as well as the faculty's regulations, in which the PhD has been enrolled. Our service offers an overview of those deadlines through an interactive interface, that we have called a timeline. The PhD student can view at which semester in the timeline they're currently at, and what steps have they already accomplished. If the deadline for one of the steps have not been met, it will appear in red on the timeline. Similarly, supervisors and the scientific committee, that follow a certain number of PhD students at once can also view the timelines for their students. \
In order to realize this project, the main technology that we used was Moodle LMS, a free and open-source learning managament system, distributed under the GNU General Public License and written in PHP. The university already uses Moodle LMS for their course programs dedicated to bachelor and masters students. We also had to understand how to integrate the PhD regulations of different faculties of the the university into our system. In order to do that, we have analyzed the regulations from two different faculties and structured the XML files with the help of a DTD file, that is common for both faculties. \
It being a project carried out by a group of students, we have used the agile method Scrum in the development of our Web application and have allocated the tasks between each member of the group for each sprint, lasting for 2 weeks. During this project, I was responsible for the development of the XML files, as well as the unit tests and functional tests. The project was very ambitious, we limited ourselves to the development of the functionalities described above for our sprints. Other functionalities, such as automatic transcription of the PhD regulations from the PDF format to the XML format, as well as a reminder system via e-mail a few months before the deadlines, will be developed by other people. 

<a id="summarization-techniques-fr"></a>

## Comparaison de techniques de résumés par clustering
Dans le cadre de ce projet de recherche, j'ai pu participer au développement d'une fonctionnalité pour un service facilitant les chercheurs à faire leurs revues littéraires. Cette fonctionnalité est la génération automatique d'un résumé à partir d'un ensemble de résumés d'articles. Pour ce faire, j'ai comparé des techniques existantes de récapitulation extractives, utilisant des algorithmes de clusterisation. \
Les étapes de récapitulation d'un ensemble de texte basé sur de la clusterisation consiste à d'abord pré-traité le texte pour extraire les termes pertinents de l'article, puis calculer TF-IDF, une matrice déterminant les termes les plus importants parmi un ensemble de documents, réduire cette matrice pour pouvoir représenter les documents comme points à 2 dimensions, et ensuite clusteriser ces articles. Puis, dans chaque cluster, on recalcule une nouvelle matrice TF-IDF inversée, et on la réduit à un vecteur pour obtenir la pondération des termes du cluster. Cette pondération permet de calculer un score pour chaque phrase de chaque document. Les phrases avec le meilleur score sont regroupés ensemble pour former le résumé final. \
À chaque étape de ce processus, nous pouvons utiliser des technologies différentes : 
- la clusterisation peut se faire en considérant soit les titres, soit les résumés des articles
- la réduction de la matrice TF-IDF peut être fait de manière linéaire ou non-linéaire
- la clusterisation peut se faire en partitionant les points ou de manière hiérarchique

Le travail consistait donc à explorer les combinaisons de différentes méthodes et comparer les résultats obtenus. Ce travail a été fait en Python et Jupyter Notebook. 

-----
<a id="summarization-techniques-eng"></a>
*English below:* \
As part of this research project, I had an opportunity to work on the development of a functionality for a service that would help researchers on their litterature reviews. This functionality is the automatic generation of a summary from a set of articles' abstracts. To do this, I have compared existing extractive summarization techniques, utilizing clustering algorithms. \
The steps to summarize a set of text based on clustering consist first of pre-processing the text to extract the revelant terms of the article, then calculate TF-IDF, a matrix determining the most important terms within a set of documents, reduce that matrix to represent each document as points in 2 dimensions, and then clustering those documents. Then, within each cluster, we recalculate a new inverted TF-IDF matrix, and we reduce it to a vector to obtain a weight for each term of the cluster. Those keyword weights allow us to calculate a score for each sentence of each document. The sentences with the best scores are collected to form the final summary. \
In each step of the process, we can use different technologies:
- the clustering can be done by either considering titles or abstracts of each article
- the reduction of the TF-IDF matrix can be done linearly or non-lineraly
- the clustering can be done by partitioning the points or hierarchically

My work consisted of exploring combinations of different methods and compare the results. This project was done in Python and Jupyter Notebook.