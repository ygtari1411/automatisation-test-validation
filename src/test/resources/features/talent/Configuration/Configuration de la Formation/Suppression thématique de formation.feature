# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Suppression thématique de formation
# Date de création: 08/01/2020


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0009
#
#Feature: Configuration-Talent
#
# Scenario: Suppression thématique de formation
#
#    #Etape 001: Connexion RH_Training
#
#    Given   le navigateur est ouvert et la page d'acceuil est affichée
#      And   l'utilisateur "Dupont.Cedric@yopmail.com" est connecté
#     Then   le nom de l utilisateur "Cédric Dupont" est affiche en haut a gauche
#
#    #Etape 002: Acceder  au sous module configuration
#
#     When   l utilisateur clique sur "Bouton_Role_RH"
#      And   l utilisateur clique sur "Bouton_Menu_Etendu"
#      And   l utilisateur clique sur "Module_Talent"
#      And   l utilisateur clique sur "Sous_module_Configuration_Talent"
#      And   l utilisateur clique sur "Bouton_Formations_Talent"
#      And   l utilisateur clique sur "Bouton_Formations_Thematique_Talent"
#
#    #Etape 003: Ajout de la thématique
#
#      #And   l utilisateur saisit "Test Ajout thématique Auto 3" dans le champs "Ajout_occurrence_thematique_conf"
#      #And   l utilisateur clique sur "Ajouter_thematique_conf"
#
#     And   l utilisateur ajoute la thematique"Test Ajout thématique Auto 3"
#     And   wait 3000
#     And   l utilisateur clique sur "Sauvegarder_thematique"
#    Then   vérifier que le message "Opération effectuée avec succès" s affiche
#     And   verifier que la thematique "Test Ajout thématique Auto 3" est dans la liste
#     And   wait 3000
#
#    #Etape 004: Suppression de la thématique
#
#     When   l utilisateur supprime la derniere thematique ajoutee
#     And wait 3000
#     And   l utilisateur clique sur "Sauvegarder_thematique"
#     Then   vérifier que le message "Opération effectuée avec succès" s affiche
#     And wait 3000
#     And   verifier que la thematique "Test Ajout thématique Auto 3" n est plus dans la liste