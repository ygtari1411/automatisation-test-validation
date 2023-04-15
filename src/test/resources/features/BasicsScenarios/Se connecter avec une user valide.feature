# Auteur : Yassine Gtari
# Feature : Authentification
# Scénario : Se connecter avec un utilisateur valide
# Date de création : 15/04/2023


@INCAP
@INCAP-BASICS
@INCAP-BASICS-0003


Feature: BasicsScenrios

  Scenario: Se connecter avec un utilisateur valide

    #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "cbaudot" est connecté

    #Etape 2 : Vérifier que l'utiliseur c'est connecté avec succés

    Then Verifier la reussite de la connexion

