# Auteur: marwamaherssi
# Feature: Timeline
# Scénario: Publication Image Avec Verif Absence Notification
# Date de création: 05/12/2019



@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0003

Feature: Timeline

  Scenario: Publication Image Avec Verif Absence Notification

      #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape 2 : Creation statut avec image

    When  l utilisateur upload "une image" dans le champs "Champ_Input_Image_Publication"
    And l utilisateur saisit "Test automatisé pour la publication d'une image et vérification que le user hors timeline ne peut pas l'afficher " dans le champs "Champ_Input_Statut_Image"
    And l utilisateur selectionne "liste_absent" dans la liste deroulante "Liste_Deroulante_Timeline"
    And l utilisateur clique sur "Bouton_Publication_Image"
    And wait 3000
    Then verifier que l image a etait publie avec succes

      #Etape 3 : verifier l'absence de notification d'un autre compte qui n'appartient pas au timeline

    And l utilisateur clique sur "Bouton_deconnexion"
    And l'utilisateur "amal.chograni@yopmail.com" est connecté
    When le navigateur est ouvert et la page d'acceuil est affichée
    Then verifier que la notification n existe pas et que l utilisateur ne peut pas afficher la publication de l'image
