# Auteur: Saief Eddine Ezaier
# Feature: Gestion du personnel
# Scénario: Saisie SST_Personnel Guide-fille/Serra-file
# Date de création: 05/04/2020


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-015

Feature: Gestion du personnel

  Scenario: Saisie SST_Personnel Guide-fille/Serra-file

                                # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    # Etape 2 : Acées a l'espace RH
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"

    # Etape 3 : Saisie SST_Personnel Guide-fille/Serra-file
    And l utilisateur saisit "Collaborateur SST" dans le champs "Recherche_Collaborateur"
    And wait 2000
    And l utilisateur selectionne "Collaborateur SST" dans la liste "Liste_Collaborateurs"
    And wait 2000
    And l utilisateur clique sur "Onglet_SST"
    And l utilisateur clique sur "Ajouter_Personnel_GuideFile_SerreFile"
    And l utilisateur selectionne "A" dans la liste deroulante "Diplome_Personnel_GuideFile_SerreFile"
    And l utilisateur selectionne "B" dans la liste deroulante "Type_Personnel_GuideFile_SerreFile"
    And l utilisateur saisit "01/01/2020" dans le champs "DateObtention_Personnel_GuideFile_SerreFile"
    And wait 5000
    And l utilisateur saisit "01/05/2022" dans le champs "DateRecyclage_Personnel_GuideFile_SerreFile"
    And l utilisateur clique sur "Valider_Personnel_GuideFile_SerreFile"
    And l utilisateur clique sur "Bouton_Enregistrer_Modification"
    And vérifier que le message "Opération effectuée avec succès" s affiche


