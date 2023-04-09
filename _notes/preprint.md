---
title: Prépublications
subtitle: 
author: Damien Belvèze
date: 20210531
link_citations: true
aliases: [pré-publications, prépublications, preprints, prépublication]
tags: [communication_scientifique, publication_scientifique]
---

Etude déposée sur un serveur de pré-publications en attente d'être [[Révision par les pairs|revue par les pairs]] et publiée par une revue scientifique. 

Le premier serveur de prépublication est [Arxiv](https://arxiv.org) et a été mis en place à l'Université de Los alamos en 1990 pour recueillir des preprints dans les domaines des mathématiques et de la Physique.

# statut et rôle du préprint dans la [[communication scientifique]]

## encouragements institutionnels

Les institutions de recherche encouragent leurs chercheurs à déposer des preprints : 
- pour attester précocémment de la paternité de leur découverte (et éviter l'abus de propriété intellectuelle)
- pour accélérer la communication scientifique

Moyennant en quoi, elles recommandent :
- d'aider à évaluer les preprints
- de bien manifester qu'il s'agit d'un preprint et non d'une publication.
- de soumettre les preprints à la révision d'autrui, par exemple à travers la communauté de [peercommunityin](https://peercommunityin.org/)[[@bassinetArticleProcessingCharges2022]]


## de la prépublication à la publication : quelle réelle plus-value ?


Déposer un preprint sur un serveur comme ArXiv, MedRxiv, BioRxiv, Cogprints, etc. permet d'accélérer la [[communication scientifique]]quand l'évaluation par les pairs organisée par les éditeurs scientifiques peut prendre plusieurs mois (en moyenne 6 mois en Sciences Dures).
Le preprint peu à peu prend une place de plus importante à mesure que les réticences des éditeurs -au départ restrictives- cèdent (cf. politiques des éditeurs sur Sherpa Romeo) face aux besoins de communication rapide des résultats de la science qui nourrissent l'avancée de l'open access.
Les éditeurs peuvent faire valoir le fait que ces copies des articles qui leur sont soumis n'ont pas été revus par les pairs et ne présentent pas les garanties suffisantes que donnent par exemple une étude revue et publiée. Toutefois, une étude de 2016 montre qu'en moyenne entre le texte soumis à l'éditeur et déposé sur un serveur de preprint et la version finale publiée, il y a très peu de changements ce qui revient à interroger et relativiser l'apport du peer-reviewing[[@KleinComparingPublishedScientific2016]]. 

L'étude porte au final sur 12 202 articles pour lesquels la version déposée sur Arxiv a un DOI qui matche avec une version publiée en ligne chez un éditeur et pour lesquels il a été possible en interrogeant les API d'ArXiv d'un côté et de Crossref de l'autre d'obtenir les PDF de chaque article.  L'analyse a été faite au moyen de la bibliothèque GROBID (utilisée également dans HAL pour extraire les métadonnées d'un PDF). En raison des lacunes de GROBID, il a été possible de comparer directement 10900 titres et abstracts et 9399 textes d'articles (les illustrations ne pouvant pas être comprises dans la comparaison). L'analyse a été faite en prenant comme mesure de distance entre les deux textes la [[mesure de Levenshtein]]. 

Cette étude a tout de même quelques limitations: 

[[biais de l'étude]]

- incertitude quant au statut du preprint analysé (pas sûr qu'il s'agisse du texte soumis). par ailleurs ce preprint a pu déjà être modifié dans le cadre d'une révision par les pairs antérieure qui n'a pas abouti à une publication. 
- limitation de l'échantillon (10 000 sur 1 500 000 disponibles sur ArXiv en 2015)
- biais dans l'échantillon. Si ces preprints ont fini par être publiés, c'est qu'il n'étaient pas si mauvais que ça à la base et ne nécessitaient peut-être que peu d'interventions pour les rendre publiables. L'étude qui compare des textes publiés avec leurs versions prépublication ne prend pas en compte le travail de filtrage des preprints opéré par les reviewers qui écartent les textes qui ne sont pas au niveau d'une publication.
- comparaison uniquement automatique des textes, pas d'intervention humaine.
- le principe de "plus le texte est changé, plus le travail des [[Révision par les pairs|reviewers]] est important" n'est pas examiné. Une erreur numérique peut être extrèmement importante, mais sa correction n'occupe cependant que peut de caractères (parfois un seul : une virgule ou un chiffre) (voir [commentaire](https://pubpeer.com/publications/06926696F634FDDECCC5DCAA8F1CBC) de ScholarlyKitchen sur Pubpeer)

Une autre étude portant sur les changements entre les différentes versions de preprint et la version publiée d'études parues sur le COVID (changements mesurés sur des variables comme la [[p-value]] ou l'effet (effect estimate) et classés comme importants ou non par une intervention humaine) est parue en décembre 2020[[@OikonomidiChangesevidencestudies2020]]. 


# rôle des preprints dans la communication scientifique durant la pandémie du COVID-19

