# Auteur: ygtari
# Feature: Annonces
# Scénario: Suppression d'une annonce
# Date de création: 24/10/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-Annonces
@ACCRETIO2-Annonces-0003


Feature: Annonces : Suppression d'une annonce

  Scenario: Suppression d'une annonce

    # Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Changement de role

    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Annonces

    # Etape 3 : Suppression annonce

    And L'utilisateur clique sur  supprimer Annonce
    And L'utilisateur clique sur valider suppression

    # Etape 4 : Vérification de la suppression de l'annonce

    Then vérifier la suppression de l'annonce

