# Auteur: Manel Hachicha
# Feature: NDF Workflow Validation sans contrôleur de gestion
# Scénario: Validation d'une note de frais avec le workflow qui n'inclut pas le rôle contrôleur de gestion
# Date de création: 08/11/2019


@ACCRETIO2
@ACCRETIO2-EASYRUN
@ACCRETIO2-NDF
@ACCRETIO2-NDF-0002

Feature: NDF: Validation d'une note de frais avec le workflow qui n'inclut pas le rôle contrôleur de gestion

  Scenario: Validation d'une note de frais avec le workflow qui n'inclut pas le rôle contrôleur de gestion
    Given le navigateur est ouvert et la page d'acceuil est affichée

    #Etape 1 : Profil Rh-Création d'une nature
    And l'utilisateur "haf03.expert@gmail.com" est connecté
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Easyrun
    And l'utilisateur clique sur Configuration
    And l'utilisateur clique sur l'onglet Nature
    And l'utilisateur clique sur l'icône Ajouter une nature
    And la fenêtre Ajout d'une nature s'affiche à l'écran
    And l'utilisateur saisit le code "Test de NDF"
    And l'utilisateur sasit le libellé "Test de NDF"
    And l'utilisateur sélectionne la valeur "Divers"
    And l'utilisateur clique sur le bouton Ajouter
    And le message Opération effectuée avec succés s'affiche à l'ecran

    #Etape 2 : Profil Rh-Paramétrage de note de frais afin d'inclure le contrôleur de gestion dans le workflow
    And l'utilisateur clique sur le module Easyrun
    And l'utilisateur clique sur Notes de frais
    And l'utilisateur clique sur Paramétrage
    And l'utilisateur sélectionne la valeur "Non" au niveau du champ "Validation des notes de frais par le contrôleur de gestion
    And l'utilisateur clique l'icône Enregistrer
    And le message Opération effectuée avec succés s'affiche à l'ecran

    #Etape 3 : Profil collaborateur-Ajout de NDF
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    And l'utilisateur clique sur Mes notes de frais
    And l'utilisateur clique sur le bouton Ajouter une note de frais
    And la fenêtre Ajout d'une note de frais s'affiche à l'écran
    And l'utilisateur saisit la note "NDF"
    And l'utilisateur saisit la date "08/11/2019"
    And l'utilisateur clique sur le bouton Ajouter
    And le message Opération effectuée avec succés s'affiche à l'ecran
    And l'utilisateur clique sur la NDF ayant la dernière référence
    And l'utilisateur clique sur le bouton d'ajout de dépense
    And la fenêtre d'ajout de dépense s'affiche à l'écran
    And l'utilisateur sélectionne la nature "Test De NDF"
    And l'utilisateur saisit la date "08/11/2019"
    And l'utilisateur saisit le montant(TTC) "100"
    And l'utilisateur sélectionne le mode de paiement "Espèces"
    And l'utilisateur clique sur le bouton Ajouter
    And le message Opération effectuée avec succés s'affiche à l'ecran
    And l'utilisateur clique sur le bouton d'envoi de la NDF
    And la fenêtre de confirmation de soumission de la NDF s'affiche à l'écran
    And l'utilisateur clique sur le bouton Valider
    And le message Opération effectuée avec succés s'affiche à l'ecran
    And le statut de la NDF devient En cours

    #Etape 4 : Profil manager-Validation de NDF
    And l'utilisateur "haf02.manager@gmail.com" est connecté
    And l'utilisateur reçoit une notification "a envoyé une note de frais"
    And l'utilisateur clique sur la notification
    And l'utilisateur clique sur la NDF du collaborateur
    And l'utilisateur clique sur le bouton Accepter
    And la fenêtre de confirmation de la validation d'affiche à l'écran
    And l'utilisateur clique sur le bouton Valider
    And le message Opération effectuée avec succés s'affiche à l'ecran
    And la NDF est déplacée au niveau de la rubrique Historique et son statut devient Validée

    #Etape 5 : Profil Financier-Validation de NDF
    And l'utilisateur "haf05.finance@gmail.com" est connecté
    And l'utilisateur reçoit une notification "a envoyé une note de frais"
    And l'utilisateur clique sur la notification
    And l'utilisateur clique sur la NDF du collaborateur
    And l'utilisateur clique sur le bouton Accepter
    And la fenêtre de confirmation de la validation d'affiche à l'écran
    And l'utilisateur clique sur le bouton Valider
    And le message Opération effectuée avec succés s'affiche à l'ecran
    And la NDF est déplacée au niveau de la rubrique Historique et son statut devient Payée

    #Etape 6 : Profil collaborateur-Vérification de la validation de la NDF
    And l'utilisateur "haf01.collaborateur@gmail.com" est connecté
    Then Vérifier que l'utilisateur reçoit une notification "Votre note de frais a été payée" et que le statut de la NDF devient Payée




