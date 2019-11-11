# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Stopper sondage
# Date de création: 05/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0005

 Feature: Sondage

  Scenario: Stopper un sondage

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
    And l'utilisateur clique sur lancer sondage

     #Etape4 : Lancer un sondage

    When le modal lancer Sondage s'affiche
    And l'utilisateur clique sur le bouton confirmer lancement  sondage
    And l'utilisateur clique sur le bouton stopper un sondage

    #Etape5 : Stopper un sondage

    When le modal stopper Sondage s'affiche
    And l'utilisateur clique sur le bouton confirmer l'arrêt d'un sondage

    #Etape6 : Confirmer que le sondage n'est plus affiché

    When l'utilisateur clique sur Portail
    And l'utilisateur clique sur sondage
    Then vérifier que le nombre de sondage est décrémenté et que le sondage n'est pas affiché
