---
title: styles CSL
subtitle:
author: Damien Belvèze
date: 11-04-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [code, programmation]
---

format de style définissant la présentation d'une référence bibliographique (format articulé au format bibtex). Le CSL est un format implémenté par la totalité des gestionnaires de références bibliographiques comme [[Zotero]]

# modification de styles CSL

![[modification_style.pdf]]



# exemple de modification

style de départ : 

Sovrano, V. A., Bisazza, A. & Vallortigara, G. Lateralization of response to social stimuli in fishes: A comparison between different methods and species. _Physiology & Behavior_**74**, 237–244 (2001).

style de destination : 

SOVRANO, Valeria Anna. , BISAZZA Angelo & VALLORTIGARA Giorgio (2001). Lateralization of Response to Social Stimuli in Fishes: A Comparison between different Methods and Species _Phys. Behav_ 74, 237-244

modification avec [Visual CSL Editor](https://editor.citationstyles.org/visualEditor/)

Pour trouver un style proche du style de destination, appliquer la forme de son style à la citation fournie par Visual CSL editor en exemple :  

MARES, Isabela. When, why, and how does social policy matter to employers? (2001) in _Varieties of capitalism_ 74, 237-244

![](search_style.PNG)

chercher le style Nature, éditer ce style. 

Modifier dans Info le titre et l'URL : 

Nature_modified
http://www.zotero.org/styles/nature_modified

### La partie Nom

modification dans la macro : 

Macro author > Names > Name | initialize with . > Disable

Distinguer Nom et prénom

Sous Name créer deux "name part"
A chacun attribuer l'attribut qui lui convient  : 1er name-part : family / 2ème name-part : given
Passer en majuscules le name-part "family" : cliquer sur *small caps*

### Le formatage de la date

entre parenthèses, juste après les noms d'auteur

Faire glisser (drag and drop) la macro issuance juste sous la macro author. 
Faire glisser la macro publisher sous la macro editor
Modifier la macro publisher 

### numéro

mettre en gras le numéro

macro volume : mettre en gras

Exporter et tester dans [[Zotero]].

[voir le style produit](nature_modified.csl)

# bibliographie

