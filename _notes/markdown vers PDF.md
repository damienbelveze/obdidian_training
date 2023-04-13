---
title: exemple de conversion en PDF avec Pandoc
date: 27/03/2023
---

"science sans conscience n'est que ruine de l'âme" [[@montaigneMontaigneEssais1964]]

Exemple de conversion d'un document en Mardown vers un PDF

## introduction

La longue incarcération en Iran de Fariba Adelkhah, qui vient de retrouver la liberté après plus de trois ans dans la prison d’Evin, a une fois de plus souligné la grande précarité des chercheurs confrontés à un contexte autoritaire. Cette heureuse libération intervient après trois ans de mobilisation exemplaire de la part de son comité de soutien, trois ans de veille médiatique, trois ans d’action diplomatique… mais surtout après que l’ayatollah Khamenei a souverainement décidé d’accorder sa grâce à des milliers de prisonniers arbitrairement arrêtés, comme il a l’habitude de le faire à l’occasion des principales fêtes religieuses ou nationales [[@heurtauxCommentFaireLiberte2023]].


___

## Des diagnostics qui divergent



Certains débats enfin émergent dans des contextes nationaux spécifiques sans équivalent ailleurs et beaucoup d’autres questions que soulèvent la communauté académique ne dépassent pas le plafond de verre de l’accès au débat public. Il en est ainsi des menaces judiciaires sur l’enquête en sciences sociales, de l’« institutionnalisation de l’éthique » dans les rapports entre enquêteurs et enquêtés [[@laurensEnqueterQuelDroit2010]] et des divers types de surveillance qui s’exercent à l’encontre des chercheurs [[@aldrinEnqueteDangerVers2022]]


## conversion avec Pandoc

On a au préalable téléchargé le style nature.csl depuis Zotero ([lien direct](https://www.zotero.org/styles?q=id%3Anature))
Dans cet exemple *obsidian_urfist.bib* contient les références bibliographiques inscrites dans le texte et qui ont été collectées dans Zotero au préalable

pdf-engine = choix du logiciel qui va assurer la conversion du markdown vers le PDF  
-f : format de départ  
-o nom du fichier attendu comme résultat  
--citeproc : package de pandoc qui va *parser* les références bibliographiques en bibtex  

````shell
pandoc '.\markdown vers PDF.md'
	--bibliography=obsidian_urfist.bib
	--csl=nature.csl
	--pdf-engine=xelatex 
	--citeproc -f markdown+smart -o 'markdown vers PDF.pdf'
````

voir le résultat <a href="assets/markdown vers PDF.pdf">ici</a>

## Bibliographie





