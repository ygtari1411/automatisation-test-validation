# Auteur : syrineLakhdhar
# Feature : Timeline
# Scénario : Publication nouveau statut avec un tag
# Date de création : 01/11/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0006

Feature: Timeline

  Scenario: Publication nouveau statut avec Tag

         #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

           #Etape 2 : Creation statut avec tag

    When l utilisateur clique sur "Champ_Statut"
    And l utilisateur saisit "@Gilles Guimond" dans le champs "Champ_Input_Statut"
    And l utilisateur choisit le profil du tag du statut dans la liste
    And l utilisateur selectionne "Tous les utilisateurs Connect" dans la liste deroulante "Liste_Deroulante_Timeline"
    #Timeline qui contient tous les utilisateurs de la solution
    And l utilisateur clique sur "Bouton_Publication_Statut"

           #Etape 3 : vérfication création statut avec tag

    Then Vérifier que le statut est publié et que le tag est affiché
