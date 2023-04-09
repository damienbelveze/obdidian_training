---
title: Comment stocker les données de la recherche
subtitle: Notes webinaire INIST / Service de la data UGA
author: Damien Belvèze
date: 20210525
link_citations: true
aliases: [stockage de données,archivage des données de recherche]
tags: [données_recherche]
---

# perte rapide de l'accès aux données nécessaires à l'administration de la preuve

Etude de 2013 parue dans Nature

![](perte_donnees.png)
source : [[@gibneyScientistsLosingData2013]]
80% des données sous-jacentes sont indisponibles après 20 ans.

# L'enjeu du stockage des données

Le stockage de données consiste à enregistrer des [[données de la recherche|données de recherche]] sur un support physique La sauvegarde de données consiste à créer une copie de ces données stockées
L'[[archivage]] de ces données consiste à rendre ces données accessibles et utilisables sur le long terme en en faisant la [[curation]] (lutte contre l'[[obsolescence des formats]] par des conversions successives dans le temps, [[règles de nommage]] et description permettant leur réutilisation dans le temps)

# Pourquoi ne pas confier cette charge aux éditeurs ?

généralement les éditeurs proposent d'héberger les jeux de données en même temps que les articles (en lien étroit avec ceux-ci) sous la forme de supplementary material, il est préférable de choisir un autre répertoire de données tiers pour trois raisons :

- les répertoires de données, vous donnent plus de latitude pour commenter les données
- l'hébergement de vos données par l'éditeur peut nuire à l'ouverture de ces données ou aux réutilisations possibles
- les multinationales de l'édition scientifique peuvent avoir un usage de ces données qui est contraire à l'esprit de la [[Science ouverte]]

Ces trois raisons sont exprimées ici [[@ouvrirlasciencePartageDonneesLiees2022]]

> Il est recommandé de ne pas confier les données à partager aux éditeurs des revues qui proposent de les publier sous forme de « supplementary data » ou de « supplementary materials» associés à l’article. Une telle publication se fait encore souvent dans un format et un environnement qui ne permettent pas de documenter correctement les données et rendent difficile leur réutilisation. Elle peut aussi s’accompagner d’une demande de transfert exclusif de droits contraire à la loi française et à l’esprit de la science ouverte. Enfin, dans certains cas, elle contribue à rendre les utilisateurs captifs au sein d’environnements maîtrisés par de grands acteurs commerciaux de l’édition scientifique.


![[20210525_stockage_donnees_recherche.pdf]]


# Quelles vérifications faire avant de déposer un jeu de données

![[diffusion_donnees.pdf]]

- vérifier quelles données accepte l'entrepôt (certains entrepôts n'acceptent que les données issues des publicatons)

- vérifier que les données sont en format libre, sinon les convertir de leur format propriétaire natif vers un format libre. 

- Penser à la réutilisation de ces données : adopter un nom clair et un descriptif complet. 

- réfléchir aux métadonnées avec lesquelles on va décrire la ressource

- réfléchir à la licence qu'on va appliquer à ces données.

# Quel entrepôt de données utiliser

La question de l'entrepôt s'impose très vite, au moins au cours de la rédaction d'un [[Plan de gestion des données|Plan de gestion de données]]
pratique des collègues de Doranum et de l'Université Toulouse-Jean Jaurès : 

inciter d'abord au dépôt des données dans un entrepôt spécialisé (sciences humaines : Nakala) et sinon dans un deuxième temps, inciter au dépôt dans l'entrepêt recherche data gouv (ouverture prévue au printemps 2022)

## trouver des entrepôts au moyen d'un annuaire

