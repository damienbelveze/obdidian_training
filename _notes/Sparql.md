---
title: éditer des requêtes sur Wikidata avec le langage Sparql
subtitle:
author: Damien Belvèze
date: 20-12-2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [cartographie, opendata, Wikidata, langage_requête, programmation]
---

Le SPARQL est un langage d'interrogation pour chercher des entités liées, ce langage d'interrogation a été mis au point par le consortium World Wide Web et sert de langage d'interrogation à [[Wikidata]]

Analyse d'une requête en Sparql sur Wikidata (https://query.wikidata.org)

# exemple de requête simple : les cimetières de guerre allemands

![](sparql_query.png)

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

![](sparql_results.png)

Pour avoir en plus les images, on peut ajouter dans le Where {} la condition suivante : 

  ?item wdt:P18 ?image.
  
  et ajouter ?image après SELECT
  
  
# exercices

## les centrales nucléaires en Ukraine

P17 : pays (country)
  
````sparql

#nuclear plants in Ukraine
SELECT ?item ?itemLabel ?place ?coord
WHERE
{
  ?item wdt:P31 wd:Q134447 .
  ?item wdt:P17 wd:Q212 .
  ?item wdt:P625 ?coord.

   SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}

````

## les musées de la marine en France
````sparql

SELECT DISTINCT ?item ?itemLabel ?place ?coord 
WHERE {
      ?item wdt:P17 wd:Q142.
      ?item wdt:P31 wd:Q1863818.
      ?item wdt:P625 ?coord.
  
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}


````


## les musées de la marine en France et en Espagne

définir une variable ?o dont les valeurs seront précisées à l'intérieur du champ VALUES { }
en l'occurrence ici les valeurs se rapportant à la France et à l'Espagne.

````sparql
SELECT DISTINCT ?item ?itemLabel
WHERE {

      ?item wdt:P31 wd:Q1863818.
      ?item wdt:17 ?o.
    VALUES ?o{
    wd:Q142
    wd:Q29
   }

  
  SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}

````

## les ponts supportant des voies ferrées en Allemagne et en Autriche

````sparql

#railway bridges in Germany and Austria
SELECT ?item ?itemLabel ?coord ?image
WHERE
{
  ?item wdt:P31 wd:Q39486269 .
  ?item wdt:P17 ?o .
	
  VALUES ?o{
	  wd:Q183
	  wd:Q40
  }
	
  ?item wdt:P625 ?coord .
  ?item wdt:P18 ?image .
  

   SERVICE wikibase:label { bd:serviceParam wikibase:language "en". }
}

````

# bibliographie

