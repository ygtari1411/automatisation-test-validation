# Auteur: Ons MANSOURI
# Feature: Recrutement
# Scénario: Demande de recrutement par Manager avec validation
# Date de création: 01/11/2019


@ACCRETIO2
@ACCRETIO2-TALENT
@ACCRETIO2-RECRUTEMENT
@ACCRETIO2-RECRUTEMENT-0001

  Feature: Recrutement
   Scenario: Demande de recrutement par manager avec validation
      
     #Etape 001: Connexion manager
    Given   le navigateur est ouvert et la page d'acceuil est affichée
      And   l'utilisateur "yasushitakagi.cm@gmail.com" est connecté
     Then   le nom de l'utilisateur "Yasushi TAKAGI" est affiche en haut a gauche

     #Etape 002: Acceder  à la page Demandes de recrutement espace manager
     When   l utlisateur clique sur l icone mon equipe
      And   wait (valeur)
     When   l'utilisateur clique sur l icone demande de recrutement
      And   wait (valeur)

     #Etape 003: Lancer la demande de recrutement par le manager
     When   l utilisateur clique sur le bouton ajouter une demande
      And   wait (valeur)
      And   l utilisateur remplie le champs intitulé "Test automatique"
      And   l utilisateur remplie le champs effectif à couvrir "2"
      And   l utilisateur choisit l option "Interne" et l option "Externe" dans la liste cible
      And   l utilisateur choisit l option "Ariana" dans la liste lieu
      And   l utilisateur choisit l option "CDI" dans la liste contrat
      And   l utilisateur choisit l option "CM Chief RH" dans la liste emploie associe
      And   l utilisateur choisit l option "CM Collaborateur Buisness Partner" dans la liste poste associe
      And   l utilisateur remplie le champs mission "Mission Test automatique"
      And   l utilisateur remplie le champs profil atouts "Profil Test automatique"
      And   l utilisateur remplie le champs justification de la demande "Justification Test automatique"
      And   l utilisateur clique sur ajouter des fichiers
      And   l utlisateur ajoute un fichier
      And   l utilisateur choisit l option "Dinar tunisien" dans la liste devise
      And   l utilisateur remplie le champs salaire "2000"
     Then   verifier que le salaire annuel est "2000"
     When   l utilisateur remplie le champs bonus "1000"
     Then   verifier que le salaire annuel est "22000"
     When   l utilisateur remplie le champs autres "1500"
     Then   verifier que le salaire annuel est "23500"
     When   l utlisateur coche budgetise
     And    l utlisateur saisie budget "24000"
     Then   verifier que le montant "500" s affiche a droite
     When   l utilisateur clique sur le bouton envoyer
      And   wait (valeur)

     #Etape 004: Verification de la demande lancee par le manager par lui meme
     Then   verifier que le premier libelle dans la liste "Test automatique"
      And   verifier que la premiere date de creation dans la liste aujourd hui
      And   verifier que le premier status dans la liste 'Orange' et l intitule "En cours"
      And   verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And   verifier que le premier lieu dans la liste est "Ariana"
      And   verifier que la premiere ligne de publiee n est pas cochee
     When   l utilisateur clique sur l icone voir historique
     Then   verifier que l'initiateur est "Yasushi TAKAGI"
      And   verifier que la date de debut est aujourd hui
      And   verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut dans le tableau est aujourd hui
      And   verifier que la premiere date de fin dans le tableau est vide
      And   verifier que la premiere decision dans le tableau est vide
      And   verifier que le premier commentaire dans le tableau est vide
     When   l utilisateur clique sur le bouton fermer

     #Etape 005: Deconnexion
      And   l utilisateur clique sur le bouton Configuration
      And   l'utilisateur clique sur le bouton Déconnexion
      And   wait (valeur)
     Then   la page de connexion est affiche

     #Etape 006: Connexion avec le profil RH
     When   l'utilisateur "nanakomatsu.CM@gmail.com" est connecté
     Then   le nom de l'utilisateur "Nana Komatsu" est affiche en haut a gauche

     #Etape 007: Acceder au menu recrutement par le profil RH
     When   l'utilisateur clique sur espace-RH
      And   l'utilisateur clique sur le module Talent
      And   l utilisateur clique sur le sous module Recrutement

     #Etape 008: Verification de la demande de recrutement lancee par le manager par le profil RH
     Then   verifier que le premier libelle dans la liste "Test automatique"
      And   verifier que la premiere date de creation dans la liste aujourd hui
      And   verifier que le premier status dans la liste 'Orange' et l intitule "En cours"
      And   verifier que le premier initiateur dans la liste "TAKAGI Yasushi"
      And   verifier que le premier responsable de recrutement dans la liste vide
      And   verifier que la premiere ligne de candidature dans la liste "0"
      And   verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And   verifier que le premier lieu dans la liste est "Ariana"
      And   verifier que la premiere ligne de publiee n est pas cochee
     When   l utilisateur clique sur l icone voir historique
     Then   verifier que l'initiateur est "Yasushi TAKAGI"
      And   verifier que la date de debut est aujourd hui
      And   verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut dans le tableau est aujourd hui
      And   verifier que la premiere date de fin dans le tableau est vide
      And   verifier que la premiere decision dans le tableau est vide
      And   verifier que le premier commentaire dans le tableau est vide
     When   l utilisateur clique sur le bouton fermer


     #Etape 009: Déconnexion
      And   l utilisateur clique sur le bouton Configuration
      And   l'utilisateur clique sur le bouton Déconnexion
      And   wait (valeur)
     Then   la page de connexion est affiche
     
     #Etape 010: Connexion avec le profil N+1 du manager
     When   l'utilisateur "nobuoterashima.cm@gmail.com" est connecté
     Then   le nom de l'utilisateur "Nobuo TERASHIMA" est affiche en haut a gauche


     #Etape 011: Acceder au menu recrutement avec le profil N+1
      And   l utilisateur recoit une notification de demande de validation
     When   l utilisateur clique sur la notification

     #Etape 012: Verification de la demande de recrutement par N+1
      And   l utilisateur clique sur a valider
      And   wait (valeur)
     Then   verifier que le premier libelle dans la liste "Test automatique"
      And   verifier que la premiere date de creation dans la liste aujourd hui
      And   verifier que le premier status dans la liste 'Orange' et l intitule "En cours"
      And   verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And   verifier que le premier lieu dans la liste est "Ariana"
      And   verifier que la premiere ligne de publiee n est pas cochee
     When   l utilisateur clique sur l icone voir historique
     Then   verifier que l'initiateur est "Yasushi TAKAGI"
      And   verifier que la date de debut est aujourd hui
      And   verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut dans le tableau est aujourd hui
      And   verifier que la premiere date de fin dans le tableau est vide
      And   verifier que la premiere decision dans le tableau est vide
      And   verifier que le premier commentaire dans le tableau est vide
     When   l utilisateur clique sur le bouton fermer
      And   l utilisateur clique sur visualiser le resultat
     Then   verifier que l intitule est "Test automatique"
      And   verifier que l effectif a couvrir est "2"
      And   verifier que la cible est "Interne" et "Externe"
      And   verifier que le contrat est "CDI"
      And   verifier que l emploi associe est "CM Chief RH"
      And   verifier que le poste associe est "CM Collaborateur Buisness Partner"
      And   verifier que le champs Mission est "Mission Test automatique"
      And   verifier que le champs Profil/Atouts est "Profil Test automatique"
      And   verifier que le champs Justification de la demande est "Justification Test automatique"
      And   verifier que la devise est "Dinar tunisien"
      And   verifier que le champs salaire est "2000"
      And   verifier que le champs  bonus est "1000"
      And   verifier que le champs autres est "1500"
      And   verifier que le salaire annuel est "23500"
      And   verifier que la case budgetise est coche
      And   verifier que le budget est "24000"
      And   verifier que le montant "500" s affiche a droite

     #Etape 013: Validation de la demande de recrutement par N+1
     When   l utilisateur saisie "Validation N+1" dans le champs commentaire
      And   l utilisateur choisie l option valider dans la liste actions
      And   l utilisateur clique sur envoyer
      And   wait (valeur)
     Then   verifier le permier libellé n est pas "Test automatique"

     #Etape 014: Déconnexion
     When   l utilisateur clique sur le bouton Configuration
      And   l'utilisateur clique sur le bouton Déconnexion
      And   wait (valeur)
     Then   la page de connexion est affiche

     #Etape 015: Connexion avec le profil RH
     When   l'utilisateur "nanakomatsu.CM@gmail.com" est connecté
     Then   le nom de l'utilisateur "Nana Komatsu" est affiche en haut a gauche

     #Etape 016: Acceder au menu recrutement par le profil RH
     When   l'utilisateur clique sur espace-RH
      And   l'utilisateur clique sur le module Talent
      And   l utilisateur clique sur le sous module Recrutement

     #Etape 017: Vérification de la demande de recrutement par le role RH
     Then   verifier que le premier libelle dans la liste "Test automatique"
      And   verifier que la premiere date de creation dans la liste aujourd hui
      And   verifier que le premier status dans la liste 'Orange' et l intitule "En cours"
      And   verifier que le premier initiateur dans la liste "TAKAGI Yasushi"
      And   verifier que la premiere ligne de candidature dans la liste "0"
      And   verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And   verifier que le premier lieu dans la liste est "Ariana"
      And   verifier que la premiere ligne de publiee n est pas cochee
     When   l utilisateur clique sur l icone voir historique
     Then   verifier que l'initiateur est "Yasushi TAKAGI"
      And   verifier que la date de debut est aujourd hui
      And   verifier que le premier validateur est "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut dans le tableau est aujourd hui
      And   verifier que la premiere date de fin est dans le tableau aujourd hui
      And   verifier que la premiere decision est "Acceptée" et la couleur est Vert
      And   verifier que le premier commentaire est "Validation N+1"
      And   verifier que le second validateur est "Ren Honjo"
      And   verifier que la seconde date de debut dans le tableau est aujourd hui
      And   verifier que la seconde date de fin dans le tableau est vide
      And   verifier que la seconde  decision dans le tableau est vide
      And   verifier que le second commentaire dans le tableau est vide
     When   l utilisateur clique sur le bouton fermer

     #Etape 018: Déconnexion
      And   l utilisateur clique sur le bouton Configuration
      And   l'utilisateur clique sur le bouton Déconnexion
      And   wait (valeur)
     Then   la page de connexion est affiche

     #Etape 019: Connexion avec le profil N+2
     When   l'utilisateur "renhonjo.cm@gmail.com" est connecté
     Then   le nom de l'utilisateur est affiché en haut à gauche

     #Etape 020: Acceder au menu recrutement avec le profil N+2
      And   l utilisateur recoit une notification de demande de validation
     When   l utilisateur clique sur la notification

    #Etape 021: Verification de la demande de recrutement par N+2
      And   l utilisateur clique sur a valider
     Then   verifier que le premier libelle dans la liste "Test automatique"
      And   verifier que la premiere date de creation dans la liste aujourd hui
      And   verifier que le premier status dans la liste 'Orange' et l intitule "En cours"
      And   verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And   verifier que le premier lieu dans la liste est "Ariana"
     When   l utilisateur clique sur visualiser le resultat
     Then   verifier que l intitule est "Test automatique"
      And   verifier que l effectif a couvrir est "2"
      And   verifier que la cible est "Interne" et "Externe"
      And   verifier que le lieu est "Ariana"
      And   verifier que le contrat est "CDI"
      And   verifier que l emploi associe est "CM Chief RH"
      And   verifier que le poste associe est "CM Collaborateur Buisness Partner"
      And   verifier que le champs mission est "Mission Test automatique"
      And   verifier que le champs profil/atouts est "Profil Test automatique"
      And   verifier que le champs justification de la demande est "Justification Test automatique"
      And   verifier que la devise est "Dianrs tunisien"
      And   verifier que le champs salaire est "2000"
      And   verifier que le champs  bonus est "1000"
      And   verifier que le champs autres est "1500"
      And   verifier que le salaire annuel est "23500"
      And   verifier que la case budgetise est coche
      And   verifier que le budget est "24000"
      And   verifier que le montant "500" s affiche a droite

    #Etape 022: Validation de la demande de recrutement par N+2
     When   l utilisateur saisie "Validation N+2" dans le champs commentaire
      And   l utilisateur choisie l option Valider dans la liste Actions
      And   l utilisateur clique sur Envoyer
      And   wait (valeur)
     Then   verifier le permier libellé n est pas Test automatique

     #Etape 023: Déconnexion
      And   l utilisateur clique sur le bouton Configuration
      And   l'utilisateur clique sur le bouton Déconnexion
      And   wait (valeur)
     Then   la page de connexion est affiche

     #Etape 024: Connexion avec le profil RH_Recruitment
     When   l'utilisateur "hrrecruitment@yopmail.com" est connecté
     Then   le nom de l'utilisateur est affiché en haut à gauche

     #Etape 025: Acceder au menu recrutement avec le profil N+2
     When    l'utilisateur clique sur espace-RH
      And    l utilisateur clique sur la notification de demande de validation

     #Etape 026: Vérification et de la demande de recrutement par le rôle RH_Recruitment
      And    l utilisateur clique sur a valider
      And    wait (valeur)
     Then    verifier que le premier libelle dans la liste "Test automatique"
      And    verifier que la premiere date de creation dans la liste aujourd hui
      And    verifier que le premier status dans la liste 'Orange' et l intitule "En cours"
      And    verifier que le premier initiateur dans la liste "TAKAGI Yasushi"
      And    verifier que la premiere ligne de candidature dans la liste "0"
      And    verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And    verifier que le premier lieu dans la liste est "Ariana"
      And    verifier que la premiere ligne de publiee n est pas cochee
     When    l utilisateur clique sur l icone voir historique
     Then    verifier que l'initiateur est "Yasushi TAKAGI"
      And    verifier que la date de debut est aujourd hui
      And    verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And    verifier que la premiere date de debut dans le tableau est aujourd hui
      And    verifier que la premiere date de fin dans le tableau est aujourd hui
      And    verifier que la premiere decision dans le tableau est "Acceptée" et la couleur est Vert
      And    verifier que le premier commentaire est "Validation N+1"
      And    verifier que le second validateur est "Ren Honjo"
      And    verifier que la seconde date de debut dans le tableau est aujourd hui
      And    verifier que la seconde date de fin est aujourd'hui
      And    verifier que la seconde  decision est "Acceptée" et la couleur est Vert
      And    verifier que le second commentaire est "Validation N+2"
      And    verifier que le troisieme validateur est "Role_hr_reruitment"
      And    verifier que la troisieme date de debut dans le tableau est aujourd hui
      And    verifier que la troisieme date de fin est vide
      And    verifier que la troisieme  decision est vide
      And    verifier que le troisieme commentaire est vide
     When    l utilisateur clique sur le bouton fermer
      And    l utilisateur clique sur le bouton editer
     Then    verifier que l intitule est "Test automatique"
      And    verifier que la date de création est aujourd hui
      And    verifier que le statut de la demande  est "En cours"
      And    verifier que l initiateur est "Yasushi TAKAGI"
      And    verifier que l effectif a couvrir est "2"
      And    verifier que le responsable de recrutement est vide
      And    verifier que a pourvoir le est vide
      And    verifier que la cible est "Interne" et "Externe"
      And    verifier que le lieu est "Ariana"
      And    verifier que le contrat est "CDI"
      And    verifier que l emploi associe est "CM Chief RH"
      And    verifier que le poste associe est "CM Collaborateur Buisness Partner"
      And    verifier que le champs Mission est "Mission Test automatique"
      And    verifier que le champs Profil/Atouts est "Profil Test automatique"
      And    verifier que le champs Justification de la demande est "Justification Test automatique"
      And    verifier que la devise est "Dianrs tunisien"
      And    verifier que le champs Salaire est "2000"
      And    verifier que le champs  Bonus est "1000"
      And    verifier que le champs Autres est "1500"
      And    verifier que le salaire annuel est "23500"
      And    verifier que la case budgetise est coche
      And    verifier que le budget est "24000"
      And    verifier que le montant "500" s affiche a droite

     #Etape 027: Validation de la demande de recrutement par le rôle RH_Recruitment
     When    l utilisateur saisie "Validation Role RH_Recruitment" dans le champs commentaire
      And    l utilisateur choisie l option Valider dans la liste Actions
      And    l utilisateur clique sur Envoyer
      And    wait (valeur)
     Then    verifier le permier libellé n est pas Test automatique
     When    l utilisateur clique sur toutes les offres
      And    wait (valeur)
      And    l utilisateur clique sur voir historique
     Then    verifier que l initiateur est "Yasushi TAKAGI"
      And    verifier que la date de debut est aujourd hui
      And    verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And    verifier que la premiere date de debut dans le tableau est aujourd hui
      And    verifier que la premiere date de fin dans le tableau est aujourd hui
      And    verifier que la premiere decision dans le tableau est "Acceptée" et la couleur est Vert
      And    verifier que le premier commentaire est "Validation N+1"
      And    verifier que le second validateur est "Ren Honjo"
      And    verifier que la seconde date de debut dans le tableau est aujourd hui
      And    verifier que la seconde date de fin est aujourd'hui
      And    verifier que la seconde  decision est "Acceptée" et la couleur est Vert
      And    verifier que le second commentaire est "Validation N+2"
      And    verifier que le troisieme validateur est "Shin'Ichi OKAZAKI"
      And    verifier que la troisieme date de debut dans le tableau est aujourd hui
      And    verifier que la troisieme date de fin est aujourd hui
      And    verifier que la troisieme decision est "Acceptée" et la couleur est Vert
      And    verifier que le troisieme commentaire est "Validation Role RH_Recruitment"
      And    verifier que le quatrieme validateur est Role_admin
     When    l utilisateur clique sur le bouton fermer

     #Etape 028: Déconnexion
      And   l utilisateur clique sur le bouton Configuration
      And   l'utilisateur clique sur le bouton Déconnexion
      And   wait (valeur)
     Then   la page de connexion est affiche

     #Etape 029: Connexion avec le profil Role_Admin
     When   l'utilisateur "KyosukeTAKAKURA1@yopmail.com" est connecté
     Then   le nom de l'utilisateur est affiché en haut à gauche

     #Etape 030: Verification et validation de la demande de recrutement par le rôle RH_Admin
     When    l'utilisateur clique sur espace-RH
      And    l utilisateur clique sur la notification de demande de validation
      And    l utilisateur clique sur a valider
      And    wait (valeur)
     Then    verifier que le premier libelle dans la liste "Test automatique"
      And    verifier que la premiere date de creation dans la liste aujourd hui
      And    verifier que le premier status dans la liste 'Orange' et l intitule "En cours"
      And    verifier que le premier initiateur dans la liste "TAKAGI Yasushi"
      And    verifier que la premiere ligne de candidature dans la liste "0"
      And    verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And    verifier que le premier lieu dans la liste est "Ariana"
      And    verifier que la premiere ligne de publiee n est pas cochee
     When    l utilisateur clique sur l icone voir historique
     Then    verifier que l'initiateur est "Yasushi TAKAGI"
      And    verifier que la date de debut est aujourd hui
      And    verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And    verifier que la premiere date de debut dans le tableau est aujourd hui
      And    verifier que la premiere date de fin dans le tableau est aujourd hui
      And    verifier que la premiere decision dans le tableau est "Acceptée" et la couleur est Vert
      And    verifier que le premier commentaire est "Validation N+1"
      And    verifier que le second validateur est "Ren Honjo"
      And    verifier que la seconde date de debut dans le tableau est aujourd hui
      And    verifier que la seconde date de fin est aujourd'hui
      And    verifier que la seconde  decision est "Acceptée" et la couleur est Vert
      And    verifier que le second commentaire est "Validation N+2"
      And    verifier que le troisieme validateur est "Shin'Ichi Okazaki"
      And    verifier que la troisieme date de debut dans le tableau est aujourd hui
      And    verifier que la troisieme date de fin est aujourd hui
      And    verifier que la troisieme  decision est "Acceptée" et la couleur est Vert
      And    verifier que le troisieme commentaire est "Validation Role RH_Recruitment"
      And    verifier que le quatrieme validateur est "Shin'Ichi Okazaki"
      And    verifier que la quatrieme date de debut dans le tableau est aujourd hui
      And    verifier que la quatrieme date de fin est vide
      And    verifier que la quatrieme  decision est vide
      And    verifier que le quatrieme commentaire est vide
     When    l utilisateur clique sur le bouton fermer
      And    l utilisateur clique sur le bouton editer
     Then    verifier que l intitule est "Test automatique"
      And    verifier que la date de création est aujourd hui
      And    verifier que le statut de la demande  est "En cours"
      And    verifier que l initiateur est "Yasushi TAKAGI"
      And    verifier que l effectif a couvrir est "2"
      And    verifier que le responsable de recrutement est vide
      And    verifier que a pourvoir le est vide
      And    verifier que la cible est "Interne" et "Externe"
      And    verifier que le lieu est "Ariana"
      And    verifier que le contrat est "CDI"
      And    verifier que l emploi associe est "CM Chief RH"
      And    verifier que le poste associe est "CM Collaborateur Buisness Partner"
      And    verifier que le champs Mission est "Mission Test automatique"
      And    verifier que le champs Profil/Atouts est "Profil Test automatique"
      And    verifier que le champs Justification de la demande est "Justification Test automatique"
      And    verifier que la devise est "Dinar tunisien"
      And    verifier que le champs Salaire est "2000"
      And    verifier que le champs  Bonus est "1000"
      And    verifier que le champs Autres est "1500"
      And    verifier que le salaire annuel est "23500"
      And    verifier que la case budgetise est coche
      And    verifier que le budget est "24000"
      And    verifier que le montant "500" s affiche a droite
     When    l utilisateur saisie "Validation Role RH_Admin" dans le champs commentaire
      And    l utilisateur choisie l option Valider dans la liste Actions
      And    l utilisateur clique sur envoyer
      And    wait (valeur)
     Then    verifier le permier libellé n est pas Test automatique
     When    l utilisateur clique sur toutes les offres
      And    wait (valeur)
     Then    verifier que le premier libelle dans la liste "Test automatique"
      And    verifier que la premiere date de creation dans la liste aujourd hui
      And    verifier que le premier status dans la liste 'Vert' et l intitule "Validée"
      And    verifier que le premier initiateur dans la liste "TAKAGI Yasushi"
      And    verifier que la premiere ligne de candidature dans la liste "0"
      And    verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And    verifier que le premier lieu dans la liste est "Ariana"
      And    verifier que la premiere ligne de publiee n est pas cochee
     When    l utilisateur clique sur voir historique
     Then    verifier que l initiateur est "Yasushi TAKAGI"
      And    verifier que la date de debut est aujourd hui
      And    verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And    verifier que la premiere date de debut dans le tableau est aujourd hui
      And    verifier que la premiere date de fin dans le tableau est aujourd hui
      And    verifier que la premiere decision dans le tableau est "Acceptée" et la couleur est Vert
      And    verifier que le premier commentaire est "Validation N+1"
      And    verifier que le second validateur est "Ren Honjo"
      And    verifier que la seconde date de debut dans le tableau est aujourd hui
      And    verifier que la seconde date de fin est aujourd'hui
      And    verifier que la seconde  decision est "Acceptée" et la couleur est Vert
      And    verifier que le second commentaire est "Validation N+2"
      And    verifier que le troisieme validateur est "Shin'Ichi OKAZAKI"
      And    verifier que la troisieme date de debut dans le tableau est aujourd hui
      And    verifier que la troisieme date de fin est aujourd hui
      And    verifier que la troisieme decision est "Acceptée" et la couleur est Vert
      And    verifier que le troisieme commentaire est "Validation Role RH_Recruitment"
      And    verifier que le quatrieme validateur est "Kyosuke Takakura"
      And    verifier que la quatrieme date de debut dans le tableau est aujourd hui
      And    verifier que la quatrieme date de fin est aujourd hui
      And    verifier que la quatrieme decision est "Acceptée" et la couleur est Vert
      And    verifier que le quatrieme commentaire est "Validation Role RH_Admin"
     When    l utilisateur clique sur le bouton fermer

      #Etape 031: Déconnexion
      And   l utilisateur clique sur le bouton Configuration
      And   l'utilisateur clique sur le bouton Déconnexion
      And   wait (valeur)
     Then   la page de connexion est affiche

     #Etape 032: Connexion avec le profil manager
     When   l'utilisateur "yasushitakagi.cm@gmail.com" est connecté
     Then   le nom de l'utilisateur est affiché en haut à gauche

     #Etape 033: Vérification de la reception de la notification de validation RH par le manager
      And   l utilisateur clique sur la notification de validation de la demande de recrutement
     Then   verifier que le premier libelle dans la liste "Test automatique"
      And   verifier que la premiere date de creation dans la liste aujourd hui
      And   verifier que le premier status dans la liste 'Vert' et l intitule "Validée"
      And   verifier que la premiere ligne de l effectif a couvrir dans la liste "2"
      And   verifier que le premier lieu dans la liste est "Ariana"
      And   verifier que la premiere ligne de publiee n est pas cochee
     When   l utilisateur clique sur voir historique
     Then   verifier que l initiateur est "Yasushi TAKAGI"
      And   verifier que la date de debut est aujourd hui
      And   verifier que la date de fin est aujourd hui
      And   verifier que le premier validateur dans le tableau est "Nobuo TERASHIMA"
      And   verifier que la premiere date de debut dans le tableau est aujourd hui
      And   verifier que la premiere date de fin dans le tableau est aujourd hui
      And   verifier que la premiere decision dans le tableau est "Acceptée" et la couleur est Vert
      And   verifier que le premier commentaire est "Validation N+1"
      And   verifier que le second validateur est "Ren Honjo"
      And   verifier que la seconde date de debut dans le tableau est aujourd hui
      And   verifier que la seconde date de fin est aujourd'hui
      And   verifier que la seconde  decision est "Acceptée" et la couleur est Vert
      And   verifier que le second commentaire est "Validation N+2"
      And   verifier que le troisieme validateur est "Shin'Ichi OKAZAKI"
      And   verifier que la troisieme date de debut dans le tableau est aujourd hui
      And   verifier que la troisieme date de fin est aujourd hui
      And   verifier que la troisieme decision est "Acceptée" et la couleur est Vert
      And   verifier que le troisieme commentaire est "Validation Role RH_Recruitment"
      And   verifier que le quatrieme validateur est "Kyosuke Takakura"
      And   verifier que la quatrieme date de debut dans le tableau est aujourd hui
      And   verifier que la quatrieme date de fin est aujourd hui
      And   verifier que la quatrieme decision est "Acceptée" et la couleur est Vert
      And   verifier que le quatrieme commentaire est "Validation Role RH_Admin"
     When   l utilisateur clique sur le bouton fermer