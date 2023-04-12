---
title: gérer les images
date: 12/04/2023
---

centrer cette image et en réduire la largeur en ajoutant un peu de balisage html : 

``![Fariba Adelkhak](images/390px_Fariba.jpg){width=200px}``


<p align="left">
	<img width="200" src="assets/390px_Fariba.jpg">
</p>

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

