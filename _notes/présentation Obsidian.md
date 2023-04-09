---
title: Comment prendre des notes avec la méthode Zettelkasten et Obsidian
subtitle: Atelier BU
date: 20210401
author: Damien Belvèze
affiliation: 
  Université de Rennes 1
  membre Actux
link-citation: true
bibliography: mylibrary.bib
biblio-style: csl\ieee.csl
tags: [obsidian]
---

#KnowledgeManagement

# Intro

présentation de la méthode [[Methode Zettelkasten]]

# notes hébergées en local

## sur un ordinateur, un serveur, un cloud

Pour moi j'héberge mes notes sur OneDrive, le cloud de Microsoft (licence acquise par Rennes 1)

## Possibilité de publier ses notes en ligne sur les serveurs d'Obsidian

Mais cela a un coût (module payant : 8$ / mois)

# notes rédigées en markdown

Les notes sont rédigées en markdown parce que ça permet de s'affranchir de la forme. On se focalise sur la structure du texte. On définira ensuite et après-coup et autant de fois qu'on voudra des styles pour un titre 1, titre 2, titre 3, etc, par exemple dans un fichier css lié.

Le markdown est souple et permet d'encapsuler du code, du LaTeX, etc. 

Le markdown est compatible avec tout format de sortie (PDF, HTML, LaTeX, ODT, Word, wiki, epub...)

Aucun problème pour intégrer une vidéo (juste copier-coller l'iframe)

<iframe width="560" height="315" src="https://www.youtube.com/embed/QgbLb6QCK88" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Mais pour un tweet, ça n'est pas encore ça

<blockquote class="twitter-tweet"><p lang="und" dir="ltr"><a href="https://t.co/WEchy5gVDA">pic.twitter.com/WEchy5gVDA</a></p>&mdash; Memes Décentralisés 🥐 (@decentralises) <a href="https://twitter.com/decentralises/status/1377240168017637381?ref_src=twsrc%5Etfw">March 31, 2021</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>




Par contre, pour un PDF, pas de problème, un simple drag and drop suffit.

![[méthode PRISMA.pdf]]

## export

export en PDF très simple, mais le titre de la note ne s'affiche pas comme titre dans le document. 
Pour avoir un titre dans le PDF (et une page de titre en général), il faut passer par des utilitaires comme Pandoc.

# Une recherche aisée dans les notes 
Obsidian est un outil très ergonomique, qui ne demande pas de connaître un éditeur en particulier (contrairement à Org-roam qui est conçu pour des gens qui utilisent Org-mode avec Emacs)

## Chercher des notes

possibilité de chercher par titre de note, par expression, par tag, par proximité

titre de note : file:()
tag: tag:() ex tag:(biais-cognitifs)
proximité (même ligne) : file:(mot1 mot2)
ex. file:(humilité entretien)
path: accès aux fichiers (autres que les notes : css, dossiers, modeles )

## Visualiser les réseaux de notes

Comme pour les autres fonctions, le raccourci clavier pour la visualisation des notes est très simple à paramétrer.
Dans mon cas : 
Ctrl + G : visualiser tout le réseau
Ctrl + Shift + G : visualiser l'environnement de la note ouverte (on peut changer la profondeur de 1 à 6 degrés)
exemple avec PRISM


# Possibilité d'inclure du CSS

titres 1 et 2 en couleur (dans un fichier .css à la racine du Vault / répertoire Obsidian)

h1 { color: \#fe801a; }  
h2 { color: \#d79920; }
h3 { color: \#689d6a; }

Plus de code dispo sur [ce github](https://github.com/Dmitriy-Shulha/obsidian-css-snippets/tree/develop/Snippets)

# Compatible avec Zotero

![[S'affirmer Zoteromane.jpg]]

Il faut autoriser dans les paramètres l'utilisation de Plugins qui viennent de la communauté. 
Le plugin Citations est l'un de ces plugins. 
Il permet d'importer des références de [[Zotero]] dans un texte sur Obsidian (définir un raccourci clavier)[[@SnowdenPermanentrecord2019]]

Cela suppose :  
1. d'avoir chargé le plugin BetterBibTex dans Zotero
2. d'avoir fait un export de sa bibliothèque complète vers un fichier .bib (avec synchronisation) dans un répertoire
3. D'avoir indiqué dans les paramètres du plugin Citation d'Obsidian le chemin vers le fichier .bib pour que les références puissent y être puisées
4. D'avoir défini dans le Vault d'Obsidian un répertoire pour conserver ces références sous la forme de notes

Explications complètes sur [Focus](https://focus.univ-rennes1.fr/zotero/latex#s-lg-box-wrapper-18262956)








