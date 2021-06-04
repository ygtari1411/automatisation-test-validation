# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout d'une Notation sans Couleur 1
# Date de création: 12/08/2020


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0028

Feature: Configuration-Talent

  Scenario: Ajout d'une Notation sans Couleur 1

    #Etape 001: Connexion RH_Skills

      Given   le navigateur est ouvert et la page d'acceuil est affichée
        And   l'utilisateur "combes.caroline@YOPMAIL.COM" est connecté
       Then   le nom de l utilisateur "Caroline Combes" est affiche en haut a gauche

    #Etape 002: Acceder  au sous module configuration

       When   l utilisateur clique sur "Bouton_Role_RH"
        And   l utilisateur clique sur "Bouton_Menu_Etendu"
        And   l utilisateur clique sur "Module_Talent"
        And   l utilisateur clique sur "Sous_module_Configuration_Talent"

    #Etape 003: Ajout de la notation

        And   l utilisateur saisit "Notation test Auto 6" dans le champs "Libelle_Notation_ajout"
        And   l utilisateur saisit "Description test Auto 6" dans le champs "Descript_Notation_ajout"
        And   l utilisateur saisit "Intitulé test Auto 1" dans le champs "Intitule1_Notation_ajout"
        And   l utilisateur saisit "Valeur test Auto 1" dans le champs "Valeur1_Notation_ajout"
        And   l utilisateur saisit "Description test Auto 1" dans le champs "Descript1_Notation_ajout"
       Then   vérifier que le bouton "Valider_ajout_notation" est grisé