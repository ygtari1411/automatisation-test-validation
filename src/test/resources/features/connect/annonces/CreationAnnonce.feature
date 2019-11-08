# Auteur: ygtari
# Feature: Annonces
# Scénario: Création  nouvelle annonce
# Date de création: 21/10/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-Annonces
@ACCRETIO2-Annonces-0001


Feature: Annonces

  Scenario: Création  nouvelle annonce
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Annonces
    And L'utilisateur clique sur  ajouter Annonce
    When L'utilisateur rempli les champs de de la création annonce
    And L'utilisateur clique sur valider creer annonce
    Then vérifier la création de la nouvelle annonce