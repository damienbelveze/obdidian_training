---
title: déployer un site sur github
subtitle:
author: Damien Belvèze
date: 06-02-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [github-pages]
tags: [programmation, git]
---

# créer un repo
créer sur github un repo avec la forme : 

\[Owner\]\[projet\].github.io

avec [[Git|git]], créer dans ce repo en local un fichier *index.html* et l'envoyer sur le repo en remote

sur github, aller dans Settings > Pages

# utiliser les pages Github

Dans *Source* Sélectionner *branch* (*None* est par défaut)

Choisir un thème (obligatoire)

Le choix du thème entraîne la construction (build) et le déploiement (deploy) du site. 

Pour suivre ces deux étapes, retourner sur le dashboard du repo, sélectionner *action*

Il faut en moyenne 30 secondes pour construire le site et 20 secondes pour le déployer. 
Si ces deux étapes se terminent par une erreur, cliquer sur build pour voir de quelle erreur il s'agit. 

![erreur de construction du site](build_issue.png)

Dans ce cas, c'était le formatage de la date dans le préambule d'un fichier en markdown qui empêchait le déploiement du site. 

Si tout s'est bien passé, le site est désormais accessible à l'adresse : **projet.github.io**

# bibliographie

