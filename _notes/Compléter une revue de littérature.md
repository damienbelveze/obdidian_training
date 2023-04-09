---
title: Compléter une revue de littérature en utilisant les réseaux de citation
subtitle: Présentation de CitationGecko et de CoCites
author: Damien Belvèze
date: 1er juin 2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [citationGecko, cocitations, cocites, Cocites, Citation Gecko]
---


# Introduction
Pour élargir leur découverte de nouveaux articles sur leur sujet, les chercheurs ont tendance à envoyer des requêtes basées sur des mots-clé dans des moteurs de recherche comme Google Scholar. 
Dans la mesure où Google Scholar ne dispose pas d'un thesaurus et que la recherche par mot-clé est toujours sujette à des approximations liées à la gestion de ces mots-clé, cette méthode n'apporte pas toujours les résultats escomptés. 
Par ailleurs, même si le contenu de l'article correspond aux mots-clé, cela n'empêche pas que beaucoup d'articles ne soient pas pertinents par rapport à la problématique de ces chercheurs[[@jiaAnalysisCitationRecommender2017]]. 



L'essor des citations ouvertes depuis 2017 ([[OpenCitations]]) auquel même des grands éditeurs, par ailleurs producteurs de bases citationnelles, comme Elsevier ont contribué) ont rendu possible l'apparition de nouveaux outils permettant de compléter une [[revue de littérature]] fondée au préalable sur la **recherche d'articles par mots-clé** par une recherche sur les réseaux de citation constituées à partir de ces citations ouvertes. C'est le cas de deux produits qu'on va présenter dans cet atelier : **[[CitationGecko]]** et **[Cocites](https://www.cocites.com/**

