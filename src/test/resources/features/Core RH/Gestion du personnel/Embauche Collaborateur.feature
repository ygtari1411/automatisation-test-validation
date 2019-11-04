# Auteur: Hafedh Tlili
# Feature: Gestion du personnel
# Scénario: Embauche Collaborateur
# Date de création: 04/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-001

Feature: Gestion du personnel

  Scenario: Embauche Collaborateur

     # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Gestion du personnel

 # Etape 3 : Embauche d'un nouveau collaborateur
    When l'utilisateur clique pour ajouter un collaborateur
