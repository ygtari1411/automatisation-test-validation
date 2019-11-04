# Auteur: Hafedh Tlili
# Feature: Référentiels
# Scénario: Création Poste
# Date de création: 04/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-REFERENTIELS
@ACCRETIO2-REFERENTIELS-0005

Feature: Référentiels

  Scenario: Création Poste

    # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Référentiels
    And l'utilisateur clique sur Postes

    # Etape 3 : Ajout d'un nouveau poste
    When l'utilisateur clique pour ajouter un poste
    And l'utlisateur saisi le code "SOCPOS01"
    And l'utlisateur saisi le libelle "Poste 1"
    And l'utlisateur saisi la date d'effet "01/01/2019"
    And l'utlisateur selectionne le statut "Actif"
    And l'utlisateur selectionne l EO SOCENT01
    And l'utlisateur selectionne l emploi SOCEMP01
    And l'utilisateur clique sur le bouton Enregistrer_Poste

    # Etape 4 : Ajout d'une compétence
    When l'utilisateur clique sur l onglet Exigences_Poste
    And l'utilisateur clique sur Ajouter competence_Poste
    And l'utilisateur selectionne la competence_Poste "validation"
    And l'utilisateur selectionne le niveau_Poste "Confirmé"
    And l'utilisateur selectionne l importance1_Poste "Requise"
    And l'utilisateur clique sur le bouton Valider competence_Poste

    # Etape 5 : Ajout d'une langue
    When l'utlisateur clique sur Ajouter langue_Poste
    And l'utilisateur selectionne la langue_Poste "Français"
    And l'utilisateur selectionne le niveau_Poste "Avancé"
    And l'utilisateur l importance2_Poste "Requise"
    And l'utilisateur clique sur le bouton Valider langue_Poste

    # Etape 6 : Ajout d'une habilitation
    When l'utlisateur clique sur Ajouter habilitation_Poste
    And l'utilisateur selectionne le type_Poste "Permis de conduire"
    And l'utilisateur selectionne le modele_Poste "Permis de conduire : Type A"
    And l'utilisateur selectionne l importance3_Poste "Préféré(e)"
    And l'utilisateur clique sur le bouton Valider habilitation_Poste

     # Etape 7 : Ajout d'un diplôme
    When l'utlisateur clique sur Ajouter diplome_Poste
    And l'utilisateur selectionne le diplome_Poste "Ingénieur"
    And l'utilisateur selectionne la discipline_Poste "Informatique"
    And l'utilisateur selectionne l importance4_Poste "Préféré(e)"
    And l'utilisateur clique sur le bouton Valider diplome_Poste

     # Etape 8 : Ajout d'une expérience professionnelle
    When l'utlisateur clique sur Ajouter experience_Poste
    And l'utilisateur saisi l emploi_Poste "Ingénieur de test junior"
    And l'utilisateur selectionne le secteur_Poste "Service"
    And l'utilisateur saisi les annees d experience_Poste "2"
    And l'utilisateur selectionne l importance5_Poste "Requise"
    And l'utilisateur clique sur le bouton Valider annees experience_Poste


    # Etape 9 : Validation finale
    And l'utilisateur clique sur le bouton Enregistrer_Poste
    Then vérifier la sauvegarde correcte du poste