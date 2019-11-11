# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Suppression sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0003

  Feature: Sondage : Suppression d'un Sondage

    Scenario: Suppression d'un Sondage
      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "resp-RH@mail.com" est connecté
      When l'utilisateur clique sur espace-RH
      And l'utilisateur clique sur le module Connect
      And l'utilisateur clique sur Sondage
      And l'utilisateur clique sur un Sondage
      When l'utilisateur supprime un Sondage
      Then vérifier la suppression correct du Sondage
