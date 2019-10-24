# Auteur: wboufade
# Feature:
# Scénario: Création nouvelle news
# Date de création: 09/10/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-REFERENTIELS
@ACCRETIO2-REFERENTIELS-0002

Feature: Référentiels

  Scenario: Création établissement
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And  l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Référentiels
    Then vérifier l'affichage correct des rubriques
    When l'utilisateur clique pour ajouter un etablissement
    And l'utilisateur remplie tous les champs ajout établissement
    Then vérifier l'ajout correct du nouvel établissement

