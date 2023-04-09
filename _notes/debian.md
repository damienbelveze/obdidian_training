---
title: debian
subtitle:
author: Damien Belvèze
date: 06-04-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [linux]
---



sur 500 giga sur le SSD

syst : 30 gigas
Latex prend déjà 5 gigas en soi dans la partition system


swap : 16 gigas

./ = 30 gigas (volume logique)




home : 400 gigas

laisser 50 gigas non alloués : ça laisse de la place pour avoir une machine virtuelle

/dev/sda1 -> 1giga -> boot 
       /sda2   -> 499 gigas  -> chiffré
	   partitionnement de la version chiffrée en déchiffrée
	     /sda2-crypt -lvm
	     /dev/stockage/swapfs 16 giga -> swap
		                          /rootfs 30 giga
								  /homefs : 400 gb/home
								  (vide) : 50 gb
								  
								
								  





# bibliographie

