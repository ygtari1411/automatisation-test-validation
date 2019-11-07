# Auteur: wboufade
# Feature: News
# Scénario: Suppression News
# Date de création: 23/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-NEWS
@ACCRETIO2-NEWS-0002

Feature: News

  Scenario: Suppression News

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur News
    Then verifier affichage de l'ecran NEWS
    When l'utilisateur supprime la première News dans la liste
    Then vérifier la suppression de la News




