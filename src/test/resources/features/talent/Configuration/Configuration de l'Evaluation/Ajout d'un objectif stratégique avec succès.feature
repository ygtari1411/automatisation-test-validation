# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout d'un Objectif stratégique avec succès
# Date de création: 15/06/2020


@ACCRETIO2
@ACCRETIO2-TALENT
@ACCRETIO2-CONFIGURATIONTALENT
@ACCRETIO2-CONFIGURATIONTALENT-0014

Feature: Configuration-Talent

  Scenario: Ajout d'un objectif stratégique avec succès

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

    #Etape 003: Ajout de l'Axe

        And   l utilisateur clique sur "Ajouter_Obj_Strategique_Evaluation"
        And   wait 2000
        And   l utilisateur saisit "Obj test 1" dans le champs "Libelle_Ajout_Obj_strategique"
        And   wait 1000
        And   l utilisateur saisit "Obj test 1" dans le champs "Description_Ajout_Obj_strategique"
        And    wait 1000
        And   l utilisateur clique sur "Valider_Ajout_Obj_strategique"
        And    wait 3000
        And   l utilisateur clique sur "Sauvegarder_Ajout_Obj_strategique"
        Then   vérifier que le message "succès" s affiche
        And     wait 3000
        #And   verifier que le dernier libelle objectif strategique est "Obj test 1"
        #And   verifier que la derniere description "Obj test 1"
        And   verifier que le dernier libelle objectif strategique et la derniere description sont "Obj test 1"
