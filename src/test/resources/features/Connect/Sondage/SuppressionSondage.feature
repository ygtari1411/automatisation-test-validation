# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Suppression sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0003

 Feature: Sondage

  Scenario: Suppression d'un sondage

      #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape2 : Ajouter un sondage

    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Sondage
    And l'utilisateur clique sur le bouton ajouter un Sondage

      #Etape3 : Remplir tous les champs d'un sondage

    When le modal création Sondage s'affiche
    And l'utilisateur remplit Question1 par "tester sondage 1"
    And l'utilisateur remplit Réponse1 par "oui"
    And l'utilisateur remplit Réponse2 par "non"
    And l'utilisateur clique sur le bouton confirmer ajout sondage
    And l'utilisateur clique sur le bouton supprimer sondage
      #Etape4 : Confirmer la suppression du sondage

      When La fenêtre pour confirmer la suppression s'affiche
      And l'utilisateur confirme la suppression du sondage

      #Etape5 : Vérifier que la suppression d'un sondage a été effectué avec succés

      Then vérifier la suppression correct du Sondage
