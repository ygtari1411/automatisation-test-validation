# Auteur : Yassine Gtari
# Feature : Authentification
# Scénario : Se connecter avec un utilisateur invalide
# Date de création : 15/04/2023


@INCAP
@INCAP-BASICS
@INCAP-BASICS-0002


Feature: BasicsScenrios

  Scenario: Se connecter avec un utilisateur invalide

    #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And  se connecter un login et mot de passe invalides

    #Etape 2 : Vérifier que l'utiliseur n'a pas pu se connecter

    Then Verifier que la connexion a echouer

