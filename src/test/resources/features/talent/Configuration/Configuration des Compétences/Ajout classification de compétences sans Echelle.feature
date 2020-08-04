# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout classification de compétences sans echelle
# Date de création: 04/08/2020


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0036

Feature: Configuration-Talent

  Scenario: Ajout classification de compétences sans echelle

    #Etape 001: Connexion RH_Skills

      Given   le navigateur est ouvert et la page d'acceuil est affichée
        And   l'utilisateur "combes.caroline@YOPMAIL.COM" est connecté
       Then   le nom de l utilisateur "Caroline Combes" est affiche en haut a gauche

    #Etape 002: Acceder  au sous module configuration

       When   l utilisateur clique sur "Bouton_Role_RH"
        And   l utilisateur clique sur "Bouton_Menu_Etendu"
        And   l utilisateur clique sur "Module_Talent"
        And   l utilisateur clique sur "Sous_module_Configuration_Talent"

    #Etape 003: Ajout de la classification

        And   l utilisateur clique sur "Classification_conf"
        And   l utilisateur clique sur "Ajouter_classification"
        And   l utilisateur saisit "Ajout Classification Test auto 1" dans le champs "Libelle_Classif_ajout"
        And   l utilisateur selectionne "Communication" dans la liste deroulante "Classification_parent"
        And   l utilisateur selectionne "Coefficient" dans la liste deroulante "Coefficient_ajout_classification"
        And   l utilisateur clique sur "Valider_ajout_classification"
       Then   vérifier que le champs "Chiffre_ajout_classification" est encadre en rouge

