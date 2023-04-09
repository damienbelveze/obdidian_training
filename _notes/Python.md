---
title: Python
subtitle: programmer en Python
author: Damien Belvèze
date: 08-02-2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [Py]
tags: [Programmation]
---

Pour les conférences sur Python voir [[Cocopy]]

# afficher des instructions

le module input() va permettre d'afficher une instruction et d'attendre que l'utilisateur frappe une touche

```python
input("frappez une touche de votre clavier pour afficher l'ensemble des notes de votre coffre")
```

# sélectionner un fichier avec une interface graphique

## tkinter

interface graphique présente par défaut dans Python

````shell
pip install tk
````

````python
import Tkinter
from tkinter.filedialog import askdirectory
path = askdirectory()
````
(source : https://youtu.be/YTOUBGHEgZg)

## easygui

easygui est un package Python qui permet de proposer à l'utilisateur de faire un choix dans une interface graphique. 

Installation : 

````shell
pip install python
````

écrire un menu pour un choix oui / non
``
```python
import easygui
easygui.ynbox('voulez-vous continuer', 'Titre', ('oui', 'non'))
```

Le titre s'affiche en haut du pop-up

faire sélectionner un fichier dans un répertoire

````python
import os
path = "[C://Users//dbelveze//Desktop//gfg](C://Users//dbelveze//Desktop)"
dir_list = os.listdir(path)
`````


faire choisir un fichier de cette liste

````python
import easygui
msg = "sélectionnner le fichier"
title = "sélection du fichier"
choices = [dir_list]
choice = choicebox(msg, title, choices)
`````

# afficher la liste de tous les fichiers selon leur format
````python
import os
# traverse whole directory
for root, dirs, files in os.walk(r'D:'):
    # select file name
    for file in files:
        # check the extension of files
        if file.endswith('.md'):
            # print whole path of files
            print(os.path.join(root, dirs, file))
         else:
input("il n'y a pas de note dans ce coffre dans le bon format")

``````

cherche et affiche tous les documents en markdown dans le disque D: (recherche récursive dans tous les dossiers)

Autre possibilité, utiliser glob

````shell
pip install glob2
`````

````python
list_notes = glob.glob(os.path.join(path, '*.md'), recursive=True)
`````
cherche dans le répertoire Path et les dossiers sous-jacents tous les fichiers qui sont en markdown (md)

## vérifier qu'un fichier au moins d'une certaine extension se trouve dans un dossier

````python
import os
import tkinter
from tkinter.filedialog import askdirectory
path = askdirectory()
if not any(File.endswith('.md') for File in os.listdir(path)):
	print("pas de note trouvée")
else:
    input("sélectionner un fichier")
`````

Si le fichier avec la bonne extension n'est pas présent, demander à l'utilisateur de charger ailleurs un fichier avec la bonne extension : 



# chercher un document sur Internet et le télécharger 

Cela se fait avec le module wget de Python
Pour installer le module : 

````shell
import wget
url = "https://www.zotero.org/styles/nature"
wget.download(url, "C://Users//dbelveze//Desktop")
`````

# créer un dossier avec Python

On va utiliser OS comme toute commande de Python qui met en jeu le système d'exploitation

````python
import os
os.mkdir('biblio')
`````
crée un dossier biblio
```

# ouvrir, écrire, modifier, fermer un fichier

Ouvre un fichier et le lit tout d'un coup
"r" = read ([[@SchultzPythonpourSHS2021]], p81)
> ouvre un fichier avec la fonction *open* en donnant le chemin du fichier et le mode lecture "r" puis stocke le lien vers le fichier ouvert dans la variable **fichier** 


``````python
fichier=open("data1.txt", "r")
contenu=fichier.read()
``````

``````python
fichier.close()
print(contenu[0:40])
``````

ferme le fichier, imprime les premières lignes (de la première ligne à la ligne 40)

# modifier des caractères dans un fichier

``````python
# ouvre et lit le fichier titre.md
with open('titre.md', 'r') as file :
  filedata = file.read()

# remplace dans ce fichier le e par un a
filedata = filedata.replace('e', 'a')

# écrit un fichier avec le texte modifié dont le nom est file.txt
with open('file.txt', 'w') as file:
  file.write(filedata)
``````
# spliter des chemins (path)

Les fichiers sélectionnés viennent souvent avec leur path (chemin)
Par exemple : 
D:/users/dbelveze/dossier/texte.txt
Afin de ne conserver que texte.txt

déterminer un chemin et utiliser la fonction basename

````python
import os.path
path = "D:/users/dbelveze/dossier/texte.txt"
file = os.path.basename(path)
`````
Pour séparer le nom de fichier de l'extension, utiliser la fonction split()

````python
notefull = notepath.split('.')
notename = notefull[0]
noteext = notefull[1]
``````
notename est le nom de fichier sans l'extension. Pour rappel l'élément en première position d'une liste dans Python occupe toujours la place 0.

# supprimer des lignes qui contiennent une suite de caractères

Programme utilisé et testé dans le cadre de la [[faire une revue de littérature avec Zotero|revue de littérature avec Zotero]]

Contexte : les exports en RIS des bases de données comme Cochrane ou WOS contiennent des descripteurs qui sont indésirables (KW) lors de l'import des fichiers dans [[Zotero]]. Pour plus de clarté, aucun marqueur ne doit être hérité au cours de l'import. 
Il s'agit donc d'effacer ces descripteurs qui se présentent comme suit dans les fichiers d'import : 

KW   - descripteurs

Le script suivant permet de générer un fichier (output.txt) qui copie toutes les lignes du fichier d'import (input.txt) à l'exception de celles qui contiennent la chaîne de caractères "KW   -" (prendre en compte le tirer de telle sorte de ne pas éléminer de faux positifs, par exemple dans les noms d'auteur)

``````python
with open('input.txt', 'r') as inp, open('output.txt', 'w') as out:
    for line in inp:
        if 'KW  -' not in line:
            out.write(line)
``````


# créer un environnement virtuel pour Python


# créer un installateur pour Windows à partir d'un script pour Python

cela se fait avec avec le module pyinstaller ([source](https://www.geeksforgeeks.org/convert-python-script-to-exe-file/))
Installer Pyinstaller
taper ensuite la commande suivante : 

ouvrir une fenêtre powershell (flêche haut- clic droit) dans la fenêtre où apparaît le script python. 
Dans powershell, 

````shell
pyinstaller --onefile -w script.py
`````

La localisation du fichier .exe se trouve en bas du résultat. 