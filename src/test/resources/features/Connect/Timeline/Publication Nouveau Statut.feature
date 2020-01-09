# Auteur: wboufade
# Feature: Timeline
# Scénario: Publication nouveau statut
# Date de création: 17/09/2019
# Date de dernière modif. : 15/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0005

Feature: Timeline : Publication nouveau statut

  Scenario: Publication nouveau statut

      #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape 2 : Creation statut

    When l utilisateur clique sur "Champ_Statut"
    And l utilisateur saisit "Test automatisé publication statut" dans le champs "Champ_Input_Statut"
    And l utilisateur selectionne "Tous les utilisateurs" dans la liste deroulante "Liste_Deroulante_Timeline"
    And l utilisateur clique sur "Bouton_Publication_Statut"

      #Etape 3 : verification de la création d'un statut

    Then Vérifier que le statut est publié