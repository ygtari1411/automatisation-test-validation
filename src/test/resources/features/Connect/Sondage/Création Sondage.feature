# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Création sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0001

  Feature: Sondage

    Scenario: Création d'un sondage
      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "resp-RH@mail.com" est connecté
      When l'utilisateur clique sur espace-RH
      And l'utilisateur clique sur le module Connect
      And l'utilisateur clique sur Sondage
      And l'utilisateur clique sur ajouter un Sondage
      When le modal création Sondage s'affiche
      And l'utilisateur remplit tous les champs
      And l'utilisateur clique sur sauvegarder
      Then vérifier la création de Sondage


