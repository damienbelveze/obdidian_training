---
title: déroulé de la formation
date: 11/04/2023
---

## Introduction

- tour de table  
- [[Obsidian pour la prise de notes|Panorama des usages possibles d'Obsidian]]
- Présentation de la [[Methode Zettelkasten]]

Créer un coffre avec Obsidian (suivre la démo)

## 1. premières notes avec Obsidian

lire rapidement le [texte suivant sur les libertés académiques](https://obsidian.dbelveze.fr/assets/libertés_académiques.odt)

Qu'avez-vous envie de retenir de ce texte ?
Quelles notes prendriez-vous après l'avoir lu ? 
Quels passages vous ont marqués ? 

Synthétisez trois éléments que vous a apportés cet article sous la forme de trois notes

Pourriez-vous faire un lien d'une note à une autre ? 

Visualisez les liens avec le graphe

## 2. prendre en main la syntaxe markdown


### Comment mettre en forme du texte en Markdown. 

Parcourez la note [[Rédiger ses notes en markdown]] pour prendre connaissance de cette syntaxe et de ce qu'elle permet de faire. 

Tester dans votre note l'italique, le gras, le surligné. 
faites une citation du texte en utilisant la balise correspondante. 

### ajouter une image

Créez dans votre coffre (répertoire) un dossier *Images*.
(il est préférable pour la gestion quotidienne de vos fichiers de séparer les notes en mardown et les images)

allez chercher une image de Fariba Adelkhak pour illustrer l'une de vos notes. 
Insérez la dans le dossier image nouvellement créé
utilisez la syntaxe- suivante : \!\[legende\]\(images/nomdefichierdelimage.png\)

Deux précautions à prendre : 

- Pour les conversions avec Pandoc, il vaut mieux que le chemin comporte le nom du dossier (*images*)
- laisser un saut de ligne entre le paragraphe et l'image, sinon cette image ne va pas correctement s'afficher et la légende ne s'affichera pas après la conversion (nous verrons dans la deuxième partie)


<p align="left">
	<img  src="/assets/390px_Fariba.jpg">
</p>

Pour en savoir plus sur la gestion des images, aller sur la note [gérer les images](gérer les images.html)

### ajouter un tableau

ajouter le tableau [importation de pommes](https://obsidian.dbelveze.fr/assets/importation_pommes.ods)

Au choix, rédiger ce tableau en markdown ou bien utiliser le service en ligne [Table2markdown](https://tabletomarkdown.com/)


## 3. Les plugins dans Obsidian

La richesse d'Obsidian tient au nombre en croissance rapide des plugins qui rendent cet outil adaptable à un grand nombre de tâches. 

### plugins par défaut et plugins communautaires

Il existe deux types de plugins : 

- Les plugins par défaut 
- Les plugins communautaires

Les premiers sont installés en même temps qu'Obsidian, il ne reste plus qu'à les activer si on souhaite s'en servir.

Les seconds nécessitent la **désactivation du mode sans échec** (aller dans les paramètres > plugins tiers > désactiver le mode sans échec).
A partir de là, pour trouver un plugin communautaire : 

- soit on passe par le catalogue des plugins depuis Obsidian (parcourir la liste des plugins communautaires)
- soit on va chercher le plugin sur github, là où il a été déposé par le concepteur. 

Quelque soit le type de plugin, on peut paramétrer leur utilisation dans les paramètres une fois qu'il a été installé et activé (dans les Paramètres, descendre jusqu'au menu *option des plugins*)

### Raccourcis clavier

Il est très utile de paramétrer des **raccourcis-clavier** pour chaque fonctionnalité appartenant ou non à un plugin. Cela fait gagner beaucoup de temps au quotidien
(paramètres > options > raccourcis-clavier ; chercher la fonctionnalité par son nom et lui associer une combinaison de touches ; par exemple créer un graphique local à partir de la note ouverte = shift+Ctrl+G).

### les plugins sont liés aux coffres

**chaque plugin chargé est associé à un coffre en particulier et si vous avez plusieurs coffres, il faudra charger à l'intérieur de chacun d'eux un même plugin**.

Cela se voit bien au niveau de l'arborescence Windows : le logiciel Obsidian est chargé par défaut au niveau du C:/Programmes, les coffres sont hébergés ailleurs (où l'utilisateur le souhaite), dans ces coffres, les plugins se trouvent sous .obsidian > plugins

Plus d'information sur les [[Les plugins par défaut]]


## 4. ajouter des citations

### notes en markdown depuis Zotero

Depuis la version 6 de Zotero, il est possible d'envoyer des notes prises dans Zotero vers Obsidian

(démonstration)

lien vers la note [[Annotations_systems_thinking]]

autre workflow possible: utiliser le plugin betterbibtex dans Zotero en lien avec le plugin Citations dans Obsidian

### le plugin Betterbibtex

Ce qui suit se fait à partir de Zotero. 

- Aller sur le [répertoire où se trouve le plugin](https://github.com/retorquere/zotero-better-bibtex/releases/tag/v6.7.71)
- télécharger le plugin et le charger dans Zotero (comme extension)

toutes les références de votre bibliothèque sont pourvues de clés qui vont permettre de les utiliser dans des éditeurs de texte comme Obsidian.

### le plugin Citations

Chercher dans les plugins communautaires le plugin Citations de John Gauthier.
charger le plugin et l'activer

Paramétrer le plugin en sélectionnant le format d'import (biblatex), en ajoutant un dossier sous .obsidian et en indiquant le nom de ce dossier à la place de *reading notes* (par défaut), en pointant vers la base de références (en .bib) exportée de Zotero. 

Tous les détails sont exposés dans  [[Utiliser Obsidian avec Zotero|une note consacrée au sujet]]

illustration d'une citation assortie de sa référence.

> Is it the notetaking system that’s helping you think more clearly? Or is it the act of writing that forces you to clarify your thoughts? [[@bjarnasonOnlineCollaborationOur2022]]

**ajouter la référence à l'article d'AOC sur les libertés académiques à l'une de vos notes**

## 5. L'importance de l'entête en yaml

Les informations qui décrivent la note (=métadonnées) peuvent être encapsulées en tête de note. 
On peut y trouver les informations suivantes : 
- le titre de la note (éventuellement distinct du nom de fichier)
- le nom des auteurs
- la date de publication
- les marqueurs associés à la note
- les alias (synonymes, termes associés)

Dans une note, le YAML est le plus souvent placé au début et encadré par deux séries de trois tirets : 

````yaml
title: Das Kapital
subtitle: Critique de l'économie politique
author: Karl Marx
date: 1967
tags: [économie politique, anticapitalisme]
aliases: [Le Capital, The Capital]
````

## 6. Convertir des fichiers markdown


On peut exporter une note prise avec Obsidian directement depuis l'éditeur (exporter en PDF), mais dans ce cas, les références présentes dans le texte et la bibliographie ne seront pas prises en compte

On peut utiliser pandoc et la suite LaTeX installée sur l'ordinateur pour convertir des fichiers en markdown. On peut simplement utiliser Pandoc pour tous les autres formats de sortie.

### premières conversions avec Pandoc

convertir une note en markdown avec des images et selon une CSS

Voir la note sur les [[markdown vers HTML|procédures baillons]]

pour convertir un fichier et les images liées, la ligne de commande est la suivante : 

```shell
pandoc -S note.md -o note.html
```

l'argument -s (--standalone) est nécessaire pour convertir à la fois le fichier maître et les fichiers qui lui sont liés. 

On peut observer le résultat <a href="assets/markdown vers HTML.htm">en suivant ce lien</a>

Pour ajouter une CSS, on va utiliser en plus l'argument -H qui permet d'encapsuler une feuille de style (entre des balises "style") dans l'entête (header) du document créé, ce qui permettre de lui appliquer cette feuille de style

```shell
pandoc -S note.md -H feuille.css -o note.html
```

Si on applique à notre note <a href="assets/essai.css">cette feuille de style</a> , on obtient <a href="assets/markdown vers HTML avec CSS.htm">le résultat suivant</a>

### conversions d'un document avec des références bibliographiques

voir [[markdown vers PDF|exemple fourni sur ce site]]






