# introduction

Docear (prononcer Dog-ear) est une suite bureautique pour chercheurs comportant notamment un outil de [[Mindmapping]] (Freeplane) et un gestionnaire de références en format bibtex (Jabref)

Docear a été présenté la première fois en 2011 et fonctionne avec une version Word 2002 et + sur Windows XP et + 
Le développement de Docear a été abandonné en 2018, mais le logiciel est toujours fonctionnel.

télécharger et installer Docear depuis le site [https://docear.org](https://docear.org/) 

# Création de projet et import de références

## export de références depuis Zotero

On peut bien sûr enregistrer des PDF dans Jabref où y créer les références à la main (elles sont conservées en format bibtex), toutefois il est plus utile quand on utilise [[Zotero]] d'exporter une collection de références directement dans Docear. 

Pour importer une collection de références dans Docear, il nous faut : 

un répertoire avec l'ensemble des PDF
un fichier en .bib concernant ces PDF

On peut obtenir l'un et l'autre de Zotero en faisant un export de la collection en .bib, On obtient alors un dossier comportant l'arborescence suivante : 

fichier.bib
files 
   -file1 (dossier)
       -PDF1
  -file2 (dossier)
       -PDF2
  -file3 (dossier)
       -PDF3
	   
Pour réunir tous les PDF dans un même dossier, créer un dossier intitulé (par exemple) PDF_files
cliquer sur le dossier files, dans l'explorateur chercher \*.pdf 
Mettre tous les résultats en surbrillance (Ctrl+A) et les copier(Ctrl+B)
Les coller dans PDF_files

## Création du projet et import d'une collection dans Zotero

Ctrl+N : nouveau projet > Create a project

- Définir un nom de projet (par ex. nouveau_projet)
- Définir un chemin vers le dossier où seront conservées les fichiers relatifs à ce projet par exemple C:\\Users\\nom utilisateur\\Docear\\projects\\nouveau_projet
- Définir le dossier qui contient les PDF
- Définir le fichier .bib qui contient les références

![[docear_new_project.png]]

Les PDF apparaissent dans la fenêtre des références à droite de l'écran :

![[Docear_biblio_jabref.png]]

Sauvegarder cette carte (réduite pour l'instant à son coeur) en lui donnant un nom et un emplacement. Le fichier porte l'extension .mm lisible avec Freeplane. 

Aller dans Files and monitoring et cliquer sur Add monitoring folder

Commencer à rédiger les parties





