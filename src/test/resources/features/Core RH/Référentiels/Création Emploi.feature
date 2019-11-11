# Auteur: Hafedh Tlili
# Feature: Référentiels
# Scénario: Création Emploi
# Date de création: 04/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-REFERENTIELS
@ACCRETIO2-REFERENTIELS-0004

Feature: Référentiels : Création Emploi

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
    And l'utlisateur saisi le code "SOCEMP01"
    And l'utlisateur saisi le libelle "Emploi 1"
    And l'utlisateur saisi la date d'effet "01/01/2019"
    And l'utlisateur selectionne le statut "Actif"
    And l'utilisateur clique sur le bouton Enregistrer_Emploi

    # Etape 4 : Ajout d'une compétence
    When l'utilisateur clique sur l onglet Exigences_Emploi
    And l'utilisateur clique sur Ajouter competence_Emploi
    And l'utilisateur selectionne la competence_Emploi "validation"
    And l'utilisateur selectionne le niveau_Emploi "Confirmé"
    And l'utilisateur selectionne l importance1_Emploi "Requise"
    And l'utilisateur clique sur le bouton Valider competence_Emploi

    # Etape 5 : Ajout d'une langue
    When l'utlisateur clique sur Ajouter langue_Emploi
    And l'utilisateur selectionne la langue_Emploi "Français"
    And l'utilisateur selectionne le niveau_Emploi "Avancé"
    And l'utilisateur l importance2_Emploi "Requise"
    And l'utilisateur clique sur le bouton Valider langue_Emploi

    # Etape 6 : Ajout d'une habilitation
    When l'utlisateur clique sur Ajouter habilitation_Emploi
    And l'utilisateur selectionne le type_Emploi "Permis de conduire"
    And l'utilisateur selectionne le modele_Emploi "Permis de conduire : Type A"
    And l'utilisateur selectionne l importance3_Emploi "Préféré(e)"
    And l'utilisateur clique sur le bouton Valider habilitation_Emploi

     # Etape 7 : Ajout d'un diplôme
    When l'utlisateur clique sur Ajouter diplome_Emploi
    And l'utilisateur selectionne le diplome_Emploi "Ingénieur"
    And l'utilisateur selectionne la discipline_Emploi "Informatique"
    And l'utilisateur selectionne l importance4_Emploi "Préféré(e)"
    And l'utilisateur clique sur le bouton Valider diplome_Emploi

     # Etape 8 : Ajout d'une expérience professionnelle
    When l'utlisateur clique sur Ajouter experience_Emploi
    And l'utilisateur saisi l emploi_Emploi "Ingénieur de test junior"
    And l'utilisateur selectionne le secteur_Emploi "Service"
    And l'utilisateur saisi les annees d experience_Emploi "2"
    And l'utilisateur selectionne l importance5_Emploi "Requise"
    And l'utilisateur clique sur le bouton Valider annees experience_Emploi


    # Etape 9 : Validation finale
    And l'utilisateur clique sur le bouton Enregistrer_Emploi
    Then vérifier la sauvegarde correcte de l'emploi