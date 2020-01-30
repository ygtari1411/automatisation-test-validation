# Auteur: marwamaherssi
# Feature: Lien
# Scénario: Modifier un lien
# Date de création: 21/01/2020


@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-LIEN
@ACCRETIO2-LIEN-0003

Feature: Lien Utile

  Scenario: Modification d'un lien

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

   #Etape3 : Remplir les champs d'un lien

    And l utilisateur saisit "titre lien" dans le champs "Titre_Lien_Creation"
    And l utilisateur saisit "lien" dans le champs "Champ_Lien_Creation"
    And l utilisateur saisit "description lien" dans le champs "Description_Lien_Creation"
    And l utilisateur clique sur "Bouton_Confirmer_Ajout_Lien"
    Then verifier que le lien a été ajouté avec succes
    And   wait 3000


    #Etape4 : Modifier un lien

   And l utilisateur clique sur "Bouton_Modifier_Lien"
   And l utilisateur modifie "titre lien modifie" dans le champs "Titre_Lien_Creation"
   And l utilisateur modifie "lien modifie" dans le champs "Champ_Lien_Creation"
   And l utilisateur modifie "description lien modifie" dans le champs "Description_Lien_Creation"
   And l utilisateur clique sur "Bouton_Confirmer_Ajout_Lien"
   Then verifier que le lien a été modifié avec succes

