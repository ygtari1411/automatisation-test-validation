# Auteur: marwamaherssi
# Feature: Ideation
# Scénario: Verifier qu'un collaborateur hors timeline ne peut pas visualiser cette idéation
# Date de création: 08/01/2020



@ACCRETIO2
@ACCRETIO2-CONNECT
@ACCRETIO2-IDEATION
@ACCRETIO2-IDEATION-0003


  Feature: Ideation

    Scenario: Vérif Collaborateur Hors Timeline Idéation
#Etape 1 : Connexion

      Given le navigateur est ouvert et la page d'acceuil est affichée
      And l'utilisateur "responsable@yopmail.com" est connecté

    #Etape 2 : Création de l'idée

      And l utilisateur attend l'apparition du Widget_Ideation
      And l utilisateur clique sur "Widget_Ideation"
      And wait 2000
      And l utilisateur clique sur "Proposer_une_idee"
      And wait 3000
      And l utilisateur selectionne "Entreprise" dans la liste deroulante "Liste_Deroulante_Categorie_Idee"
      And l utilisateur saisit "Idéation avec timeline restreinte" dans le champs "Libelle_Creation_Idee"
      And l utilisateur selectionne "Timeline restreinte Connect" dans la liste deroulante "Liste_Deroulante_Timeline_Creation_Ideation"
      And l utilisateur saisit "Ceci est la description de l'idée avec timeline restreint" dans le champs "Description_Creation_Idee"
      And l utilisateur clique sur "Bouton_Sauvegarde_Creation_Ideation"

     #Etape 3 : Vérification de la création de l'idée

      Then vérifier que le message "Opération effectuée avec succès" s affiche
      Then vérifier que l idée est crée
      And l utilisateur se deconnecte

     #Etape 4 : Se connecter avec un utilisateur hors timeline et vérifier que l'idéation crée n'est pas affichée

      And l'utilisateur "gaston.boutot@yopmail.com" est connecté
      And l utilisateur attend l'apparition du Widget_Ideation
      And l utilisateur clique sur "Widget_Ideation"
      And wait 2000
      Then verifier que l idéation créé n est pas affichée


