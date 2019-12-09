# Auteur: Manel Hachicha
# Feature: Workflow collaborateur manager rh-Vérification de la durée
# Scénario: Vérification de la durée au workflow collaborateur manager rh
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-ABSENCES
@ACCRETIO2-ABSENCES-0008

Feature: Absences: Workflow collaborateur manager rh-Vérification de la durée

  Scenario: Vérification de la durée au workflow collaborateur manager rh
    Given le navigateur est ouvert et la page d'acceuil est affichée

    #Prérequis: Au niveau du paramétrage de l'absence:
    # -Sous la rubrique Règles d'acquisition, la régle Congé Payé est crée
    # -Sous la rubrique Configuration, tous les champs ont la valeur "Oui"

    #Vérification de la durée au workflow collaborateur manager rh-Validation d'absence

    #Etape 1 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1 et Rh" selectionné au niveau du motif d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Paramétrage"
    And l utilisateur clique sur "Rubrique_Motifs_absence"
    And l utilisateur clique sur "Ajouter_motif"
    And l utilisateur saisit "CPW2D1" dans le champs "Code_Ajout_Motif_Abcences"
    And l utilisateur saisit "Congés Payés Workflow1 Durée en jour calendaire" dans le champs "Libellé_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Règle" dans la liste deroulante "Type_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Role utilisateur" dans la liste deroulante "Utilisé_par_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Groupement par défaut" dans la liste deroulante "Groupement_de_motifs_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Validation N+1 et Rh" dans la liste deroulante "Processus de validation_Ajout_Motif_Abcences"
     # Case Visible à cocher
    #And l utilisateur clique sur "Case_Visible"
    And l utilisateur clique sur "Bouton_Ajouter_Motif_Abcences"
    And l utilisateur clique sur "Bouton_Affectation_Population"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Motif_Abcence"
    And l utilisateur saisit "01/11/2019" dans le champs "Date_d_effet_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Wajdi Hamdi" dans la liste deroulante "Population_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Congé Payé" dans la liste deroulante "Règle_Affectation_Population_Motif_Abcence"
     # Choisir au niveau du paramétrage jours calendaires
    And l utilisateur selectionne "Jours calendaires" dans la liste deroulante "Type_du_calendrier_Affectation_Population_Motif_Abcence"
    And l utilisateur clique sur "Bouton_Valider_affectation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And l utilisateur se deconnecte

    #Etape 2 : Profil collaborateur-Ajout de demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    When l utilisateur clique sur "Bouton_Mes_Absences"
    # Cliquer sur un vendredi libre représentée par une case blanche pour un vendredi au niveau du calendrier
    And l utilisateur selectionne un vendredi libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1 Durée en jour calendaire" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
    And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And vérifier que le statut de la demande devient En cours
    # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 3 jour(s)
    And l utilisateur se deconnecte

    #Etape 3 : Profil manager-Validation de demande d'absence
    When l'utilisateur "haf02.manager@gmail.com" est connecté
    And l utilisateur clique sur "Mon_Equipe"
    And l utilisateur clique sur "Bouton_Absences"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 3 jour(s)
    And l utilisateur se deconnecte


    #Etape 4 : Profil rh-Validation de demande d'absence
    When l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Suivi des absences"
    # Choisir la première demande absence de liste
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Rh"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
       # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 3 jour(s)

    #Etape 5 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1" selectionné au niveau du motif d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Paramétrage"
    And l utilisateur clique sur "Rubrique_Motifs_absence"
    And l utilisateur clique sur "Ajouter_motif"
    And l utilisateur saisit "CPW2D2" dans le champs "Code_Ajout_Motif_Abcences"
    And l utilisateur saisit "Congés Payés Workflow1 Durée en jour ouvrable" dans le champs "Libellé_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Règle" dans la liste deroulante "Type_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Role utilisateur" dans la liste deroulante "Utilisé_par_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Groupement par défaut" dans la liste deroulante "Groupement_de_motifs_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Validation N+1 et Rh" dans la liste deroulante "Processus de validation_Ajout_Motif_Abcences"
     # Case Visible à cocher
    #And l utilisateur clique sur "Case_Visible"
    And l utilisateur clique sur "Bouton_Ajouter_Motif_Abcences"
    And l utilisateur clique sur "Bouton_Affectation_Population"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Motif_Abcence"
    And l utilisateur saisit "01/11/2019" dans le champs "Date_d_effet_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Wajdi Hamdi" dans la liste deroulante "Population_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Congé Payé" dans la liste deroulante "Règle_Affectation_Population_Motif_Abcence"
     # Choisir au niveau du paramétrage jours ouvrables
    And l utilisateur selectionne "Jours ouvrables" dans la liste deroulante "Type_du_calendrier_Affectation_Population_Motif_Abcence"
    And l utilisateur clique sur "Bouton_Valider_affectation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And l utilisateur se deconnecte

    #Etape 6 : Profil collaborateur-Ajout de demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    When l utilisateur clique sur "Bouton_Mes_Absences"
    # Cliquer sur un vendredi libre représentée par une case blanche pour un vendredi au niveau du calendrier
    And l utilisateur selectionne un vendredi libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1 Durée en jour ouvrable" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
    And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And vérifier que le statut de la demande devient En cours
    # Vérification de la durée
    And Vérifier que le champ Durée a la valeur 2 jour(s)
    And l utilisateur se deconnecte

   #Etape 7 : Profil manager-Validation de demande d'absence
    When l'utilisateur "haf02.manager@gmail.com" est connecté
    And l utilisateur clique sur "Mon_Equipe"
    And l utilisateur clique sur "Bouton_Absences"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
        # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 2 jour(s)
    And l utilisateur se deconnecte

   #Etape 8 : Profil rh-Validation de demande d'absence
    When l'utilisateur "haf03.expert@gmail.com" est connecté
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Suivi des absences"
    # Choisir la première demande absence de liste
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Rh"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
    # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 2 jour(s)

    #Etape 9 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1" selectionné au niveau du motif d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Paramétrage"
    And l utilisateur clique sur "Rubrique_Motifs_absence"
    And l utilisateur clique sur "Ajouter_motif"
    And l utilisateur saisit "CPW2D3" dans le champs "Code_Ajout_Motif_Abcences"
    And l utilisateur saisit "Congés Payés Workflow1 Durée en jour ouvré" dans le champs "Libellé_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Règle" dans la liste deroulante "Type_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Role utilisateur" dans la liste deroulante "Utilisé_par_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Groupement par défaut" dans la liste deroulante "Groupement_de_motifs_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Validation N+1 et Rh" dans la liste deroulante "Processus de validation_Ajout_Motif_Abcences"
     # Case Visible à cocher
    #And l utilisateur clique sur "Case_Visible"
    And l utilisateur clique sur "Bouton_Ajouter_Motif_Abcences"
    And l utilisateur clique sur "Bouton_Affectation_Population"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Motif_Abcence"
    And l utilisateur saisit "01/11/2019" dans le champs "Date_d_effet_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Wajdi Hamdi" dans la liste deroulante "Population_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Congé Payé" dans la liste deroulante "Règle_Affectation_Population_Motif_Abcence"
     # Choisir au niveau du paramétrage jours ouvrables
    And l utilisateur selectionne "Jours ouvrés" dans la liste deroulante "Type_du_calendrier_Affectation_Population_Motif_Abcence"
    And l utilisateur clique sur "Bouton_Valider_affectation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And l utilisateur se deconnecte

    #Etape 10 : Profil collaborateur-Ajout de demande d'absence
    When l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mes_Absences"
    # Cliquer sur un vendredi libre représentée par une case blanche pour un vendredi au niveau du calendrier
    And l utilisateur selectionne un vendredi libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1 Durée en jour ouvré" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
    And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And vérifier que le statut de la demande devient En cours
    # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 1 jour(s)
    And l utilisateur se deconnecte

   #Etape 11 : Profil manager-Validation de demande d'absence
    When l'utilisateur "haf02.manager@gmail.com" est connecté
    And l utilisateur clique sur "Mon_Equipe"
    And l utilisateur clique sur "Bouton_Absences"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
        # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 1 jour(s)
    And l utilisateur se deconnecte

   #Etape 12 : Profil rh-Validation de demande d'absence
    When l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Suivi des absences"
    # Choisir la première demande absence de liste
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Rh"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
    # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 1 jour(s)