# Auteur: Hafedh Tlili
# Feature: Gestion du personnel
# Scénario: Embauche d'un employé Collaborateur
# Date de création: 04/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-001

Feature: Gestion du personnel : Embauche d'un employé Collaborateur

  Scenario: Embauche d'un employé Collaborateur

     # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH

    When l utilisateur clique sur "espace-RH"
    And  l utilisateur clique sur "Bouton_menu_etendu"
    And l utilisateur clique sur "Core RH"
    And l utilisateur clique sur "Gestion du personnel"

    # Etape 3 : Embauche d'un nouveau collaborateur
    ## Première popup d'embauche ##
    When l utilisateur clique sur "Ajouter_collaborateur"
    And l utilisateur saisit "01/01/2019" dans le champs "Date d'entrée_collaborateur"
    And l utilisateur selectionne "Interne" dans la liste deroulante "Type_collaborateur"
    And l utilisateur saisit "SOC00001" dans le champs "Matricule_collaborateur"
    And l utilisateur selectionne "M." dans la liste deroulante "Qualité_collaborateur"
    And l utilisateur saisit "Tounsi" dans le champs "Nom_collaborateur"
    And l utilisateur saisit "Ahmed" dans le champs "Prénom_collaborateur"
    And l utilisateur saisit "15/11/1984" dans le champs "Date de naissance_collaborateur"
    And l utilisateur selectionne "Tunisie" dans la liste deroulante "Pays de naissance_collaborateur"
    And l utilisateur selectionne "Célibataire" dans la liste deroulante "Situation famillale_collaborateur"

    ## Deuxième popup d'embauche ##
    And  l utilisateur clique sur "Continuer"
    And l utilisateur selectionne "Embauche" dans la liste deroulante "Motif d'entrée_collaborateur"
    And l utilisateur selectionne "Société de service" dans la liste deroulante "Société_collaborateur"
    And l utilisateur selectionne "Etablissement principal" dans la liste deroulante "Etablissement_collaborateur"
    And l utilisateur selectionne "Entité 1" dans la liste deroulante "Entité organisationnelle_collaborateur"
    And l utilisateur selectionne "Responsable" dans la liste deroulante "Emploi_collaborateur"
    And l utilisateur selectionne "Poste 1" dans la liste deroulante "Poste_collaborateur"
    And l utilisateur selectionne "CDI" dans la liste deroulante "Type du contrat_collaborateur"
    #And l utilisateur saisit "01/01/2019" dans le champs "Date de début du contrat"
    And l utilisateur clique sur "Enregistrer_Collaborateur"
    And vérifier que le message "Opération effectuée avec succès" s affiche

    # Etape 4 : Ajout de l'adresse mail
    And l utilisateur saisit "ahmed.tounsi@yopmail.com" dans le champs "Email_collaborateur"
    And l utilisateur clique sur "Enregistrer_Employé"
    And vérifier que le message "Opération effectuée avec succès" s affiche

    # Etape 5 : Ajout d'un cycle de travail
    When l utilisateur clique sur "Dossier adminisstratif"
    And l utilisateur clique sur "Ajouter un cycle de travail_collaborateur"
    And l utilisateur selectionne "C2" dans la liste deroulante "Cycle de travail_collaborateur"
    And l utilisateur selectionne "S2" dans la liste deroulante "Première semaine_collaborateur"
    And l utilisateur saisit "01/01/2019" dans le champs "Date d'effet_collaborateur"
    And l utilisateur clique sur "Valider_cycle de travail"
    And l utilisateur clique sur "Enregistrer_Collaborateur"
    Then vérifier que le message "Opération effectuée avec succès" s affiche

    #Etape 6 : Ajout d'un salaire
    When l utilisateur clique sur "Rémunération"
    And l utilisateur clique sur "Ajouter un salaire_collaborateur"
    And l utilisateur saisit "1100" dans le champs "Montant_collaborateur"
    And l utilisateur selectionne "Dinar tunisien" dans la liste deroulante "Devise_collaborateur"
    And l utilisateur saisit "01/01/2019" dans le champs "Date de début_collaborateur"
    And l utilisateur clique sur "Valider_salaire"
    And l utilisateur clique sur "Enregistrer_Collaborateur"
    Then vérifier que le message "Opération effectuée avec succès" s affiche


