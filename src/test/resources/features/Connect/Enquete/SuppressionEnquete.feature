# Auteur: marwamaherssi
# Feature: Enquete
# Scénario: Suppression enquete
# Date de création: 08/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-ENQUETE
@ACCRETIO2-ENQUETE-0003

Feature: Enquete

  Scenario: Suppression d'une enquete

      #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

     #Etape2 : Ajouter une enquete

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Connect"
    And l utilisateur clique sur "Bouton_Enquete"

    #Etape3 : Remplir tous les champs d'une enquete

    When l utilisateur clique sur "Bouton_Ajouter_Enquete"
    And l utilisateur saisit "Enquete suppression" dans le champs "Libelle_Enquete"
    And l utilisateur saisit "test population enquete" dans le champs "Population_Enquete"
    And l utilisateur saisit "reponse 1" dans le champs "Reponse_1_enquete"
    And l utilisateur saisit "reponse 2" dans le champs "Reponse_2_enquete"
    And l utilisateur saisit "Chapitre1" dans le champs "Axe_Enquete"
    And l utilisateur saisit "tester question" dans le champs "Question_Creation_Enquete"
    And l utilisateur clique sur "Bouton_Confirmer_Ajouter_Enquete"

    #Etape4 : Supprimer une enquete et confirmer la suppression

    And l utilisateur clique sur "Bouton_Options_Enquete"
    When l utilisateur clique sur "Bouton_Supprimer_Enquete"
    And l utilisateur clique sur "Bouton_Confirmer_Suppression_Enquete"

    #Etape5 : Vérifier que la suppression de l'enquete a été effectuée avec succés

    Then verifier que la suppression correct de l'enquete