# Auteur : syrine Lakhdhar
# Feature : News
# Scénario : Tag collaborateur dans un commentaire sur une news
# Date de création : 01/11/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-NEWS
@ACCRETIO2-NEWS-0004


Feature: News : Commentaire avec tag collaborateur sur une news

  Scenario: Commentaire avec tag collaborateur sur une news

    #Etape 1 : Connexion

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    #Etape 2 : Changement de role

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Module_Connect"
    And l utilisateur clique sur "Bouton_Module_News"

    #Etape 3 : Ajout News

    And l utilisateur clique sur "Bouton_Ajout_News"
    And l utilisateur saisit "Test automatique création news" dans le champs "Champ_Input_Titre_News"
    And l utilisateur saisit "C'est un test automatique de l'ajout d'une news" dans le champs "Champ_Input_Texte_News"
    And l'utilisateur selectionne la date actuelle du champ date de publication
    And l utilisateur upload une photo dans la News
    And wait 1000
    And l utilisateur clique sur "Bouton_Sauvegarde_Creation_News"
    And wait 1000


    #Etape 4 :Ajout commentaire sur la News

    And l utilisateur clique sur "Bouton_Portal"
    When l'utilisateur clique sur la news ajoutée
    And l utilisateur saisit "@Responsable Prod. MT" dans le champs "Champs_Input_Commentaire"
    And l utilisateur choisit le profil du tag du commentaire News dans la liste
    And l utilisateur clique sur "JS_Bouton_Submit_Commentaire"

    #Etape 5 : Vérification de la News

    Then Vérifier que le tag est affiché