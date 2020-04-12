# Auteur: Saief Eddine Ezaier
# Feature: Gestion du personnel
# Scénario: Activer SST
# Date de création: 02/04/2020


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-011

Feature: Gestion du personnel

  Scenario: Activer SST


            # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    # Etape 1 activer SST
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Configuration_Core_RH"
    And wait 2000
    And l utilisateur clique sur "Autres_Paramètres"
    And l utilisateur  "active" l'option "JS_Option_SST"
    And l utilisateur clique sur "Enregistrer_Autres_Paramétres"
    And vérifier que le message "L'opération a été effectuée avec succès" s affiche

    # Etape 2 verifier que l'onglet SST est affiché
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"
    And l utilisateur saisit "Collaborateur SST" dans le champs "Recherche_Collaborateur"
    And wait 2000
    And l utilisateur selectionne "Collaborateur SST" dans la liste "Liste_Collaborateurs"
    And vérifier que l' element "Onglet_SST" est affiché
