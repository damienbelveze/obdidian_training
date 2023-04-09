---
title: text mining avec Europresse
subtitle:
author: Damien Belvèze
date: 11-08-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [programmation, python]
---


faire une recherche dans [[Europresse]]  à partir d'un mot-clé. 
Récupérer une cinquantaine d'articles. 
(possibilité d'en récupérer plus ?)
sauvegarder la page en html en cliquant sur l'icone sauvegarder (attention pas toujours présente curieusement)
sauvegarder dans un fichier (par exemple europresse.html)

La méthode suivante fait référence à un chapitre de [[Python]] pour les SHS[[@SchultzPythonpourSHS2021]] (page 245 et suivantes)

code proposé par les auteurs du chapitre : 

```python
import bs4
import pandas as pd

file = "D:\Home\dbelveze\Desktop\europresse.html"
with open(file, "r", encoding="utf8") as f:
    html = bs4.BeautifulSoup(f,"lxml")
type(html)

corpus = html.findAll("article")
print(len(corpus))

def extraire_contenu(article):
    try:
        titre = article.find("div",
                             {"class":"titreArticle"}).text
    except:
        titre = None
    try:
        publication = article.find("span",
                                   {"class":"DocPublicationName"}).text
    except:
        publication = None
    try:
        text = article.find("div",
                            {"class":"DocText clearfix"}).text
    except: text = None
    return [titre, publication, text]

donnees = [extraire_contenu(article) for article in corpus]
donnees = pd.DataFrame(donnees, columns = ["titre","journal","texte"])
donnees.head()
```

nécessité au préalable (au moins sous Windows) de télécharger deux librairies python : BeautifulSoup et lxml : 

```
pip install bs4
pip install lxml
```

le code affiche le nombre d'articles (50) mais à ce stade, on n'arrive pas à afficher les données du tableau. 




# bibliographie

