# Auteur: ygatri
# Feature: Timeline
# Scénario: Supprimer un statut
# Date de création: 30/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0003




Feature: Timeline : Suppression statut

  Scenario: Suppression statut
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When L'utilisateur clique pour publier un nouveau statut
    And L'utilisateur rédige son statut "Ceci est un test automatisé qui vise à vérifier le fonctionnement correcte de la publication de statut"
    And L'utilisateur choisi la timeline cible
    And L'utilisateur clique sur Publier
    And l'utilsateur clique pour supprimer le statut
    And L'utilisateur clique sur le bouton valider suppression
    Then verifier que la suppression du statut a été effectuée