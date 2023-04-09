---
title: 
subtitle:
author: Damien Belvèze
date: 01-12-2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: []
---

pandoc "D:\Home\dbelveze\OneDrive - Université de Rennes 1\notes\Notes personnelles\XXXXXXXXXX.md" --bibliography=mylibrary.bib --csl=.\csl\nature.csl --pdf-engine=xelatex --citeproc -f markdown+smart -o mypdf\XXXXXXXXXXX.pdf

Convertir un document markdown en html en utilisant une feuille de style 

pandoc  -s document.md -c feuille.css -o document.html

-s s'impose quand il faut obtenir un fichier avec la compilation de plusieurs fichiers (ici une feuille de style et un texte en markdown)

-s est l'équivalent de --standalone

Pour que le bloc [[YAML]] soit pris en compte dans une conversion vers le HTML, il faut recourir au -s dans la ligne de commande. 

-c est suivi par le nom de fichier de la [[feuille de style]]

autres arguments : 

-f et -t désignent les formats d'entrée et de sortie. 

Obtenir un fichier en markdown depuis une page web en ligne : 

`pandoc -f html -t markdown https://ateliers-du-midi.univ-rennes1.fr/les-ateliers-de-la-bu -o pageweb.md`


extraire des références d'un document en markdown

Extraire des références d'un document en markdown pour constituer avec elles un document en format bibtex (https://fosstodon.org/@pandoc/109549882954402931)

Do you maintain one big [#BibLaTeX](https://mamot.fr/tags/BibLaTeX) database? Get the subset of just those entries required for an article with  
pandoc -L getbib.lua paper.md -t biblatex -o paper.bib  
where getbib.lua contains

function Pandoc(d)  
d.meta.references = pandoc.utils.references(d)  
d.meta.bibliography = nil  
return d  
end

[#pandoc](https://mamot.fr/tags/pandoc) [#LuaFilter](https://mamot.fr/tags/LuaFilter) [#BibTeX](https://mamot.fr/tags/BibTeX) [#BibLaTeX](https://mamot.fr/tags/BibLaTeX)



# bibliographie

