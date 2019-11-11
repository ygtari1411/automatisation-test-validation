# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Lancer sondage
# Date de création: 05/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0004

Feature: Sondage

  Scenario: Lancer un Sondage

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
    And l'utilisateur clique sur le bouton lancer sondage

     #Etape4 : Lancer un sondage

    When le modal lancer Sondage s'affiche
    And l'utilisateur clique sur le bouton confirmer lancement  sondage

    #Etape5 : Confirmer que le sondage est affiché

    When l'utilisateur clique sur Portail
    And l'utilisateur clique sur sondage
    Then verifier que le nombre de sondage a été incrementé et que le sondage est affiché



