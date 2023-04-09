# Notes prises avec Obsidian

Ce répertoire contient des notes de lecture personnelles prises avec l'outil Obsidian depuis février 2021. Cela explique pourquoi les notes sont formatées en [[markdown]]. 
Il s'agit de notes de lecture, mais dans certains cas de projets un peu plus aboutis et originaux, ce qui fait que l'ensemble de ces notes est sous licence CC-by 4.0

# Pourquoi certains fichiers sont vides

Certaines de ces notes sont vides. Lorsqu'on crée une note sur Obsidian, à l'instar des liens rouges dans l'encyclopédie Wikipédia, on fait des renvois vers des notes qui n'existent pas encore mais avec lesquelles on peut déjà lier d'autres notes. Ces notes seront complétées ultérieurement. Cette manière de procéder explique pourquoi une majorité de ces notes sont en réalité vides. 

# Pourquoi ces notes sont sur un répertoire public (Github)

Github sert à la fois de back-up de mes notes personnelles et d'accès en ligne à ces notes. Tant mieux si elles peuvent aussi servir à d'autres personnes.
Il s'agit de notes de lectures (essentiellement de la paraphrase, des citations et une interprétation personnelle des faits et des concepts qui y sont relatés. On n'y trouvera aucun détail ni sur ma [[Vie privée|vie privée]] (en dehors de la recension de mes lectures) si sur celles des autres. 

# Convertir ces notes en PDF

Ces notes rédigées dans le format Markdown (MD) comportent des références formatées avec la norme IEEE. Pour convertir les documents en PDF, j'utilise pandoc avec LaTeX et le filtre citeproc-pandoc. 

> pandoc note.md --pdf-engine=xelatex --filter pandoc-citeproc -f markdown+smart -o note.pdf

Pour plus d'info voir [ici](https://www.damienbelveze.fr/2020/09/17/concevoir-une-presentation-en-markdown/)
