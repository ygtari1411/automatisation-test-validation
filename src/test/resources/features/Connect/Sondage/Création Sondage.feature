# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Création sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0001

  Feature: Sondage

    Scenario: Création d'un sondage

      #Etape1 : Se connecter au TNR

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape2 : Ajouter un sondage

      When l utilisateur clique sur "Bouton_Role_RH"
      And l utilisateur clique sur "Bouton_Menu_Etendu"
      And l utilisateur clique sur "Bouton_Connect"
      And l utilisateur clique sur "Bouton_Sondage"
      And l utilisateur clique sur "Bouton_Ajouter_Sondage"

      #Etape3 : Remplir tous les champs d'un sondage

      When le modal création Sondage s'affiche
      And l utilisateur saisit "Sondage création" dans le champs "Question1"
      And l utilisateur saisit "oui" dans le champs "Reponse_1_sondage"
      And l utilisateur saisit "non" dans le champs "Réponse_2_sondage"
      And l utilisateur clique sur le bouton "Bouton_Confirmer_Ajout_Sondage"

      #Etape4 : Vérifier l'ajout du sondage

      Then vérifier la création de Sondage


