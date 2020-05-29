# Auteur: Manel Hachicha
# Feature: Workflow collaborateur manager-Vérification de la durée
# Scénario: Vérification de la durée au workflow collaborateur manager: Jour ouvrable
# Date de création: 01/11/2019
# Date de modification: 26/05/2020 - Wael Boufaden


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-ABSENCES
@ACCRETIO2-ABSENCES-0007

Feature: Absences

  Scenario: Vérification de la durée au workflow collaborateur manager: Jour ouvrable
    Given le navigateur est ouvert et la page d'acceuil est affichée

    #Etape 1 : Profil collaborateur-Ajout de demande d'absence

    And l'utilisateur "berger.cosette@yopmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mes_Absences"
    And wait 3000
    # Cliquer sur un vendredi libre représentée par une case blanche pour un vendredi au niveau du calendrier
    And l utilisateur selectionne un vendredi libre dans le calendrier
    And l utilisateur selectionne "Congés Payés W1 Durée en jour ouvrable" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
   # And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 2000
    And vérifier que le statut de la demande devient En cours
     # Vérification de la durée
    And l utilisateur vérifie que "Champ_Durée_Absence" a la valeur "2 jour(s)"
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
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
        # Vérification de la durée
    And l utilisateur vérifie que "Champ_Durée_Absence" a la valeur "2 jour(s)"




