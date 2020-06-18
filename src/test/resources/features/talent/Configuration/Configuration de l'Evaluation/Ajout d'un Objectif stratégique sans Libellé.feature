# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout d'un Objectif stratégique sans Libellé
# Date de création: 18/06/2020


@ACCRETIO2
@ACCRETIO2-TALENT
@ACCRETIO2-CONFIGURATIONTALENT
@ACCRETIO2-CONFIGURATIONTALENT-0015

Feature: Configuration-Talent

  Scenario: Ajout d'un Objectif stratégique sans Libellé

    #Etape 001: Connexion RH_Evaluation
      Given   le navigateur est ouvert et la page d'acceuil est affichée
        And   l'utilisateur "Dubois.Christian@yopmail.com" est connecté
       Then   le nom de l utilisateur "Dubois Christian" est affiche en haut a gauche

    #Etape 002: Acceder  au sous module configuration

       When   l utilisateur clique sur "Bouton_Role_RH"
        And   l utilisateur clique sur "Bouton_Menu_Etendu"
        And   l utilisateur clique sur "Module_Talent"
        And   l utilisateur clique sur "Sous_module_Configuration_Talent"
        And   l utilisateur clique sur "Bouton_Evaluation_Talent"
        And   l utilisateur clique sur "Bouton_Evaluation_Obj_Strategique_Talent"

    #Etape 003: Ajout de l'Axe

        And   l utilisateur clique sur "Ajouter_Obj_Strategique_Evaluation"
        And   l utilisateur saisit " " dans le champs "Libellé_Ajout_Obj_strategique"
        And   l utilisateur saisit "Obj test 1" dans le champs "Description_Ajout_Obj_strategique"
        And   l utilisateur clique sur "Valider_Ajout_Obj_strategique"
        And   l utilisateur clique sur "Sauvegarder_Ajout_Obj_strategique"
       Then   vérifier que le message "Le champs libellé est obligatoire" s affiche