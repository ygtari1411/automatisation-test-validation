# Auteur: Saief Eddine Ezaier
# Feature: Gestion du personnel
# Scénario: Désactiver SST
# Date de création: 01/04/2020


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-010

Feature: Gestion du personnel

  Scenario: Désactiver SST

      # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    # Etape 2 : Accès à l'espace RH

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"

    # Etape 3 : Embauche d'un nouveau collaborateur
    ## Première popup d'embauche ##è
    When l utilisateur clique sur "Ajouter_collaborateur"
    And l utilisateur saisit "01/03/2019" dans le champs "Date_d_entrée_collaborateur"
    And l utilisateur selectionne "Interne" dans la liste deroulante "Type_collaborateur"
    And l utilisateur saisit "SOC00SST" dans le champs "Matricule_collaborateur"
    And l utilisateur selectionne "Monsieur" dans la liste deroulante "Qualité_collaborateur"
    And l utilisateur saisit "SST" dans le champs "Nom_collaborateur"
    And l utilisateur saisit "Collaborateur" dans le champs "Prénom_collaborateur"
    And l utilisateur saisit "15/11/1997" dans le champs "Date_de_naissance_collaborateur"
    And l utilisateur selectionne "Angola" dans la liste deroulante "Pays_de_naissance_collaborateur"
    And l utilisateur selectionne "Célibataire" dans la liste deroulante "Situation_familiale_collaborateur"

    ## Deuxième popup d'embauche ##
    And  l utilisateur clique sur "Continuer"
    And l utilisateur selectionne "Embauche" dans la liste deroulante "Motif_d_entrée_collaborateur"
    And l utilisateur selectionne "Delfingen QA" dans la liste deroulante "Société_collaborateur"
    And l utilisateur selectionne "DFG_Siège social" dans la liste deroulante "Etablissement_collaborateur"
    And l utilisateur selectionne "DFG_Direction générale" dans la liste deroulante "Entité_organisationnelle_collaborateur"
    And l utilisateur selectionne "DFG_Ingénieur" dans la liste deroulante "Emploi_collaborateur"
    And l utilisateur selectionne "DFG_Ingénieur atelier" dans la liste deroulante "Poste_collaborateur"
    And l utilisateur selectionne "Contrat à durée indéterminée" dans la liste deroulante "Type_du_contrat_collaborateur"
    # And l utilisateur saisit "01/03/2020" dans le champs "Date de début du contrat"
    And l utilisateur clique sur "Enregistrer_Collaborateur"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 8000

    # Etape 4 : Désactiver SST
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Configuration_Core_RH"
    And wait 2000
    And l utilisateur clique sur "Autres_Paramètres"
    And l utilisateur  "désactive" l'option "JS_Option_SST"
    And l utilisateur clique sur "Enregistrer_Autres_Paramétres"
    And vérifier que le message "L'opération a été effectuée avec succès" s affiche
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"
    And l utilisateur saisit "Collaborateur SST" dans le champs "Recherche_Collaborateur"
    And wait 2000
    And l utilisateur selectionne "Collaborateur SST" dans la liste "Liste_Collaborateurs"
    And vérifier que l element "Onglet_SST" n est pas affiché
