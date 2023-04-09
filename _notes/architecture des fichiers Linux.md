---
title: Architecture des fichiers Linux
subtitle:
author: Damien Belvèze
date:
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [linux]
---

# architecture

- **bin** est un dossier qui va contenir beaucoup de programmes et commandes qui peuvent s’exécuter (des fichiers BINaires donc) ;

- **dev** va contenir des dossiers particuliers qui vont permettre de gérer les périphériques : disque, clef USB, écran, etc ;

-**home** va contenir les dossiers d'utilisateurs. Par exemple /home/kyane est le dossier d'utilisateur de kyane, tandis que /home/clement est celui de clement ;

-**var** va contenir tout un tas de données variables : des messages du système (logs), du cache pour certains logiciels, etc.

-**etc** contient la plupart des fichiers de configurations.


# chemins

Les chemins relatifs sont ceux qui dépendent du contexte, et qui ne commence donc pas à la racine (donc pas par un "/")

../photos/vacances et photos/vacances sont des chemins relatifs. 

~/documents/photos/vacances ou home/user/documents/photos/vacances sont des chemins absolus (on part de la racine)





# Bibliographie
