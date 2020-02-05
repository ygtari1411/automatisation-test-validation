# Auteur: marwamaherssi
# Feature: Anniversaire
# Scénario: Anniversaire Personnel Autorise Par RH Refuse Par collaborateur
# Date de création: 04/02/2020

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-ANNIVERSAIRE
@ACCRETIO2-ANNIVERSAIRE-0002


Feature: Anniversaire

  Scenario: Anniversaire Personnel Autorise Par RH Refuse Par collaborateur

     #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    #Etape2 : L'admin va autorisé l'affichage de l'anniversaire personnel

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Bouton_Module_Connect"
    And l utilisateur clique sur "Bouton_Administration"
    And l utilisateur clique sur "Bouton_Autres_Parametres"
    Then l administrateur va cocher le bouton d'affichage de l'anniversaire personnel

    #Etape3 : L utilisateur va se connecter et décocher le bouton d'affichage de l anniversaire personnel

    And l utilisateur se deconnecte
    And l'utilisateur "gaston.boutot@yopmail.com" est connecté
    And l utilisateur clique sur "Bouton_Configuration"
    And l utilisateur clique sur "Bouton_Profil"
    Then l utilisateur va decocher le bouton d'affichage d'anniversaire personnel

    #Etape4 : Verifier que la date d'anniversaire personnel n'est pas affichée

    Then verifier que la date n est pas affichée dans le profil enrichi
