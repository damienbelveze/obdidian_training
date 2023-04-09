---
title: Plan de gestion des données
subtitle:
author: Damien Belvèze
date: 20210506
link_citations: true
aliases: [DMP, PGD, Plan de gestion de données, data management plan, plans de gestion des données]
tags: [données_recherche]
---

# définition

Document [[formaliser|formalisant]] la manière dont les [[données de la recherche|données de la recherche]] recueillies à la faveur d'un projet de recherche vont être décrites, conservées (traitées = curated), ([[Anonymat|anonymisation]]), diffusées ou protégées. 
Depuis l'entrée en vigueur de [[Horizon2020]], les agences de financement, comme l'[[Agence Nationale pour la Recherche]] exige des chercheurs la fourniture de ce document 6 mois après la décision de financer le projet de recherche (et une version révisée à 24 mois)

> Les plans de gestion des données sont des éléments\-clé d'une bonne gestion des données. Un plan de gestion des données décrit le cycle de vie de la gestion des données qui seront recueillies, traitées et/ou générées \[...\].

(H2020 Programme Guidelines on FAIR Data Management in Horizon 2020)

# historique et contexte d'apparition

Les PGD sont nés dans les communautés scientifiques. 
Dès les années 70, la NASA donnait des standards pour décrire, classer et conserver des images satellites (rapport technique de 1973)
Aspect patrimonial : ces données coûtent très cher à produire et étaient volumineuses à conserver. 
Aujourd'hui en France, le Plan de Gestion des Données est une étape nécessaire à tout projet de recherche comme l'indique le décret 2021-1572 (3 décembre[[@Decret20211572decembre2021]]) : 

> Les établissements publics et fondations reconnues d'utilité publique mentionnés au troisième alinéa de l'article L. 211-2 du code de la recherche définissent une politique de conservation, de communication et de réutilisation des résultats bruts des travaux scientifiques menés en son sein. A cet effet, ils veillent à la mise en œuvre par leur personnel de plans de gestion de données et contribue aux infrastructures qui permettent la conservation, la communication et la réutilisation des données et des codes sources.

## Quelques chiffres sur l'importance des plans de gestion des données 

Ces chiffres montrent à quel point il est urgent de "convertir" les chercheurs à la rédaction de plans de gestion des données : 

-   50 % des expériences sont considérées comme **non-[[reproductibilité|reproductibles]]**.
-   80 % des données produites ces 20 dernières années seraient **perdues**.
-   93 % des établissements d’enseignement supérieur n’ont pas de démarche de plan de gestion des données de la recherche.
-   90 % des chercheurs interrogés dans le cadre d’un sondage européen disent effectuer de manière individuelle le stockage, l’archivage ou la transmission de leurs données.
-   33 % de ces mêmes chercheurs n’ont jamais entendu parler des plans de gestion de données ou estiment qu’ils n’en ont pas besoin.
-   Plus de 80 % des données produites sont **stockées ailleurs que dans des entrepôts**.

(source : Cécile Arènes[[@ArenesRedigerplangestion2021]])

## quel outil (template) pour rédiger un PGD ?

benchmark réalisé par Laetitia Bracco (intérêts et limites de DMPOpidor, Argos, )

# Les avantages du PGD

## réticences de la communauté des chercheurs

Les PGD sont obligatoires depuis décembre 2021 dans tous les appels à projet de l'ANR
Les communautés scientifiques sont sensibilisées de manière très hétérogène sur la gestion de leurs données. 
Il y a une plus grande antériorité de cette question dans le domaine des sciences humaines et sociales. En 2022, il y a encore peu de retours d'expérience disponibles sur la gestion des données dans le domaine des sciences exactes.

L'obligation du PGD est ressentie comme une intrusion bureaucratique dans le travail du chercheur, une obligation qui vient détourner le chercheur de sa vraie tâche qui consiste à "faire de la recherche" et mettre à jour de nouveaux résultats. 

Le PGD est donc considéré encore bcp comme le produit d'une bureaucratie qui pèse sur la recherche. La tâche de rédiger un PGD est jugée trop lourde ou requérant des compétences qui ne sont pas présentes dans le laboratoire. 
Les services qui pourraient aider les chercheurs dans cette tâche sont souvent négligés ou ignorés par ceux-ci (archives, bibliothèque, DPO)...

Voir à ce sujet la synthèse des remarques recueillies auprès des participants lors des journées des 18 et 25 mars 2022 programmées par RDA Alliance [[@deboinmarie-claudeAmenerScientifiquesVers2022]]

