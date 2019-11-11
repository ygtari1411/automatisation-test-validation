# Auteur: wboufade
# Feature:
# Scénario: Création nouvelle Société
# Date de création: 02/10/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-REFERENTIELS
@ACCRETIO2-REFERENTIELS-0001

Feature: Référentiels : Création société

  Scenario: Création société
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And  l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Référentiels
    Then vérifier l'affichage correct des rubriques
    When l'utilisateur clique sur ajouter entreprise
    And l'utilisateur remplie tous les champs
    Then vérifier l'ajout correct de la société
    When l'utilisateur clique pour ajouter des contacts
    And l'utilisateur remplie tous les champs contacts
    And l'utilisateur clique pour ajouter des coordonnées bancaires
    And l'utilisateur remplie tous les champs coordonnées bancaires
    Then vérifier l'enregistrement correct des ajouts
