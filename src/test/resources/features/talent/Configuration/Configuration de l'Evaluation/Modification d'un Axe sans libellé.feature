# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Modification d'un Axe sans libellé
# Date de création: 15/06/2020


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0013

Feature: Configuration-Talent

  Scenario: Modification d'un Axe sans libellé

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
        And   l utilisateur clique sur "Bouton_Evaluation_Axe_Talent"

    #Etape 003: Ajout de l'Axe

        And   l utilisateur clique sur "Ajouter_Axe_Evaluation"
        And   l utilisateur saisit "Modification Axe 1" dans le champs "Libellé_Ajout_Axe"
        And   l utilisateur clique sur "Valider_Ajout_Axe"
        And   l utilisateur clique sur "Sauvegarder_Ajout_Axe"
       Then   vérifier que le message "Opération effectuée avec succès" s affiche
        And   verifier que le dernier libelle "Modification Axe 1"

    #Etape 004: Modification de l'axe

       When   l utilisateur clique sur "Option_conf_Axe"
        And   l utilisateur clique sur "Modifier_option_conf_Axe"
        And   l utilisateur saisit " " dans le champs "Libellé_Ajout_Axe"
        And   l utilisateur clique sur "Valider_Ajout_Axe"
       Then   verifier que le champs libelle est encadre en rouge