## Accès aux données, les avantages pour l'auteur : 

- conformité avec les exigences des financeurs de la SO (voir ci-dessus)
- transparence dans la production des résultats (reproductibilité)
- visibilité pour les chercheurs, notamment davantage de citations
- possibilités de collaboration avec d'autres chercheurs travaillant sur le même secteur
- anticipation de problèmes qui jusqu'à présent étaient traités (et mal) au moment de la publication : archivage des données, lien avec la publication, anonymisation, problèmes éthiques dus à la collecte des données, licences, propriété des données...

Bien évidemment la transparence favorise le taux de citations, les bénéfices sont liés entre eux. 

### avantage de citation pour les données liées et présentes dans des entrepôts

D'une publication à l'autre les données peuvent avoir des stauts différents : 

- ne pas être du tout accessible (pas de déclaration sur les données)
- être accessibles sur demande
- être accessibles dans la publication ou ses annexes
- être accessibles depuis la publication avec un lien qui renvoie vers un répertoire de données
- être accessibles depuis la publication avec un lien qui renvoie vers un répertoire de données mais avec des restrictions

![data availibility statement](data_citation_advantage.png)

Une étude de 2020, montre que les données accessibles depuis la publication avec un lien qui renvoie vers un répertoire de données ont un bénéfice de citation de l'ordre de 25% sur la moyenne des citations des articles appartenant aux autres groupes [[@Colavizzacitationadvantagelinking2020]]


# structure d'un plan de gestion de données

## où trouver le template du document

livrable demandé de manière fixe 6 mois après le début du projet et de manière variable en fin de parcours (date indiquée dans le premier document)
possibilité de remplir les informations sur DMP Opidor et de télécharger le document

outils pour rédiger des plans de gestion des données : 

