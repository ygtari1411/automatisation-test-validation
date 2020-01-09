# Auteur : syrineLakhdhar
# Feature : Timeline
# Scénario : Publier avec un role consultant
# Date de création : 02/12/2019

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-TIMELINE
@ACCRETIO2-TIMELINE-0011

  Feature: Timeline

    Scenario: Publier avec un compte consultant

      #Etape 1 : Connexion

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "rania.chaari@advyteam.com" est connecté
      #le role de l utilisateur doit etre "consultant"

      #Etape 2 : verification de l'impossibilité de la publication

      Then Vérifier que le bloc de publication n'est pas affiché