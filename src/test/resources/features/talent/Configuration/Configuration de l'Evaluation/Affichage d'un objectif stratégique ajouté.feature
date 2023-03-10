# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Affichage d'un Objectif stratégique ajouté
# Date de création: 22/06/2020


@ACCRETIO2
@ACCRETIO2-TALENT
@ACCRETIO2-CONFIGURATIONTALENT
@ACCRETIO2-CONFIGURATIONTALENT-0016

Feature: Configuration-Talent

  Scenario: Affichage d'un Objectif stratégique ajouté

    #Etape 001: Connexion RH_Evaluation
      Given   le navigateur est ouvert et la page d'acceuil est affichée
        And   l'utilisateur "Dubois.Christian@yopmail.com" est connecté
       Then   le nom de l utilisateur "Christian Dubois" est affiche en haut a gauche

    #Etape 002: Acceder  au sous module configuration

       When   l utilisateur clique sur "Bouton_Role_RH"
        And   l utilisateur clique sur "Bouton_Menu_Etendu"
        And   l utilisateur clique sur "Module_Talent"
        And   l utilisateur clique sur "Sous_module_Configuration_Talent"
        #And   l utilisateur clique sur "Bouton_Evaluation_Talent"
        And   l utilisateur clique sur "Bouton_Evaluation_Obj_Strategique_Talent"

    #Etape 003: Ajout de l'objectif stratégique

        And   l utilisateur clique sur "Ajouter_Obj_Strategique_Evaluation"
        And   l utilisateur saisit "Obj test 2" dans le champs "Libelle_Ajout_Obj_strategique"
        And   l utilisateur saisit "Obj test 2" dans le champs "Description_Ajout_Obj_strategique"
        And   l utilisateur clique sur "Valider_Ajout_Obj_strategique"
        And   l utilisateur clique sur "Sauvegarder_Ajout_Obj_strategique"
        Then   vérifier que le message "succès" s affiche
        #And   verifier que le dernier libelle "Obj test 2"
        #And   verifier que la derniere description "Obj test 2"
        And   verifier que le dernier libelle objectif strategique et la derniere description sont "Obj test 2"

    #Etape 004: Affichage de l'objectif stratégique

        #When   l utilisateur clique sur "Option_conf_Obj_strategique"
        #And   l utilisateur clique sur "Afficher_option_conf_Obj_strategique"
        When   l utilisateur clique sur Afficher_option_conf_Obj_strategique du dernier objectif ajouter
        And wait 7000
        Then   verifier que le champs Libelle_Ajout_Obj_strategique est "Obj test 2"
        And   verifier que le champs Description_Ajout_Obj_strategique est "Obj test 2"