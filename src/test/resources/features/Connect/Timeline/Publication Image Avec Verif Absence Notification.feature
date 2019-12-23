# Auteur: marwamaherssi
# Feature: Timeline
# Scénario: Publication Image Avec Verif Absence Notification
# Date de création: 05/12/2019



@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0011

Feature: Timeline

  Scenario: Publication Image Avec Verif Absence Notification

      #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape 2 : Creation statut avec image

    When l utilisateur clique sur "Bouton_Image_Timeline"
    And l utilisateur upload photo dans la publication
    And l utilisateur saisit "Test automatisé publication image et verif de l'absence de la notification" dans le champs "Champ_Input_Statut_Image"
    And l utilisateur selectionne "liste_absent" dans la liste deroulante "Liste_Deroulante_Timeline"
    And l utilisateur clique sur "Bouton_Publication_Image"

      #Etape 3 : verifier l'absence de notification d'un autre compte qui n'appartient pas au timeline

    And l utilisateur clique sur "Bouton_deconnexion"
    And l'utilisateur "amal.chograni@yopmail.com" est connecté
    When le navigateur est ouvert et la page d'acceuil est affichée
    Then verifier que la notification n'existe pas et que l'utilisateur ne peut pas afficher la publication de l'image
