---
title: Gestion des utilisateurs
subtitle: commandes Linux
author: Damien Belvèze
date: 19/07/2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [linux]
---

notes prises lors du cours de Bonnet/Pichou/Lima 


# créer, supprimer des utilisateurs et des groupes

UID : identifiant d'un utilisateur
GID : identifiant d'un groupe

par défaut quand on crée un groupe on crée un utilisateur du même nom que le groupe. 

afficher les uid des utilisateurs (personnes ou machines) d'un ordinateur : 

`cat /etc/passwd`

dbelveze:x:1000:1000:dbelveze,,,:/home/dbelveze:/bin/bash

L'utilisateur dbelveze a comme UID 1000

on peut afficher l'UID de l'utilisateur avec lequel on est connecté (et les groupes dont il fait partie avec la commande `ìd`)

Sous Linux, le superutilisateur qui règles les droits des utilisateurs est *root*

pour lancer une commande en tant que superutilisateur, utiliser `sudo`

![](sudoer.jpg)

Pour ouvrir une consolle root  `sudo -i` permet de passer plusieurs commandes sans avoir à utiliser à chaque fois le préfixe sudo

Afficher les mots de passe des utilisateurs demande une élévation de privilège : 

`sudo cat /etc/shadow`

créer un utilisateur

`sudo adduser nomutilisateur`

créer un groupe d'utilisateur

Lorsqu'on crée un utilisateur, celui-ci se retrouve d'office dans un groupe du même nom. Supprimer un utilisateur ne supprime pas forcément le groupe créé à l'occasion de la création de l'utilisateur. 

Pour créer un groupe sans utilisateur : 

`sudo addgroup nomdugroupe`

créer un utilisateur en modifiant le home par défaut ou en attribuant un UID de son choix : 

` sudo adduser --home /usr/etc/alice alice`

` sudo adduser --uid 843 alice`

ajouter un utilisateur à un groupe

`sudo usermod -aG nouveaugroupe utilisateur`


se substituer à un utilisateur

`su user`

supprimer un utilisateur (et son home)

`sudo deluser --remove-home nomutilisateur`

supprimer un groupe

`sudo delgroup nomdugroupe`


# afficher les droits des utilisateurs

Sous Linux, chaque dossier et chaque fichier :

- appartient à un utilisateur et à un groupe ;
- possède des droits. 

Ces droits se divisent en trois :

-  Les droits pour l'utilisateur propriétaire
- Les droits pour les utilisateurs membres du groupe propriétaire
- Les droits pour tous les autres utilisateurs


afficher les droits pour un utilisateur. Voir [[Linux commandes de base#Lister les fichiers|commande]] `ls -al`

drwxrwxr-x 2 dbelveze dbelveze 4096 déc.  23  2020 Stories

d= il s'agit d'un dossier
sur lequel l'utilisateur dbelveze, unique membre du groupe dbelveze a les droits suivants : 


**r (read) : lire le contenu d'un fichier (exécuter more par exemple) ou d'un dossier (ls)

w (write) : écrire un fichier (nano), écrire dans un dossier (touch)

x (execute) : exécuter un fichier, entrer dans un dossier (cd)**


ce dossier comporte 2 éléments

et les utlisateurs du groupe dbelveze ont les mêmes droits que l'utilisateur dbelveze

la taille en octets du dossier est 4096 et ce dernier a été modifié pour la dernière fois le 23 décembre 2020

le nom du dossier est Stories

-rw-rw-r-- 1 stc   www   31691 avril  2 10:11 test.jpg

l'utilisateur stc et les membres du groupe www peuvent lire et écrire le fichier test.jpg modifié pour la dernière fois le 2 avril à 10h11 et dont la taille est 31691 octets. Les autres utilisateurs peuvent seulement le lire.


# changer les droits des utilisateurs et des groupes

cela se fait avec la commande `chmod`

suivi de u (user), g (groupe), o (other)
suivi d'un signe : 
= fixe les droits aux droits suivants
- enlève les droits suivants
+ ajoute les droits suivants

`chmod o+rw document.txt`

ajoute les droits de lecture et d'écriture sur le fichier document.txt aux membres extérieurs au groupe

`chmod g-w document.txt`

enlève les droits d'écriture aux membres du groupe (les conserve au propriétaire du groupe)

pour savoir à chaque fois quels droits sont paramétrés pour un document donné, utiliser la commande `ls -l`

On peut fixer aussi les droits avec un nombre à trois chiffres :

premier chiffre = droit des utilisateurs propriétaires du groupe
deuxième chiffre = droit des membres du groupe
troisième chiffre = droit des personnes extérieures au groupe

r(ead) vaut 4
w(rite) vaut 2
(e)x(ecute) vaut 1

`chmod 700 document.txt` donne : 

les droits rwx (écriture, lecture, exécution) au propriétaire
aucun droit aux membres du groupe, aucun droit aux membres extérieurs au groupe

`chmod 666 document.txt` donne les droits de lecture et d'écriture à tout le monde sur le fichier document.txt

changer la propriété d'un document

`chown user:group document.txt`

chown dbelveze:dbelveze document.txt : donne la propriété de document.txt à dbelveze








# Bibliographie
