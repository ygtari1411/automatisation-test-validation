# Auteur: Saief Eddine Ezaier
# Feature: Gestion du personnel
# Scénario: Saisie SST_Equipier de première intervention
# Date de création: 03/04/2020


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-014

Feature: Gestion du personnel

  Scenario: Saisie SST_Equipier de première intervention

    # Etape 1 : Connexion :

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    # Etape 2 : Acées a l'espace RH

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"

    # Etape 3 : Saisie SST_Equipier de première intervention

    And l utilisateur saisit "Collaborateur SST" dans le champs "Recherche_Collaborateur"
    And wait 3000
    And l utilisateur selectionne "Collaborateur SST" dans la liste "Liste_Collaborateurs"
    And wait 2000
    And l utilisateur clique sur "Onglet_SST"
    And l utilisateur clique sur "Ajouter_Equipier_Premiere_Intervention"
    And l utilisateur selectionne "Diplôme d'études supérieures spécialisées" dans la liste deroulante "Diplome_Equipier_Premiere_Intervention"
    And l utilisateur saisit "01/01/2020" dans le champs "DateObtention_Equipier_Premiere_Intervention"
    And l utilisateur clique sur "JS_Occuper_Poste_Equipier_Premiere_Intervention"
    And wait 2000
    And l utilisateur saisit "01/12/2021" dans le champs "DateRecyclage_Equipier_Premiere_Intervention"
    And l utilisateur clique sur "Valider_Equipier_Premiere_Intervention"
    And l utilisateur clique sur "Bouton_Enregistrer_Modification"
    And vérifier que le message "Opération effectuée avec succès" s affiche






