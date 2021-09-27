# Auteur: Manel Hachicha
# Feature: Workflow collaborateur manager rh-Rejet d'une demande d'absence
# Scénario: Rejet d'une demande d'absence au workflow collaborateur manager rh
# Date de création: 01/11/2019
# Date de modification : 05/05/2020


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-ABSENCES
@ACCRETIO2-ABSENCES-0006

Feature: Absences

  Scenario: Rejet d'une demande d'absence au workflow collaborateur manager rh
    Given le navigateur est ouvert et la page d'acceuil est affichée

   #Etape 1 : Profil collaborateur-Ajout de demande d'absence

    And l'utilisateur "berger.cosette@yopmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mes_Absences"
    And wait 3000
    # Cliquer sur une journée libre représentée par une case blanche au niveau du calendrier
    And l utilisateur selectionne une case de journée libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow2" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
   # And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 2000
    #And vérifier que le statut de la demande devient En cours
    And l utilisateur se deconnecte

   #Etape 2 : Profil manager-Validation de demande d'absence

    And l'utilisateur "marcil.valentine@yopmail.com" est connecté
    And wait 4000
    And l utilisateur reçoit une notification "a envoyé une demande d'absence"
    And wait 5000
    And l utilisateur clique sur "Mon_Equipe"
    And wait 2000
    And l utilisateur clique sur "Bouton_Absences"
    And wait 15000
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And wait 5000
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 5000
    And l utilisateur se deconnecte

    #Etape 3 : Profil rh-Rejet de demande d'absence

    And l'utilisateur "duval.jules@yopmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And wait 2000
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And wait 2000
    And l utilisateur clique sur "Onglet_Suivi_des_absences"
    # Choisir la première demande absence de liste
    And wait 8000
    And l utilisateur clique sur "Bouton_Rejeter_Demande_Absence"
    And wait 4000
    And vérifier que le titre du modal est "Confirmation de rejet" et le texte du corps du modal est "Voulez vous vraiment rejeter cette demande ?"
    And wait 4000
    And l utilisateur saisit "Rejet" dans le champs "Commentaire_Rejet_Absence"
    And wait 3000
    And l utilisateur clique sur "Bouton_Valider_rejet_Absence"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 12000
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Rejetée
    And l utilisateur se deconnecte

   #Etape 4 : Profil collaborateur-Vérification du rejet de la demande d'absence

    And l'utilisateur "berger.cosette@yopmail.com" est connecté
    Then Vérifier que l utilisateur reçoit une notification "a rejeté votre demande d'absence" et que le statut de la demande d absence devient Rejetée et que la demande d'absence ne s affiche pas dans le calendrier

