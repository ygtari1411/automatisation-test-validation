# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Modification thématique de formation
# Date de création: 07/01/2020

#
#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0008
#
#Feature: Configuration-Talent
#
#  Scenario: Modification thématique de formation
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
#     #And   l utilisateur saisit "Test Ajout thématique Auto 2" dans le champs "Ajout_occurrence_thematique_conf"
#     #And   l utilisateur clique sur "Ajouter_thematique_conf"
#      And   l utilisateur ajoute la thematique"Test Ajout thématique Auto 2"
#      And   wait 3000
#      And   l utilisateur clique sur "Sauvegarder_thematique"
#     Then   vérifier que le message "Opération effectuée avec succès" s affiche
#      And   wait 3000
#      And   verifier que la thematique "Test Ajout thématique Auto 2" est dans la liste
#
#    #Etape 004: Rafraichir la page
#      And   l'utilisateur rafraichit la page
#
#   #Etape 005: Modification de la thématique
#
#    #When   l utilisateur modifie "Test Ajout thématique Auto 2 modif" dans le champs "Ajout_occurrence_thematique_conf"
#      And   l utilisateur clique sur "Bouton_Formations_Talent"
#      And   l utilisateur clique sur "Bouton_Formations_Thematique_Talent"
#     When   l'utilisateur modifie"Test Ajout thématique Auto 2 modif"la derniere thematique ajoutee
#      And   l utilisateur clique sur "Sauvegarder_thematique"
#      And   wait 300
#     Then   vérifier que le message "Opération effectuée avec succès" s affiche
#      And   verifier que la thematique "Test Ajout thématique Auto 2 modif" est dans la liste
