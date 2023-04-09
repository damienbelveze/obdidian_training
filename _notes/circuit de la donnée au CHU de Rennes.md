---
title: circuit de la donnée au CHU de Rennes
subtitle:
id: 202303171410_circuit de la donnée au CHU de Rennes
author: Damien Belvèze
date: 17-03-2023
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [données_recherche, méta_recherche]
---

  
Première étape : écriture du protocole (accompagnement par le CHU possible, aide technico-réglementaire, aide budgétisation, aide méthodologique)

  prise en charge RNID (recherche non-interventionnelle et sur données où travaille Claude Pellen)

Vérification de la qualification de l'étude.

On détaille le circuit des données : qui fait quoi et est-ce que c'est gratuit ou pas.

recherche conforme à MR004 de la [[CNIL]] ?

Si pas MR0004, est-ce que la recherche nécessité une autorisation CNIL

[AIPD](https://www.cnil.fr/fr/RGPD-analyse-impact-protection-des-donnees-aipd) : analyse d'impact pour mesurer le risque résiduel pour les personnes ([[RGPD]])

Publication du projet sur la plateforme des données de santé

validation de la prise de responsabilité du projet CHU

optionnel : soumettre le projet à un comité d'éthique. 

AIPD / PGD 

On ne demande pas formellement de [[Plan de gestion des données|PGD]] mais il est plus ou moins inclus dans le document à remettre dans l'AIPD

Possibilité d'enregistrer le protocole sur [le site OSF](https://osf.io/)

Lors des admissions, les patients sont sollicités par formulaire pour savoir s'ils acceptent si leurs données de santé peuvent être exploitées. Cette déclaration suffit à la CNIL pour peu que les réutilisations soient qualifiées (quelle utilisation pour quelle étude)

RGPD : toute donnée produite impliquant la santé des individus doit être détruite avant 10 ans. 

autorisation de la CNIL nécessaire quand on ne peut pas informer les personnes et qu'on ne ne peut obtenir leur consentement.
Quand on veut utiliser des données du SNDS, on doit également soumettre un dossier de demande sur la plateforme des données de santé afin d'obtenir l'autorisation CNIL. 
Une fois que CESREES a émis un avis favorable, la recherche peut être entreprise.

problème des échantillons biologiques : on n'a pas le droit de les réutiliser si on n'a pas le droit de les avoir. Ces échantillons proviennent-ils d'une recherche en cours ou bien ont-ils été recueillis dans le cadre d'une bio-collection hors cadre recherche. Dans les deux cas, on n'est pas sur le même type d'autorisation. 

Analyses génétiques : nécessité d'informer les patients si des anomalies pouvant permettre de détecter des maladies à venir sont découvertes lors de la recherche.

Un entreprôt basé sur autorisation CNIL (eHop), basé sur le consentement, basé sur une autre autorisation CNIL

On a de plus en plus de demandes d'[[Anonymat|anonymisation]] des données (pour sortir des problématiques du RGPD). Mais cela requiert de construire un gros dossier à construire pour prouver qu'il n'y a pas de risque de réidentification. 

Décrire les méthodes d'anonymisation employées.
Il faut assi prendre en compte tout ce qui est de l'ordre de la métadonnée dans l'anonymisation (lieu, durée, titre significatif de l'étude doivent être supprimés)
3 critères : 
- ne permet pas l'individualisation d'une personne (pas de données personnelles susceptibles d'être identifiantes par croisement)
- non-corrélation : ne pas pouvoir apparier ce jeu de données avec un autre. 
- non-afférence  : on ne peut pas déduire des informations plus larges sur le jeu de données.
Analyse de risques : [[modèle de menace]] en lien avec la réidentification pour estimer la criticité des informations contenues dans le jeu de données. 

optimisation de la prise en charge : 

grand délai d'attente : 
relecture du protocole. 
**modèles de protocoles disponibles ?**

réutilisation de données monocentriques : pour un interne qui veut faire sa thèse, il faut être très rapide : toutes les données doivent rester au CHU de Rennes. 

Transmission par l'interne ou le médecin d'une checklist de mise en conformité à la Direction de la Recherche et de l'Innovation. Cela conditionne l'autorisation à démarrer le projet. 

Questions : 

où sont les données du CHU : 

soit dans eHOP, soit directement dans les dossiers médicaux des patients. 
il faut prendre du temps pour bâtir des requêtes correctes dans [eHOP](https://centrededonneescliniques.univ-rennes.fr/ehop-lentrepot-de-donnees-de-lhopital. 






