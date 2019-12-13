# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Voter Sondage
# Date de création: 03/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0007


Feature: Sondage

  Scenario: Création d'un sondage

      #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape2 : Ajouter un sondage

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Module_Connect"
    And l utilisateur clique sur "Bouton_Sondage"
    And l utilisateur clique sur "Bouton_Ajouter_Sondage"
    And   wait 3000

      #Etape3 : Remplir tous les champs d'un sondage

    When le modal création Sondage s'affiche
    And l utilisateur saisit "Sondage Voter" dans le champs "Question1"
    And l utilisateur saisit "oui" dans le champs "Reponse_1_sondage"
    And l utilisateur saisit "non" dans le champs "Réponse_2_sondage"
    And l utilisateur clique sur "Bouton_Confirmer_Ajout_Sondage"
    And l utilisateur clique sur "Bouton_Lancer_Sondage"
    And   wait 3000

    #Etape4 : Répondre au sondage crée

    When l utilisateur clique sur "Bouton_Portail"
    And l utilisateur clique sur Bouton_Sondage_Portail et verifie le chargement de la liste des sondages
    And l utilisateur clique sur "Bouton_Reponse_1_Sondage_Portail"
    And l utilisateur clique sur "Bouton_Voter_Sondage"

    #Etape5 : Verifier que la réponse a été compté

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Connect"
    And l utilisateur clique sur "Bouton_Sondage"
    Then verifier que le vote a été compté




