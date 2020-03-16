# Auteur: marwamaherssi
# Feature: Enquete
# Scénario: Verif RH Voter Hors Population
# Date de création: 06/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-ENQUETE
@ACCRETIO2-ENQUETE-0008


  Feature: Enquete

    Scenario: Verifier créateur vote hors population

      #Etape1 : Se connecter au TNR

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "responsable@yopmail.com" est connecté

      #Etape2 : Ajouter une enquete

      When l utilisateur clique sur "Bouton_Role_RH"
      And l utilisateur clique sur "Bouton_Menu_Etendu"
      And l utilisateur clique sur "Bouton_Module_Connect"
      And l utilisateur clique sur "Bouton_Enquete"
      And wait 3000

     #Etape3 : Remplir tous les champs d'une enquete

      When l utilisateur clique sur "Bouton_Ajouter_Enquete"
      And wait 3000
      And l utilisateur saisit "Enquete vote RH" dans le champs "Libelle_Enquete_Creation"
      And l utilisateur selectionne la population "modification population sur enquete" dans la liste des populations "Population_Enquete"
      #Population qui ne contient pas l'utilisateur connecté
      And l utilisateur saisit "reponse 1" dans le champs "Reponse_1_enquete"
      And l utilisateur saisit "reponse 2" dans le champs "Reponse_2_enquete"
      And l utilisateur saisit "Chapitre1" dans le champs "Axe_Enquete"
      And l utilisateur saisit "tester question" dans le champs "Question_Creation_Enquete"
      And l utilisateur clique sur "Bouton_Confirmer_Ajouter_Enquete"
      And wait 3000

     #Etape4 : Lancer une enquete

      When l utilisateur clique sur "Bouton_Lancer_Enquete"
      And wait 3000
      And l utilisateur clique sur "Bouton_Confirmer_Lancer_Enquete"
      And wait 3000
      And l'utilisateur rafraichit la page
      Then verifier que l'enquete est encore affichée

     #Etape5 : Verifier que l'enquete n'est pas affichée dans le portal

      When l utilisateur clique sur "Bouton_Portal"
      And l utilisateur clique sur Bouton_Enquete_Portail et verifie le chargement de la liste des enquetes
      Then verifier que l enquete n  est pas affichée


