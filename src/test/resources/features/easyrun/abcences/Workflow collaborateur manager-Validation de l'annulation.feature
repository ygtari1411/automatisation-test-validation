# Auteur: Manel Hachicha
# Feature: Workflow collaborateur manager
# Scénario: Validation de l'annulation d'une demande d'absence au workflow collaborateur manager
# Date de création: 08/11/2019


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-ABSENCES
@ACCRETIO2-ABSENCES-0003

Feature: Absences: Validation de l'annulation d'une demande d'absence au workflow collaborateur manager

  Scenario: Validation de l'annulation d'une demande d'absence au workflow collaborateur manager
    Given le navigateur est ouvert et la page d'acceuil est affichée

    #Prérequis: Au niveau du paramétrage de l'absence:
    # -Sous la rubrique Règles d'acquisition, la régle Congé Payé est crée
    # -Sous la rubrique Configuration, tous les champs ont la valeur "Oui"

     #Etape 1 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1" selectionné au niveau du motif d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Paramétrage"
    And l utilisateur clique sur "Rubrique_Motifs_absence"
    And l utilisateur clique sur "Ajouter_motif"
    And l utilisateur saisit "CPWorkflow1" dans le champs "Code_Ajout_Motif_Abcences"
    And l utilisateur saisit "Congés Payés Workflow1" dans le champs "Libellé_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Règle" dans la liste deroulante "Type_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Role utilisateur" dans la liste deroulante "Utilisé_par_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Groupement par défaut" dans la liste deroulante "Groupement_de_motifs_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Validation N+1" dans la liste deroulante "Processus de validation_Ajout_Motif_Abcences"
     # Case Visible à cocher
    #And l utilisateur clique sur "Case_Visible"
    And l utilisateur clique sur "Bouton_Ajouter_Motif_Abcences"
    And l utilisateur clique sur "Bouton_Affectation_Population"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Motif_Abcence"
    And l utilisateur saisit "01/11/2019" dans le champs "Date_d_effet_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Wajdi Hamdi" dans la liste deroulante "Population_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Congé Payé" dans la liste deroulante "Règle_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Jours ouvrés" dans la liste deroulante "Type_du_calendrier_Affectation_Population_Motif_Abcence"
    And l utilisateur clique sur "Bouton_Valider_affectation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And l utilisateur se deconnecte

    #Etape 2 : Profil collaborateur-Ajout de demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    When l utilisateur clique sur "Bouton_Mes_Absences"
    # Cliquer sur une journée libre représentée par une case blanche au niveau du calendrier
    And l utilisateur selectionne une case de journée libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
    And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And vérifier que le statut de la demande devient En cours
    And l utilisateur se deconnecte

    #Etape 3 : Profil manager-Validation de demande d'absence
    And l'utilisateur "haf02.manager@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mon_équipe"
    And l utilisateur clique sur "Bouton_Absences"
    And l utilisateur clique sur "Référence_Absence"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence"
    And la fenêtre de confirmation de validation de la demande d'absence s'affiche à l'écran
    And l utilisateur clique sur "Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée

   #Etape 4 : Profil collaborateur-Vérification de la validation de la demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    And Vérifier que l'utilisateur reçoit une notification "Votre demande d'absence a été acceptée" et que le statut de la demande d'absence devient Validée et que la demande d'absence s'affiche dans le calendrier

   #Etape 5 : Profil collaborateur-Annulation de la demande d'absence
    And l utilisateur clique sur "Référence_Absence"
    And l utilisateur clique sur "Bouton_Annuler_Demande_Absence"
    And la fenêtre de confirmation de l'annulation de la demande d'absence s'affiche à l'écran
    And l utilisateur clique sur "Bouton_Valider_Annulation"
    And vérifier que le message "Opération effectuée avec succés" s affiche

    #Etape 6 : Profil manager-Validation de l'annulation de la demande d'absence
    And l'utilisateur "haf02.manager@gmail.com" est connecté
    And l'utilisateur reçoit une notification d'annulation de demande d'absence
    And l utilisateur clique sur "Référence_Absence"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Annulation"
    And la fenêtre de confirmation de validation de l'annulation de la demande d'absence s'affiche à l'écran
    And l utilisateur clique sur "Bouton_Confirmation_Validation_Demande_Annulation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Annulée

   #Etape 7 : Profil collaborateur-Vérification de la validation de l'annulation de la demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    Then Vérifier que l'utilisateur reçoit une notification "Votre demande d'annulation de la demande d'absence a été validée" de la validation de l'annulation de la demande d'absence et que le statut de la demande d'absence devient Annulée et que la demande d'absence ne s'affiche plus dans le calendrier


