# Auteur : syrineLakhdhar
# Feature : Timeline
# Scénario : Tag collaborateur dans un commentaire sur une publication
# Date de création : 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0004


Feature: Timeline

  Scenario: Commenter une publication
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté
    When L'utilisateur clique pour publier un nouveau statut
    And L'utilisateur rédige son statut
    And L'utilisateur choisi la timeline cible
    And L'utilisateur clique sur Publier
    When l'utilisateur clique pour commenter le statut ajouté
    And l'utilisateur saisit "@Responsable Prod" dans le champ du commentaire
    And l'utilisateur clique sur publier
    Then Vérifier que le tag est affiché