# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Ajout Organisation de formation
# Date de création: 03/08/2020


@ACCRETIO2
@ACCRETIO2-TALENT
@ACCRETIO2-CONFIGURATIONTALENT
@ACCRETIO2-CONFIGURATIONTALENT-0034

Feature: Configuration-Talent

  Scenario: Ajout Organisation de formation

    #Etape 001: Connexion RH_Skills

      Given   le navigateur est ouvert et la page d'acceuil est affichée
        And   l'utilisateur "Dupont.Cedric@yopmail.com" est connecté
       Then   le nom de l utilisateur "Cédric Dupont" est affiche en haut a gauche

    #Etape 002: Acceder  au sous module configuration

       When   l utilisateur clique sur "Bouton_Role_RH"
        And   l utilisateur clique sur "Bouton_Menu_Etendu"
        And   l utilisateur clique sur "Module_Talent"
        And   l utilisateur clique sur "Sous_module_Configuration_Talent"
        And   l utilisateur clique sur "Bouton_Formations_Talent"
        And   l utilisateur clique sur "Bouton_Formations_Thematique_Talent"

     #Etape 003: Ajout de la thématique

        And   l utilisateur ajoute l organisation "Test Ajout organisation Auto 1"
        And   wait 3000
        And   l utilisateur clique sur "Sauvegarder_organisation"
       Then   vérifier que le message "Opération effectuée avec succès" s affiche
        And   verifier que la thematique "Test Ajout organisation Auto 1" est dans la liste