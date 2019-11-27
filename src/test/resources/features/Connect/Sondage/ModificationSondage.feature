# Auteur: marwamaherssi
# Feature: Sondage
# Scénario: Modification sondage
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-SONDAGE
@ACCRETIO2-SONDAGE-0002

 Feature: Sondage

  Scenario: Modification d'un sondage

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
    And l utilisateur saisit "Sondage" dans le champs "Question1"
    And l utilisateur saisit "oui" dans le champs "Reponse_1_sondage"
    And l utilisateur saisit "non" dans le champs "Réponse_2_sondage"
    And l utilisateur clique sur le bouton "Bouton_Confirmer_Ajout_Sondage"

      #Etape4 : Modifier un sondage et confirmer la modification

    And l utilisateur clique sur "Bouton_Options_Sondage"
    And l utilisateur clique sur "Bouton_Modifier_Sondage"
    When La fenêtre de modification s'affiche
    And l utilisateur saisit " modifié" dans le champs "Question1"
    And l utilisateur saisit " oui" dans le champs "Réponse1_sondage"
    And l utilisateur saisit " non" dans le champs "Réponse2_sondage"
    And l utilisateur clique sur "Bouton_Confirmer_Modif_Sondage"

      #Etape5 : Vérifier que la mise à jour du sondage a été effectué avec succés

    Then vérifier que le sondage a été modifié correctement


