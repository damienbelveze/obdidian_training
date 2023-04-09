---
title: Umap, l'éditeur de cartes interactives
subtitle:
author: Damien Belvèze
date: 20-12-2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [cartographie, stretching_numérique]
---

![](images/logo_stretching_num.png)

# Trouver des données sur Wikidata : les requêtes sparql

Le SPARQL est un langage d'interrogation pour chercher des entités liées, ce langage d'interrogation a été mis au point par le consortium World Wide Web et sert de langage d'interrogation à [[Wikidata]]

Analyse d'une requête en Sparql sur Wikidata (https://query.wikidata.org)

Nous allons utiliser comme exemple de requête simple une recherche sur les cimetières de guerre allemands répertoriés dans Wikidata :

![](images/sparql_query.png)

``````sparql
\#cemeteries
SELECT ?item ?itemLabel ?place ?coord
WHERE
{
  ?item wdt:P31 wd:Q1241568 .
  ?item wdt:P137 wd:Q708567 .
  ?item wdt:P625 ?coord.

   SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}
``````

première ligne : commentaire (titre de la requête)

SELECT : indique les informations issus des résultats à faire figurer en colonne, en l'occurrence le numéro de l'élément wikidata, son titre, l'endroit assigné à l'élément, et les coordonnées géographiques de l'endroit

WHERE {} permet de donner les critères de recherche. 

?item wdt:P31 wd:Q1241568 : on retrouve à cet endroit le triplet *item*, *propriété*, *valeur* : tous les items qui ont pour propriété (est une instance de) la valeur "cimetière militaire"

Même chose à la ligne suivante : 

?item wdt:P137 wd:Q708567 . 
tout item qui a pour propriété (est opéré par) l'agence "Volksbund Deutsche Kriegsgräberfürsorge"
  
?item wdtP625 ?coord. 
tout item qui dispose de coordonnées géographiques

Les résultats sont téléchargeables

![](images/sparql_results.png)

Pour avoir en plus les images, on peut ajouter dans le Where {} la condition suivante : 

  ?item wdt:P18 ?image.
  
  et ajouter ?image après SELECT


# formater le fichier téléchargé de Wikidata

clic droit sur la colonne D > "insérer une colonne après"
clic droit sur la colonne > textes en colonnes > utiliser l'espace comme séparateur
On obtient désormais deux colonnes, l'une avec la longitude (colonne D), l'autre avec la latitude (colonne E)
Umap repère les colonnes dont les entêtes commencent par lon et lat et les interprête comme des entête de colonnes dans lesquelles se trouvent les coordonnées géographiques décimales (48.5678 est correct mais pas 48,5678 ni 48°5678, veiller à ce que les valeurs présentes dans les colonnes soient bien formatées)
Colonne D : supprimer *Point(* avec la fonction chercher + remplacer (Ctrl+H)
Colonne E : supprimer la parenthèse fermante

# paramétrer l'affichage des données importées dans Umap

Umap est un éditeur de cartes [[OpenStreetMap]]
Si l'import du fichier ne se fait pas bien à partir du module d'import. Copier les valeurs avec leurs entêtes dans le module d'import, si c'est demandé, spécifiez qu'il s'agit d'un fichier en format CSV.

Des marqueurs devraient apparaître pour indiquer les lieux figurant dans le jeu de données. 

Créer un popup avec une description du marqueur : 

éditer le calque dans lequel ont été chargées les données. 
cliquer sur options d'interactions
conserver popup par défaut
Dans Gabarit du contenu de la popup, ajouter les entêtes de la colonne. 
\# = titre 1
\#\# = titre 2, etc. 
Pour insérer une image : {{{entête de la colonne}}}

Pour notre fichier cela donne : 

\# {itemLabel}
{{{image}}}

Pour visualiser les changements, enregistrer les modifications et désactiver le mode édition

![carte interactive](images/umap1.png)

# exercice. 

Réaliser un calque supplémentaire avec des données sur les cimetières de guerre en Allemagne

<iframe width="560" height="315" src="https://www.youtube.com/embed/wbm4b1-XBmU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


