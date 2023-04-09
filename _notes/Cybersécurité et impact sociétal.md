---
title: impact social de la cybersécurité
subtitle: plan de cours pour 20 heures étudiants
author: Damien Belvèze
date: 04-06-2022
link_citations: true
aliases: []
tags: [vie_privée]
---


# introduction

Le présent document trace les grandes lignes d'un cours hybride de 20 heures comportant 5 heures de cours en face à face.
Ce cours est à destination de 60 étudiants de troisième année de licence en informatique. 

# 1. Compétences visées

- rédiger des notes de lecture  
- réaliser un travail collaboratif à deux niveaux (sous-groupe et groupe entier)  
- chercher de la documentation pluridisciplinaire sur un sujet donné  
- utiliser des formats ouverts, interopérables  
- utiliser des outils collaboratifs respectueux de la vie privée  

# 2. Connaissances 

Le cours porte sur l'enjeu que représente la préservation de la vie privée en ligne et la réception des outils conçus pour protéger cette vie privée par le grand public. Plutôt que de délivrer un cours sur ce sujet, les enseignants laissent le soin aux étudiants de bâtir eux-mêmes le contenu du cours sous la forme de fiches liées entre elles et à partir de lectures soumises par eux ou sélectionnées par les étudiants eux-mêmes.

# 3. Objectifs du cours

