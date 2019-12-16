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

    #Etape 1 : Ajout de cycle de travail qui considére que les samedi et dimanche ne sont pas travaillés
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Administration"
    And l utilisateur clique sur "Sous_Module_Gestion_des_calendriers"
    And l utilisateur clique sur "Onglet_Journée_type"
    And l utilisateur clique sur "Bouton_Ajouter_Journée_type"
    And l utilisateur saisit "Jtype" dans le champs "Code_Ajout_Journée_type"
    And l utilisateur saisit "Jtype" dans le champs "Libellé_Ajout_Journée_type"
    And l utilisateur selectionne "Durée" dans la liste deroulante "Type_Ajout_Journée_type"
    And l utilisateur saisit "08:00" dans le champs "Nombre_d'heure"
    And l'utilisateur vérifie que le statut est Actif
    And l utilisateur clique sur "Bouton_Valider_Ajout_Journée_type"
    And l utilisateur clique sur "Onglet_Semaine_type"
    And l utilisateur clique sur "Bouton_Ajouter_Semaine_type"
    And l utilisateur saisit "Stype" dans le champs "Code_Ajout_Semaine_type"
    And l utilisateur saisit "Stype" dans le champs "Libellé_Ajout_Semaine_type"
   #Sélection des jours de repos
    And l utilisateur clique sur "Case_Samedi"
    And l utilisateur clique sur "Case_Dimanche"
    And l utilisateur selectionne "Samedi" dans la liste deroulante "Jour_ouvrable"
    And l utilisateur clique sur "Bouton_Valider_Ajout_Semaine_type"
    And l utilisateur clique sur "Onglet_Cycles_de_travail"
    And l utilisateur clique sur "Bouton_Ajouter_Cycles_de_travail"
    And l utilisateur saisit "CType" dans le champs "Code_Ajout_Cycle_de_travail"
    And l utilisateur saisit "Ctype" dans le champs "Libellé_Ajout_Cycle_de_travail"
    And l'utilisateur vérifie que le statut est Actif
    And l utilisateur selectionne "Stype" dans la liste deroulante "Semaines_types"
    And l utilisateur clique sur "Bouton_Valider_Ajout_Cycle_de_travail"
    And l utilisateur clique sur "Bouton_Affectation_Population"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Cycle_de_travail"
    And l utilisateur saisit "01/12/2019" dans le champs "Date_d_effet_Affectation_Population_Cycle de travail"
    And l utilisateur selectionne "Stype" dans la liste deroulante "Premiere_semaine"
    And l utilisateur selectionne "Wajdi Hamdi" dans la liste deroulante "Population_Affectation_Population_Cycle_de_travail"

    #Etape 2 : Profil Rh-Paramétrage de configuration
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Paramétrage"
    And l utilisateur clique sur "Rubrique_Configuration"
    And l utilisateur vérifie que "Champ_Demande d'absence par le manager" a la valeur "Oui"
    And l utilisateur vérifie que "Champ_Le backup est obligatoire" a la valeur "Non"
    And l utilisateur vérifie que "Champ_Ajout du champs backup" a la valeur "Non"
    And l utilisateur vérifie que "Champ_Affichage de tous les managers" a la valeur "Oui"
    And l utilisateur vérifie que "Champ_Validation de la demande d'absence par la RH" a la valeur "Oui"

    #Etape 3 : Profil Rh-Création de règle d'acquisition
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Paramétrage"
    And l utilisateur clique sur "Rubrique_Règles_d'acqusition"
    And l utilisateur clique sur "Ajouter_Règle"
    And l utilisateur saisit "CP" dans le champs "Code_Ajout_Règle"
    And l utilisateur saisit "Congé Payé" dans le champs "Libellé_Ajout_Règle"
    And l utilisateur selectionne "Jour" dans la liste deroulante "Type_Ajout_Règle_Unité_d’acquisition"
    And l utilisateur selectionne "01" dans la liste deroulante "Début_d'acquisition_Jour_Ajout_Règle"
    And l utilisateur selectionne "01" dans la liste deroulante "Début_d'acquisition_Mois_Ajout_Règle"
    And l utilisateur saisit "1" dans le champs "Durée_d’acquisition(année)_Ajout_Règle"
    And l utilisateur saisit "12" dans le champs "Durée_d’acquisition(mois)_Ajout_Règle"
    And l utilisateur selectionne "Mensuel" dans la liste deroulante "Type_d'acquisition_Ajout_Règle"
    And l utilisateur selectionne "22" dans la liste deroulante "Acquis_de_base_Ajout_Règle"
    And l utilisateur selectionne "1" dans la liste deroulante "Unité_de_décrémentation_Ajout_Règle"
    And l utilisateur selectionne "Fin de période" dans la liste deroulante "Mise_à_disposition_Ajout_Règle"
    And l utilisateur saisit "0" dans le champs "Première_consommation_après(mois)_Ajout_Règle"
    And l utilisateur selectionne "à 0,01 près" dans la liste deroulante "Voisinage_Ajout_Règle"
    And l utilisateur selectionne "La plus proche" dans la liste deroulante "Valeur_Ajout_Règle"
    And l utilisateur clique sur "Bouton_Valider_Ajout_Règle"
    And vérifier que le message "Opération effectuée avec succés" s affiche

    #Etape 4 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1 et Rh" selectionné au niveau du motif d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
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
    And l utilisateur selectionne "Validation N+1 et Rh" dans la liste deroulante "Processus_de_validation_Ajout_Motif_Abcences"
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

    #Etape 5 : Profil collaborateur-Ajout de demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mes_Absences"
    # Cliquer sur une journée libre représentée par une case blanche au niveau du calendrier
    And l utilisateur selectionne une case de journée libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1 Durée en jour calendaire" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
    # And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And vérifier que le statut de la demande devient En cours
    # Vérification de la durée
    And Vérifier que le champ Durée a la valeur 3 jour(s)
    And l utilisateur se deconnecte

    #Etape 6 : Profil manager-Validation de demande d'absence
    And l'utilisateur "haf02.manager@gmail.com" est connecté
    And l utilisateur clique sur "Mon_Equipe"
    And l utilisateur clique sur "Bouton_Absences"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    # Vérification de la durée
    And Vérifier que le champ Durée a la valeur 3 jour(s)
    And l utilisateur se deconnecte

    #Etape 7 : Profil rh-Validation de demande d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Suivi_des_absences"
    # Choisir la première demande absence de liste
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Rh"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
       # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 3 jour(s)

    #Etape 8 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1" selectionné au niveau du motif d'absence
    When l'utilisateur "haf03.expert@gmail.com" est connecté
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
    And l utilisateur selectionne "Validation N+1 et Rh" dans la liste deroulante "Processus_de_validation_Ajout_Motif_Abcences"
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

    #Etape 9 : Profil collaborateur-Ajout de demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mes_Absences"
    # Cliquer sur un vendredi libre représentée par une case blanche pour un vendredi au niveau du calendrier
    And l utilisateur selectionne un vendredi libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1 Durée en jour ouvrable" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
    # And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And vérifier que le statut de la demande devient En cours
    # Vérification de la durée
    And Vérifier que le champ Durée a la valeur 2 jour(s)
    And l utilisateur se deconnecte

   #Etape 10 : Profil manager-Validation de demande d'absence
    And l'utilisateur "haf02.manager@gmail.com" est connecté
    And l utilisateur clique sur "Mon_Equipe"
    And l utilisateur clique sur "Bouton_Absences"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
        # Vérification de la durée
    And Vérifier que le champ Durée a la valeur 2 jour(s)
    And l utilisateur se deconnecte

   #Etape 11 : Profil rh-Validation de demande d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Suivi_des_absences"
    # Choisir la première demande absence de liste
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Rh"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
    # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 2 jour(s)

    #Etape 12 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1" selectionné au niveau du motif d'absence
    When l'utilisateur "haf03.expert@gmail.com" est connecté
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
    And l utilisateur selectionne "Validation N+1 et Rh" dans la liste deroulante "Processus_de_validation_Ajout_Motif_Abcences"
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

    #Etape 13 : Profil collaborateur-Ajout de demande d'absence
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Mes_Absences"
    # Cliquer sur un vendredi libre représentée par une case blanche pour un vendredi au niveau du calendrier
    And l utilisateur selectionne un vendredi libre dans le calendrier
    And l utilisateur selectionne "Congés Payés Workflow1 Durée en jour ouvré" dans la liste deroulante "Motif_d_absence_Ajout_Demande_Absence_Collaborateur"
    # And l utilisateur selectionne "Mehrez Somrani" dans la liste deroulante "Backup_Ajout_Demande_Absence_Collaborateur"
    And l'utilisateur upload un justificatif
    And l utilisateur clique sur "Bouton_Envoyer_Ajout_Demande_Absence_Collaborateur"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And vérifier que le statut de la demande devient En cours
    # Vérification de la durée
    And Vérifier que le champ Durée a la valeur 1 jour(s)
    And l utilisateur se deconnecte

   #Etape 14 : Profil manager-Validation de demande d'absence
    And l'utilisateur "haf02.manager@gmail.com" est connecté
    And l utilisateur clique sur "Mon_Equipe"
    And l utilisateur clique sur "Bouton_Absences"
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Manager"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
        # Vérification de la durée
    And Vérifier que le champ Durée a la valeur 1 jour(s)
    And l utilisateur se deconnecte

   #Etape 15 : Profil rh-Validation de demande d'absence
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    And l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Suivi_des_absences"
    # Choisir la première demande absence de liste
    And l utilisateur clique sur "Bouton_Accepter_Demande_Absence_Rh"
    And vérifier que le titre du modal est "Confirmation de la validation" et le texte du corps du modal est "Voulez vous vraiment valider cette demande ?"
    And l utilisateur clique sur "JS_Bouton_Valider_Acceptation"
    And vérifier que le message "Opération effectuée avec succés" s affiche
    And Vérifier que la demande d'absence est déplacée au niveau de la rubrique Historique et que son statut devient Validée
    # Vérification de la durée
    Then Vérifier que le champ Durée a la valeur 1 jour(s)