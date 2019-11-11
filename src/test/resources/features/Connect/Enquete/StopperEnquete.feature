@ACCRETIO2-CONNECT
@ACCRETIO2-ENQUETE
@ACCRETIO2-ENQUETE-0005

Feature: Enquete

  Scenario: Stopper une enquete

      #Etape1 : Se connecter au TNR

    Given le navigateur est ouvert et la page d'acceuil est affichée
    And l'utilisateur "resp-RH@mail.com" est connecté

      #Etape2 : Ajouter une enquete

    When l'utilisateur clique sur espace-RH
    And l'utilisateur clique sur le module Connect
    And l'utilisateur clique sur Enquete
    And l'utilisateur clique sur le bouton ajouter une Enquete

    #Etape3 : Remplir tous les champs d'une enquete

    When le modal création Enquete s'affiche
    And l'utilisateur remplit Libellé Enquete par "Enquete 1"
    And l'utilisateur remplit Population par "amal chograni" et "rania chaari" dont le nom de la population est "test population enquete"
    And l'utilisateur remplit Réponse 1 par "oui"
    And l'utilisateur remplit Réponse 2 par "non"
    And l'utilisateur remplit Axe par "Chapitre 1"
    And l'utilisateur remplit Question 1 par "tester question"
    And l'utilisateur clique sur le bouton confirmer ajout enquete
    And l'utilisateur clique sur le bouton lancer enquete

    #Etape4 : Lancer une enquete

    When le modal lancer enquete s'affiche
    And l'utilisateur clique sur le bouton confirmer lancement enquete
    And l'utilisateur clique sur le bouton stopper enquete

    #Etape5 : Stopper une enquete

    When le modal stopper enquete s'affiche
    And l'utilisateur clique sur le bouton confirmer l'arret d'une enquete


   #Etape6 : Confirmer que l'enquete n'est plus affiché

    When l'utilisateur clique sur portal
    And l'utilisateur clique sur enquete
    Then verifier que le nombre d'enquete est decrementé et que l'enquete n'est pas affiché

