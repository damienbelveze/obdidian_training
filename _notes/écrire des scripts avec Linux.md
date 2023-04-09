---
title: 
subtitle:
author: Damien Belvèze
date:
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [linux, programmation]
---


Lorsque l'on écrit des scripts sous Linux, la convention veut que l'on utilise l'extension .sh (ou bien aucune extension) pour bien identifier que c'est un fichier visant à être exécuté. Ce n'est qu'une convention, et non une contrainte technique.

dans un fichier premierscript.sh écrire la commande suivante :

`echo "hello world"`

donner les droits d'exécution au script

`chmod +x premierscript.sh`(voir [[Gestion des utilisateurs sous Linux#changer les droits des utilisateurs et des groupes]])

exécuter le script : 

`|./premierscript.sh`

par convention en indique quel shell utiliser pour lancer le script (cette ligne s'appelle un shebang)

Exemple de shebang : `#!/bin/bash`

utiliser des variables

définir une variable : 

`nom="Bayard"
echo $nom` renvoie Bayard

possibilité de récupérer le résultat d'une commande comme variable !

`resultat=$(ls -l script.sh)
echo $resultat`

Paramètres de script : variables qui seront utilisables dans le script

soit le script suivant (secondscript.sh): 

`#!/bin/bash

echo "Bonjour" $1 $2`

si je lance ce script en ajoutant des paramètres

`./secondscript.sh dupond dupont`

j'obtiens : Bonjour dupond dupont






# Bibliographie
