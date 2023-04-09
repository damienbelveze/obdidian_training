---
title: Reveal.js
subtitle:
author: Damien Belvèze
date: 06-01-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [Reveal, reveal js, reveal.js]
tags: [outil_présentation, programmation]
---

outil de présentation reposant sur du javascript et du HTML

Charger la bibliothèque Reveal.js
cloner le fichier index.html
rédiger sur ce fichier html le contenu de la présentation

Une slide s'ouvre et se ferme avec les balises 
``<section>     </section>``

### sens de navigation 

Pour prévoir une navigation descendante : 

```
   <section>
       <section>
	       #slide 1
		   <a href="#" class="navigate-down"></a>
	   </section>
	   <section>
	       #slide 2
		</section>
	</section>
```

### apparitions

apparition simple
```
<p class="fragment" texte à faire apparaître </>

```


apparition vers la gauche
```
<p class="fragment fade-left" texte à faire apparaître </>
```

apparition vers la droite
```
<p class="fragment fade-right" texte à faire apparaître </>
```

apparition vers le haut
```
<p class="fragment fade-up" texte à faire apparaître </>
```

grossissement
```
<p class="fragment grow" texte à faire apparaître </>
```

amoindrissement
```
<p class="fragment shrink" texte à faire apparaître </>
```

rotation
```
<p class="fragment animated-rotate" rotation du texte>
```

voir l'[attribut data-animate](https://revealjs.com/auto-animate/) pour d'autres animations de fragments et de headers

### couleurs

texte en rouge
```
<p class="fragment highlight-red" texte à faire apparaître </>
```

### fond

changer la couleur du fond
```
<section data-background="#ffffff">
```

afficher une image en fonds d'écran
```
<section data-background="https://image.png">
```

encapsuler un fichier vidéo

```
<section data-background-video="https://video.mp4">
```
### transitions

transition convexe :
```
<section data-transition="convex">
```

transition concave :
```
<section data-transition="concave">
```

fondu :
```
<section data-transition="fade">
```

effet glissant :
```
<section data-transition="slide">
```

effet zoom :
```
<section data-transition="zoom">

```






# bibliographie

