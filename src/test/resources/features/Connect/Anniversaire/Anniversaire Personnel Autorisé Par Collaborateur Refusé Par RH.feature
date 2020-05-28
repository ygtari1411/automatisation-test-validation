# Auteur: marwamaherssi
# Feature: Anniversaire
# Scénario: Anniversaire Personnel Autorisé Par Collaborateur Refusé Par RH
# Date de création: 04/02/2020

@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-ANNIVERSAIRE
@ACCRETIO2-ANNIVERSAIRE-0001


Feature: Anniversaire

  Scenario: Anniversaire Personnel Autorise Par Collaborateur Refuse Par RH

     #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "responsable@yopmail.com" est connecté

    #Etape2 : L'admin va refusé l'affichage de l'anniversaire personnel

    When l utilisateur clique sur "Bouton_Role_RH"
    And l utilisateur clique sur "Bouton_Menu_Etendu"
    And l utilisateur clique sur "Core_RH"
    And wait 9000
    And l utilisateur clique sur "Bouton_Configuration_Core"
    And wait 9000
    And l utilisateur clique sur "Bouton_Autres_Parametres"
    And wait 9000
    # l administrateur va decocher le bouton d affichage de l anniversaire personnel
    And l utilisateur  "désactive" l'option "JS_Check_Box_AnniversairePersonnel_Rh"
    And wait 5000
    And l utilisateur clique sur "Bouton_Autres_Parametres_Enregistrer"
    And wait 3000

    #Etape3 : L utilisateur va se connecter et cocher le bouton d'affichage de l anniversaire personnel

    And l utilisateur se deconnecte
    And l'utilisateur "gaston.boutot@yopmail.com" est connecté
    And wait 5000
    And l utilisateur clique sur "Bouton_Configuration"
    And wait 9000
    And l utilisateur clique sur "Bouton_Profil"
    And wait 3000
    And l utilisateur clique sur "Bouton_Afficher_AnniversairePersonnel"
    And wait 3000
    # l utilisateur va cocher le bouton d affichage d anniversaire personnel
    And l utilisateur  "active" l'option "JS_Bouton_Collaborateur_Anniversaire_Personnel"

    #Etape4 : Verifier que la date d'anniversaire personnel n'est pas affichée

    When l utilisateur clique sur "Bouton_Configuration"
    And l utilisateur clique sur "Icone_Nom_Utilisateur"
    And wait 3000
    # verifier que la date n est pas affichée dans le profil enrichi
    And vérifier que l element "Anniversaire_Personnel_Profil_Enrichi" n est pas affiché


