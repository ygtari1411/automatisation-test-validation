# Auteur: Hafedh Tlili
# Feature: Onboarding
# Scénario: Création du template Onboarding
# Date de création: 09/12/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-ONBOARDING
@ACCRETIO2-ONBOARDING-001

Feature: Onboarding : Creation du template Onboarding

  Scenario: Creation du template Onboarding

     # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté


    # Etape 2 : Accès à l'espace RH
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Onboarding"


    # Etape 3 : Ajout d'un nouveau template onboarding
    When l utilisateur clique sur "Ajouter_template_onboarding"
    And l utilisateur saisit "Onboarding 1" dans le champs "Nom_du_template_onboarding"
    And l utilisateur selectionne "Informations utiles" dans la liste deroulante "Liste_des_paramètres_onboarding"
    And l utilisateur selectionne "Politique de l'entreprise" dans la liste deroulante "Liste_des_paramètres_onboarding"
    And l utilisateur selectionne "Charte d'utilisation" dans la liste deroulante "Liste_des_paramètres_onboarding"
    And l utilisateur selectionne "Fiche de poste" dans la liste deroulante "Liste_des_paramètres_onboarding"
    And l utilisateur selectionne "Photos" dans la liste deroulante "Liste_des_paramètres_onboarding"
    And l utilisateur selectionne "Manager" dans la liste deroulante "Liste_des_paramètres_onboarding"
    And l utilisateur selectionne "Team" dans la liste deroulante "Liste_des_paramètres_onboarding"
    And l utilisateur saisit "60" dans le champs "Durée_d'affichage_(en_mois)_onboarding"
    And l utilisateur clique sur "Ajouter_population_onboarding"
    And l utilisateur clique sur "Valider_population_onboarding"
    And l utilisateur saisit "Population Onboarding 1" dans le champs "Entrer_un_libellé_onboarding"
    And l utilisateur clique sur "Sauvegarder_Ajout_population_onboarding"
    And l utilisateur clique sur "Enregistrer_Ajout_Template_onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche


    # Etape 4 : Paramétrage de la rubrique "Première connexion"
    When l utilisateur clique sur "Onboarding_1"
    And l utilisateur clique sur "Première_connexion_onboarding"
    # And l utilisateur selectionne "Français" dans la liste deroulante "Langue_première_connexion_onboarding"
    And l utilisateur saisit "Bienvenue dans votre espace collaborateur Accretio" dans le champs "Texte_de_la_première_connexion_onboarding"
    And l utilisateur clique sur "Enregistrer_Template_Onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche


    # Etape 5 : Paramétrage de la rubrique Bienvenue
    When l utilisateur clique sur "Bienvenue_onboarding"
    # And l utilisateur selectionne "Français" dans la liste deroulante "Langue_bienvenue_onboarding"
    And l utilisateur saisit "Bienvenue au sein da la société de service" dans le champs "Texte_de_bienvenue_onboarding"
    And l utilisateur saisit "https://www.youtube.com/watch?v=unMfSVplDhA" dans le champs "Video_de_bienvenue_onboarding"
    And l utilisateur saisit "La société de servive est née de l’ambition partagée des fondateurs de créer un cabinet de conseil où l’exigence de l’excellence est une culture et où le plaisir et la passion sont les moteurs de fonctionnement des équipes.la présentation Accretio est une plateforme digitale qui révolutionne vos échanges en mettant l’humain au cœur de votre transformation digitale" dans le champs "Présentation_bienvenue_onboarding"
    And l utilisateur clique sur "Enregistrer_Template_Onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche


    # Etape 6 : Paramétrage de la rubrique Informations utiles
    When l utilisateur clique sur "Informations_utiles_onboarding"
    # And l utilisateur selectionne "Français" dans la liste deroulante "Langue_informations_utiles_onboarding"
    And l utilisateur selectionne "Faten Mzali" dans la liste deroulante "Interlocuteur_onboarding"
    And l utilisateur selectionne "Ibrahim Hamdaoui" dans la liste deroulante "Interlocuteur_onboarding"
    Then l utilisateur clique sur "Organnigramme_onboarding"
    And l utilisateur saisit "Notre mission est de conduire les transformations créatrices de valeur pour nos clients et faire du système d’information un véritable levier de performance au service de leur stratégie" dans le champs "Présentation_informations_utiles_onboarding"
    ##Ajout de la première occurrence bonne adresse
    And l utilisateur saisit "Restaurants" dans le champs "Libelle_bonnes_adresse"
    And l utilisateur saisit "https://www.tripadvisor.fr/Restaurants-g293758-Tunis_Tunis_Governorate.html" dans le champs "URL_bonnes_adresse"
    ##Ajout de la deuxième occurrence bonne adresse
    And l utilisateur clique sur "Ajouter_une_adresse_oboarding"
    And l utilisateur saisit "Cinema" dans le champs "Libelle_bonnes_adresse"
    And l utilisateur saisit "https://pathe.tn/" dans le champs "URL_bonnes_adresse"
    And l utilisateur clique sur "Enregistrer_Template_Onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche

    # Etape 7 : Paramétrage de la rubrique Politique de l'entreprise
    When l utilisateur clique sur "Politique_de_l_entreprise_onboarding1"
    # And l utilisateur selectionne "Français" dans la liste deroulante "Politique_entreprise_onboarding"
    And l utilisateur saisit " Nos collaborateurs, passionnés par leur métier, sont fortement impliqués dans leur travail et incarnent avec excellence et enthousiasme notre exigence de haute qualité" dans le champs "Politique_de_l_entreprise_onboarding2"
    And l utilisateur clique sur "Obligatoire_politique_entreprise"
    And l utilisateur clique sur "Enregistrer_Template_Onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche

    # Etape 8 : Paramétrage de la rubrique Charte d'utilisation
    When l utilisateur clique sur "Charte_d_utilisation_onboarding1"
    # And l utilisateur selectionne "Français" dans la liste deroulante "Charte_utilisation_onboarding"
    And l utilisateur saisit "Parce que viser l’excellence est le gage de notre pérennité, nous capitalisons sur nos expériences pour apporter une valeur ajoutée au-delà des attentes de nos clients" dans le champs "Charte_d_utilisation_onboarding2"
    And l utilisateur clique sur "Obligatoire_charte_utilisation"
    And l utilisateur clique sur "Enregistrer_Template_Onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche

    # Etape 9 : Paramétrage de la rubrique Fiche de poste
    When l utilisateur clique sur "Fiche_de_poste_onboarding"
    And l utilisateur clique sur "Obligatoire_fiche_de_poste"
    And l utilisateur clique sur "Enregistrer_Template_Onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche

    # Etape 10 : Déconnexion
    And l utilisateur se deconnecte