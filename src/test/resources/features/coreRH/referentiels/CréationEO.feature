# Auteur: wboufade
# Feature: Référentiels
# Scénario: Création Entité Orgaisationnelle
# Date de création: 25/10/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-REFERENTIELS
@ACCRETIO2-REFERENTIELS-0003

Feature: Référentiels

  Scenario: Création Entité Organisationnelle

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And  l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Référentiels
    When l'utilisateur clique pour ajouter une Entité Organisationnelle
    And l'utilisateur remplie tous les champs ajout Entité Organisationnelle
    And l'utilisateur valide la création de EO
    And l'utilisateur modifie les informations de EO et clique enregistrer
    Then vérifier la sauvegarde correcte de l'Entité Organisationnelle