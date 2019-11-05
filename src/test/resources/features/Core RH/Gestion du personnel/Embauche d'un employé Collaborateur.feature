# Auteur: Hafedh Tlili
# Feature: Gestion du personnel
# Scénario: Embauche d'un employé Collaborateur
# Date de création: 04/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-GESTIONDUPERSONNEL
@ACCRETIO2-GESTIONDUPERSONNEL-001

Feature: Gestion du personnel

  Scenario: Embauche d'un employé Collaborateur

     # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

    # Etape 2 : Accès à l'espace RH
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Gestion du personnel

    # Etape 3 : Embauche d'un nouveau collaborateur
    ## Première popup d'embauche ##
    When l'utilisateur clique pour ajouter un collaborateur
    And l'utlisateur saisi la date d entree 01/01/2019
    And l'utlisateur selectionne le type Interne
    And l'utlisateur saisi le matricule SOC00001
    And l'utlisateur selectionne la qualité M.
    And l'utlisateur saisi le nom Slimani
    And l'utlisateur saisi le prenom Wajdi
    And l'utlisateur saisi la date de naissance 15/11/1984
    And l'utlisateur selectionne le pays de naissance Tunisie
    And l'utlisateur selectionne la situation familiale Marié(e)

    ## Deuxième popup d'embauche ##
    And  l'utilisateur clique sur le bouton "Continuer"
    And l'utlisateur selectionne le motif d entree Embauche
    And l'utlisateur selectionne la societe SOC01
    And l'utlisateur selectionne l etablissement SOCETAB01
    And l'utlisateur selectionne l EO SOCENT01
    And l'utlisateur selectionne l emploi SOCEMP01
    And l'utlisateur selectionne le poste SOCPOS01
    And l'utlisateur selectionne le type de contrat CDI
    And l'utlisateur saisi la date de debut du contrat 01/01/2019
    And l'utlisateur clique sur le bouton Enregistrer_Employe

    # Etape 4 : Ajout de l'adresse mail
    And L'utlilisateur saisi l Email wajdi.slimani@yopmail.com
    And l'utilisateur clique sur le bouton Enregistrer_Employé
    Then vérifier la sauvegarde correcte des donnees

    # Etape 5 : Ajout d'un cycle de travail
    When l'utilisateur clique sur l onglet Dossier adminisstratif
    And l'utilisateur clique pour ajouter un cycle de travail
    And l'utlisateur selectionne le cycle de travail C2
    And l'utlisateur selectionne la première semaine S2
    And l'utlisateur saisi la date d'effet 01/01/2019
    And l'utilisateur clique sur le bouton Valider cycle de travail
    And l'utilisateur clique sur le bouton Enregistrer_Employé
    Then vérifier la sauvegarde correcte des donnees

    #Etape 6 : Ajout d'un salaire
    When l'utilisateur clique sur l onglet Rémunération
    And l'utilisateur clique pour ajouter un salaire
    And l'utlisateur saisi le montant 1400
    And l'utlisateur selectionne la devise Dinar tunisien
    And l'utlisateur saisi la date  de début 0/01/2019
    And l'utilisateur clique sur le bouton Valider_salaire
    And l'utilisateur clique sur le bouton Enregistrer_Employé
    Then vérifier la sauvegarde correcte des donnees


