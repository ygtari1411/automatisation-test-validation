# Auteur: Hafedh Tlili
# Feature: Gestion du personnel
# Scénario: Création du template Onboarding
# Date de création: 08/11/2019


@ACCRETIO2
@ACCRETIO2-CORERH
@ACCRETIO2-ONBOARDING
@ACCRETIO2-ONBOARDING-001

Feature: Onboarding : Creation du template Onboarding

  Scenario: Creation du template Onboarding

     # Etape 1 : Connexion :
    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté


    # Etape 2 : Accès à l'espace RH
    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module coreRH
    And l'utilisateur clique sur Onboarding


    # Etape 3 : Ajout d'un nouveau template onboarding
    ## La population "Population Onboarding" est un pré-requis pour ce test. Elle doit être créé auparavant pour qu'elle soit utilisée dans ce test ##
    When l'utilisateur clique pour ajouter un template_onboarding
    And l'utlilisateur saisi le nom du template Onboarding 1
    And l'utilisateur selectionne le paramètre Informations utiles
    And l'utilisateur selectionne le paramètre Politique de l'entreprise
    And l'utilisateur selectionne le paramètre Charte d'utilisation
    And l'utilisateur selectionne le paramètre Fiche de poste
    And l'utilisateur selectionne le paramètre Photos
    And l'utilisateur selectionne le paramètre Manager
    And l'utilisateur selectionne le paramètre Team
    And l'utilisateur saisi la durée d'affichage 60
    And l'utilisateur saisi la population Population Onboarding
    Then l'utlisateur clique sur le bouton Enregistrer_Template_Onboarding
    Then l'utlisateur clique sur le bouton Sauvegarder_Template_Onboarding


    # Etape 4 : Paramétrage de la rubrique "Première connexion"
    When l'utilisateur clique sur Onboarding 1
    And l'utilisteur clique sur Première connexion
    And l'utilisateur selectionne Français
    And l'utilisateur Saisi le texte de la premiere connexion Bienvenue dans votre espace Onboarding
    Then l'utlisateur clique sur le bouton Enregistrer_Template_Onboarding


    # Etape 5 : Paramétrage de la rubrique Bienvenue
    When l'utilisteur clique sur Bienvenue
    And l'utilisateur Saisi le texte de Bienvenue Cher collaboraeur, bienvenue dans votre espace onboarding
    And l'utilisateur Saisi la video de bienvenue https://www.youtube.com/watch?v=unMfSVplDhA
    And l'utilisateur Saisi la présentation Accretio est une plateforme digitale qui révolutionne vos échanges en mettant l’humain au cœur de votre transformation digitale
    Then l'utlisateur clique sur le bouton Enregistrer_Template_Onboarding


    # Etape 6 : Paramétrage de la rubrique Informations utiles
    When l'utilisteur clique sur Informations utiles
    And l'utilisateur clique sur interlocuteurs
    And l'utilisateur saisi