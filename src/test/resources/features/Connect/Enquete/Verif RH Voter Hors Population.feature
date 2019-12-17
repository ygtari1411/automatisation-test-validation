# Auteur: marwamaherssi
# Feature: Enquete
# Scénario: Verif RH Voter Hors Population
# Date de création: 06/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-ENQUETE
@ACCRETIO2-ENQUETE-0008


  Feature: Enquete

    Scenario: Verif RH Voter Hors Population

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
      And l utilisateur saisit "Enquete vote RH" dans le champs "Libelle_Enquete"
      And l utilisateur saisit "test population enquete absent" dans le champs "Population_Enquete"
      And l utilisateur saisit "reponse 1" dans le champs "Reponse_1_enquete"
      And l utilisateur saisit "reponse 2" dans le champs "Reponse_2_enquete"
      And l utilisateur saisit "Chapitre1" dans le champs "Axe_Enquete"
      And l utilisateur saisit "tester question" dans le champs "Question_Creation_Enquete"
      And l utilisateur clique sur "Bouton_Confirmer_Ajouter_Enquete"

    #Etape4 : Lancer une enquete

      When l utilisateur clique sur "Bouton_Options_Enquete"
      And l utilisateur clique sur "Bouton_Lancer_Enquete"
      And l utilisateur clique sur "Bouton_Confirmer_Lancer_Enquete"
      And l'utilisateur rafraichit la page
      Then verifier que l'enquete est encore affichée

    #Etape5 : Verifier que l'enquete n'est pas affichée dans le portal

      When l utilisateur clique sur "Bouton_Portal"
      Then verifier que l'enquete n'est pas affichée

