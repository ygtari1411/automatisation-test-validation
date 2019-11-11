# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Modification sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0002

 Feature: Sondage

  Scenario: Modification d'un sondage

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
    And l'utilisateur clique sur le bouton modifier sondage
      #Etape4 : Modifier un sondage et confirmer la modification

      When La fenêtre de modification s'affiche
      And l'utilisateur modifie Question1 de "tester sondage 1" par "tester sondage 1 modifié"
      And l'utilisateur modifie Réponse1 de "oui" par "oui modifié"
      And l'utilisateur modifie Réponse2 de "non" par "non modifié"
      And l'utilisateur clique sur le bouton modifier sondage crée


      #Etape5 : Vérifier que la mise à jour du sondage a été effectué avec succés

      Then vérifier que le sondage a été modifié correctement


