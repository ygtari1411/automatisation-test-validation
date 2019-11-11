# Auteur: wboufade
# Feature: News
# Scénario: Création nouvelle news
# Date de création: 16/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-NEWS
@ACCRETIO2-NEWS-0001

Feature: News : Création nouvelle news

  Scenario: Création nouvelle news

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
    And wait 1000

    #Etape 4 : Vérification de la création de la News

    Then vérifier la création de la nouvelle news



