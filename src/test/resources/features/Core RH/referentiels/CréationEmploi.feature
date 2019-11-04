# Auteur: Hafedh Tlili
# Feature: Référentiels
# Scénario: Création Emploi
# Date de création: 04/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-REFERENTIELS
@ACCRETIO2-REFERENTIELS-0004

Feature: Référentiels

  Scenario: Création Emploi

    # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Référentiels
    And l'utilisateur clique sur Emplois

    # Etape 3 : Ajout d'un nouvel emploi
    When l'utilisateur clique pour ajouter un emploi
    And l'utlisateur saisi le code "SOCEMP1"
    And l'utlisateur saisi le libelle "Emploi 1"
    And l'utlisateur saisi la date d'effet "01/01/2019"
    And l'utlisateur selectionne le statut "Actif"
    And l'utilisateur clique sur le bouton "Enregistrer"

    # Etape 4 : Ajout d'une compétence
    When l'utilisateur clique sur l onglet Exigences
    And l'utilisateur clique sur "Ajouter competence"
    And l'utilisateur selectionne la competence "validation"
    And l'utilisateur selectionne le niveau "Confirmé"
    And l'utilisateur selectionne l importance1 "Requise"
    And l'utilisateur clique sur le bouton "Valider competence"

    # Etape 5 : Ajout d'une langue
    When l'utlisateur clique sur "Ajouter langue"
    And l'utilisateur selectionne la langue "Français"
    And l'utilisateur selectionne le niveau "Avancé"
    And l'utilisateur l importance2 "Requise"
    And l'utilisateur clique sur le bouton "Valider langue"

    # Etape 6 : Ajout d'une habilitation
    When l'utlisateur clique sur "Ajouter habilitation"
    And l'utilisateur selectionne le type "Permis de conduire"
    And l'utilisateur selectionne le modele "Permis de conduire : Type A"
    And l'utilisateur selectionne l importance3 "Préféré(e)"
    And l'utilisateur clique sur le bouton "Valider habilitation"

     # Etape 7 : Ajout d'un diplôme
    When l'utlisateur clique sur "Ajouter diplome"
    And l'utilisateur selectionne le diplome "Ingénieur"
    And l'utilisateur selectionne la discipline "Informatique"
    And l'utilisateur selectionne l importance4 "Préféré(e)"
    And l'utilisateur clique sur le bouton "Valider diplome"

     # Etape 8 : Ajout d'une expérience professionnelle
    When l'utlisateur clique sur "Ajouter experience"
    And l'utilisateur saisi l emploi "Ingénieur de test junior"
    And l'utilisateur selectionne le secteur "Service"
    And l'utilisateur saisi les annees d experience "2"
    And l'utilisateur selectionne l importance5 "Requise"
    And l'utilisateur clique sur le bouton "Valider annees experience"


    # Etape 9 : Validation finale
Then l'utilisateur clique sur le bouton "Enregistrer"