[Re3data.org](https://www.re3data.org/) : annuaire des entrepôts de données institutionnels/ généralistes

[Fair sharing](https://fairsharing.org/) (anciennement *Biosharing*): annuaire d'entrepôts dans le domaine de la santé, sciences environnementales, sciences de la vie et sciences médicales

code informatique : HAL (envoi du document vers Sotware heritage). Depuis 2018, quand on dépose du code dans HAL il est conservé dans Software Heritage (archive créée par l'INRIA ([source](https://www.ccsd.cnrs.fr/en/project/software-heritage-2/))

## Entrepôts utilisés à Rennes 1


| discipline | entrepôt | URL |
|:---:|:---|:---|
| images (SHS) | MediHal | https://medihal.archives-ouvertes.fr/ |
| code | HAL | https://hal.archives-ouvertes.fr |
| BioInformatique | GenOuest | [GenOuest](https://www.genouest.org/) |
| Sciences Humaines | Nakala | |
| Mathématiques | pas d'entrepôt, voir avec le [groupe RNBM](https://www.rnbm.org/category/le-reseau/groupes-de-travail/donnees-maths/) | |
| environnement rennais | [[Osuris]] | [Osuris](https://accueil.osuris.fr/) |
| Sciences de la terre | Data Terra | [data terra](https://www.data-terra.org/) |
| Sciences de la mer | Data Ifremer | [data ifremer](https://data.ifremer.fr/), [seanoe](https://www.seanoe.org/) |
| sciences médicales | entrepôt INSERM | EDI sur RDG |

entrepôts institutionnels

| institution | Pays | entrepôt | URL |
|:---:|:---:|:---:|:---:|
| Université de Lorraine | Lorraine | DOREL | https://factuel.univ-lorraine.fr/node/18396 |

## offre de service d'Eskemm Data

GIP, datacenter labellisé en Bretagne

![](eskemm.PNG)

mutualisation de serveurs. 
but : 
- meilleure efficacité énergétique (voir [[PUE]])
- répondre aux enjeux de sécurisation du patrimoine informationnel.

En utilisant le datacenter régional, les laboratoires ne paieront plus du matériel mais des frais d'utilisation. 
Projet breton structuré en deux étapes : 
- construire à peu de frais une première salle avec une capacité modeste (24 armoires infos), salle de très haute performance avec une très bonne capacité énergitique
- La deuxième salle doit être livrée courant mars 2023.

Les deux salles se situent au sous-sol de l'IRT B-Com
Le site final se trouvera sans doute sur le campus de Centrale Supelec.
# dépôt du code-source des logiciels

Software Heritage assure la conservation du code source des logiciels utilisés pour traiter les données à travers la plateforme HAL. 

>par défaut, un logiciel sans licence n'autorise personne à l'utiliser.
Une licence est donc essentielle pour permettre son usage, mais aussi à d'autres personnes de l'utiliser, le modifier et reverser à la communauté les évolutions 

(Source : Philippe Gauron, mail du 22/02/2022 sur Accès Ouvert)

Les licences recommandées par l'Etat français pour permettre la réutilisation du code produit par l'administration sont indiquées [sur le site data.gouv.fr](https://www.data.gouv.fr/fr/pages/legal/licences/)

Pour comprendre à quoi correspondent licences permissives et licences à réciprocité : 

   > **les licences permissives** qui ne protègent que la paternité des auteurs et limitent leur responsabilité. Elles autorisent la réutilisation, rediffusion, exploitation même commerciale ou modification de licence. Parmi celles-ci, on peut citer :
     pour les logiciels : les licences BSDL, Apache, CeCILL-B et MIT. Voir sur ce site une liste des licences disponibles.


   > **les licences avec obligation de réciprocité** qui obligent à conserver les conditions de la licence d’origine, et doivent la propager à toute œuvre dérivée. En particulier, elles peuvent restreindre l’utilisation commerciale des données et du code. Parmi celles-ci, on peut citer :
     pour les logiciels : les licences Mozilla, GNU GPL et CeCILL (voir à nouveau ce site)
 

(source: Céline Smith sur la liste Accès Ouvert, 21 février 2022, 17h15)

Voir aussi le [niveau de propriété intellectuelle](https://hal.archives-ouvertes.fr/hal-02399517/file/20191202_plaquette_pi_licences_V1.1.pdf) du code en fonction du statut du créateur.
Pour choisir une licence sous laquelle diffuser le logiciel, voir la présentation de Teresa Gomez-Diaz [[@Gomez-Diazlogicielsrechercheleurs2019]]


# Minimiser l'impact environnemental

![](images/donnees_recherche_environnement.png)

source : https://opendatafrance.gitbook.io/greendata-pour-un-impact-maitrise-des-donnees/greendata/1.1-contexte

# comment faire référence à ces données

il est recommandé de déposer ses données dans un entrepôt avant de publier, car une fois l'article publié, il n'est plus possible de faire un lien de l'article vers le jeu de données sur le site de l'éditeur comme on peut le faire en revanche sur l'entrepôt de données vers le site de l'éditeur. 
Le seul moyen qui nous reste est de faire un lien dans le MAA qu'on dépose sur l'archive ouverte.

On peut aussi réserver un emplacement (ID) sur un entrepôt de données avant de déposer les données et faire mention de cet ID (un [[DOI|Direct Objetc Identifier]]) dans l'article qu'on rédige, même si l'emplacement est encore vide des données qu'on va y verser après publication. 

Si le jeu de données est original, prévoir avant la bibliographie un espace "disponibilité des données", s'il s'agit d'un jeu de données qu'on réutilise, le mentionner dans la bibliographie. [[@ouvrirlasciencePartageDonneesLiees2022]]

# Diffusion des données : sous quels droits ?

Diffusion des données et Loi Numérique [[@GuideApplicationLoi2022]]

