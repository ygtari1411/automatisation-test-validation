# Auteur : Yassine Gtari
# Feature : Authentification
# Scénario : Se connecter avec un mot de passe invalide
# Date de création : 15/04/2023


@INCAP
@INCAP-BASICS
@INCAP-BASICS-0001


Feature: BasicsScenrios

  Scenario: Se connecter avec un mot de passe errone

Feature: BasicsScenrios

  Scenario: Se connecter avec un mot de passe valide

    #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And se connecter avec un mot de passe invalide

    #Etape 2 : Vérifier que l'utiliseur c'est connecté avec succés

    Then Verifier que la connexion a echouer




