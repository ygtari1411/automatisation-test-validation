# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Stopper sondage
# Date de création: 05/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0005

 Feature: Sondage

  Scenario: Stopper un sondage

      #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape2 : Ajouter un sondage

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Connect"
    And l utilisateur clique sur "Bouton_Sondage"
    And l utilisateur clique sur "Bouton_Ajouter_Sondage"

      #Etape3 : Remplir tous les champs d'un sondage

    When le modal création Sondage s'affiche
    And l utilisateur saisit "Sondage stop" dans le champs "Question1"
    And l utilisateur saisit "oui" dans le champs "Reponse_1_sondage"
    And l utilisateur saisit "non" dans le champs "Réponse_2_sondage"
    And l utilisateur clique sur le bouton "Bouton_Confirmer_Ajout_Sondage"

     #Etape4 : Lancer un sondage

    And l utilisateur clique sur "Bouton_Options_Sondage"
    And l utilisateur clique sur "Bouton_Lancer_Sondage"
    When le modal lancer Sondage s'affiche
    And l utilisateur clique sur "Bouton_Confirmer_Lancer_Sondage"

    #Etape5 : Stopper un sondage

    And l utilisateur clique sur "Bouton_Options_Sondage"
    And l utilisateur clique sur "Bouton_Stopper_Sondage"
    When le modal stopper Sondage s'affiche
    And l utilisateur clique sur "Bouton_Confirmer_Stop_Sondage"

    #Etape6 : Confirmer que le sondage n'est plus affiché

    And l utilisateur clique sur "Bouton_Portail"
    And l utilisateur clique sur "Bouton_Sondage_Portail"
    Then vérifier que le sondage n'est pas affiché
