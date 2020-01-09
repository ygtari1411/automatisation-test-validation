# Auteur : syrineLakhdhar
# Feature : Timeline
# Scénario : Publier un album
# Date de création : 02/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0009

  Feature: Timeline

    Scenario: Publier un album

       #Etape 1 : Connexion

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape 2 : Création de la publication

      When l utilisateur selectionne "Tous les utilisateurs" dans la liste deroulante "Liste_Deroulante_Timeline"
      And  l utilisateur upload "une image" dans le champs "Champ_Input_Album_Publication"
      And  l utilisateur upload "une image" dans le champs "Champ_Input_Album_Publication"
      And l utilisateur clique sur "Bouton_Publication_Album"
      And wait 5000

      #Etape 3 : Vérification de la création de la publication

      Then Vérifier que l album est publié