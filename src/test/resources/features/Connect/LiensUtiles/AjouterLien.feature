# Auteur: marwamaherssi
# Feature: Lien
# Scénario: Ajouter un lien
# Date de création: 21/01/2020


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-LIEN
@ACCRETIO2-LIEN-0001

Feature: Lien Utile

  Scenario: Création d'un lien

    #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    #Etape2 : Ajouter un lien

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Module_Connect"
    And l utilisateur clique sur "Bouton_Lien_Utile"
    And l utilisateur clique sur "Bouton_Ajouter_Lien"
    And   wait 3000

     #Etape3 : Remplir les champs d'un Lien utile

    And l utilisateur saisit "Ajout titre lien" dans le champs "Titre_Lien_Creation"
    And l utilisateur saisit "Ajout Lien" dans le champs "Champ_Lien_Creation"
    And l utilisateur saisit "Ajout description lien" dans le champs "Description_Lien_Creation"
    And l utilisateur clique sur "Bouton_Confirmer_Ajout_Lien"
    And   wait 3000

    #Etape4 : Verifier que le lien a été ajouté

   Then verifier que le lien a été ajouté avec succes