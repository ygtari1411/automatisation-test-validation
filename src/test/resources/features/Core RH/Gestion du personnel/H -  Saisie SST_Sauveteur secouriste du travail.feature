# Auteur: Saief Eddine Ezaier
# Feature: Gestion du personnel
# Scénario: Saisie SST_Sauveteur secouriste du travail
# Date de création: 03/04/2020


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-013

Feature: Gestion du personnel

  Scenario: Saisie SST_Sauveteur secouriste du travail

                                # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    # Etape 2 : Acées a l'espace RH
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"

    # Etape 3 : Saisie SST_Sauveteur secouriste du travail
    And l utilisateur saisit "Collaborateur SST" dans le champs "Recherche_Collaborateur"
    And wait 2000
    And l utilisateur selectionne "Collaborateur SST" dans la liste "Liste_Collaborateurs"
    And extraire la date de naissance du collaborateur
    And l utilisateur clique sur "Onglet_SST"
    And wait 2000
    And l utilisateur clique sur "Ajouter_Saveteur_Secouriste"
    And l utilisateur selectionne "Diplôme d'études supérieures spécialisées" dans la liste deroulante "Diplome_Sauveteur_Secouriste"
    And l utilisateur saisit "01/01/2020" dans le champs "Date_Obtention_Sauveteur_Secouriste"
    And wait 5000
    And l utilisateur saisit "01/12/2020" dans le champs "Date_Recyclage_Sauveteur_Secouriste"
    And l utilisateur clique sur "JS_Occuper_Poste_Saveuteur_Secouriste"
    And l utilisateur clique sur "Valider_Saveuteur_Secouriste"
    And l utilisateur clique sur "Bouton_Enregistrer_Modification"
    And vérifier que le message "Opération effectuée avec succès" s affiche




