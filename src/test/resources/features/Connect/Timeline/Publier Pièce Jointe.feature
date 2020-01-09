# Auteur : syrineLakhdhar
# Feature : Timeline
# Scénario : Publier une pièce jointe
# Date de création : 02/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0010


Feature: Timeline

  Scenario: Publier une pièce jointe

 #Etape 1 : Connexion

  Given le navigateur est ouvert et la page d'acceuil est affichée
  And l'utilisateur "resp-RH@mail.com" est connecté

 #Etape 2 : Création de la publication

  When l utilisateur selectionne "Tous les utilisateurs" dans la liste deroulante "Liste_Deroulante_Timeline"
  And  l utilisateur upload "un document" dans le champs "Champ_Input_Piece_Jointe_Publication"
  And l utilisateur clique sur "Bouton_Publication_Piece_Jointe"

     #Etape 3 : Vérification de la création de la publication

   Then Vérifier que la pièce jointe est publié