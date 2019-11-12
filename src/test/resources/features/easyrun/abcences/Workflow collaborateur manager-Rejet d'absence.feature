# Auteur: Manel Hachicha
# Feature: WorkflowN1Rejet
# Scénario: Rejet d'une demande d'absence en workflowN1
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-ABSENCES
@ACCRETIO2-ABSENCES-0002

Feature: WorkflowN1Rejet

  Scenario: Rejet d'une demande d'absence en workflowN1
    Given le navigateur est ouvert et la page d'acceuil est affichée

    #Prérequis: Au niveau du paramétrage de l'absence:
    # -Sous la rubrique Règles d'acquisition, la régle Congé Payé est crée
    # -Sous la rubrique Configuration, tous les champs ont la valeur "Oui"

    #Etape 1 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1" selectionné au niveau du motif d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Easyrun
    And l'utilisateur clique sur Absences
    And l'utilisateur clique sur Motifs d'absence
    And l'utilisateur clique sur ajouter motif d'absence
    And l'utilisateur saisit le code "CP2020"
    And l'utilisateur saisit le libellé "Congés Payés"
    And l'utilisateur sélectionne le type "Règle"
    And l'utilisateur sélectionne au niveau du champ Utilisé par "Role utilisateur" et "Role manager"
    And l'utilisateur sélectionne au niveau du champ Groupement de motifs "Groupement par défaut"
    And l'utilisateur coche la case Visible
    And l'utilisateur clique sur Enregistrer l'ajout de motif d'absence
    And l'utilisateur clique sur l'icône Affectation de population
    And l'utilisateur saisit au niveau du champ Date d'effet "01/11/2019"
    And l'utilisateur saisit au niveau du champ Population "Wajdi Hamdi"
    And l'utilisateur sélectionne la règle "Congé Payé"
    And l'utilisateur sélectionne le type du calendrier "Jours ouvrés"
    And l'utilisateur clique sur valider l'affectation
    And le message Opération effectuée avec succés s'affiche à l'ecran

    #Etape 2 : Profil collaborateur-Ajout de demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    When l'utilisateur clique sur Absences
    And l'utilisateur clique sur une journée libre pour ajouter une demande d'absence
    And l'utilisateur choisit le motif d'absence Congés payés
    And l'utilisateur sélectionne un backup
    And l'utilisateur sélectionne un justificatif
    And l'utilisateur clique sur Envoyer la demande d'absence
    And le message Opération effectuée avec succés s'affiche à l'ecran
    And le statut de la demande devient En cours

    # Etape 3 : Profil manager-Rejet de demande d'absence
    And l'utilisateur "haf02.manager@gmail.com" est connecté
    And l'utilisateur reçoit une notification "a envoyé une demande d'absence"
    And l'utilisateur clique sur Mon équipe
    And l'utilisateur clique sur Absences
    And l'utilisateur clique sur l'icône Rejeter la demande d'absence
    And la fenêtre de confirmation du rejet de la demande d'absence s'affiche à l'écran
    And l'utilisateur ajoute un commentaire au niveau de la fenêtre de confirmation du rejet de la demande d'absence
    And l'utilisateur clique sur Valider le rejet au niveau de la fenêtre de confirmation du rejet de la demande d'absence
    And le message Opération effectuée avec succés s'affiche à l'ecran
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Rejetée

   #Etape 4 : Profil collaborateur-Vérification du rejet de la demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    Then Vérifier que l'utilisateur reçoit une notification "Votre demande d'absence a été rejetée" et que le statut de la demande d'absence devient Rejetée et que la demande d'absence ne s'affiche pas dans le calendrier