---
title: déroulé de la formation
---

## Introduction

Présentation de la méthode Zettelkasten

- Créer un coffre avec Obsidian (suivre la démo)


## premières notes avec Obsidian

lire rapidement le [[texte]]

Qu'avez-vous envie de retenir de ce texte ? Quelles notes vous prendriez après l'avoir lu ? Quels passages vous ont marqués ? 

Synthétisez trois éléments que vous a apportés cet article sous la forme de trois notes

Pourriez-vous faire un lien d'une note à une autre ? 

Visualisez les liens avec le graphe

## prendre en main la syntaxe markdown

### Comment mettre en forme du texte en Markdown. 

Consultez notre [[Mode d'emploi d'Obsidian]] (à partir du paragraphe 3.2)
Tester dans votre note l'italique, le gras, le surligné. 
faites une citation du texte en utilisant la balise correspondante. 

### ajouter une image

Créez dans votre coffre (répertoire) un dossier *Images*.
(il est préférable pour la gestion quotidienne de vos fichiers de séparer les notes en mardown et les images)

allez chercher une image de Fariba Adelkhak pour illustrer l'une de vos notes. 
utilisez la syntaxe- suivante : \!\[legende\]\(chemin vers l'image\)

Deux précautions à prendre : 

- Pour les conversions avec Pandoc, il vaut mieux que le chemin comporte le nom du dossier (*images*)
- laisser un saut de ligne entre le paragraphe et l'image, sinon cette image ne va pas correctement s'afficher et la légende ne s'affichera pas après la conversion (nous verrons dans la deuxième partie)


<img align="left" src="assets/390px_Fariba.jpg">


centrer cette image et en réduire la largeur en ajoutant un peu de balisage html : 


``![Fariba Adelkhak](images/390px_Fariba.jpg){width=200px}``


<img align="left" width="200" src="assets/390px_Fariba.jpg">

Pour déplacer l'image au centre, il faut recourir au html : 

````html
<p align="center">
 <img alt="Fariba Adelkhak" width="200" src="assets/390px_fariba.jpg">
</p>
````


<p align="center">
 <img  src="assets/390px_fariba.jpg" width="200">
</p>


et pour avoir la légende : 



````html
<figure>
	<p align="center">
		<img alt="Fariba Adelkhak" width="200" src="assets/390px_fariba.jpg">
		<figcaption>Fariba Adelkhak </figcaption>
	</p>
</figure>
````



<figure>
	<p align="center">
		<img alt="Fariba Adelkhak" width="200" src="assets/390px_fariba.jpg">
		<figcaption>Fariba Adelkhak </figcaption>
	</p>
</figure>


Ce dernier point montre que : 

- le markdown ne peut pas prendre en charge toute l'apparence du texte : il faut y ajouter du balisage HTML et ou des feuilles de style (CSS)
- le markdown peut intégrer plusieurs langages pour la mise en page ou l'édition, les plus utilisés sont le HTML, le CSS et le LaTeX. 

