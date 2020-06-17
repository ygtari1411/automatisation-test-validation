# Auteur: Wael Boufaden
# Feature: Paramétrage module absence
# Scénario: Ajout des paramétres de base dans le module absence
# Date de création: 23/04/2020


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-ABSENCES
@ACCRETIO2-ABSENCES-0009


Feature: Absences

  Scenario: Ajout des paramétres de base dans le module absence

    Given le navigateur est ouvert et la page d'acceuil est affichée

   #Etape 1 : Ajout de cycle de travail qui considére que les samedi et dimanche ne sont pas travaillés
    And l'utilisateur "duval.jules@yopmail.com" est connecté
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Module_Administration"
    And l utilisateur clique sur "Sous_Module_Gestion_des_calendriers"
    And l utilisateur clique sur "Onglet_Jours_fériés"
    And wait 3000
    And l utilisateur clique sur "Bouton_Ajouter_Calendrier"
    And l utilisateur saisit "TestCal" dans le champs "Code_Ajout_Calendrier"
    And l utilisateur saisit "TestCal" dans le champs "Libellé_Ajout_Calendrier"
    And l utilisateur clique sur "Bouton_Valider_Ajout_Calendrier"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 2000
    And l utilisateur clique sur "Bouton_Affectation_Population_Calendrier"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Calendrier"
    And l utilisateur saisit "01/06/2019" dans le champs "Date_d_effet_Affectation_Population_Calendrier"
    And wait 3000
    And l utilisateur selectionne la population "Berger Cosette" dans la liste des populations "Population_Affectation_Population_Calendrier"
    And l utilisateur clique sur "Valider_Affectation_Population_Calendrier"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And l utilisateur clique sur "Onglet_Journée_type"
    And l utilisateur clique sur "Bouton_Ajouter_Journée_type"
    And l utilisateur saisit "TestJtype" dans le champs "Code_Ajout_Journée_type"
    And l utilisateur saisit "TestJtype" dans le champs "Libellé_Ajout_Journée_type"
    And l utilisateur selectionne "Durée" dans la liste deroulante "Type_Ajout_Journée_type"
    And l utilisateur modifie "08" dans le champs "Nombre_Heures_Ajout_Journée_Type"
    And l utilisateur modifie "00" dans le champs "Nombre_Minutes_Ajout_Journée_Type"
    And l'utilisateur vérifie que le statut de la journée type est Actif
    And l utilisateur clique sur "Bouton_Valider_Ajout_Journée_type"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    #And wait 4000
    #And l'utilisateur rafraichit la page
    And l utilisateur clique sur "Onglet_Semaine_type"
    And wait 4000
    And l utilisateur clique sur "Bouton_Ajouter_Semaine_type"
    And l utilisateur saisit "TestStype" dans le champs "Code_Ajout_Semaine_type"
    And l utilisateur saisit "TestStype" dans le champs "Libellé_Ajout_Semaine_type"
   #Sélection des jours de repos
    And l utilisateur clique sur "Case_Samedi_Ajout_Semaine_Type"
    And l utilisateur clique sur "Case_Dimanche_Ajout_Semaine_Type"
    And l utilisateur selectionne "Samedi" dans la liste deroulante "Jour_ouvrable_Ajout_Semaine_Type"
    And l utilisateur clique sur "Bouton_Valider_Ajout_Semaine_type"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 4000
    And l utilisateur clique sur "Onglet_Cycles_de_travail"
    And wait 4000
    And l utilisateur clique sur "Bouton_Ajouter_Cycles_de_travail"
    And wait 2000
    And l utilisateur saisit "TestCType" dans le champs "Code_Ajout_Cycle_de_travail"
    And l utilisateur saisit "TestCtype" dans le champs "Libellé_Ajout_Cycle_de_travail"
    And l'utilisateur vérifie que le statut du cycle de travail est Actif
    And l utilisateur selectionne "TestStype" dans la liste "Semaines_types_Ajout_Cycle_de_travail"
    And l utilisateur clique sur "Bouton_Valider_Ajout_Cycle_de_travail"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 4000
    And l utilisateur clique sur "Bouton_Affectation_Population_Cycles_de_travail"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Cycle_de_travail"
    And l utilisateur saisit "01/12/2019" dans le champs "Date_d_effet_Affectation_Population_Cycle_de_travail"
    And l utilisateur selectionne "TestStype" dans la liste deroulante "Premiere_semaine_Affectation_Popultaion_Cycle_de_travail"
    And l utilisateur selectionne la population "Berger Cosette" dans la liste des populations "Population_Affectation_Population_Cycle_de_travail"
    And l utilisateur clique sur "Valider_Affectation_Population_Cycle_de_travail"
    And vérifier que le message "Opération effectuée avec succès" s affiche

    #Etape 2 : Profil Rh-Paramétrage de configuration

    And l utilisateur clique sur "Module_Easyrun"
    And l utilisateur clique sur "Sous_Module_Absences"
    And l utilisateur clique sur "Onglet_Paramétrage"
    And l utilisateur clique sur "Rubrique_Configuration"
    And wait 6000
    And l utilisateur  "désactive" l'option "JS_Champ_Notification_N_1_après_décision_RH"
    And l utilisateur clique sur "Bouton_Sauvegarde_Parametres_Config_Absence1"
    And wait 1000
    And l utilisateur  "active" l'option "JS_Champ_Demande_d_absence_par_le_manager"
    And l utilisateur clique sur "Bouton_Sauvegarde_Parametres_Config_Absence2"
    And wait 1000
    And l utilisateur  "désactive" l'option "JS_Champ_Le_backup_est_obligatoire"
    And l utilisateur clique sur "Bouton_Sauvegarde_Parametres_Config_Absence3"
    And wait 1000
    And l utilisateur  "désactive" l'option "JS_Champ_Ajout_du_champs_backup"
    And l utilisateur clique sur "Bouton_Sauvegarde_Parametres_Config_Absence4"
    And wait 1000
    And l utilisateur  "active" l'option "JS_Champ_Affichage_de_tous_les_managers"
    And l utilisateur clique sur "Bouton_Sauvegarde_Parametres_Config_Absence5"
    And wait 1000
    And l utilisateur  "active" l'option "JS_Champ_Validation_de_la_demande_d_absence_par_la_RH"
    And l utilisateur clique sur "Bouton_Sauvegarde_Parametres_Config_Absence6"
    And l'utilisateur rafraichit la page

      #Etape 3 : Profil Rh-Création de règle d'acquisition

    And l utilisateur clique sur "Rubrique_Règles_d_acqusition"
    And l utilisateur clique sur "Ajouter_Règle_d_aquisition"
    And wait 2000
    And l utilisateur saisit "TestCP" dans le champs "Code_Ajout_Règle_d_aquisition"
    And wait 1500
    And l utilisateur saisit "TestCongé Payé" dans le champs "Libellé_Ajout_Règle_d_aquisition"
    And wait 1500
    #And l utilisateur clique sur "Jour_Debut_Ajout_Regle_d_aquisition"
    #And wait 1500
    #And l utilisateur selectionne "01" dans la liste "Début_d_acquisition_Jour_Ajout_Règle"
    #And l utilisateur clique sur "Mois_Debut_Ajout_Regle_d_aquisition"
    #And wait 1500
    #And l utilisateur selectionne "01" dans la liste "Début_d_acquisition_Mois_Ajout_Règle"
    #And wait 1500
    And l utilisateur selectionne "Jour" dans la liste deroulante "Type_Ajout_Règle_Unité_d_acquisition"
    And l utilisateur saisit "22" dans le champs "Acquis_de_base_Ajout_Règle"
    And l utilisateur selectionne "Mensuel" dans la liste deroulante "Type_d_acquisition_Ajout_Règle"
    And l utilisateur selectionne "Fin de période" dans la liste deroulante "Mise_à_disposition_Ajout_Règle"
    And l utilisateur selectionne "à 0,01 près" dans la liste deroulante "Voisinage_Ajout_Règle"
    And l utilisateur selectionne "La plus proche" dans la liste deroulante "Valeur_Ajout_Règle"
    And wait 1500
    And l utilisateur clique sur "Onglet_Consommation_Ajout_Règle"
    And l utilisateur saisit "12" dans le champs "Durée_d_acquisition_Mois_Ajout_Règle"
    #And l utilisateur saisit "1" dans le champs "Unité_de_décrémentation_Ajout_Règle"
    And l utilisateur selectionne "Dès l'acquisition" dans la liste deroulante "Consommable_Apres_Ajout_Regle"
    And l utilisateur saisit "0" dans le champs "Première_consommation_après_mois_Ajout_Règle"
    And l utilisateur clique sur "Bouton_Valider_Ajout_Règle"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 4000

    #Etape 4 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1" selectionné au niveau du motif d'absence

    And l utilisateur clique sur "Rubrique_Motifs_absence"
    And wait 4000
    And l utilisateur clique sur "Ajouter_motif"
    And l utilisateur saisit "TCPW1" dans le champs "Code_Ajout_Motif_Abcences"
    And l utilisateur saisit "TestCongés Payés Workflow1" dans le champs "Libellé_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Groupement par défaut" dans la liste deroulante "Groupement_de_motifs_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Règle" dans la liste deroulante "Type_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Role utilisateur" dans la liste deroulante "Utilisé_par_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Validation N+1" dans la liste deroulante "Processus_de_validation_Ajout_Motif_Abcences"
    # Case Visible à cocher
    And l utilisateur selectionne "Rôle utilisateur" dans la liste deroulante "Motif_Absence_Visible"
    And l utilisateur clique sur "Bouton_Ajouter_Motif_Abcences"
    And wait 3000
    And l utilisateur clique sur "Bouton_Affectation_Population"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne la population "Berger Cosette" dans la liste des populations "Population_Affectation_Population_Motif_Abcence"
    And l utilisateur saisit "01/11/2019" dans le champs "Date_d_effet_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "TestCongé Payé" dans la liste deroulante "Règle_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Jours ouvrés" dans la liste deroulante "Type_du_calendrier_Affectation_Population_Motif_Abcence"
    And l utilisateur clique sur "Bouton_Valider_affectation"
    And vérifier que le message "Opération effectuée avec succès" s affiche
    And wait 3000

     #Etape 5 : Profil Rh-Création du motif d'absence renfermant le processus de validation "Validation N+1 et Rh" selectionné au niveau du motif d'absence

    And l utilisateur clique sur "Ajouter_motif"
    And l utilisateur saisit "TCPW2" dans le champs "Code_Ajout_Motif_Abcences"
    And l utilisateur saisit "TestCongés Payés Workflow2" dans le champs "Libellé_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Règle" dans la liste deroulante "Type_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Role utilisateur" dans la liste deroulante "Utilisé_par_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Groupement par défaut" dans la liste deroulante "Groupement_de_motifs_Ajout_Motif_Abcences"
    And l utilisateur selectionne "Validation N+1 et Rh" dans la liste deroulante "Processus_de_validation_Ajout_Motif_Abcences"
     # Case Visible à cocher
    And l utilisateur selectionne "Rôle utilisateur" dans la liste deroulante "Motif_Absence_Visible"
    And l utilisateur clique sur "Bouton_Ajouter_Motif_Abcences"
    And wait 3000
    And l utilisateur clique sur "Bouton_Affectation_Population"
    And l utilisateur clique sur "Bouton_Ajout_Affectation_Population_Motif_Abcence"
    And l utilisateur saisit "01/11/2019" dans le champs "Date_d_effet_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne la population "Berger Cosette" dans la liste des populations "Population_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "TestCongé Payé" dans la liste deroulante "Règle_Affectation_Population_Motif_Abcence"
    And l utilisateur selectionne "Jours ouvrés" dans la liste deroulante "Type_du_calendrier_Affectation_Population_Motif_Abcence"
    And l utilisateur clique sur "Bouton_Valider_affectation"
    And vérifier que le message "Opération effectuée avec succès" s affiche
