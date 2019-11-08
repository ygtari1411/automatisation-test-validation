# Auteur: ygtari
# Feature: Annonces
# Scénario: Modification d'une annonce
# Date de création: 24/10/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-Annonces
@ACCRETIO2-Annonces-0002


Feature: Annonces

  Scenario: Modification annonce
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Annonces
    And L'utilisateur clique sur  modifier Annonce
    And L'utilisateur modifie le contenu de l annonce
    And L'utilisateur clique sur valider modifier annonce
    Then vérifier la modification de l'annonce




