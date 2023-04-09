---
title: commandes de base de Git
subtitle:
author: Damien Belvèze
date: 18-11-2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [git]
tags: [programmation, code]
---

télécharger Git
Créer un répertoire (repo(sitory)) sous github ou gitlab (on fera ici référence à Github)
aller à l'endroit où l'on veut télécharger le répertoire, MAJ+clic droit > ouvrir git bash here

![](git_bash_here.png)

dans ce terminal, pour coller des expressions, utiliser la touche inser

# gérer les fichiers d'un repo
## cloner un repo

Le Ctrl+V ne fonctionne pas dans Git bash, on utilise Shift+Inser.  Les nouveaux ordis portables ont deux touches inser, la bonne est le 0 du clavier numérique (quand celui-ci est désactivé)

télécharger le répertoire vide créé

``````git
git clone repertoire.git
``````

## initialiser le repo et ajouter des fichiers au track

pour initialiser ce répertoire comme étant un répertoire git (va ajouter un fichier caché .git) : 
``````
git init
``````

créer, modifier les fichiers. 
Pour visualiser les fichiers qui ont été créés/modifiés et ne sont pas encore dans le track de git : 
``````
git status
``````
ces fichiers à ajouter apparaissent en rouge

pour ajouter un fichier

``````
git add nomdufichier
``````
pour ajouter tous les fichiers créés ou toutes les modifications de fichiers
``````
git add -A 
``````

## commettre et pousser (commit & pull)

Pour préparer les fichier à l'envoi dans le répertoire distant (commettre)
``````
git commit -m "message indiquant la création ou la modification réalisée"
``````
Il est nécessaire de commettre avant d'envoyer des fichiers / modifications vers le répertoire

pour envoyer les modifs vers le répertoire
``````
git push -u origin
``````
pour lier un répertoire git à un répertoire
``````
git remote add origin liendurepository.git
``````
pour supprimer un fichier du track
``````
git rm fichier
``````

## gestion des branches

pour créer une branche à partir d'une branche existante : 
``````
git branch nomdelabrancheàcréer nomdelabrancheexistante
``````
une fois cette branche créée, l'envoyer sur le répertoire
``````
git push -u origin branchecréée
``````

## gestion des accès

Depuis 2021, l'accès en mot de passe seul depuis un repo en local n'est plus disponible pour des raisons de sécurité. 
Les deux modes d'accès possibles sont les suivants : 

### ssh

en ssh (se créer une paire de clés ssh et envoyer la clé publique sur le repo)

### avec un jeton personnel

voir documentation [ici](https://docs.github.com/en/get-started/getting-started-with-git/managing-remote-repositories#switching-remote-urls-from-ssh-to-https)

### changer de mode

``````
git remote -v
``````
affiche le mode d'accès (ssh ou https (jeton personnel))

Pour passer en ssh : 

``````
git remote set-url origin git@github.com:USERNAME/REPOSITORY.git
``````

# fusionner deux branches

![](images/git_merge.png)






# bibliographie

