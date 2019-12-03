# Auteur : syrineLakhdhar
# Feature : Timeline
# Scénario : Publier une vidéo
# Date de création : 02/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0008

  Feature: Timeline

    Scenario: Publier une vidéo

      #Etape 1 : Connexion

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape 2 : Publication de la vidéo

      When l utilisateur clique sur "Publier_une_vidéo"
      And l utilisateur uploade une vidéo
      And l utilisateur selectionne "Tous les utilisateurs" dans la liste deroulante "Liste_Deroulante_Timeline"
      And l utilisateur clique sur "Bouton_Publication_Statut"

      #Etape 3 : Vérification de la publication

      Then Vérifier que l album est publié