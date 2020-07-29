# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Affichage d'une Evaluation ajoutée
# Date de création: 29/07/2020


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0033

Feature: Configuration-Talent

  Scenario: Affichage d'une Evaluation ajoutée

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
        And   l utilisateur clique sur "Bouton_Evaluation_Eval_Talent"

    #Etape 003: Ajout de l'Evaluation

        And   l utilisateur clique sur "Ajouter_Eval_Evaluation"
        And   l utilisateur saisit "Libelle 4" dans le champs "Libellé_Ajout_Eval"
        And   l utilisateur saisit "Description 4" dans le champs "Description_Ajout_Eval"
        And   l utilisateur saisit "Question 1" dans le champs "Question_Ajout_Eval"
        And   l utilisateur clique sur "Valider_Ajout_Eval"
        And   l utilisateur clique sur "Sauvegarder_Ajout_Eval"
       Then   vérifier que le message "L'opération a été effectuée avec succès" s affiche
        And   verifier que le dernier libelle "Libelle 4"
    
    #Etape 004: Affichage de l'Evaluation
       When   l utilisateur clique sur "Afficher_option_conf_Eval"
       Then   vérifier que le champs "Libellé_Ajout_Eval" est "Libelle 4"
        And   vérifier que le champs "Description_Ajout_Eval" est "Description 4"
        And   vérifier que le champs "Question_Ajout_Eval" est "Question 1"