Réaliser un site sur la thématique sous la forme d'un graphe public de notes de lecture. 
Pour ce faire, n'utiliser que du logiciel libre -y compris pour le travail collaboratif-
- Gestion des références bibliographiques : [Zotero](https://zotero.org)  
- Edition des notes : [Zettlr](zettlr.com/) ou [CodiMD](https://codimd.math.cnrs.fr)  
- outil de travail collaboratif et de sauvegarde : git (et gitlab installé sur un serveur de l'université ou à défaut [framagit](https://framagit.org))  
- édition du graphe de notes : [Cosma](https://cosma.graphlab.fr/)  


# 4. Etapes du cours 

- Exposé de la thématique (cybersécurité, [[Vie privée|vie privée]])  
- carte mentale avec les étudiants sur les concepts principaux  
- constitution de groupes thématiques  
- téléchargement d'un nombre déterminé de textes depuis une bibliothèque en ligne par chaque groupe  
- vérification des métadonnées présentes dans les références proposées  
- lecture et annotation des textes  
- rédaction à partir des notes prises d'une fiche de lecture selon la méthode THOMAS (voir ci-dessous)  
- recherche de nouveaux textes sur l'un des sujets retenus  
- formatage des notes de lecture et chargement dans un entrepôt git  
- ajout de liens vers d'autres fiches de lecture en cours de construction  
- ajout de commentaires sur d'autres fiches de lecture (pour intégration ou non selon le jugement de l'autre groupe)  

# 5. Répartition des heures

On compte ici le nombre d'heures par étudiants. 
Par "enseignant", on entend ici des personnes pouvant être mobilisées pour animer ce cours : enseignants-chercheurs, ingénieurs de recherche, bibliothécaires, doctorant.  
L'UE implique au moins deux enseignants qui suivent l'ensemble du développement. D'autres enseignants peuvent proposer des textes et être sollicités pour aider les différents sous-groupes lors de la séance intermédiaire.  
Quand les sous-groupes sont convoqués pour la séance intermédiaire, cela représente du côté enseignant entre 3h et 4h et demie selon le nombre d'enseignants qu'on arrive à mobiliser sur cette séance (chaque enseignant mobilisé oriente plusieurs sous-groupes).

| heures | activité |
|:---:|:---:|
| 1,5 | découverte de Zotero |
| 1,5 | Rédaction de notes dans Zotero, découverte du markdown |
| 1,5 | recherche documentaire guidée |
| 1,5 | retour sur Git et Gitlab |
| 4 | travail en autonomie et en sous-groupes |
| 1,5 | séance intermédiaire avec les différents sous-groupes |
| 7 | Rédaction des fiches et liens entre les fiches (travail en automie) |
| 1,5 | Bilan, évaluation du dispositif, présentation du graphe |



# 6. Descriptif du cours

La pandémie de COVID-19 a accéléré la production de cours hybrides au sein de l'université. Ces cours toutefois ont la plupart du temps pour caractéristique commune de proposer aux étudiants des synthèses suivies d'activités ou d'exercices. Plus rares sont les dispositifs dans lesquels les étudiants sont les principaux producteurs de contenu et où les enseignants jouent le rôle d'accompagnateurs et de relecteurs (caution scientifique du contenu) 

Nous proposons ici un dispositif qui permet aux étudiants d'appréhender un sujet en leur faisant construire eux-mêmes le contenu de la formation. Le sujet porte sur le futur de la vie privée dans les activités en ligne et l'impact social des moyens mis en oeuvre pour éviter la disparition de cette vie privée.

## une posture renouvelée des enseignants

Le ou les enseignants qui administrent ce cours ne produisent pas eux-mêmes les contenus. 
Les fonctions qu'ils endossent sont les suivantes : 
- ils organisent le groupe classe en sous-groupes de 4 personnes au maximum en aidant ces sous-groupes à définir à travers un sous-thème (par exemple, l'appropriation par le grand public des outils de chiffrement) leur champ d'investigation particulier.   
- ils sélectionnent un ensemble de texte qui vont être synthétisés en fiches par leurs étudiants.    
- ils donnent des pistes pour trouver d'autres textes en lien avec le sujet.  
- ils présentent les différentes étapes du travail.    
- ils assurent une formation basique aux outils à utiliser ou bien mettent à leur disposition des outils d'autoformation.     
- ils répondent à travers un espace de discussion (à déterminer, voir ci-dessous) aux questions techniques posées par les étudiants.    
- ils vérifient que tous les sous-groupes sont actifs et relancent l'activité de ceux qui ne le sont pas assez.  
- ils assurent une brève relecture des contenus qui ne saurait être exhaustive. Des expériences précédentes montrent que garantir une validité scientifique de tous les contenus présentés dans ce genre de dispositif n'est pas possible.   

## susciter l'engagement étudiant

Des expériences récentes montrent que les étudiants ont tendance à assurer une contribution minimale pour obtenir les crédits du cours [[@pudelkoConcevoirEncadrerWiki2019]]. Il est nécessaire d'être explicite sur ce qu'est ce niveau de contribution minimale : rédaction d'une fiche à partir d'une référence assortie de *n* contributions sous la forme de liens vers d'autres fiches ou de commentaires signés déposés sur d'autres fiches que celles qu'ils rédigent. Le recours au wiki permet de se faire une idée des contributions de chaque étudiant mais de manière assez biaisée (les étudiants peuvent travailler à plusieurs autour d'un même ordinateur, branché sur un même compte). Dans le cadre de la rédaction de notes, les contributions (rédaction d'une fiche ou dépôt d'un commentaire doivent être signées). Les liens entre fiches en revanche, ne pourront pas être attribués. Hormis le déclaratif, il n'y a donc pas de moyen de mesurer le contribution de chaque étudiant. 

Les étudiants sont réticents à rendre le produit d'écriture visible aux autres, ils redoutent également de porter une appréciation sur le travail de leurs condisciples (cf.[[@pudelkoConcevoirEncadrerWiki2019]] et [[@bourbeillonAgirEnsembleDans2022]]). 
On peut leur demander de faire des liens à partir des fiches sur lesquelles leur sous-groupe travaille vers les fiches d'un autre sous-groupe. On peut également leur conseiller de laisser des suggestions d'enrichissement en lien avec les fiches dont ils sont responsables sur les fiches des autres sous-groupes. 

Puisque l'idée est de lier par des liens hypertextes les fiches entre elles, il est important que les étudiants acquièrent une connaissance d'ensemble des fiches (et une connaissance d'ensemble des textes qui servent de matière première aux fiches de leur sous-groupe)

## L'écriture réflexive : une manière d'apprendre

Le dispositif présenté rejoint la perspective du *writing-to-learn* de Bereiter et Scardamalia [[@bereiterLearningWritingReading1984]]. 
L'étudiant est invité non seulement à résumer un texte mais à évaluer son apport pour une problématique particulière (par exemple l'apparent conflit entre respect de la vie privée et sécurité collective), ainsi qu'à se positionner par rapport à ce texte (pour ou contre en argumentant et en nuançant). Ce processus permet à l'étudiant en posant ses idées sur le papier de prendre conscience des apories auxquelles le mènent ses idées préconçues. Cette découverte de ses propres failles de raisonnement vont l'emmener à chercher dans les textes proposés ou les écrits de leurs camarades de quoi surmonter ces contradictions. 

L'écriture réflexive à plusieurs aide en outre les étudiants à s'habituer à ce que des pairs relisent, commentent et au besoin critiquent leurs propres écrits [[@pudelkoConcevoirEncadrerWiki2019]] : 

>Il s’agit tout d’abord d’aider les étudiants à reconnaître que leurs idées, une fois externalisées, peuvent être améliorées, synthétisées, transformées, critiquées, etc., autrement dit, que leurs idées, tout comme celles des autres, peuvent et doivent faire objet d’un travail de transformation continue, à la fois individuel et social

### Sélectionner et fournir aux étudiants des textes destinés à susciter l'esprit critique

Nous conservons volontairement une grande diversité de textes à lire et analyser. Les textes proposés sont de plusieurs niveaux : il peut s'agit de textes de vulgarisation ou bien d'articles de recherches. 
Nous choisissons aussi des textes rédigés par des spécialistes mais aussi des textes dont le but est implicitement publicitaire (qui font par exemple de la sécurité informatique un produit alors que celle-ci repose en réalité sur un process impliquant tous les acteurs d'un organisme ou d'une institution).
Les étudiants seront donc confrontés à des textes de difficulté inégale mais équitablement répartis entre les différents groupes, ainsi que des textes entrant parfois en contradiction les uns avec les autres ou présentant différents biais qu'il leur faudra déceler. 

### faire progresser les étudiants en recherche documentaire

La résolution de ces contradictions devra passer par une recherche documentaire supplémentaire pour confirmer ou infirmer telle ou telle thèse. 
Pour ce faire, nous présenterons aux étudiants le moteur de recherche Google Scholar et l'agrégateur de revues en sciences humaines et sociales CAIRN, afin qu'ils puissent utiliser ces ressources pour trouver de l'information fiable en rapport avec la problématique.

La séance de mi-parcours permettra aux enseignants de juger de la capacité de chaque sous-groupes à dépasser ces contradictions, à trouver des sources qui leur permettent d'avancer leur réflexion, à adopter une posture critique face aux textes présentés ainsi qu'à y repérer un agenda politique ou une vocation commerciale.


### Proposer une méthode dérivée de la méthode THOMAS pour faire rédiger les fiches

Pour sortir de la fiche de lecture classique qui résume essentiellement le texte lu et donner davantage l'occasion à l'étudiant de placer cette lecture en contexte et de se positionner par rapport à elle, nous proposons aux étudiants de rédiger ces fiches selon le modèle [[Méthode THOMAS|THOMAS]], ou une version dérivée de ce modèle [[@agmonTeaching2018]].
Nous avons traduit ci-dessous en français les énoncés de la méthode tels que formulés par Danna Agmon : 

#### T(opic) - le sujet
quel est le sujet du document
dans quel contexte a t-il été produit
qui l'a écrit ? quelle est son [[expertise]], quelles sont ses qualifications ? Qui l'a publié ?

#### H(istoriography) - contexte de la discussion

Le H de THOMAS concerne **Historiographie**.  Dans quel débat cet article intervient-il ? quel parti pris ou argument remet-il en question (ou renforce t-il) dans cette discussion en cours ?

#### O(rganization) - construction du document

A t-on affaire à une construction thématique, chronologique ? Le plan suivi présente t-il une forme d'originalité ? Qu'est-ce qu'on peut apprendre d'une lecture attentive de la table des matières ou de l'organisation interne des chapitres sur l'agencement de l'argumentation ? 

#### M(ethodology) - méthode 

Quelle méthode utilise ce document. Quelles sont les sources sur lesquelles il s'appuie ? 

#### A(rgument)

Le A de THOMAS est l'Argument. Enoncer l'argument principal souvent n'apporte que peu d'information, on doit considérer au delà-de ça comment les réponses aux premières questions (THOM) dessinent l'argumentation 


#### S(o what)

Le S de THOMAS signifie "So what" (et alors ?). On désigne ici les enjeux ou l'importance du document pour soi-même. 
Pour les lecteurs non spécialistes qui ne s'intéressent pas depuis longtemps aux spécificités du sujet ou même de l'argument, pourquoi lire ce document serait-il utile, pourquoi cela m'a été utile à moi ? C'est là que la conversation devient généralement la plus intéressante

## une approche réflexive mais partagée

### la collaboration à l'intérieur des sous-groupes

Le sens d'un texte peut s'éclairer dans la reformulation individuelle de sa problématique et l'expression de ce qu'il nous apporte, mais également au contact de pairs.
La note (en réalité une fiche de lecture) est le produit d'un sous-groupe. 
Un étudiant compte donc ses premiers relecteurs dans le sous-groupe auquel il appartient. Son travail doit refléter aussi l'avis des autres. 
Chaque étudiant étudie un texte et est l'auteur d'une fiche, mais collabore en premier lieu aux fiches des autres membres de son sous-groupe. 

### Quel outil pour susciter la collaboration entre les sous-groupes

#### Git et Gitlab  

On peut aussi parler de collaboration entre étudiants au niveau de l'ensemble du groupe. 
L'outil de collaboration éditoriale doit être libre et faciliter cette collaboration à plusieurs niveaux (entre sous-groupes et au niveau du groupe entier). 
D'après Bourbeillon et Martel [[@bourbeillonAgirEnsembleDans2022]], pour gérer le travail collaboratif, les étudiants ont majoritairement recours à des outils qu'ils maîtrisent déjà (Google Drive notamment) et qui cumulent le fait d'être propriétaires et peu respectueux des données de leurs usagers. 
Il faut donc opter pour un outil que les étudiants n'utiliseront pas seulement pour l'édition finale de leurs texte -les travaux préliminaires étant réalisés sur Google Drive- mais tout au long du travail de production. Git permet de répondre à cette demande et est adapté au public d'étudiants en informatique qui ont par ailleurs des tâches de développement. Le choix d'un outil au départ associé au développement de logiciels permet aussi de nuancer cette division un peu abstraite entre le code et le texte qui a été renforcée par l'apparition des traitements de texte à la fin des années 80. 
Le choix de Git comme outil de versionnage et de travail collaboratif pose trois questions principales :  

- quel entrepôt choisir (sachant que Github appartient à Microsoft, également peu respectueux des libertés de ses utilisateurs) et que l'instance de Gitlab développée notre université n'est utilisable que pour des projets qui ne sont pas publics (le graphe de notes doit pourtant faire l'objet d'un affichage public sur une page web). [Framagit](framagit.org/) (instance de Gitlab hébergée par Framasoft, une association qui fait la promotion du logiciel libre en France) pourrait apporter une réponse intéressante à cette première question.    

- La seconde question concerne la structuration de l'entrepôt : faut-il prévoir un *branch* par sous-groupe ou bien partir d'emblée sur une architecture la plus  horizontale possible, censée favoriser davantage de collaboration (lecture, révision, commentaires) au delà des frontières des sous-groupes ?   

- Une troisième question interroge la place de Git dans le cursus de ces étudiants : sachant que ce module s'adresse à des étudiants de troisième année de licence : auront-ils déjà été formés à l'outil ou bien faudra t-il leur apprendre les commandes de base pour gérer Git (add, commit, push, branch, merge...) ?   

#### CodiMD  


Les étudiants auront donc besoin d'un éditeur de texte pour éditer les notes en markdown et d'un entrepôt pour sauvegarder ces notes. 
Nous avons mentionné l'intérêt de Zettlr comme éditeur et de Gitlab comme entrepôt (à la condition que la fonctionnalité pages publiques de Gitlab soit bien activée).
Pour l'écriture collaborative (et afin de contrer le recours spontané à Google Drive), on peut vouloir privilégier à un éditeur téléchargeable sur sa machine, un éditeur collaboratif en ligne permettant -comme le Drive de Google- l'édition simultanée par plusieurs rédacteurs d'une même note. 
[CodiMD](https://codimd.math.cnrs.fr) est un éditeur en ligne en markdown qui est disponible à tous les établissements du réseau RENATER. Sa prise en main est très simple. La seule contrainte est de penser à sauvegarder le document édité sur CodiMD en local (en le téléchargeant depuis CodiMD)

### la maîtrise des outils de gestion de notes et de références : un objectif important du cours. 

Zotero est un gestionnaire de références libre qui permet de disposer de ses références bibliographiques à la fois sur un site distant et en local. Ces références peuvent être partagées au groupe-classe par l'enseignant sous la forme de bibliographie de groupe (information accessible en ligne depuis les serveurs de Zotero). Une action préalable consistera pour les étudiants qui ne l'utilisent pas encore à télécharger cet outil et à importer les références bibliographiques promues par les enseignants du cours dans leur environnement de travail en local, puis à se créer un compte et une bibliographie en ligne propre à leur sous-groupe.
La sixième version de Zotero (parue en février 2022) permet d'annoter en local chaque texte conservé et d'envoyer les notes prises dans un format interopérable (markdown) vers un autre éditeur. 
Les étudiants peuvent se former seuls à Zotero en utilisant le guide mis à disposition par la bibliothèque (focus.univ-rennes1.fr/zotero)
L'enseignant est à leur disposition pour résoudre les problèmes éventuels survenus au moment de l'installation du logiciel sur les ordinateurs des étudiants. Parmi les enseignants, les bibliothécaires ont acquis une certaine expertise dans ce domaine en formant les étudiants en bibliothèque. 

La même méthode peut être suivie pour Zettlr/CodiMD et pour Cosma (auto-formation au moyen d'un tutoriel, réponses à distance des enseignants)


# 7.  Définir la forme du livrable pour ce travail collaboratif

Un travail collaboratif de cette nature peut prendre la forme d'un site permettant d'articuler de façon hypertextuelle, un ensemble de fiches et de documents. 
Cet [[hypertexte]] peut prendre la forme d'un wiki ([[@bourbeillonAgirEnsembleDans2022]], [[@pudelkoConcevoirEncadrerWiki2019]]) ou bien d'un graphe de notes. Le logiciel libre Cosma permet de générer à partir de plusieurs notes liées entre elles un réseau exportable sous la forme d'une page [[@perretCosmaFicheAu2021a]]. C'est cette option que nous avons choisie web.  La page web générée avec Cosma (un *cosmoscope*) sera rendue accessible à partir des pages liées au projet comportant les notes dans Gitlab.

### Pourquoi un wiki plutôt qu'un réseau de notes ?

Le problème du wiki est qu'une fois la table des matières fixée, les étudiants ne s'occupent que de la partie qui leur a été attribuée (ou attribuée au sous-groupe) et ne s'intéressent pas du tout à ce que font leurs condisciples. 
Dans le graphe de notes, les notes sont disposées de manière horizontale, sans lien hiérarchique entre elles. Cette disposition permet de compléter l'heuristique d'une écriture dialectique (ce que dit le texte, ce que j'en pense) par une autre heuristique, celle qui consiste à relier entre elles différentes fiches par des liens hypertextes éventuellement qualifiés (ce que permet Cosma). 
A priori, n'importe quelle note ou fiche peut être reliée sémantiquement à n'importe quelle autre note ou fiche du répertoire. 
La recherche de mots-clé proches de sa thématique (pour savoir si celle-ci a été traitée dans une autre fiche) à l'intérieur de l'outil de rédaction (Zettlr) devrait permettre aux étudiants de prendre davantage en considération le travail que les autres sous-groupes sont en train de réaliser. 


# Références



