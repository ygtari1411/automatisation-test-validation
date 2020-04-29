# Auteur: Saief Eddine Ezaier
# Feature: Gestion du personnel
# Scénario: Saisie SST_Travailleur désigné
# Date de création: 02/04/2020


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-012

Feature: Gestion du personnel

  Scenario: Saisie SST_Travailleur désigné

            # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    # Etape 2 : Acées a l'espace RH
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"

    # Etape 4 : Saisie SST_Travailleur désigné
    And l utilisateur saisit "Collaborateur SST" dans le champs "Recherche_Collaborateur"
    And wait 2000
    And l utilisateur selectionne "Collaborateur SST" dans la liste "Liste_Collaborateurs"
    And extraire la date de naissance du collaborateur
    And l utilisateur clique sur "Onglet_SST"
    And wait 2000
    And l utilisateur clique sur "Ajouter_Travailleur_Designe"
    And l utilisateur selectionne "Diplôme d'études supérieures spécialisées" dans la liste deroulante "Diplome_Travailleur_Designe"
    And l utilisateur selectionne "B" dans la liste deroulante "Categorie_Travailleur_Designe"
    And l utilisateur saisit une date d'obtention inférieure a la date de naissance
    And wait 2000
    And l utilisateur saisit "01/05/2022" dans le champs "Date_Recyclage"
    And l utilisateur clique sur "Valider_Travailleur_Designe"
    And l utilisateur clique sur "Bouton_Enregistrer_Modification"
    And vérifier que le message "La date de naissance de l'employé doit être supérieure à la date d'obtention de diplome travailleur désigné" s affiche
    And wait 3000
    And l utilisateur clique sur "Bouton_Modifier_Travailleur_Designe_SST"
    And wait 2000
    And l utilisateur modifie "01/01/2020" dans le champs "Date_Obtention"
    And l utilisateur clique sur "Valider_Travailleur_Designe"
    And l utilisateur clique sur "Bouton_Enregistrer_Modification"
    And vérifier que le message "Opération effectuée avec succès" s affiche




