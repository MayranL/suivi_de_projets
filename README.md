# <center>Documentation du projet : Suivi_de_projets</center>

## <center>Projet mené par Loïc MAYRAN (alternant)</center>

### <center>Décembre 2022 à Juillet 2023</center>

# Sommaire
  - [Présentation du projet](#présentation-du-projet)
  - [Flutter et Dart c'est quoi ?](#flutter-et-dart-cest-quoi-)
  - [Pourquoi avoir choisi cette voie ?](#pourquoi-avoir-choisi-cette-voie-)
  - [Architecture de l'application](#architecture-de-lapplication)
    - [Dossier 'lib/' à expliquer dans son intégralité :](#dossier-lib-à-expliquer-dans-son-intégralité-)
    - [Liens vers la documentation liée au développement :](#liens-vers-la-documentation-liée-au-développement-)
  - [Développement en cours](#développement-en-cours)
  - [Fonctionnalités de l'application](#fonctionnalités-de-lapplication)
  - [Fonctionnalités souhaitées](#fonctionnalités-souhaitées)

## Présentation du projet

    'Suivi de projet' est un projet lancé par Pierre Bourey durant l'année 2022. Le but est de créer une application qui permet de gérer tous les projets en cours/prévu/fini de la D2D. Ce projet a comme principal challenge d'être développé en utilisant la technologie Flutter/Dart. 
    Les principales fonctionnalitées seront de pouvoir créer des projets, les modifiers et faire toutes les actions nécessaires pour que le projet avance de manière optimale.
    Chaque personne faisant partie de l'entreprise aura accès à cette application pour visualiser les projets en cours. A terme le but est de prévoir un système de gestion de droit pour que seul les administrateurs et les chefs de projets puissent modifier certainnes informations.

## Flutter et Dart c'est quoi ?

    Flutter est un framework open-source créé par Google qui permet de développer des applications mobiles pour Android, iOS, Web et Desktop. Il utilise le langage de programmation Dart pour le développement des applications.
    Dart est un langage de programmation open-source, également créé par Google. Dart est un langage orienté objet et permet la programmation structurée. Il est conçu pour être facile à lire et à écrire, tout en étant efficace et performant.
    Flutter utilise Dart comme langage de programmation et fournit des widgets personnalisables et des outils de développement pour créer des applications mobiles élégantes et performantes. Les widgets de Flutter sont conçus pour s'adapter à toutes les tailles d'écran et offrent une expérience utilisateur cohérente sur toutes les plateformes.
    Flutter est devenu populaire auprès des développeurs en raison de sa facilité d'utilisation, de sa rapidité de développement et de sa réutilisabilité de code. Il est également apprécié pour sa capacité à créer des interfaces utilisateur réactives et fluides, ainsi que pour sa capacité à intégrer facilement des fonctionnalités tierces.

## Pourquoi avoir choisi cette voie ?

    Les 2 arguments principaux qui ont menet à ce choix sont les suivants : 
        -> La nouveauté
        Le but de cette application est de prouver à l'entreprise que Flutter est un bon outil de développement. Vu que FLutter est un tout nouvel outil de développement
        -> Le crossPlatform
        Le principal avantage offert par Flutter est qu'il permet de développer un unique code pour plusieurs plateformes. C'est un grand temps gagné vu qu'il faudra moins de développeur sur un projet pour effectuer les modifications pour Web/Android/Ios (pour les principaux).

## Architecture de l'application
  ### Dossier 'lib/' à expliquer dans son intégralité :

    
    main.dart : fichier principal qui permet de lancer l'application
    constants.dart : fichier contenant toutes les constantes de l'application

  Répertoire $widgets/$ :

    globals.dart : fichier de variable globale (utilisable n'importe ou dans le code)
    nomPage_small.dart : contenu de la page pour l'affichage sur téléphone
    nomPage_medium.dart : contenu de la page pour l'affichage sur desktop

  Répertoire $util/$ :

    fichier.dart : fichier de description objet réutilisable dans l'application

  Répertoire $responsive/$ :

    Ce répertoire permet de détecter la taille de l'écran de définir quel type de format il va être pris en compte

  Répertoire $pages/$ :

    nomPage_page.dart : fichier des pages de toutes l'application faisant chacune appelle à sa vue venant du $widgets/$	

  Répertoire $models/$ :

    Modèle de toutes les données utilisés dans le projet.
    Par exemple dans data/ :
      - chefProjet.dart : modèle d'un chef de projet
      - project.dart : modèle d'un projet
      - user.dart : modèle d'un utilisateur

  Répertoire $function/$ :

  Répertoire $backend/$ :

    linkWithBack.dart : permet de faire le lien avec le backend (au préalable le backend sera lancé)
    getUser.dart : permet de récupérer un utilisateur de la base de données
    addUserFront.dart : permet d'ajouter un utilisateur dans la base de données
  
  ### Liens vers la documentation liée au développement :

  Lien documentation dart : https://dart.dev/

  Lien documentation flutter : https://flutter.dev/
  
  Lien youtube (chaine de MitchKoko) : https://www.youtube.com/@createdbykoko

## Développement en cours

  Pour le moment l'important est de pouvoir créer un environnement optimal pour l'utilisateur. Que ce soit dans le passage de page en page ou bien la récupération/envoi de donnée. 
  La vueAgreg est une vue qui permet de décrire précisement un projet avec toutes les informations qui sont utiles.

## Fonctionnalités de l'application

  Pour visualiser l'application vous avez 2 options : 

    -> lancer le projet
    -> Dans maquettes/ se trouvent toutes les maquettes de l'application

  A noter que la maquette de la vue agreg n'a pas pu être mise à jour mais finalement le rendu sera plutôt des blocs pour séparer les informations d'un projet.  

## Fonctionnalités souhaitées

  A terme le but est de finaliser les principales fonctionnalitées pour permettre à un chef de projet de faire toutes les opérations CRUD sur les projets.

<i>Loïc Mayran</i>
