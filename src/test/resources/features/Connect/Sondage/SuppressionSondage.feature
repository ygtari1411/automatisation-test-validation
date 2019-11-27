# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Suppression sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0003

 Feature: Sondage

  Scenario: Suppression d'un sondage

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
    And l utilisateur saisit "Sondage suppression" dans le champs "Question1"
    And l utilisateur saisit "oui" dans le champs "Reponse_1_sondage"
    And l utilisateur saisit "non" dans le champs "Réponse_2_sondage"
    And l utilisateur clique sur "Bouton_Confirmer_Ajout_Sondage"

      #Etape4 : Confirmer la suppression du sondage

    And l utilisateur clique sur "Bouton_Options_Sondage"
    And l utilisateur clique sur "Bouton_Supprimer_Sondage"
    When La fenêtre pour confirmer la suppression s'affiche
    And l utilisateur clique sur "Bouton_Confirmer_Supprimer_Sondage"

      #Etape5 : Vérifier que la suppression d'un sondage a été effectué avec succés

      Then vérifier la suppression correct du Sondage
