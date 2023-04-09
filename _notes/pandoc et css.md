---
title: utiliser pandoc avec une feuille de style
subtitle:
author: Damien Belvèze
date: 30-10-2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [pandoc with css]
tags: [pandoc, chaîne éditoriale]
---

``
pandoc -f markdown -t html D:\Home\dbelveze\Desktop\document.md -o document7.html --css=Rennes1.css --standalone
``

avec la CSS très simple : 

h1 {
    color: red;
}

montrer le principe en changeant *red* par *blue*



# bibliographie

