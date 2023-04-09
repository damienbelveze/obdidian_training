---
title: BGP
subtitle:
author: Damien Belvèze
date: 26-03-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [border gateway protocol]
tags: []
---

Protocole de connexion des réseaux propres à internet. 
Ces connexions au moyen de plateformes de peering (comme France-IX) en fonction d'accords commerciaux ou politiques. 

# le trajet d'une requête

passage d'un AS (autonomous system) à un autre. 
pour tracer la route d'une requête (machine client vers serveur à travers les différents réseaux) on peut utiliser la commande traceroute (Linux) ou tracert(windows)

````
C:\Users\dbelveze>tracert lemonde.fr

Détermination de l’itinéraire vers lemonde.fr [151.101.2.137]
avec un maximum de 30 sauts :

  1     1 ms     1 ms     1 ms  livebox.home [192.168.1.1]
  2     3 ms     5 ms     3 ms  80.10.253.17
  3     3 ms     2 ms     5 ms  ae97-0.ncren102.rbci.orange.net [193.251.108.94]
  4    10 ms    17 ms     7 ms  ae43-0.niidf302.rbci.orange.net [193.252.159.161]
  5     8 ms     8 ms     9 ms  ae40-0.niidf301.rbci.orange.net [193.252.103.37]
  6     8 ms     *        *     81.253.184.6
  7     7 ms     8 ms     9 ms  ae-26.a00.parsfr05.fr.bb.gin.ntt.net [129.250.66.141]
  8    11 ms     8 ms     8 ms  ae-14.r20.parsfr04.fr.bb.gin.ntt.net [129.250.2.150]
  9    10 ms    13 ms     8 ms  ae-0.a00.parsfr04.fr.bb.gin.ntt.net [129.250.3.252]
 10     8 ms     8 ms     8 ms  185.84.18.130
 11     7 ms     7 ms     8 ms  151.101.2.137

Itinéraire déterminé.
````

99% des requêtes transitent par des [[câbles sous-marins]] (1% via des satellites)

# points de connexion et internet souverain

Les pays qui surveillent le plus le traffic sur le web s'assurent du minimum de points de connexion entre les réseaux nationaux et les réseaux internationaux. En Iran, il n'y a que 4 points de connexion entre ces deux types de réseau. A rebours, le réseau russe plus ancien n'a pas pensé pour être centralisé et entretient un bien plus grand nombre de connexions avec les réseaux étrangers ce qui rend l'internet souverain souhaité par le pouvoir dictatorial de Poutine plus compliqué à mettre en place que son équivalent indien, iranien ou chinois ([[@marangeGuerresInformationEre2021]], p76). 

# bibliographie

