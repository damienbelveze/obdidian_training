---
title: note pour l'utilisation de veracrypt
date: 22 décembre 2020
aliases: [trucrypt, coffre fort numérique]
---

Veracrypt est une application de [[Chiffrement]] qui a remplacé **trucrypt**

pour la télécharger plusieurs solutions. A partir d'un répertoire (ppa)

| Commandes (Ubuntu) |
|:----|
|sudo add-apt-repository ppa:unit193/encryption|
|sudo apt update|
|sudo apt install veracrypt| 

suivre ensuite le [mode d'emploi](https://www.hkcfp.org.hk/Upload/Documents/EXIT/VeraCryptUserguide.pdf)

Création d'un volume chiffré avec Veracrypt

en ligne de commande :

veracrypt -t -c

si on ne souhaite pas cacher le dossier veracrypt dans une partition, choisir "1: normal"
insérer le lien vers le volume caché (par exemple ~/dbelveze/Bureau/coffre_fort )

indiquer ensuite la taille (292K minimum), pour 100 MB, taper 100[M]

choisir ensuite l'[[algorithme]] de chiffrement et l'algorithme de hachage (AES + SHA 512)

Choisir ensuite la fonction de formatage (FAT par exemple). Si le fichier choisi est déjà écrit, il sera effacé.

pim et chemin vers le fichier servant de clé : ne rien mettre (taper entrée)

entropie : taper une succession aléatoire de 320 touches et faire entrée.




