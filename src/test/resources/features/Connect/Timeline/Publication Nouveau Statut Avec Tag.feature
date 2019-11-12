# Auteur : syrineLakhdhar
# Feature : Timeline
# Scénario : Publication nouveau statut avec un tag
# Date de création : 01/11/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0005

Feature: Timeline : Publication nouveau statut avec Tag

  Scenario: Publication nouveau statut avec Tag

         #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

           #Etape 2 : Creation statut avec tag


    When L'utilisateur clique pour publier un nouveau statut
    And L'utilisateur rédige son statut "@Responsable prod"
    And L'utilisateur choisi la timeline cible
    And L'utilisateur clique sur Publier


           #Etape 3 : verfication création statut avec tag


    Then Vérifier que le statut est publié et que le tag est affiché