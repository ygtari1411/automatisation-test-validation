# Auteur: wboufade
# Feature: News
# Scénario: Modification News Existante
# Date de création: 27/09/2019


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-NEWS
@ACCRETIO2-NEWS-0003

Feature: News : Modification News

  Scenario: Modification News

    # Etape 1 : Connexion :

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

   # Etape 2 : Accès à l'espace RH

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Module_Connect"
    And l utilisateur clique sur "Bouton_Module_News"

    # Etape 3 : Ajout News

    And l utilisateur clique sur "Bouton_Ajout_News"
    And l utilisateur saisit "Test news" dans le champs "Champ_Input_Titre_News"
    And l utilisateur saisit "Test d'ajout et de modification News" dans le champs "Champ_Input_Texte_News"
    And l'utilisateur selectionne la date actuelle du champ date de publication
    And l utilisateur upload une photo dans la News
    And wait 1000
    And l utilisateur clique sur "Bouton_Sauvegarde_Creation_News"

    # Etape 4 : Modification News

    And wait 3000
    And l utilisateur saisit " - Modifiée" dans le champs "Champ_Input_Titre_News_Existante"
    And l utilisateur saisit " - Modification du corps de la News" dans le champs "Champ_Input_Contenu_News_Existante"
    And wait 2000
    And l utilisateur clique sur "Bouton_Sauvegrade_News"

    # Etape 5 : Vérification enregistrement correct de la modification

    And vérifier que le message "succès" s affiche
    Then verifier que la modification a été enregistrée
