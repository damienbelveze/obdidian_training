---
title: Données de la recherche

subtitle:
graphics: yes
author: Damien Belvèze
date: 20210505
link_citations: true
aliases: [research data, données de recherche, données de la recherche, données issues de la recherche]
tags: [données_recherche, vie_privée]
---

<!-- header-includes : |
   \usepackage{graphicx}
-->

# cycle de vie de la donnée

- Gestion
- Analyse
- Diffusion
- Archivage

# Hétérogénéité des données de la recherche

toute donnée récoltée dans le cadre d'un projet de recherche. Définition de l'OCDE de 2007 ([[@Rebouillatpartagedonneesvu2021]]) :

> enregistrements factuels (chiffres, textes, images et sons), qui sont utilisés comme sources principales pour la recherche scientifique et sont généralement reconnus par la communauté scientifique comme nécessaires pour valider des résultats de recherche

ce terme exclue dont les [[cahiers numériques|carnets de laboratoire]], les analyses préliminaires, les [[preprint|preprints]], les working papers, les objets matériels pouvant être échangés entre collègues.

distinctions possibles entre les types de données : 

-  méthode de collecte
-  degré d'affinage (données brutes > données dérivées)
-  données sources / données produites (Schöpfel)

autre distinction, par type de collecte : 

- données issues de l'observation
- données issues de l'expérimentation
- données issues d'une simulation
- données issues d'une dérivation ou d'une compilation (cf. [[Fouille de texte]])

statut par rapport à la publication :

- données intégrées (dans la publication : graphiques, tableaux)
- données sous-jacentes (données non publiées mais permettant d'éditer les graphiques et les tableaux présents dans la publication)

Les données n'existent que par rapport à un contexte (notamment disciplinaire mais aussi en fonction d'un projet de recherche) et prennent sens en fonction de ce contexte ([[@Rebouillatpartagedonneesvu2021]])

> Leonelli (2015), philosophe des sciences et spécialiste des données de la recherche, écrit qu’il n’existe pas de données en elles-mêmes. Elles ne sont pas définies selon leurs propriétés intrinsèques mais selon leur fonction au sein de processus de recherche particuliers. Leonelli propose ainsi de considérer les données comme des produits de la recherche collectés, enregistrés et diffusés dans la perspective d’être utilisés ensuite comme preuve d’une théorie scientifique au sujet d’un phénomène particulier

Les sciences de l'information ont la particularité de comprendre dans leur réflexion sur leurs données, la nature complexe et dépendante de leur contexte de production, ce qui n'est pas forcément le cas dans les autres sciences.

Les données de la recherche s'inscrivent dans la catégorie plus large des inscriptions ([[Bruno Latour]]) : objets intermédiaires des savoirs produits en amont de la publication.

![](data_narrative.jpg)

## nettoyage des données

moins on maîtrise l'origine des données, et plus il faut passer du temps à les nettoyer : cas de l'open data. Extraire de l'information présente dans plusieurs tables à partir d'un attribut pivot. 
Nécessité de faire une vérification initiale des données pour ne pas se tromper de fichier ou de filtre.

prendre en compte les limites des données, avant de les exploiter. 


\begin{figure}
\begin{minipage}[t]{.4\linewidth}
    \begin{center}
       \includegraphics[width=6cm]{data_pyramid1.png}
       \caption{pyramide ideale}
    \end{center}
\end{minipage}
\hfill
\begin{minipage}[t]{.4\linewidth}
    \begin{center}
       \includegraphics[width=6cm]{data_pyramid2.png}
       \caption{pyramide effective}
    \end{center}
\end{minipage}
\end{figure}


# partage des données

Dans le cadre de la loi sur la République Numérique, le législateur a inscrit le fait de préempter les données de la recherche issues de financements publics pour éviter la captation de ces données par des opérateurs privés (comme ça a été le cas avec les publications). Le chercheur qui collecte des données n'a donc pas de propriétés sur elles. Le partage des données n'engage donc pas cette propriété. 

# collecter des donnnées

Sur les modes de collecte, voir l'article [[collecter des données]]

## données et perceptions

### séparation data / capta ("données / captées")

"data are the new oil" : contrairement au pétrole, toutes les données ne se valent pas, il faut faire le tri pour des analyses efficaces
Les données ne parlent pas toutes seules. Ce sont des humains, avec leurs biais et leurs méthodologies parfois erronées qui leur donnent du sens. 

![[Pasted image 20211008101737.png]]

"data are the new oil"

