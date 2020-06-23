# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout d'un Axe sans Libellé
# Date de création: 03/04/2020


@ACCRETIO2
@ACCRETIO2-TALENT
@ACCRETIO2-CONFIGURATIONTALENT
@ACCRETIO2-CONFIGURATIONTALENT-0011

Feature: Configuration-Talent

  Scenario: Ajout d'un Axe sans Libellé

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
     And   l utilisateur clique sur "Bouton_Evaluation_Axe_Talent"

    #Etape 003: Ajout de l'Axe

     And   l utilisateur clique sur "Ajouter_Axe_Evaluation"
     And   l utilisateur saisit "  " dans le champs "Libelle_Ajout_Axe"
     #And   l utilisateur clique sur "Valider_Ajout_Axe"
     And   wait 3000
     Then   verifier que le champs libelle est encadre en rouge