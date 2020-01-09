# Auteur: marwamaherssi
# Feature: Timeline
# Scénario: Publication Statut Avec Verif Absence Notification
# Date de création: 05/12/2019



@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0007

Feature: Timeline

  Scenario: Publication Statut Avec Verif Absence Notification

      #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape 2 : Creation statut

    When l utilisateur clique sur "Champ_Statut"
    And l utilisateur saisit "Test automatisé publication statut et verif de l'absence de la notification" dans le champs "Champ_Input_Statut"
    And l utilisateur selectionne "liste_absent" dans la liste deroulante "Liste_Deroulante_Timeline"
    And l utilisateur clique sur "Bouton_Publication_Statut"
    And wait 3000
    Then verifier que le statut a etait publie

      #Etape 3 : Verifier la notification d'un autre compte et consulter la publication

    And l utilisateur se deconnecte
    And l'utilisateur "amal.chograni@yopmail.com" est connecté
    When le navigateur est ouvert et la page d'acceuil est affichée
    Then verifier que la notification n existe pas et que l utilisateur ne peut pas afficher la publication
