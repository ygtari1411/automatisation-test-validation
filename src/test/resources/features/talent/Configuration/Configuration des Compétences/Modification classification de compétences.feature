# Auteur: Ons MANSOURI
# Feature: Configuration
# Scénario: Modification classification de compétences
# Date de création: 10/12/2019


#@ACCRETIO2
#@ACCRETIO2-TALENT
#@ACCRETIO2-CONFIGURATIONTALENT
#@ACCRETIO2-CONFIGURATIONTALENT-0003

#Feature: Configuration-Talent
#
# Scenario: Modification de classification de compétences
#
#    #Etape 001: Connexion RH_Skills
#
#    Given   le navigateur est ouvert et la page d'acceuil est affichée
#      And   l'utilisateur "combes.caroline@YOPMAIL.COM" est connecté
#     Then   le nom de l utilisateur "Caroline Combes" est affiche en haut a gauche
#
#    #Etape 002: Acceder  au sous module configuration
#
#     When l utilisateur clique sur "Bouton_Role_RH"
#     And   l utilisateur clique sur "Bouton_Menu_Etendu"
#     And   l utilisateur clique sur "Module_Talent"
#     And   l utilisateur clique sur "Sous_module_Configuration_Talent"
#
#
#    #Ajout de la classification
#
#      And   l utilisateur clique sur "Classification_conf"
#      And   l utilisateur clique sur "Ajouter_classification"
#      And   l utilisateur saisit "Ajout Classification Test auto 2" dans le champs "Libelle_Classif_ajout"
#      And   l utilisateur selectionne "Technique" dans la liste deroulante "Classification_parent"
#      And   l utilisateur selectionne "Chiffre" dans la liste deroulante "Chiffre_ajout_classification"
#      And   l utilisateur selectionne "Coefficient" dans la liste deroulante "Coefficient_ajout_classification"
#      And   l utilisateur clique sur "Valider_ajout_classification"
#      And   l utilisateur clique sur "Sauvegarder_classification"
#      Then   vérifier que le message "Opération effectuée avec succès" s affiche
#      And   verifier que le dernier libelle "Ajout Classification Test auto 2"
#      And   verifier que la derniere classification parent "Technique"
#      And   verifier que la derniere echelle "Chiffre"
#      When  l utilisateur modifie la classification cree
#      #When   l utilisateur clique sur "Option_conf_classification"
#      #And   l utilisateur clique sur "Editer_option_conf_classification"
#      And l utilisateur choisit l option editer
#      And   wait 3000
#      And   l utilisateur saisit "modification" dans le champs "Libelle_Classif_ajout"
#      And   l utilisateur selectionne "Chiffre" dans la liste deroulante "Chiffre_ajout_classification"
#      And   l utilisateur clique sur "Valider_ajout_classification"
#      And   l utilisateur clique sur "Sauvegarder_classification"
#      Then   vérifier que le message "Opération effectuée avec succès" s affiche
#      And   verifier que le dernier libelle "Ajout Classification Test auto 2modification"
#      And   verifier que la derniere echelle "Chiffre"
