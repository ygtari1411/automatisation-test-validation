# Auteur: marwamaherssi
# Feature: Anniversaire
# Scénario: Widget Anniversaire Personnel Autorisé Par RH Refusé Par Collaborateur
# Date de création: 04/03/2020

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-ANNIVERSAIRE
@ACCRETIO2-ANNIVERSAIRE-0008


Feature: Anniversaire Professionnel

  Scenario: Widget Anniversaire Personnel Autorisé Par RH Refusé Par Collaborateur

     #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    #Etape2 : L'admin va refusé l'affichage de l'anniversaire personnel

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And l utilisateur clique sur "Gestion_du_personnel"
    And wait 3000
    And l utilisateur saisit "Gaston Boutot" dans le champs "Rechercher_Employe"
    And wait 3000
    And l utilisateur verifie le nom et la date personnel du collaborateur
    And l utilisateur clique sur "Bouton_Administration"
    And l utilisateur clique sur "Bouton_Configuration_Core"
    And wait 3000
    And l utilisateur clique sur "Bouton_Autres_Parametres"
    And wait 3000
    #l administrateur va cocher le bouton d affichage de l anniversaire personnel
    Then l utilisateur  "active" l'option "JS_Check_Box_AnniversairePersonnel_Rh"
    And wait 3000
    And l utilisateur clique sur "Bouton_Autres_Parametres_Enregistrer_Anniv"
    And wait 3000

     #Etape3 : L utilisateur va se connecter et cocher le bouton d'affichage de l anniversaire personnel

    And l utilisateur se deconnecte
    And l'utilisateur "gaston.boutot@yopmail.com" est connecté
    And l utilisateur clique sur "Bouton_Configuration"
    And wait 3000
    And l utilisateur clique sur "Bouton_Profil"
    And wait 3000
    And l utilisateur clique sur "Bouton_Afficher_AnniversairePersonnel"
    And wait 3000
     # l utilisateur va decocher le bouton d affichage d anniversaire personnel
    Then l utilisateur  "désactive" l'option "JS_Bouton_Collaborateur_Anniversaire_Personnel"

     #Etape4 : Verifier que la date d'anniversaire personnel n'est pas affichée dans le widget

    When l utilisateur clique sur "Bouton_Configuration"
    And wait 5000
    And l utilisateur clique sur "Bouton_Anniversaire_Portal"
    And wait 3000
    Then verifier que la date n est pas affichée dans le widget