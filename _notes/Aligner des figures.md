---
title: Comment aligner deux figures dans un document en Markdown
subtitle: Mettre en page un document avec Obsidian. 
author: Damien Belvèze
date: 05-02-2022
link_citations: true
header-includes: |
      \usepackage{graphicx}
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [programmation, latex, markdown]
---

Si LaTeX a une syntaxe que l'on met du temps à acquérir (contrairement au Markdown), il est vrai qu'on ne peut pas faire ce que l'on veut avec le Markdown. 
Notamment si l'on envisage une sortie en PDF de son document, il va falloir appeler quelques packages et fonctions de LaTeX dans son texte rédigé en markdown pour réaliser certaines mises en page. 
Un bon exemple est l'alignement des figures.
Avec Markdown, il est inenvisageable de créer un tableau à une ligne et deux colonnes et de ranger les figures dedans : elles ne s'afficheront pas, ni dans la prévisualisation, ni au final dans le document PDF issu de la conversion avec Pandoc.
Pour cela, il va falloir recourir au LaTeX et précisément au package *graphicx*

# aligner des figures avec LaTeX

le code LaTeX crée à l'endroit voulu (\[h\]) une figure qui comporte deux minipages centrées (largeur de chacune = 40% de la page)
Dans ces deux minipages, on fait figurer deux figures dont la largeur est fixée à 6cm (possibilité de définir une échelle par rapport à la taille originale de l'image) : \[scale=0,5\] va diviser la taille de l'image par deux dans le document de sortie.



\begin{figure}[!h]
\begin{minipage}{.4\linewidth}
    \begin{center}
       \includegraphics[width=6cm]{images/drake1.png}
       \caption{c'est facile, mais on sait pas ce qu'on fait}
    \end{center}
\end{minipage}
\hfill
\begin{minipage}{.4\linewidth}
    \begin{center}
       \includegraphics[width=6cm]{images/drake2.png}
       \caption{c'est dur au début, mais on finit par savoir ce qu'on fait}
    \end{center}
\end{minipage}
\end{figure}

``````latex
\begin{figure}[!h]
\begin{minipage}{.4\linewidth}
    \begin{center}
       \includegraphics[width=6cm]{images/drake1.png}
       \caption{c'est facile, mais on sait pas ce qu'on fait}
    \end{center}
\end{minipage}
\hfill
\begin{minipage}{.4\linewidth}
    \begin{center}
       \includegraphics[width=6cm]{images/drake2.png}
       \caption{c'est dur au début, mais on finit par savoir ce qu'on fait}
    \end{center}
\end{minipage}
\end{figure}
``````

# le package graphicx

cet alignement est possible grâce au package LaTeX Graphicx qu'on peut charger de deux manières dans le préambule YAML : 

``````yaml
header-includes: |
      \usepackage{graphicx}
``````

ou plus simplement : 

``````yaml
graphics: true

``````


