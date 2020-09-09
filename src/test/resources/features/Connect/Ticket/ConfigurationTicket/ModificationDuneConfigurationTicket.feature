# Auteur: marwamaherssi
# Feature: CONFIGURATION TICKET
# Scénario: Modification d’une  configuration ticket
# Date de création: 07/06/2020


#@ACCRETIO2
#@ACCRETIO2-CONNECT
#@ACCRETIO2-TICKET
#@ACCRETIO2-TICKET-0002



Feature: CONFIGURATION TICKET

  Scenario: Modification d’une  configuration ticket

     #Etape1 : Se connecter au TNR

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "responsable@yopmail.com" est connecté

     #Etape2 : Modification d’une  configuration ticket

      When l utilisateur clique sur "Bouton_Role_RH"
      And l utilisateur clique sur "Bouton_Menu_Etendu"
      And l utilisateur clique sur "Bouton_Module_Connect"
      And l utilisateur clique sur "Bouton_Configuration_Ticket"

     #Etape3 : Remplir les champs de la configuration

       When l utilisateur clique sur "Bouton_Ajouter_Configuration_Ticket"
       And wait 3000
       And l utilisateur selectionne "Infrastructures" dans la liste deroulante "Liste_Deroulante_Categorie_Ticket"
       And l utilisateur selectionne "Equipements" dans la liste deroulante " Type_Categorie_Ticket "
       And l utilisateur selectionne "Gaston Boutot" dans la liste deroulante "Responsable_Employe_Ticket"
       And l utilisateur selectionne "ROLE-MANAGER" dans la liste deroulante "Responsable_Role_Ticket"
       And l utilisateur clique sur "Bouton_Confirmer_Ajout_Configuration"

     #Etape4 : Modifier  la configuration ticket ajoutée

      When l utilisateur clique sur "Bouton_Modifier_Configuration_Ticket"
      And wait 3000
      And l utilisateur selectionne "Congés & CRA" dans la liste deroulante "Liste_Deroulante_Categorie_Ticket"
      And l utilisateur selectionne "Absences et congés" dans la liste deroulante "Type_Categorie_Ticket"
      And l utilisateur selectionne "Blanche beauchamp" dans la liste deroulante "Responsable_Employe_Ticket"
      And l utilisateur selectionne "ROLE-ADMIN" dans la liste deroulante "Responsable_Role_Ticket"
      And l utilisateur clique sur "Bouton_Confirmer_Ajout_Configuration"

     #Etape5 : Vérifier que la modification a été effectuée correctement

      Then vérifier que la modification du ticket à été effectuée correctement