- [DSW](https://ds-wizard.org/)(Hollande + République Tchèque)
- [DMP Opidor](https://dmp.opidor.fr/plans/new) France
- [DMP tools](https://dmptool.org/) USA

templates disciplinaires : 

- archéo : [modèle MASA](https://dmp.opidor.fr/template_export/942300517.pdf)
- Géographie : [modèle PRODIG](https://dmp.opidor.fr/template_export/942300517.pdf)
(source : Doranum[[@PGDOutilRedaction2020]])

## structure de base d'un DMP

- Décrire le jeu de données
- Documenter (fournir les info qui gravitent autour du jeu de données)
- stockage : 3/2/1 trois back-ups sur 2 supports différents dont 1 à distance
- exigences légales et éthiques : licences, RGPD
- Partage des données et conservation à long terme : ne pas confondre l'archivage et le stockage ([[archivage]] = migration des formats) - identifier l'entrepôt de données en fonction de la découvrabilité (un entrepôt disciplinaire est plus riche en métadonnées pertinentes)
- responsabilités

exemple de description de données, voir présentation de Cécile Arènes (DMP one tool with many applications[[@HuserDatamanagementplans2022]])

## plan de gestion de données structuré pour une lecture artificielle

PGD structuré = *machine actionable*

Intérêts du PDG structuré : 

- facilite la réutilisation automatique de l'information (par exemple dans les projets ANR)
- Encourage le recours aux identifiants pérennes (pour les contributeurs, les organisations et les partenaires, etc.)
- propose des entrepôts où déposer ses données (et des thesaurus ou des vocabulaires pour les décrire)
- identifie et liste les coûts relatifs à la gestion des données
- simplifie l'échange et l'automatisation des informations entre les services qui interviennent dans la gestion des données
- Permet de créer des DMP compatibles avec le format RDA DMP Common


Cette structure va légèrement changer. 
Opidor : *machine actionable DMP* : export du PGD en Json (en complément de la version en ligne du plan de gestion)

[instructions pour trouver et remplir un DMP structuré](https://github.com/OPIDoR/DMPOPIDoR/blob/dmpopidor-master/public/files/DMPOPIDoR/DMPOPIDoRV3_Guide_Utilisateur.pdf)

Voir [contenu d'une formation de l'INIST](https://www.inist.fr/wp-content/uploads/2022/01/Inist-CNRS_DMP-OPIDoR_Modele-plus-structure_2022-01-27_PDF.pdf) (février 2022) sur les DMP structurés


![[Inist-CNRS_DMP-OPIDoR_Modele-plus-structure_2022-04-05_PDF.pdf]] : version avril 2022 de la présentation d'Yvette Lafosse et Laurent Rassinoux (INIST-CNRS, intervenants OPIDOR)


La partie rédigée est plus complète dans le modèle structuré (lien avec les référenciels, les langages de métadonnées)
référentiels communs au modèle classique et modèles spécifiques au modèle structuré.

[Liste des référentiels](https://dmp.opidor.fr/static/about_registries)

![](DMP_struc1.PNG)


Modèle structuré de Sciences Europe (choisir la version française ou anglaise de Sciences Europe)
Organisé en 12 questions - respect des principes FAIR

Dans la partie information générale, commune avec le modèle classique, sélectionner le nom du projet ANR dans le formulaire pour les faire entrer dans le DMP
Dans l'anglais contributeurs on peut rajouter une autre personne ou organisation qui contribue à la gestion des données. Les rôles seront attribués automatiquement

onglet concernant les produits de recherche (images, jeu de données, logiciels, corpus de textes, etc.).
entrer chaque produit de recherche.

Dans l'onglet Rédiger, on va répondre aux mêmes questions pour chaque produit de recherches
ajouter des mots-clé libres et des mots-clé issus de thésaurus comme celui du thesaurus de l'INRAE ou le thésaurus [HyperRéseau](https://imu.universite-lyon.fr/projet/hypertheseau-hyper-thesaurus-et-lacs-de-donnees-fouiller-la-ville-et-ses-archives-archeologiques-2018/) pour l'archéologie, ou [gemet](https://www.eionet.europa.eu/gemet/en/about/) pour la géographie ou l'environnement (voir [[Osuris]])

attribut sujet lié au thésaurus INRAE
indiquer la personne contact pour la description des données

indiquer l'identifiant pérenne du produit de recherches
indiquer s'il s'agit de données personnelles ou des données sensibles il faut l'indiquer.

indiquer si les données qu'on réutilise ont un coût (par exemple coût de stockage de données anciennes).
sélectionner le plateau technique qu'on veut utiliser
sélectionner dans la liste la personne qui va être responsable de la collecte de données. 
Indiquer le standard de métadonnées qui va être utilisé (Darwin Core, Dublin Core)

pas de référentiel à ce jour pour le code éthique. on peut rajouter par exemple le nom du DPO, personne ressource pour la protection des données. 

choix dans une liste fermée de l'entrepôt dans lequel on va déposer ses données et choix de la licence du dépôt. Indiquer l'URL. 
Liste des services d'archivage pérenne. 

Les contributeurs vont voir leur rôle augmenté de la fonction qu'on a sélectionnée dans la rédaction du PGD.

Le DMP structuré permet de visualiser très vite les contributeurs avec leur rôle et les éléments de coût. 

possibilité d'exporter le PGD en Json pour faciliter les échanges entre machines. 
Format par défaut (format plus riche mais moins interopérable que le format RDA)
On échange plus facilement en [[format RDA]] avec d'autres systèmes d'information. 
On pourra bientôt importer des PGD d'une plateforme étrangère à OPIDOR, grâce au format RDA
Json permet d'intégrer le DMP dans une [[base de données]] en SQL

On ne peut pas avoir plusieurs personnes contact pour un même produit de recherche, mais l'ensemble des personnes contributrices peuvent être mentionnées dans la description du produit de recherche.

Dans le DMP, il faut planfier les coûts de conservation des données à venir. 

Le propriétaire et les éventuels co-propriétaires peuvent ajouter des contributeurs
3 rôles (au sens informatique) : 
- propriétaire
- co-propriétaire
- éditeur
ne pas confondre les collaborateurs du projet et les contributeurs du DMP. 

Plus d'infos sur la FAQ d'Opidor https://opidor.fr/category/dmp-faq/

exemple de DMP machine actionable conçu pour les projets OpenAire : [argos](https://argos.openaire.eu)

# Accompagner les chercheurs à la rédaction d'un PGD

éviter le syndrôme du *congélateur de données* (il faut qu'il y ait une panne sur un entrepôt pour qu'on se pose la question de ce qui s'y trouve)


L'incitation des financeurs est déterminante, mais les chercheurs peuvent venir de leur propre impulsion ou devancer cette injonction en posant ce type de questions :

![](questions_donnees.png)
(source[[@BraccoCommentmonterservice2021]])

démystifier la création d'un DMP en mettant en pratique sa rédaction. 

## relire les projets de financement à l'aune de la [[science ouverte]]

nécessité une collaboration avec le service en charge du montage de ces projets.
Vérifier que le projet de financement prévoit bien la conservation, la gestion et le partage des données
Pour cette relecture, se service du [guide](https://zenodo.org/record/3769954) de Cécile Arènes et Laëtitia Bracco

## Mettre en place des ateliers de relecture de PGD

(source: Café [Renatis](https://www.canal-u.tv/chaines/renatis/cfe-renatis-retours-d-experience-accompagner-a-la-redaction-de-pgd))

relecture de plans publics.

On ne peut pas demander à chaque chercheur d'apporter son plan ; partir sur une idée de relecture d'un PGD public sur Opidor. 
Exemple avec le [Plan de gestion de données Atlas de Joseph Lamarange](https://dmp.opidor.fr/plans/3354/export.pdf)
création sur cette base d'un faux DMP
atelier de relecture de 2 heures (avec trois sous-groupes qui se répartissent le travail)

Mise à disposition d'une grille de relecture de métadonnées. Cette grille détaille tous les contenus. cela permet aux apprenants de cocher au fur et à mesure la qualité des informations fournies. 

chaque atelier réparti en 3 sous-groupes. Un animateur présent dans chaque sous-groupe. 
période de restitution en fin d'atelier. 


## Mettre en places des formations pour les doctorants et les chercheurs

[grille de relecture des PGD (modèle ANR)](https://doranum.fr/wp-content/uploads/Grille-relecture-PGD-Modele-ANR-V3.pdf)
utiliser cette grille pour mettre en place des ateliers

pouvoir accompagner les chercheurs sur des questions liées à des contenus spécifiques et pour lesquels ils ne vont pas trouver de réponses sur des modules d'auto-formation qui restent assez généraux.

Faire ressentir que la rédaction d'un PGD n'est pas un acte adminstratif mais une pratique de chercheur/se

### dispositifs de formation à destination des doctorants

 - formations doctorales
 - déplacements en labo
 - formations lors d'événements sur les données de la recherche

voir formation de l'université Toulouse Jaurès (formation en hybride, formation en présentiel à 6 et 24 mois + auto-formation sur Moodle)

![](competences_PGD.png)

en vue : parcours pour les porteurs de projet + parcours sensibilisation ouvert à l'ensemble des chercheurs de l'établissement.

problème soulevé : données imprimées dans les thèses, dynamique lancée par le SCD pour résoudre ce problème. 
Rencontre avec les informaticiens, le service valo, les juristes, l'archiviste, le DPO.
Chaque corps de métier donne les formations qui le concerne. Tout ce qui est RGPD va être donné par le DPO, tout ce qui est légal par les juristes et tout ce qui est informatique par la DSI. Les facilitateurs et les coordinateurs sont les bibliothécaires.

### jeux sérieux

Une [revue des jeux sur la gestion des données]( https://zenodo.org/record/6854387) par le GTSO Données

[GOpenDore](https://www.inist.fr/nos-actualites/jeu-gopendore-telechargement/)

[Faut pas s'en FAIR](https://www.inist.fr/nos-actualites/faut-pas-sen-fair-sur-les-donnees-de-la-recherche/)

[Research Data Management Game Adventure](https://rdm-games.gitlab.io/rdm-adventure/): mettez-vous dans la peau d'un chercheur qui doit aider son équipe à obtenir un projet de recherche, à mener ses recherches et à les publier. A chaque étape, la gestion des données est importante à prévoir et à faire. 
Jeu sérieux rédigé par l'Université de Bath avec [[Twine|twine]]

# les différentes parties d'un PGD

Les points suivants sont ordonnés suivant le plan du PGD-type sur DMP-Opidor

## 1. description des processus ayant permis de collecter des données ou d'en réutiliser

### 1.1 Comment les données vont-elles être produites ou comment ont-elles été réutilisées 

#### 1.1.1 méthodes et logiciels de collecte ou de production

Pour les SMP (Software Management Plan), voir le guide [paru en décembre 2022 d'Opidor](https://opidor.fr/nouveau-guide-pratique-pour-lelaboration-de-plans-de-gestion-de-logiciels/?utm_campaign=Data%20veille&utm_medium=email&utm_source=Revue%20newsletter)

#### 1.1.2 contraintes liées à la réutilisation de données dans le cas du projet

#### 1.1.3 description des données produites ailleurs et réutilisées

#### 1.1.4 Raison pour lesquelles certaines données pourtant pertinentes ont été écartées après examen

### 1.2 Quelles données (type, format, volumes) de données vont-elles être collectées ou produites ? 

## 2. Documentation et qualité des données

### 2.1 quelles métadonnées accompagneront les données ?

#### 2.1.1 Quelles métadonnées vont permettre aux autres chercheurs d'identifier les jeux de données produits ?

#### 2.1.2 Quels standards de métadonnées vont être utilisés ?

Pour trouver les standards de métadonnées à utiliser en fonction du contenu, chercher sur le site [Fairsharing](https://fairsharing.org)

Par exemple, métadonnées standard pour les images biomédicales = [REMBI](https://fairsharing.org/523)


#### 2.1.3 Liens avec les schémas de métadonnées existant dans la discipline (thesaurus)

#### 2.1.4 Informations sur la manière dont les données vont être traitées au cours du projet (structure des fichiers, version de contrôle, conventions de nommage des fichiers)

[[conventions de nommage]]

#### 2.1.5 Quelles autres informations sont utiles pour la réutilisation de ces données (y compris à des fins de reproductibilité)

#### 2.1.6 indication sur la disponibilité des infomations citées plus haut (notebooks, fichier READme, etc.)

Structured README files are great, but could there have been an even more useful option? Using a metadata standard would have made it easier for other researchers to understand and process the data. Inline documentation won’t get lost and may be useful to automated tools, while keeping comprehensive structured notes in a lab notebook would help keep your documentation to an agreed standard.

### 2.2 Quelles mesures de contrôle vont être opérées sur les données

> processes such as calibration, repeated samples or measurements, standardised data capture, data entry validation, peer review of data, or representation with controlled vocabularies




## 3. conservation et sauvegarde pendant le processus de recherche

### 3.1 Comment les données vont-elles être sauvegardées et conservées pendant le processus de recherche

emplacements pour la sauvegarde et la conservation, régulaité de la sauvegarde

### 3.2 Quelles mesures de protection vont être appliquées aux données pendant le processus de recherche

### 3.2.1 récupérations en cas d'accident

#### 3.2.2 distribution des accès, protocole d'accès

#### 3.2.3 Conservation de données personnelles ou sensibles : comment vont-elles être protégées ? quel modèle de menace

chiffrement pour résister à une attaque informatique ? qui détiendra la clé de déchiffrement.

#### 3.2.4 Quelle protection institutionnelle en oeuvre pour la sécurisation de ces données

déclaration de collecte de données personnelles auprès de la DPO (voir [[RGPD]])

## 4. Obligations éthiques et code de conduite

### 4.1 Le cas des données personnelles

#### 4.1.1 collecte des formulaires de consentement

#### 4.1.2 Coûts et protocoles d'anonymisation

#### 4.1.3 Choix anonymisation ou pseudonymisation des données

voir [[pseudonymat]] et [[Anonymat|anonymisation]]

#### 4.1.4 Procédure d'accès aux données personnelles

### 4.2 propriété intellectuelle

#### 4.2.1 qui aura l'accès aux données, qui est le propriétaire des données

#### 4.2.2 Accès restreint ou ouvert aux données partagées ? 

#### 4.2.3 Quels sont les autres droits en jeu

Droits sur les logiciels utilisés créant des droits sur les données produites

Question (données-inter_réseaux) : Un capteur va être développé avec des calculs embarqués. Les algorithmes sont entrainées sur des BDD en partie "propriétaires" (BDD fournis par des naturalistes). A noter que certaines BDD propriétaires seront enrichies via une prestation dans le cadre du projet. Ce capteur va être développé au stade d'un prototype puis transféré vers une entreprise. Ce transfert vers une entreprise pose question relativement au fait que les propriétaires des BDD ne souhaitent pas qu'il y ait un usage commercial.  
  La convention de partage des BDD (BDDp pour celles des propriétaires et BDDp++ pour celles augmentées des données de la prestation) doit préciser la licence d'exploitation. Et dans le cas où celle-ci était CC-BY-NC-SA, quelle serait la contrainte pour l'entreprise?

Réponse (Eric Quinton) : 
Dans un cas comme celui-ci, pour se prémunir de toute interprétation ou recours, il faudrait demander aux naturalistes qui ont fourni les bases de données un accord pour l'utilisation de leurs infos dans le but d'entraîner l'algo et ses évolutions, si c'est possible. Il me semble également qu'il serait préférable que le code de l'algo soit publié en open-source, avec une licence de type LGPL, pour que toute amélioration soit portée à la communauté : cela resterait conforme au fait que les données ne sont pas utilisées à des fins commerciales (l'algo reste libre). Seule la partie physique du capteur et l'implémentation de l'algo sont commercialisées, étant entendu que d'autres personnes peuvent également réaliser ce type de travail.

Cas des données d'apprentissage (deep learning) : propriété revenant au concepteur de l'algorithme ou bien aux auteurs (pas toujours bien identifiés) des multiples jeux de données qui constituent par fusion les données d'apprentissage ?

#### 4.2.4 restrictions éventuelles à la réutilisation sur les données ré-utilisées

### 4.3 Questions éthiques

#### 4.3.1 Comment la nature des données d'un point de vue éthique peut avoir un impact sur leur conservation ou leur réutilisation ?

voir document de la commission européenne sur les aspects éthiques [[@europeancommissionGuidanceHowComplete2019]]  : cette checklist est faite pour aider les chercheurs à trouver des financements, mais les réponses qui y sont apportées vont conditionner une plus ou moins grande ouverture des données

#### 4.3.2 Quels standards en matière d'éthique ont été utilisés pour autoriser la collecte d'informations

Référence aux comités d'éthique, dépôt des projets de collecte sur Prospero, etc.

## 5. Partage des données et conservation sur le long terme

### 5.1 Ouverture des données, restrictions et embargos

Quelle licence appliquer au jeu de données
S'ils s'agit de données publiques, on n'a le choix en France qu'entre Etalab et ODbL[[@ginouvesPourquoiCommentOu]]

#### 5.1.1 trouvabilité des données

Quel entrepôt ? délivre des DOI ? modération de l'accès aux données ? indexation du jeu de données dans un catalogue ? 

Faut-il donner le même titre au dataset qu'à l'article : using the exact same title for both your paper and the underlying dataset; even if you don’t get the two mixed up, other people and computer algorithms probably will


#### 5.1.2 période de conservation des données

période pendant laquelle les données vont être conservées ([[cycle de vie de la donnée]]), coût de la conservation pendant cette période

#### 5.1.3 échéance de la mise en accès des données

préciser s'il y aura un embargo à la réutilisation de ces données et de quelle durée, justifier cet embargo (publication ? dépôt de brevet ?)

> il faut pouvoir argumenter pour préciser pourquoi des données sont fermées mais il est toujours possible de fixer un embargo, de se réserver l’exclusivité des données utilisées pendant une durée déterminée. A l’expiration de l’embargo, ces données seront accessibles et utilisables par toutes et tous

source: [[@ginouvesPourquoiCommentOu]]

#### 5.1.4 Les données seront-elles restreintes à certains publics

et si oui sur quel critère, comment demander à avoir accès, quelles informations fournir ?

### 5.2 Comment les données finales ont été sélectionnées et comment seront-elles conservées sur le long-terme

#### 5.2.1 Quelles données devront ne pas être communiquées ou détruites et pour quelles raisons ? 

#### 5.2.2 Préciser le processus de sélection des données qui seront conservées sur le long terme

#### 5.2.3 Indiquer quelques pistes de réutilisation des données ou quelles communautés trouveraient de l'intérêt à réutiliser ces données

#### 5.2.4 Où les données ont-elles été déposées (si pas dans un répertoire de données)

### 5.3 Quelles méthodes ou logicielles sont nécessaires pour obtenir les données

#### 5.3.1 Comment a t-on facilité à l'utilisateur l'extraction des données

importance des logiciels libres

#### 5.3.2 autres précisions sur les manières d'accéder aux données

### 5.4 identifiants pérennes pour les jeux de données

Veiller à ce que l'entrepôt de données permette d'obtenir un [[DOI]]

## 6. Responsabilités dans la gestion des données

### 6.1 Qui sera responsable du traitement, de la conservation et du partage des données 

(nom, rôle, fonction, institution)

#### 6.1.1 Préciser les différents rôles et interventions

#### 6.1.2 Dans un cadre multi-établissement, comment sont partagées les opérations sur les données

#### 6.1.3 Qui est responsable du DMP et de sa révision 

#### 6.1.4 quelle échéance pour la prochaine révision du DMP

### 6.2 Quelles ressources pour vérifier que les données sont [[FAIR]]

#### 6.2.1 Coûts du traitement de la donnée

conservation
archivage
anonymisation
curation

