---
title: Open Refine
subtitle:
author: Damien Belvèze
date: 17-11-2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [données_recherche, traitement_données]
---

conçu au départ par Google, le code est désormais ouvert et disponible à tous sous la forme d'un programme à exécuter. 
OpenRefine permet de nettoyer, éditer, aligner ses données

# croiser deux tableaux à partir d'une valeur commune

Soit un tableau intitulé especes.csv et un autre areas.csv
Le premier tableau contient une colonne LOCATION (norme iso3 pour les noms de pays : Australie = AUS, Allemagne = DEU) et une colonne especes (pourcentage d'espèces menacées sur l'ensemble des espèces visibles)
Le second tableau contient la même colonne LOCATION mais avec une quinzaine de pays en plus) et une colonne surfaces qui indique le pourcentage des surfaces protégées. 

Pour aligner les données du deuxième tableau sur celles du premier tableau (en excluant la quinzaine de données manquantes dans le premier)

ouvrir OpenRefine
importer les deux tableau et pour chacun d'eux crer un projet (nommer ces deux projets especes et areas par exemple)
Aller sur le projet especes, dérouler le menu sous LOCATION
Choisir l'option Edit Column > Add column based on this column
entrer le nom de la colonne qui va être créée (par exemple surfaces si on souhaite garder un entête identitique à celui du projet source)
entrer les valeurs selon le modèle suivant : 

cell.cross("projet joint","colonne pivot").cells\[nom de la colonne à joindre\].value\[0\]

Cela donne dans notre contexte cell.cross("areas","LOCATION").cells\["surfaces"\].value\[0\]

<iframe width="560" height="315" src="https://www.youtube.com/embed/002hYv3Nbp8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>





# bibliographie

