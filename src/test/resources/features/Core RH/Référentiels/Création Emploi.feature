# Auteur: Hafedh Tlili
# Feature: Référentiels
# Scénario: Création Emploi
# Date de création: 04/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-REFERENTIELS
@ACCRETIO2-REFERENTIELS-0004

Feature: Référentiels : Création Emploi

  Scenario: Création Emploi

    # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH
    When l utilisateur clique sur "espace-RH"
    And  l utilisateur clique sur "Bouton_menu_etendu"
    And l utilisateur clique sur "Core RH"
    And l utilisateur clique sur "GRéférentiels"
    And l utilisateur clique sur "Emplois"

    # Etape 3 : Ajout d'un nouvel emploi
    When l utilisateur clique sur "Ajouter_un_emploi"
    And l utilisateur saisit "SOCEMP01" dans le champs "Code_emploi"
    And l utilisateur saisit "Emploi 1" dans le champs "Libellé_emploi"
    And l utilisateur saisit "01/01/2019" dans le champs "Date_d_effet_emploi"
    # And l utilisateur selectionne "Actif" dans la liste deroulante "Statut_emploi"
    And l utilisateur clique sur "Enregistrer_Emploi"
    And vérifier que le message "Opération effectuée avec succès" s affiche

    # Etape 4 : Ajout d'une compétence
    When l utilisateur clique sur "Exigences_Emploi"
    And l utilisateur clique sur "Ajouter_competence_Emploi"
    And l utilisateur selectionne "validation" dans la liste deroulante "Compétence_emploi"
    And l utilisateur selectionne "Confirmé" dans la liste deroulante "Niveau_compétence_emploi"
    And l utilisateur selectionne "Requise" dans la liste deroulante "Importance_compétence_emploi"
    And l utilisateur clique sur "Valider_competence_Emploi"

    # Etape 5 : Ajout d'une langue
    When l utilisateur clique sur "Ajouter_langue_Emploi"
    And l utilisateur selectionne "Français" dans la liste deroulante "Langue_emploi"
    And l utilisateur selectionne "Avancé" dans la liste deroulante "Niveau_langue_emploi"
    And l utilisateur selectionne "Requise" dans la liste deroulante "Importance_langue_emploi"
    And l utilisateur clique sur "Valider langue_Emploi"

    # Etape 6 : Ajout d'une habilitation
    When l utilisateur clique sur "Ajouter_habilitation_Emploi"
    And l utilisateur selectionne "Permis de conduire" dans la liste deroulante "Type_habilitation_emploi"
    And l utilisateur selectionne "Permis de conduire : Type A" dans la liste deroulante "Modèle_habilitation_emploi"
    And l utilisateur selectionne "Préféré(e)" dans la liste deroulante "Importance_habilitation_emploi"
    And l utilisateur clique sur "Valider_habilitation_Emploi"

     # Etape 7 : Ajout d'un diplôme
    When l utilisateur clique sur "Ajouter_diplome_Emploi"
    And l utilisateur selectionne "Ingénieur" dans la liste deroulante "Diplôme_emploi"
    And l utilisateur selectionne "Informatique" dans la liste deroulante "Discipline_diplôme_emploi"
    And l utilisateur selectionne "Préféré(e)" dans la liste deroulante "Importance_diplôme_emploi"
    And l utilisateur clique sur "Valider_diplome_Emploi"

     # Etape 8 : Ajout d'une expérience professionnelle
    When l utilisateur clique sur "Ajouter_experience_Emploi"
    And l utilisateur saisit "Ingénieur de test junior" dans le champs "Emploi_expérience"
    And l utilisateur selectionne "Service" dans la liste deroulante "Secteur_expérience_emploi"
    And l utilisateur saisit "2" dans le champs "Années_d_expérience_expérience"
    And l utilisateur selectionne "requise" dans la liste deroulante "Importance_expérience_emploi"
    And l utilisateur clique sur "Valider_annees_experience_Emploi"


    # Etape 9 : Validation finale
    And l utilisateur clique sur "Enregistrer_Emploi"
    Then vérifier que le message "Opération effectuée avec succès" s affiche