Si une voiture dépend d'une infrastructure comme un téléphone (pour la voiture : extraction, convoyage, raffinage et distribution du pétrole / pour le téléphone : opérateur, antennes ou réseau internet, applications, serveurs), dans le cas de la voiture, le pétrole est nécessaire au fonctionnement de la machine, dans le cas du téléphone, les données personnelles ne sont pas nécessaires au fonctionnement de la machine. Les applications les plus populaires captent beaucoup plus de données qu'elles n'en demandent pour rendre le service qu'on attend d'elles. 

Par ailleurs, dans le cas de la voiture, l'usage consiste à vider un réservoir de pétrole ou bien une batterie, dans le cas du téléphone portale, l'usage consiste à remplir des réservoirs de données. 

Quand on utilise une voiture, on consomme consciemment du pétrole, quand on utilise un smartphone on envoie inconsciemment des données. 

Ces données ne sont donc pas vraiment données mais captées (data / capta)[[@huygheServiceNumeriqueSa2022]]

> Étant donné cette situation, que pouvons-nous nous proposer pour être davantage au fait de ce qui se produit dans les services ou, cela revient au même, pour être moins joués que nous ne le sommes par l’économie de ces services ? Une partie du travail tient au langage avec lequel nous pensons ou, pour être plus juste, croyons penser. Il nous serait utile de re-formuler ce qui a lieu désormais à grande échelle. Je pense en particulier à la notion de « donnée ». Le mot convient-il tout à fait ? Plus juste, me semble-t-il, serait de parler en termes de « prises » ou de « retenues » puisqu’en effet ce que la machine globale prend ou retient de ce que je fais avec elle à chaque fois que je m’en sers, je ne le lui donne que malgré moi, sans savoir ce que je donne.

### données / obtenues

Pour Bruno Latour, les données brutes provenant d'administrations sont insuffisamment enrichies pour intéresser la société civile ou les acteurs économiques, parce que leur contexte de production est très différent des contextes de réutilisation envisagées. 
En France, Etalab a la responsabilité d'encourager l'enrichissement et la présentation des données publiques pour en faciliter la réutilisation.
Ce travail de présentation, d'enrichissement et de mise en forme est conséquent, ce qui fait dire à Bruno Latour que les données sont plus souvent des "obtenues" que des éléments qui ont été donnés par les administrations publiques en vertu de la loi sur la République Numérique ([[@cardonCultureNumerique2019]], p339). 

##  valeur scientifique des données : 

A quel point un jeu de données va faire avancer la recherche (cf. par exemple les données d'une étude clinique)

Dans une approche cumulative du savoir, l'accès aux données permet leur réutilisation à des fins de reproductibilité et garantit donc plus de transparence et d'efficacité dans la recherche.

Cet idéal de la science qui se partage est mis en difficulté par les nécessités de prééminer dans le champ scientifique pour continuer d'exister. 


## valeur symbolique des données : 

Dans la compétition entre laboratoires et chercheurs, les données sont une monnaie dans un marché de la réputation.
Les données sont jugées par les chercheurs très liés aux articles qui comptent dans cette économie de la publication. Leur partage en dehors de ce cadre ne fait pas vraiment sens pour une grande parties des chercheurs.

Cet aspect n'est pas de nature à motiver le chercheur à publier ses données. 

## valeur économique des données : 

coût associé à leur production (un séquençage de génome = 1500 euros) mais aussi rentabilité de leur monétisation

Les financeurs insistent sur le levier de [[croissance]] que représenterait un accès facilité aux données de la recherche (concept [[libéralisme#Néo-libéralisme|néo-libéral]] d'économie de la connaissance).

Pour les plateformes de publication, les données constituent une valeur commerciale importante : l'hébergement de ces données permet de compléter le workflow de la publication en dehors duquel il sera de plus en plus difficile aux chercheurs de se tenir ([[@brembsReplacingAcademicJournals2021]]. 
Ne pas choisir des solutions propriétaires pour héberger ses données dans la mesure du possible. 
L'importance pour les chercheurs de maintenir des standards en matière de partage et de diffusion des données réside dans la capacité qu'ils se réservent de substituer un acteur plus éthique à une firme qui s'avèrerait trop cupide ou trop intrusive (typiquement Elsevier), voir à ce sujet l'article [[stratégie de publication]]

Pour en savoir plus voir [[partage des données de recherche]]


## l'enjeu scientifique du partage des données

Réutiliser des données anciennes permet d'agrandir son [[échantillon vs population|échantillon|échantillon]], particulièrement faire des analyses de données à partir de données compilées augmenter la force statistique de l'étude[[@wilsonSharingBiologicalData2021]]. 

> Researchers can build on previous studies to corroborate or falsify their findings rather than repeating the same experiment





# la conservation et le partage des données. 

Le [[Archivage et diffusion des données de la recherche]] a un coût, c'est pourquoi il n'est pas systématique qu'elles soient conservées au delà de leur valorisation par la production d'un [[articles scientifiques|article scientifique]] 


