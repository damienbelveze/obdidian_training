---
title: BibTeX
subtitle:
author: Damien Belvèze
date: 02-02-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [bibex, BibTex]
tags: [programmation, édition_textes]
---

# LaTeX et BibTeX
## les instructions de base

compilation d'un document .tex dans TeXmaker en lien avec un document .bib

``````latex

\begin{document}


voici ma référence \cite{AlexEpistemicLearnedHelplessness2019}


\bibliography{cfcb}

\bibliographystyle{plain}


\end{document}

``````

cfcb = fichier cfcb.bib qui se trouve dans le même répertoire que le document .tex

![](latex_bibtex1.png)

Compilation (1 fois vers PdfLateX, 1 fois vers BibTex, 2 fois vers PdfLateX) : possibilité de paramétrer cela comme le mode de compilation rapide.

![](latex_bibtex2.png)

## autre possibilité : avec le package biblatex

``````latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}

\usepackage{biblatex}
\addbibresource{sample.bib}

\begin{document}
Let's cite! The Einstein's journal paper \cite{einstein} and the Dirac's 
book \cite{dirac} are physics related items. 

\printbibliography

\end{document}
``````


## appliquer d'autres styles bibliographiques

La liste des styles disponibles sans charger d'autres packages est [réduite](https://www.overleaf.com/learn/latex/Bibtex_bibliography_styles)


# bibliographie

