# Auteur: ygtari
# Feature: Annonces
# Scénario: Suppression d'une annonce
# Date de création: 24/10/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-Annonces
@ACCRETIO2-Annonces-0003


Feature: Annonces

  Scenario: Suppression d'une annonce
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Annonces
    And L'utilisateur clique sur  supprimer Annonce
    And L'utilisateur clique sur valider suppression
    Then vérifier la suppression de l'annonce

