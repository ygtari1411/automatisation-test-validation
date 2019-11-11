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

    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Enquete
    And l'utilisateur clique sur le bouton ajouter une Enquete

    #Etape3 : Remplir tous les champs d'une enquete

    When le modal création Enquete s'affiche
    And l'utilisateur remplit Libellé Enquete par "Enquete 1"
    And l'utilisateur remplit Population par "test population enquete"
    And l'utilisateur remplit Réponse 1 par "oui"
    And l'utilisateur remplit Réponse 2 par "non"
    And l'utilisateur remplit Axe par "Chapitre 1"
    And l'utilisateur remplit Question 1 par "tester question"
    And l'utilisateur clique sur le bouton confirmer ajout enquete
    And l'utilisateur clique sur le bouton supprimer enquete

    #Etape4 : Supprimer une enquete et confirmer la suppression

    When La fenêtre de suppression s'affiche
    And l'utilisateur confirme la suppression de l'enquete

    #Etape5 : Vérifier que la suppression de l'enquete a été effectuée avec succés

    Then verifier que la suppression correct de l'enquete