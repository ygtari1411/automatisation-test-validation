# Auteur: Manel Hachicha
# Feature: Workflow collaborateur manager
# Scénario: Validation de l'annulation d'une demande d'absence au workflow collaborateur manager
# Date de création: 08/11/2019
# Date de modification: 27/04/2020


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-ABSENCES
@ACCRETIO2-ABSENCES-0003

Feature: Absences

  Scenario: Validation de l'annulation d'une demande d'absence en workflow collaborateur manager

    Given le navigateur est ouvert et la page d'acceuil est affichée

    #Etape 1 : Profil collaborateur-Ajout de demande d'absence

    And l'utilisateur "berger.cosette@yopmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mes_Absences"
    And wait 5000
    # Cliquer sur une journée libre représentée par une case blanche au niveau du calendrier
    And l utilisateur selectionne une case de journée libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
   # And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 2000
    And vérifier que le statut de la demande devient En cours
    And l utilisateur se deconnecte

    #Etape 2 : Profil manager-Validation de demande d'absence

    And l'utilisateur "marcil.valentine@yopmail.com" est connecté
    And l utilisateur reçoit une notification "a envoyé une demande d'absence"
    And wait 2000
    And l utilisateur clique sur "Mon_Equipe"
    And wait 2000
    And l utilisateur clique sur "Bouton_Absences"
    And wait 8000
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 3000
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
    And l utilisateur se deconnecte

    #Etape 3 : Profil collaborateur-Vérification de la validation de la demande d'absence

    And l'utilisateur "berger.cosette@yopmail.com" est connecté
    Then Vérifier que l utilisateur reçoit une notification "a accepté votre demande d'absence" et que le statut de la demande d absence devient Validée et que la demande d absence s affiche dans le calendrier
    And wait 2000

   #Etape 4 : Profil collaborateur-Annulation de la demande d'absence

    And l utilisateur clique sur "Bouton_Annuler_Demande_Absence"
    And wait 1700
    And vérifier que le titre du modal est "Annulation de la demande d'absence" et le texte du corps du modal est "Voulez-vous vraiment annuler cette demande d'absence?"
    And l utilisateur clique sur "JS_Bouton_Valider_Annulation_Absence"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And verifier le changement de statut de la de la demande vers "Annulation"
    And l utilisateur se deconnecte

    #Etape 5 : Profil manager-Validation de l'annulation de la demande d'absence

    And l'utilisateur "marcil.valentine@yopmail.com" est connecté
    And l utilisateur reçoit une notification "a envoyé une demande d'annulation de la demande d'absence"
    And wait 2000
    And l utilisateur clique sur "Mon_Equipe"
    And wait 2000
    And l utilisateur clique sur "Bouton_Absences"
    And wait 8000
    And l utilisateur clique sur "Bouton_Accepter_Demande_Annulation"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez-vous vraiment valider cette demande d'annulation ?"
    And l utilisateur clique sur "Bouton_Confirmation_Validation_Demande_Annulation"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 4000
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Annulée
    And l utilisateur se deconnecte

   #Etape 6 : Profil collaborateur-Vérification de la validation de l'annulation de la demande d'absence

    And l'utilisateur "berger.cosette@yopmail.com" est connecté
    Then Vérifier que l utilisateur reçoit une notification "Votre demande d'annulation de la demande d'absence a été validée" de la validation de l annulation de la demande d absence et que le statut de la demande d absence devient Annulée et que la demande d absence ne s'affiche plus dans le calendrier
