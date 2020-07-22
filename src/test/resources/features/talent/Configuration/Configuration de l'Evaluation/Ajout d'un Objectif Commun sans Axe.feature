# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout d'un Objectif Commun sans Axe
# Date de création: 22/07/2020


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0019

Feature: Configuration-Talent

  Scenario: Ajout d'un Objectif Commun sans Axe

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
       And   l utilisateur clique sur "Bouton_Evaluation_Obj_commun_Talent"

    #Etape 003: Ajout de l'Objectif commun

       And   l utilisateur clique sur "Ajouter_Obj_commun_Evaluation"
       And   l utilisateur saisit "Obj test 3" dans le champs "Libellé_Ajout_Obj_commun"
       And   l utilisateur saisit "Obj test 3" dans le champs "Description_Ajout_Obj_commun"
       And   l utilisateur saisit "indicateur 1" dans le champs "Libellé1_Ajout_Obj_commun"
       And   l utilisateur saisit "99" dans le champs "Valeur_cible1_Ajout_Obj_commun"
       And   l utilisateur clique sur "Valider_Ajout_Obj_commun"
      Then   verifier que la liste déroulante "Axe_Ajout_Obj_commun" est encadre en rouge