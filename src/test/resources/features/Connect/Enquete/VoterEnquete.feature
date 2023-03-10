# Auteur: marwamaherssi
# Feature: Enquete
# Scénario: Voter Enquete
# Date de création: 04/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-ENQUETE
@ACCRETIO2-ENQUETE-0007


Feature: Enquete

  Scenario: Voter enquete

 #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

      #Etape2 : Ajouter une enquete

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Module_Connect"
    And l utilisateur clique sur "Bouton_Enquete"

    #Etape3 : Remplir tous les champs d'une enquete

    When l utilisateur clique sur "Bouton_Ajouter_Enquete"
    And wait 3000
    And l utilisateur saisit "Enquete vote" dans le champs "Libelle_Enquete_Creation"
    And l utilisateur selectionne la population "Tous les utilisateurs Connect" dans la liste des populations "Population_Enquete"
    #Population qui contient tout les utilisateurs du module connect
    And l utilisateur saisit "reponse 1" dans le champs "Reponse_1_enquete"
    And l utilisateur saisit "reponse 2" dans le champs "Reponse_2_enquete"
    And l utilisateur saisit "Chapitre1" dans le champs "Axe_Enquete"
    And l utilisateur saisit "tester question" dans le champs "Question_Creation_Enquete"
    And l utilisateur clique sur "Bouton_Confirmer_Ajouter_Enquete"
    And   wait 3000

    #Etape4 : Lancer une enquete

    When l utilisateur clique sur "Bouton_Lancer_Enquete"
    And l utilisateur clique sur "Bouton_Confirmer_Lancer_Enquete"
    And   wait 5000

    #Etape5 : Répondre à une enquete lancée

    When l utilisateur clique sur "Bouton_Portal"
    And l utilisateur clique sur Bouton_Enquete_Portail et verifie le chargement de la liste des enquetes
    And l utilisateur choisit l'enquete
    And l utilisateur clique sur "Bouton_Axe_Enquete_Portail"
    And l utilisateur clique sur "Bouton_Reponse_1_Enquete_Portail"
    And l utilisateur clique sur "Bouton_Voter_Enquete"

    #Etape6 : Verifier que la réponse a été compté

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Module_Connect"
    And l utilisateur clique sur "Bouton_Enquete"
    Then verifier que le vote de l enquete a etait compte
