# Auteur: wboufade
# Feature: News
# Scénario: Modification News Existante
# Date de création: 27/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-NEWS
@ACCRETIO2-NEWS-0003

Feature: News

  Scenario: Modification News

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur News
    When l'utilisateur modifie une News
    Then verifier que la modification a été enregistrée
