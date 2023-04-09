---
title: formater un disque
subtitle:
author: Damien Belvèze
date: 22-04-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [formatage]
tags: [commandes, linux, tails]
---

# formater une clé sur laquelle on a chargé un système live

## avec Windows

dans l'interpréteur de commandes de Windows : 

````shell
diskpart
list disk
````
choisir le disque, si c'est le disque 1 par exemple :

````shell
select disk 1
attributes clean disk readonly
clean
create partition primary
format fs = ntfs quick
assign
````
![](format_32.png)


## avec Linux

`lsblk`

cette commande affiche les partitions, repérer  la bonne, par exemple /dev/sdb1

`udo umount /dev/sdb1`

`mkfs.vfat -n CLE_VFAT /dev/sdb1`

faire la commande en root si ça ne marche pas. 



# bibliographie

