# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Modification sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0002

  Feature: Sondage : Modification d'un sondage

    Scenario: Modification d'un sondage
      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "resp-RH@mail.com" est connecté
      When l'utilisateur clique sur espace-RH
      And l'utilisateur clique sur le module Connect
      And l'utilisateur clique sur Sondage
      When l'utilisateur modifie un Sondage
      Then vérifier que le sondage a été modifié correctement

