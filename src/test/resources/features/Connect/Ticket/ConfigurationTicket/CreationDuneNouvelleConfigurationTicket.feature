# Auteur: marwamaherssi
# Feature: CONFIGURATION TICKET
# Scénario: Création d’une nouvelle configuration ticket
# Date de création: 07/06/2020



#@ACCRETIO2
#@ACCRETIO2-CONNECT
#@ACCRETIO2-TICKET
#@ACCRETIO2-TICKET-0001


Feature: CONFIGURATION TICKET

  Scenario: Création d’une nouvelle configuration ticket

    #Etape1 : Se connecter au TNR

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "responsable@yopmail.com" est connecté

    #Etape2 : Ajouter une configuration ticket

      When l utilisateur clique sur "Bouton_Role_RH"
      And l utilisateur clique sur "Bouton_Menu_Etendu"
      And l utilisateur clique sur "Bouton_Module_Connect"
      And l utilisateur clique sur "Bouton_Configuration_Ticket"

    #Etape3 : Remplir les champs de la configuration

      When l utilisateur clique sur "Bouton_Ajouter_Configuration_Ticket"
      And wait 3000
      And l utilisateur selectionne "Documents administratifs" dans la liste deroulante "Liste_Deroulante_Categorie_Ticket"
      And l utilisateur selectionne "Attestations et documents administratifs" dans la liste deroulante "Type_Categorie_Ticket"
      And l utilisateur selectionne "Blanche Beauchamp" dans la liste deroulante "Responsable_Employe_Ticket"
      And l utilisateur selectionne "ROLE-ADMIN" dans la liste deroulante "Responsable_Role_Ticket"
      And l utilisateur clique sur "Bouton_Confirmer_Ajout_Configuration"

     #Etape4 : Vérifier l’ajout de la configuration

      Then verifier que la configuration ticket à été ajoutée correctement




