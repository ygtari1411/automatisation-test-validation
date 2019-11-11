# Auteur: wboufade
# Feature: News
# Scénario: Suppression News
# Date de création: 23/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-NEWS
@ACCRETIO2-NEWS-0002

Feature: News : Suppression News

  Scenario: Suppression News

    #Etape 1 : Connexion :

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH

    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur News
    Then verifier affichage de l'ecran NEWS

    # Etape 3 : Suppression News

    When l'utilisateur supprime la première News dans la liste
    Then vérifier la suppression de la News




