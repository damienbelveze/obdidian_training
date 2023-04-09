---
title: mettre à jour la version de son système d'exploitation
subtitle: 
author: Damien Belvèze
date: 17/07/2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [OS upgrade, version upgrade]
tags: [linux]
---


# Linux

## Ubuntu

1. Mettre à jour l'ensemble des paquets
2. Mettre à jour la liste des paquets
3. Installer la version supérieure

``
sudo apt update
sudo apt upgrade
sudo apt dist-upgrade

``

vérifier que le fichier /et/update-manager/release-updrades se termine prompt=normal

``
cat  /et/update-manager/release-updrades

``

Installer la version supérieure :

``sudo do-release-upgrade``

Si ça ne fonctionne pas, c'est que certains paquets n'ont pas été mis à jour. Revenir en arrière (sudo apt dist-upgrade) et vérifier que la mise à jour n'a pas laissé des paquets non mis à jour. Si c'est le cas, mettre à jour chaque paquet individuellement

``sudo apt upgrade [nom du paquet]``

Le processus peut durer plusieurs heures







# Bibliographie
