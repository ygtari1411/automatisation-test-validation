# Auteur: wboufade
# Feature: Timeline
# Scénario: Publication nouveau statut
# Date de création: 17/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0001

Feature: Timeline : Publication nouveau statut

  Scenario: Publication nouveau statut

     #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

     #Etape 2 : Creation statut

    When L'utilisateur clique pour publier un nouveau statut
    And L'utilisateur rédige son statut "Ceci est un test automatisé qui vise à vérifier le fonctionnement correcte de la publication de statut"
    And L'utilisateur choisi la timeline cible
    And L'utilisateur clique sur Publier

      #Etape 3 : verification de la création d'un statut

    Then Vérifier que le statut est publié