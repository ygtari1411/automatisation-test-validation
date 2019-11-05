# Auteur: ygatri
# Feature: Timeline
# Scénario: Modifier un statut
# Date de création: 30/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0002

Feature: Timeline

  Scenario: Modifier un statut
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When L'utilisateur clique pour publier un nouveau statut
    And L'utilisateur rédige son statut
    And L'utilisateur choisi la timeline cible
    And L'utilisateur clique sur Publier
    And l'utilsateur clique pour modifier le statut
    And L'utilisateur modifie le statut déja publié
    And L'utilisateur clique sur le bouton valider
    Then verifier que la modification du statut est enregistrée

