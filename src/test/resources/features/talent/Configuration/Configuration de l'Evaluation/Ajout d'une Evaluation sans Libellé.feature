# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout d'une Evaluation sans Libellé
# Date de création: 27/07/2020


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0031

Feature: Configuration-Talent

  Scenario: Ajout d'une Evaluation avec succès

    #Etape 001: Connexion RH_Evaluation
      Given   le navigateur est ouvert et la page d'acceuil est affichée
        And   l'utilisateur "Dubois.Christian@yopmail.com" est connecté
       Then   le nom de l utilisateur "Dubois Christian" est affiche en haut a gauche

    #Etape 002: Accéder  au sous module configuration

       When   l utilisateur clique sur "Bouton_Role_RH"
        And   l utilisateur clique sur "Bouton_Menu_Etendu"
        And   l utilisateur clique sur "Module_Talent"
        And   l utilisateur clique sur "Sous_module_Configuration_Talent"
        And   l utilisateur clique sur "Bouton_Evaluation_Talent"
        And   l utilisateur clique sur "Bouton_Evaluation_Eval_Talent"

    #Etape 003: Ajout de l'Evaluation

        And   l utilisateur clique sur "Ajouter_Eval_Evaluation"
        And   l utilisateur saisit " " dans le champs "Libellé_Ajout_Eval"
        And   l utilisateur saisit "Description 2" dans le champs "Description_Ajout_Eval"
        And   l utilisateur saisit "Question 1" dans le champs "Question_Ajout_Eval"
        And   l utilisateur clique sur "Valider_Ajout_Eval"
       Then   vérifier que le champs "Libellé_Ajout_Eval" est encadre en rouge