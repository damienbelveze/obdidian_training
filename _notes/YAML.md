---
title: YAML
subtitle: A quoi sert le pavé YAML
author: Damien Belvèze
date: 21-04-2021
link_citations: true
aliases: []
---

Acronyme de Yet Another Markup Language. 
Format de représentation des données : 

```
---
title: évaluer l'information à l'ère des fake-news
subtitle: présentation CFCB
author: Damien Belvèze
affiliation: Université de Rennes 1
toc: true
toc-title: Plan
bibliography: references.bib
biblio-style: ieee.csl
---
```

Pandoc traite l'entête Yaml notamment pour faire la page de titre. 
Cet entête peut faire partie du document ou bien lui être associé sous la forme d'un document indépendant en format .yaml 

Dans ce cas, la conversion peut se faire de la manière suivante : 

````
pandoc -s document1.md document2.md fichier.yaml -o book.html
````
(source : https://pandoc.org/MANUAL.html#pandocs-markdown)

[[identifiants pérennes Obsidian]] : Utiliser [[Python]] pour renommer un fichier d'après un identifiant compris dans l'entête YAML