# Auteur: Hafedh Tlili
# Feature: Onboarding
# Scénario: Modification du template Onboarding
# Date de création: 10/12/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-ONBOARDING
@ACCRETIO2-ONBOARDING-002

Feature: Onboarding : Modification du template Onboarding

  Scenario: Modification du template Onboarding

   # Etape 1 : Connexion
   Given le navigateur est ouvert et la page d'acceuil est affichée
   And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH
    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Onboarding"
    And l utilisateur clique sur "Onbaording_1"

    # Etape 3 : Modification du template
  When l utilisateur clique sur "Modifier_template_onboarding"
    ## Une fonction standard "modifie" doit être créé de la même menière que saisit, selectionne, etc ....##
    And l utilisateur modifie "Template_Test_QA" dans le champs "Nom_du_template_onboarding"
    And l utilisateur modifie "80" dans le champs "Durée_d'affichage_(en_mois)_onboarding"
    And l utilisateur clique sur "Enregistrer_Ajout_Template_onboarding"
    Then vérifier que le message "Opération effectuée avec succès" s affiche
    ## Une nouvelle fonction à créer similaire à la fonction "vérifier la modification de l'annonce" ##
    And vérifier la modification du nom de l'onboarding