Citation Gecko : recherche d'articles en **relation bibliographique** (Si nous disposons de A et B, nous allons pouvoir découvrir C, car A et B sont tous les deux cités par C ou bien, A et B citent tous les deux C)
[[Compléter une revue de littérature#Cocites trouver des articles co-cités|Cocites]] = recherche des papiers cités en même temps que le papier de départ (C fréquemment cité en même temps que A et B)


# Citation Gecko : trouver les papiers cités par ou citant des articles de référence

Au SCD, c'est grâce au travail d'Aaron Tay qui a parlé à plusieurs reprises de CitationGecko (en même temps que d'autres outils de ce type) que nous avons commencé à nous y intéresser. Les articles de son blog sur le sujet (et notamment le premier[[@TayKnowtroCitationGecko2018]]) sont la principale source des informations qui suivent.

## Comment ça marche

L'[[algorithme]] de [CitationGecko](https://citationgecko.azurewebsites.net/) utilise les données bibliométriques de [[OpenCitations]], [[CrossRef]] et [[Microsoft Academic]] pour trouver un graphe de citation à partir des articles que nous lui fournissons (seed papers)

Usages possibles :

- Utiliser pour explorer les liens (s'il y en a) entre différents domaines de recherche que vous pourriez vouloir combiner
- Repérer des articles intéressants que vous auriez pu manquer en effectuant une recherche par mots clés uniquement

comment se servir de l'outil (La recherche d'information par citation)

on part d'articles jugés importants et on va agrandir le cercles des articles intéressants en trouvant :
- quels articles postérieurs ont cité ces articles
- Quels article antérieurs, ceux-ci ont cité

contrairement aux outils de recommandation d'articles, Citation Gecko vous permet de visualiser sous la forme de clusters les relations (citant/cités) entre articles.


Exemple1 :

Chercher 5 articles sur l'obfuscation et les navigateurs. Sélectionner ces articles comme seed papers
Citation Gecko va afficher les articles citant ou cités par ces articles séminaux.

Exemple2 (revue de littérature sur les [[additifs]] :

utiliser le [fichier de citations sur le rôle des additifs colorants sur l'hyperactivité des enfants](demo_citation_gecko.bib)

Le graphe des articles cités par les articles pivots (Papers cited by seeds) laisse voir un gros rond noir

![](citation_gecko_additives.png)

qui correspond à un article abondamment cité par ceux qu'on a déjà repérés : "Food additives and hyperactive behaviour in 3-year-old and 8/9-year-old children in the community: a randomised, double-blinded, placebo-controlled trial[](https://doi.org/10.1016/S0140-6736(07)61306-3)" paru dans le Lancet. On peut le juger non pertinent ou au contraire l'ajouter aux articles pivots.

### vue chronologique

![graphe historique 1](images/gecko1.png)

En jaune les 5 articles ajoutés. Les ronds gris désignent des articles cités par ou citant nos seed papers. On en a la liste en cliquant sur le bouton en haut à gauche sur le rond jaune. Si on trouve que ces articles en dépit de leur relation de citation avec les articles séminaux ne sont pas pertinents, on peut les marquer comme non pertinents (mark irrelevant)
On peut choisir de filtrer les articles par leur pertinence (en affichant ou faisant disparaître les articlles marqués comme non pertinents)

![boutons et filtres](images/gecko6.png)

Les ronds gris plus volumineux désignent des articles qui ont été cités par plusieurs articles séminaux, des références communes à ces articles.

![graphe historique 2](images/gecko2.png)

Ainsi l'article intitulé *Investigation of obfuscation-based anti-reverse engineering for printed circuit boards* a été cité par deux de nos articles séminaux. En tant que tel, il peut constituer un article intéressant à découvrir.

Je peux l'ajouter à mon ensemble de seed papers, cela me permettra de faire apparaître encore davantage d'articles et de recoupements possibles.
Dans cette vision chronologique des citations, il n'y a pas d'ambiguité possible entre les papiers qui citent et ceux qui sont cités.

### vue en réseau

Dans la vue en réseau, on affiche soit les articles qui sont cités par nos seed papers, soit les articles qui citent nos seed papers.
Dans cette vue on affiche les articles cités par les seed papers :

![graphe cited by seed papers](images/gecko4.png)

Les articles qui ont le plus de poids sont ceux qui sont cités par plusieurs seed papers (au centre). On aurait pu imaginer que ce poids varie en fonction du nombre total de citations reçues (seed papers et autres), mais ce n'est pas le cas.

Et voici la vue qui affiche les articles qui citent nos seed papers :

![graphe citing seed papers](images/gecko5.png)

Question : qu'est-ce qui pourrait s'avérer le plus intéressant pour nous ?

Des articles qui sont cités par un grand nombre de nos seed papers ?
Des articles qui citent un grand nombre de nos seed papers ? (comme pour cet utilisateur[[@WolfleLocalCitationNetwork2019]])

## enregistrement

Lorsqu'on estime avoir une biblio complète, on peut sauvegarder l'ensemble des références en .bib et l'envoyer vers un éditeur de texte en Latex ou vers [[Zotero]].
(cliquer sur Save)

## Différentes méthodes d'import

On peut importer ses seed papers sous la forme d'un fichier . bib téléchargé depuis Zotero ou directement depuis Zotero (Citation Gecko permet la connexion avec Zotero)

Pour importer depuis Zotero, il faut s'identifier à son compte Zotero et permettre la création d'une clé assurant la liaison entre Zotero et CitationGecko

![création clé](images/zotero_key.png)

Si un message d'erreur s'affiche, revenir en arrière à l'accueil du site CitationGecko. Le processus a normalement quand même eu lieu.

![choix de la collection](images/zotero_key2.png)

Choisir la collection de références à importer depuis Zotero.
Seuls les items que CitationGecko pourra retrouver dans les bases de Crossref, Microsoft Academic ou OpenCitations s'afficheront


# Cocites : trouver des articles co-cités

Dans ce cas, on part du principe que pour compléter une recherche d'articles basée sur des mots-clé, on ne va pas se tourner vers les articles qui citent ou sont cités par des articles considérés comme références mais on va chercher quels articles sont le plus souvent cités en même temps que ces articles de référence. C'est le travail que permet de faire l'extension Cocites

une fois chargée dans le navigateur, cette extension permet de visualiser dans Pubmed pour chaque article :

![fonctionnement de cocites 1](images/cocites2.png)

![fonctionnement de cocites](images/cocites.png)

ci-dessus le score de l'article [Sarcoma Stell Cell heterogeneity](https://pubmed.ncbi.nlm.nih.gov/31016597/)

Cet article a été cité 10 fois
Il a été cité en même temps que 61 autres articles
Il a été trois fois cité en même temps que l'article [Cancer stem cells in sarcomas: Getting to the stemness core.](https://pubmed.ncbi.nlm.nih.gov/30003939)
la similarité entre les deux articles est calculée comme suit

nombre de co-citations / le nombre de citations de celui des deux articles co-cités qui a eu le moins de citations.

Dans le cas présent : 3/8 = 37%. Ainsi si un article est peu cité mais souvent en même temps qu'un autre article, cela renforce la probabilité que cet article soit ressemblant avec l'article avec lequel il est régulièrement co-cité.  

Possibilité de créer un compte pour exporter en .bib les références obtenues avec Cocites


# conclusion

La recherche par co-citations ou bien la recherche par liens de citation (cité par / citant) sont des moyens prometteurs de compléter une collection de références d'abord élaborée par une recherche par mots-clé.
Notons toutefois que ces relations purement citationnelles ou bibliographiques ne qualifient pas la citation. Une étude peut être critiquée ou infirmée par plusieurs autres en raison de ses défauts, cela comptera pour autant comme des citations dans le sens positif (telle étude s'appuie sur les conclusions de telle autre). Pour aller plus loin, il faudrait ajouter une couche de traitement automatique de la langue, ce que fait le service [Scite](https://scite.ai)

# Références
