---
title: Description des données de la recherche
subtitle:
author: Damien Belvèze
date: 02-06-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [données_recherche]
---

données inexploitables (entre autres parce que mal décrites) = [marécage des données](https://www.legifrance.gouv.fr/jorf/id/JORFTEXT000047335549)

Décrire correctement les [[données de la recherche|données de sa recherche]] est indispensable pour permettre leur compréhension (d'où viennent-elles, comment ont-elles été obtenues) et leur réutilisation. 

# format de métadonnées

un format standard pour des données de la recherche (ELN[[@elnconsortiumELNFileFormat2022]]) est à l'étude qui permettrait d'échanger facilement des jeux de données, depuis les [[cahiers numériques|cahiers de laboratoire]]où elles sont produites vers les répertoires et les sites d'éditeurs (et à nouveau par téléchargement dans les carnets de labo). Ce format .eln comporte un fichier JSON qui permet d'accéder aux métadonnées du jeu de données [[@carpiReduireProblemesInteroperabilite2022]] : 

> L'idée étant que toutes les métadonnées soient réunies dans  
un fichier json-ld facilement lisible par les logiciels récepteurs


# Le format DDI 

Cf. Intervention du 13 juin 2022, Simon Hodson directeur exécutif de CODATA.
les principes FAIR sont devenus omniprésents (issus de la politique de l'union européenne). Les subventions induisent que les projets de recherche soient FAIR-compatibles. FAIR = language commun d'EOSC

Le coût de la non application des données FAIR est estimé à 10,2 milliards de dollars pour l'Europe (source : https://data.europa.eu/doi/10.2777/02999)

Métadonnées centrales dans les principes FAIR.

Nicolas Sauger : 

Data Documentation Initiative
standard international de métadonnées

DDI utilisé principalement en sciences sociales et comportementales, économie, santé.

![](DDI.png)

Métadonnées font partie du système d'information, elles sont elles-mêmes réutilisables. 
Métadonnées lisibles par les humains et les machines. DDI va permettre de mettre en réseau toutes ces métadonnées. 

DDI accroît la visibilité des données. 
DDI s'appuie sur une communauté internationale. Pouvoir essaimer et avoir un standard qui s'adapte aux différents utilisateurs

2 défis principaux : 

1. Complexité (langage riche et interopérable = langage complexe en XML)
2. Adhésion des chercheurs. Les chercheurs pressés s'intéressent bcp plus aux données qu'aux métadonnées. 

Utilisateurs de DDI en FR : INSEE, Sciences Po, ResearchDataGouv.fr (entrepôt de recherche pour la France)
Le standard DDI a été installé dès le départ du projet de portail national pour les données. 

Public cible des DDI : ingénieurs, administrateurs, financeurs, producteurs de données, chercheurs, développeurs.

S'entraîner à utiliser DDI : [site internet de l'alliance](http://www.ddialliance.org/training/getting-started)

Qu'est-ce que c'est que DDI concrètement : un format XML qui permet de baliser le texte pour décrire la structure des métadonnées

L'information correcte doit être entrée dans les champs corrects. Le standard ne peut pas tout.

Trois principaux produits de DDI 

- DDI codebook  
- DDI lifecycle  
- DDI CDI (à venir)  

## DDI codebook

dictionnaire des codes inventé pour décrire des données d'enquête. perlet d'obtenir des données lisibles par les humains et par la machine.

Le dictionnaire des codes décrit les métadonnées indispensables et les distingue de celles qui seraient intéressantes à délivrer si elles étaient disponibles. 

structure simple : 

- description du document  
- description de l'étude  
- description des fichiers de données  
- description des variables  
- autres documents liés à l'étude  

Quelques outils qui sont gratuits et qui utilisent DDI codebook

- Colectica for Excel permet d'importer des fichiers de données à partir de SPSS, Stata ou SAS. Colectica permet d'exporter en format DDI. 

- Egalement possible pour Nesstar (logiciel très utilisé mais plus maintenu). Nesstar crée et édite des métadonnées au format DDI. Extrait les métadata des logiciels statistiques

- [[Dataverse]] : logiciel gratuit qui permet d'éditer des métadonnées au format DDI. La version de base ne permet pas de décrire des données sans certaines extensions (Data Explorer). Nesstar peut être utilisé en solo mais il faut uneéquipe pour installer et gérer datavers

## DDILifecycle (DDI-L)

Pour répondre à un large éventail d'exigences typiques de la gestion et de l'utilisation des métadonnées.

Pour prendre en charge tous les types de réutilisation et pour fonctionner avec des approches par registre et par référentiel. 

Les métadonnées ce n'est pas que de la communication passive, elles peuvent évoluer dans le temps. 

![](DDIL.PNG)

![](DDIL2.PNG)

notion d'univers : individus ou bien projets de recherche

![](DDIL3.PNG)

![](DDI_scheme.PNG)

On ne va redéfinir plusieurs fois le même type de métadonnées.

Xkos décrit les classifications. (Etend le vocabulaire SKOS)
DISCO facilite la découverte de jeux de données

## DDI-CDI
![](DDICDI.PNG)



# bibliographie

