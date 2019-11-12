# Auteur: Ons MANSOURI
# Feature: Recrutement
# Scénario: Demande de recrutement par Manager avec rejet Sup N+1
# Date de création: 11/11/2019


@ACCRETIO2
@ACCRETIO2-TALENT
@ACCRETIO2-RECRUTEMENT
@ACCRETIO2-RECRUTEMENT-0002

  Feature: Recrutement
   Scenario: Demande de recrutement par manager avec rejet Sup N+1

     #Etape 001: Connexion manager
    Given   le navigateur est ouvert et la page d'acceuil est affichée
      And   l'utilisateur "yasushitakagi.cm@gmail.com" est connecté
     Then   le nom de l utilisateur "Yasushi TAKAGI" est affiche en haut a gauche

     #Etape 002: Acceder  a la page Demandes de recrutement espace manager
     When   l utlisateur clique sur l icone mon equipe
      And   wait 2000
     When   l utilisateur clique sur l icone demande de recrutement
      And   wait 2000

     #Etape 003: Lancer la demande de recrutement par le manager

        #Bouton ajouter une demande en haut a gauche#
     When   le manager clique pour ajouter une demande_rec
      And   wait 2000
      And   le manager saisi l intitule_demande_rec "Test automatique 1"
      And   le manager saisi effectif_a_couvrir_demande_rec 2
      And   le manager selectionne la cible_demande_rec "Interne" et "Externe"
      And   le manager selectionne le lieu_demande_rec "Ariana"
      And   le manager selectionne le contrat_demande_rec "CDI"
      And   le manager selectionne l emploie_associe_demande_rec "CM Chief RH"
      And   le manager selectionne le poste_associe_demande_rec "CM Collaborateur Buisness Partner"
      And   le manager saisi la mission_demande_rec "Mission Test automatique"
      And   le manager saisi le profil_atouts_demande_rec "Profil Test automatique"
      And   le manager saisi la justification_de_la_demande_rec "Justification Test automatique"
      And   le manager clique pour ajouter_des_fichiers_demande_rec
      And   le manager selectionne la devise_demande_rec "Dinar tunisien"
      And   le manager saisi le salaire_demande_rec 2000
     Then   verifier que le salaire_annuel_demande_rec est 2000
     When   le manager saisi le bonus_demande_rec 1000
     Then   verifier que le salaire annuel_demande_rec est 22000
     When   le manager saisi autres_demande_rec 1500
     Then   verifier que le salaire annuel_demande_rec est 23500
     When   le manager coche budgetise_demande_rec
      And   le manager saisi budget_demande_rec 24000
     Then   verifier que le montant_demande_rec 500 s affiche a droite
     When   le manager clique pour envoyer_demande_rec
      And   wait 2000

     #Etape 004: Verification de la demande lancee par le manager par lui meme

        #Verification des champs dans la liste affichee dans le sous module#
     Then   verifier que le premier libelle_demandes_rec_mgr "Test automatique 1"
      And   verifier que la premiere date de creation_demandes_rec_mgr aujourd hui
      And   verifier que le premier status_demandes_rec_mgr 'Orange' et l intitule "En cours"
      And   verifier que la premiere ligne de l effectif a couvrir_demandes_rec_mgr 2
      And   verifier que le premier lieu_demandes_rec_mgr est "Ariana"
      And   verifier que la premiere ligne de publiee_demandes_rec_mgr n est pas cochee

        #Verification des champs dans le modal voir historique : bouton fleche dans la colonne Actions#
     When   le manager clique sur l icone voir historique_demandes_rec_mgr
     Then   verifier que l initiateur_voir_hist_mgr "Yasushi TAKAGI"
      And   verifier que la date de debut_voir_hist_mgr aujourd hui
      And   verifier que le premier validateur_voir_hist_mgr "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut_voir_hist_mgr aujourd hui
      And   verifier que la premiere date de fin_voir_hist_mgr vide
      And   verifier que la premiere decision_voir_hist_mgr vide
      And   verifier que le premier commentaire_voir_hist_mgr vide
     When   le manager clique sur le bouton fermer_voir_hist_mgr

     #Etape 005: Deconnexion
      And   l utilisateur se deconnecte

     #Etape 006: Connexion avec le profil RH
     When   l'utilisateur "nanakomatsu.CM@gmail.com" est connecté
     Then   le nom de l utilisateur "Nana Komatsu" est affiche en haut a gauche

     #Etape 007: Acceder au menu recrutement par le profil RH
     When   l'utilisateur clique sur espace-RH
      And   l utilisateur clique sur le module Talent
      And   l utilisateur clique sur le sous module Recrutement

     #Etape 008: Verification de la demande de recrutement du manager par le profil RH

        #Verification des champs dans la liste affichee dans le sous module#
     Then   verifier que le premier libelle_offres_rec_HR "Test automatique 1"
      And   verifier que la premiere date de creation_offres_rec_HR aujourd hui
      And   verifier que le premier status_offres_rec_HR 'Orange' et l intitule "En cours"
      And   verifier que le premier initiateur_offres_rec_HR "TAKAGI Yasushi"
      And   verifier que le premier responsable de recrutement_offres_rec_HR vide
      And   verifier que la premiere ligne de candidature_offres_rec_HR 0
      And   verifier que la premiere ligne de l effectif a couvrir_offres_rec_HR 2
      And   verifier que le premier lieu_offres_rec_HR "Ariana"
      And   verifier que la premiere ligne de publiee_offres_rec_HR n est pas cochee

        #Verification des champs dans la liste voir historique : bouton fleche dans la colonne Actions#
     When   le role_RH clique sur l icone voir historique_offres_rec_HR
     Then   verifier que l initiateur_voir_hist_HR "Yasushi TAKAGI"
      And   verifier que la date de debut_voir_hist_HR aujourd hui
      And   verifier que le premier validateur_voir_hist_HR "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut_voir_hist_HR aujourd hui
      And   verifier que la premiere date de fin_voir_hist_HR vide
      And   verifier que la premiere decision_voir_hist_HR vide
      And   verifier que le premier commentaire_voir_hist_HR vide
     When   l utilisateur clique sur le bouton fermer_voir_hist_HR


     #Etape 009: Deconnexion
      And   l utilisateur se deconnecte

     #Etape 010: Connexion avec le profil N+1 du manager
     When   l'utilisateur "nobuoterashima.cm@gmail.com" est connecté
     Then   le nom de l utilisateur "Nobuo TERASHIMA" est affiche en haut a gauche


     #Etape 011: Acceder au menu recrutement avec le profil N+1
      And   le superieur recoit une notification de demande de validation
     When   le superieur clique sur la notification de validation_demande_rec

     #Etape 012: Verification de la demande de recrutement par N+1
      And   le superieur clique sur a valider_demandes_rec_sup
      And   wait 2000
     Then   verifier que le premier libelle_valid_rec_sup "Test automatique 1"
      And   verifier que la premiere date de creation_valid_rec_sup aujourd hui
      And   verifier que le premier status_valid_rec_sup 'Orange' et l intitule "En cours"
      And   verifier que la premiere ligne de l effectif a couvrir_valid_rec_sup "2"
      And   verifier que le premier lieu_valid_rec_sup "Ariana"

        #Verification des champs dans la liste voir historique : bouton fleche dans la colonne Actions#
     When   le superieur clique sur l icone voir historique_valid_rec_sup
     Then   verifier que l initiateur_voir_hist_sup "Yasushi TAKAGI"
      And   verifier que la date de debut_voir_hist_sup aujourd hui
      And   verifier que le premier validateur_voir_hist_sup "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut_voir_hist_sup aujourd hui
      And   verifier que la premiere date de fin_voir_hist_sup vide
      And   verifier que la premiere decision_voir_hist_sup vide
      And   verifier que le premier commentaire_voir_hist_sup vide
     When   le superieur clique sur le bouton fermer_voir_hist_sup

        #Verification des champs dans le modal visualiser le resultat : bouton stylo dans la colonne Actions#
      And   le superieur clique sur visualiser le resultat_valid_rec_sup
     Then   verifier que l intitule_rec_valid_sup "Test automatique"
      And   verifier que l effectif a couvrir_rec_valid_sup 2
      And   verifier que la cible_rec_valid_sup "Interne" et "Externe"
      And   verifier que le contrat_rec_valid_sup "CDI"
      And   verifier que l emploi associe_rec_valid_sup "CM Chief RH"
      And   verifier que le poste associe_rec_valid_sup "CM Collaborateur Buisness Partner"
      And   verifier que le champs mission_rec_valid_sup "Mission Test automatique"
      And   verifier que le champs profil atouts_rec_valid_sup "Profil Test automatique"
      And   verifier que le champs justification de la demande_rec_valid_sup "Justification Test automatique"
      And   verifier que la devise_rec_valid_sup "Dinar tunisien"
      And   verifier que le champs salaire_rec_valid_sup 2000
      And   verifier que le champs bonus_rec_valid_sup 1000
      And   verifier que le champs autres_rec_valid_sup 1500
      And   verifier que le salaire annuel_rec_valid_sup 23500
      And   verifier que la case budgetise_rec_valid_sup coche
      And   verifier que le budget_rec_valid_sup 24000
      And   verifier que le montant_rec_valid_sup 500 s affiche a droite

     #Etape 013: Rejet de la demande de recrutement par N+1
     When   le superieur saisie le commentaire_rec_valid_sup "Rejet N+1"
      And   le superieur selectionne l action rejeter_rec_valid_sup
      And   le superieur clique sur envoyer_rec_valid_sup
      And   le superieur clique sur valider_pop_up_rec_valid_sup
      And   wait 2000
     Then   verifier que le permier libelle_valid_rec_sup n est pas "Test automatique 1"

     #Etape 014: Deconnexion
     When   l utilisateur se deconnecte

     #Etape 015: Connexion avec le profil RH
      And   l'utilisateur "nanakomatsu.CM@gmail.com" est connecté
     Then   le nom de l utilisateur "Nana Komatsu" est affiche en haut a gauche

     #Etape 016: Acceder au menu recrutement par le profil RH
     When   l'utilisateur clique sur espace-RH
      And   l utilisateur clique sur le module Talent
      And   l utilisateur clique sur le sous module Recrutement

     #Etape 017: Verification de la demande de recrutement par le role RH
     Then   verifier que le premier libelle_offres_rec_HR "Test automatique 1"
      And   verifier que la premiere date de creation_offres_rec_HR aujourd hui
      And   verifier que le premier status_offres_rec_HR 'rouge' et l intitule "Rejetée"
      And   verifier que le premier initiateur_offres_rec_HR "TAKAGI Yasushi"
      And   verifier que le premier responsable de recrutement_offres_rec_HR vide
      And   verifier que la premiere ligne de candidature_offres_rec_HR "0"
      And   verifier que la premiere ligne de l effectif a couvrir_offres_rec_HR "2"
      And   verifier que le premier lieu_offres_rec_HR "Ariana"
      And   verifier que la premiere ligne de publiee_offres_rec_HR n est pas cochee

         #Verification des champs dans la liste voir historique : bouton fleche dans la colonne Actions#
     When   le role_RH clique sur l icone voir historique_offres_rec_HR
     Then   verifier que l initiateur_voir_hist_HR "Yasushi TAKAGI"
      And   verifier que la date de debut_voir_hist_HR aujourd hui
      And   verifier que le premier validateur_voir_hist_HR "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut_voir_hist_HR aujourd hui
      And   verifier que la premiere date de fin_voir_hist_HR aujourd hui
      And   verifier que la premiere decision_voir_hist_HR "Rejetée" et la couleur est rouge
      And   verifier que le premier commentaire_voir_hist_HR "Rejet N+1"
      And   verifier qu il n y pas de second validateur_voir_hist_HR
     When   le superieur clique sur le bouton fermer_voir_hist_sup

     #Etape 018: Deconnexion
      And   l utilisateur se deconnecte

     #Etape 019: Connexion avec le profil manager
     When   l'utilisateur "yasushitakagi.cm@gmail.com" est connecté
     Then   le nom de l utilisateur "Yasushi TAKAGI" est affiche en haut a gauche

     #Etape 020: Verification de la reception de la notification de validation RH par le manager
      And   l utilisateur clique sur la notification de rejet de la demande de recrutement
     Then   verifier que le premier libelle dans la liste "Test automatique"
      And   verifier que la premiere date de creation dans la liste aujourd hui
      And   verifier que le premier status dans la liste 'rouge' et l intitule "Rejetée"
      And   verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And   verifier que le premier lieu dans la liste est "Ariana"
      And   verifier que la premiere ligne de publiee n est pas cochee

        #Verification des champs dans le modal voir historique : bouton fleche dans la colonne Actions#
     When   le manager clique sur voir historique_demandes_rec_mgr
     Then   verifier que l initiateur_voir_hist_mgr "Yasushi TAKAGI"
      And   verifier que la date de debut_voir_hist_mgr aujourd hui
      And   verifier que la date de fin_voir_hist_mgr aujourd hui
      And   verifier que le premier validateur_voir_hist_mgr "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut_voir_hist_mgr aujourd hui
      And   verifier que la premiere date de fin_voir_hist_mgr aujourd hui
      And   verifier que la premiere decision_voir_hist_mgr "Rejetée" et la couleur est rouge
      And   verifier que le premier commentaire_voir_hist_mgr "Rejet N+1"
      And   verifier qu il n y pas de second validateur_voir_hist_mgr
     When   l utilisateur clique sur le bouton fermer_voir_hist_mgr