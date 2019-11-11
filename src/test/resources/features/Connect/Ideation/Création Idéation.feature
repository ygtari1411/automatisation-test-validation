# Auteur : syrineLakhdhar
# Feature : Ideation
# Scénario : Créer une idée
# Date de création : 04/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-IDEATION
@ACCRETIO2-IDEATION-0001


Feature: Ideation : Création d'une idée

  Scenario: Créer une idée
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    And l'utilisateur clique sur le widget idéation
    And l'utilisateur clique sur proposer une idée
    When le modal d'ajout ajout idée s'affiche
    And l'utilisateur selectionne l'option 1 dans le champ catégorie
    And l'utilisateur remplit le champ libellé par "C'est un test automatique de l'ajout d'une idée"
    And l'utilisateur choisit l'option 1 du champ timeline
    And l'utilisateur remplit le champ description par "Ceci est la description de l'idée"
    And l'utilisateur clique sur valider création idée
    Then vérifier la création de la nouvelle idée
