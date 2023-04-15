# Auteur : Yassine Gtari
# Feature : Authentification
# Scénario : Acceder a la prestation incapacite
# Date de création : 15/04/2023


@INCAP
@INCAP-PRESTATION
@INCAP-PRESTATION-0001


Feature: BasicsScenrios

  Scenario: Acceder a la prestation incapacite

    #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "cbaudot" est connecté

    #Etape 2 : Vérifier que l'utiliseur c'est connecté avec succés

    Then Verifier la reussite de la connexion

   #Etape 3 : Créer une nouvelle survenance

    And l utilisateur clique sur "Bouton_Access_rapide"
    And l utilisateur clique sur "Bouton_Nouvelle_Survenance"
    And wait 10000

    #Etape 4 : choisir un déclarant

    And l utilisateur clique sur "Bouton_Access_rapide"
    And l utilisateur clique sur "Bouton_Nouvelle_Survenance"
    And wait 10000
    And l utilisateur clique sur "Bouton_Declarant"
    And wait 5000
    And l utilisateur saisit "azur" dans le champs "Champ_Input_Nom_Declarant"
    And wait 5000
    And l utilisateur clique sur "Bouton_Rechercher_Declarant"
    And wait 5000
    And l utilisateur clique sur "Declarant_User_Name"
    And wait 5000
    And l utilisateur clique sur "Ajouter_Declarant"
    And wait 5000

    #Etape 5 : choisir un sinistré

    And l utilisateur clique sur "Bouton_Sinistre"
    And wait 5000
    And l utilisateur saisit "ragot" dans le champs "Champ_Input_Nom_sinistre"
    And wait 5000
    And l utilisateur clique sur "Bouton_Rechercher_Sinistre"
    And wait 5000
    And l utilisateur clique sur "Sinistre_User_Name"
    And wait 5000
    And l utilisateur clique sur "Ajouter_Sinistre"
    And wait 5000

  #Etape 6 : saisir les dates de déclaration


    And l utilisateur saisit "15/04/2023" dans le champs "Champ_Input_DATE_DECLARATION"
    And wait 5000
    And l utilisateur saisit "15/04/2023" dans le champs "Champ_Input_DATE_SURVENANCE"
    And wait 5000
    And l utilisateur saisit "14/04/2023" dans le champs "Champ_Input_DATE_FAIT_GENERATUER"
    And wait 5000

  #Etape 7 : Choisir le fait générateur maladie

    And choisir l option maladie
    And wait 5000

  #Etape 8: VAlider le sinistre

    And l utilisateur clique sur "Valider_sinistre"
    And wait 10000

  #Etape 9:Confirmer la validation du sinistre

    And l utilisateur clique sur "confirmer_validation"
    And wait 10000

  #Etape 10:Choisir une siniste

    And l utilisateur clique sur "Bouton_sinistre"
    And wait 10000







