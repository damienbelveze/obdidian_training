---
title: 
subtitle:
author: Damien Belvèze
date:
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [linux]
---

La très grande majorité des terminaux fonctionnent avec un système propriétaire, la très grande majorité des serveurs fonctionnent avec le système libre Linux : 

![](linux_servers.png)


# savoir de combien de mémoire on dispose sur le serveur : 

`free -h`

mémoire libre = non utilisée

mémoire disponible = mémoire pouvant être ponctuellement utilisée par les programmes pour en améliorer le fonctionnement. Cette mémoire peut être libérée rapidement

unité de mesure : 
- le mebioctet ou Mi parfois écrit Mio correspond à $2^{20}$ octets 
- le gibioctets ou Gi parfois écrit Gio correspond à   $2^{30}$ octets

# afficher les disques et les partitions

`sudo fdisk -l`


# Envoyer des fichiers par le protocole FTP

1. choisir un client FTP (pour Linux par exemple Filezilla) et l'installer
2. assurer la connexion de la manière suivante : 

Hôte : sftp://IPduserveur

Identifiant : identifiant de connexion au serveur (par défaut, si on a chargé ubuntu comme OS pour ce serveur, l'identifiant sera ubuntu)

Mot de passe : mot de passe permettant d'activer la clé privée qui permet la connexion en ssh au serveur

Port : 22





# Bibliographie
