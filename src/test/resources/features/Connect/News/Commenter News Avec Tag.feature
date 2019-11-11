# Auteur : syrine Lakhdhar
# Feature : News
# Scénario : Tag collaborateur dans un commentaire sur une news
# Date de création : 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-NEWS
@ACCRETIO2-NEWS-0004


Feature: News : Commentaire avec tag collaborateur sur une news

  Scenario: Commentaire avec tag collaborateur sur une news

    #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    #Etape 2 : Changement de role

    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur News

    #Etape 3 : Ajout News

    And L'utilisateur clique sur  ajouter News
    When le modal création News s'affiche
    And  l'utilisateur remplit le champ titre par "Test news automatique"
    And l utilisateur remplit le champ contenu par "C'est un test automatique de l'ajout d'une news"
    And l'utilisateur selectionne la date actuelle du champ date de publication
    And l'utilisateur ajoute une photo dans le champ photo
    And L'utilisateur clique sur enregistrer Création News
    And wait 3000

    #Etape 4 :Ajout commentaire sur la News

    And l'utilisateur clique sur portal
    When l'utilisateur clique sur la news ajoutée
    And l'utilisateur saisit "@Responsable Prod" dans le champ du commentaire
    And l'utilisateur clique sur publier commentaire

    #Etape 5 : Vérification de la News

    Then Vérifier que le tag est affiché