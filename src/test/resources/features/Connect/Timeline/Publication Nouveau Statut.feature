# Auteur: wboufade
# Feature: Timeline
# Scénario: Publication nouveau statut
# Date de création: 17/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0001

Feature: Timeline

  Scenario: Publication nouveau statut
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When L'utilisateur clique pour publier un nouveau statut
    And L'utilisateur rédige son statut
    And L'utilisateur choisi la timeline cible
    And L'utilisateur clique sur Publier
    Then Vérifier que le statut est publié