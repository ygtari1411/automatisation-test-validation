# Auteur: syrineLakhdhar
# Feature: Sondage
# Scénario: Création sondage avec date de fin
# Date de création: 05/12/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0007

Feature: Sondage

  Scenario: Création d'un sondage avec une date de fin

      #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape2 : Ajouter un sondage

    When l utilisateur clique sur "Bouton_Role_Rh"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Connect"
    And l utilisateur clique sur "Bouton_Sondage"
    And l utilisateur clique sur "Bouton_Ajouter_Sondage"

      #Etape3 : Remplir les champs d'un sondage

    When le modal création Sondage s'affiche
    And l utilisateur saisit "Sondage avec date de fin" dans le champs "Question1"
    And l utilisateur saisit "oui" dans le champs "Reponse_1_sondage"
    And l utilisateur saisit "non" dans le champs "Reponse_2_sondage"
    And l utilisateur saisit la date de fin du sondage
    And l utilisateur clique sur "Bouton_Publication_Statut"

      #Etape4 : Accéder au sondage crée

    When l utilisateur clique sur "Bouton_Portal"
    And l utilisateur clique sur "Bouton_Sondage_Portal"

      #Etape5 : Vérifcation du compteur des jours restants

    Then vérifier que le nombre affiché correspond au nombre de jours restants

