---
tags: [obsidian]
---


Prérequis : disposer de [[Zotero]] avec le plugin BetterBibTeX chargé. 
Avoir téléchargé Pandoc et un éditeur LaTeX sur sa machine.
Si la version de Pandoc dont on dispose n'inclue pas le plugin pandoc-citeproc, charger ce plugin. 

1. Charger dans Obsidian le [plugin](https://github.com/hans/obsidian-citation-plugin/tree/0.1.3) qui permet d'importer des données dans Zotero

2. Comment charger un plugin dans Obsidian ? 
    -Paramètres > Plugins Tiers > désactiver le mode sans échec
	-Pour ce plugin, chercher avec "Citations"
	-installer ce plugin
	
3. Créer dans Obsidian votre espace de travail 
    - créer un dossier (intitulé Article)
    - créer une note (qui deviendra le futur article à publier)
    
 4. Dans [[Zotero]] exporter la collection qui correspond aux références de l'article en la tenant à jour (appelons ce fichier references.bib). Enregistrer le fichier dans le dossier article sous un répertoire qu'on crée à l'occasion (par exemple en l'intitulant 'references')
 
 5. Dans les options du plugin, indiquer le nom du répertoire ('références') qui contient le fichier .bib provenant de Zotero. Indiquer le chemin relatif vers le fichier bib : /espacedetravail/references/references.bib
     Si le chemin est le bon, le nombre d'enregistrements du fichier bib devrait apparaître. 
	 
6. Dans les Paramètres d'Obsidian > raccourcis clavier, paramétrer un raccourci clavier pour insérer une citation en format [[markdown]] (Citations: insert markdown citation). Saisissons à cet endroit par exemple la combinaison de chiffres suivante : **Shift + Ctrl + M**

7. Dans l'article, pour insérer une citation, utiliser le raccourci clavier indiqué plus haut. 

8. Une fois toutes les références ajoutées, ouvrir dans l'explorateur le répertoire où se trouve le fichier dans lequel on a inséré ces références. 

9. Ouvrir un shell, taper la commande permettant à Pandoc de convertir ce document markdown en document PDF en utilisant le filtre pandoc-citeproc

10. On obtient le PDF souhaité avec les références correctement représentées (appels de citation et bibliographie) selon le style choisi dans la commande pandoc. 