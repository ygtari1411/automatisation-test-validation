# Auteur: ygtari
# Feature: Annonces
# Scénario: Création  nouvelle annonce
# Date de création: 21/10/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-Annonces
@ACCRETIO2-Annonces-0001


Feature: Annonces : Création  nouvelle annonce

  Scenario: Création  nouvelle annonce

    # Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Changement de role

    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Annonces

    # Etape 3 : Ajout Annonce

    And L'utilisateur clique sur  ajouter Annonce
    When L'utilisateur rempli les champs de de la création annonce
    And L'utilisateur clique sur valider creer annonce

    # Etape 4 : Vérification ajout annonce

    Then vérifier la création de la nouvelle annonce