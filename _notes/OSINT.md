---
title: Open Source Intelligence
subtitle:
author: Damien Belvèze
date: 02/06/2021
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [Open Source Intellingence, osint, Osint, renseignement en open source, recherche en open source, méthode d'investigation numérique, enquête numérique]
---
#osint

Investigation procédant par l'exploitation approfondie de toutes les informations disponibles en *open source* (c'est à dire libre d'accès) sur le web. 
*renseignement en open source* qui n'est pas seulement l'apanage des services de renseignement mais peut-être utilisé par des amateurs ou des militants.

> un ensemble hétéroclite de pratiques d’investigation et d’analyse visant à dévoiler une information préalablement dissimulée en récoltant, croisant ou analysant des données numériques disponibles en source ouverte

(définition de Kevin Limonier et Maxime Audinet [[@estecahandyOSINTOuInvestigation2023]])

*open source* n'est pas à prendre dans le sens du [[logiciel libre]]

# Précautions à utiliser dans le cadre de l'OSINT.

## voir sans être vu

Suite à l'affaire Laurelli (Bluetouff) qui a été poursuivi pour avoir téléchargé plusieurs Gb d'information non protégées depuis le site de l'ANSES, les praticiens de l'OSINT savent qu'il faut s'entourer de précautions pour se protéger soi-même et ses sources. Cela passe par les recours suivants : 

- création de comptes sur les réseaux sociaux
- usage de [[VPN]]
- usage de [[Navigateur Tor|Tor]] pour ne pas laisser d'adresse IP sur les sites visités ([[@DeuffOpenSourceIntelligence2021]])


## Ne pas surinterpréter

Devant la masse d'informations récoltées, il est parfois difficile de ne pas se perdre faute d'avoir hiérarchisé et priorisé certaines informations par rapport à d'autres. Il y a des risques de surinterpréter certains signes et de tomber dans le [[Biais de confirmation]]

## garder la maîtrise de l'enquête

L'osint est une adaptation à l'ère numérique de techniques d'enquêtes traditionnelles [[@estecahandyOSINTOuInvestigation2023]] , il ne s'agit pas de lésiner sur la méthode et les étapes à observer. La méthode aide à se prémunir contre le [[Biais de confirmation]] qui menace l'"OSINTEUR" peu expérimenté.

pouvoir la freiner et la stopper, quand les choses vont trop vite et qu'une armée de chasseurs se mettent en quête d'un agresseur à identifier et à "serrer". Il y a un risque de fichage de certains internautes et de porter atteinte à leur [[Vie privée|vie privée]]. 

# S'exercer à l'OSINT

## L'OSINT pour tous

L'OSINT c'est un peu la géographie du web
Ne pas laisser la géographie à ceux qui font la guerre (Yves Lacoste : la géographie, ça sert d'abord à faire la [[guerre]], ouvrage de 1976)
Ne pas laisser l'exploration des traces numériques à ceux qui les exploitent pour faire du profit et ou contrôler les populations.

S'exercer à l'OSINT pour comprendre quelles traces on laisse sur le web. 

> Tout internaute pourrait, et devrait, essayer certains des outils et techniques l’OSINT, ne serait-ce que pour mieux comprendre, cerner et s’approprier sa place, dans un cyberespace toujours plus complexe, et les traces qu’il peut y laisser. Utiliser, analyser et même « jouer » avec toute cette myriade de données, permet de mieux comprendre comment fonctionnent les matériels, applications et réseaux numériques que nous utilisons quotidiennement, et qu’elles informations naissent de nos navigations

(source [[@estecahandyOSINTOuInvestigation2023]])

## Quiztime, un compte pour s'initier à la recherche en open source

Pendant le premier confinement, j'ai découvert puis fait découvert à quelques collègues qui comme moi étaient du jour au lendemain maintenus chez eux à distance de leur lieu de travail les joies du Quiztime. Ce compte Twitter maintenu par des journalistes et des bloggeurs spécialisés dans l'OSINT (Open Source Intelligence) envoie régulièrement et plusieurs fois par semaine des photos à géolocaliser (parfois il s'agit aussi de les chronolocaliser, c'est à dire qu'il faut en même temps dire où elles ont été prises et estimer quand ou dans quel intervalle de temps elles ont été prises). 


Ces compétences de géo- et chronolocalisation sont importantes lorsqu'on souhaite vérifier les informations qui nous parviennent sur les réseaux sociaux (c'est à dire des images en large partie dépourvues de leurs métadonnées et auxquelles les utilisateurs ont parfois associé des légendes sujettes à caution). 


J'imagine que les personnes intéressées par l'OSINT sont mus au départ par des intérêts personnels et professionnels disparates. Il y a d'abord les journalistes qui souhaitent améliorer leurs compétences en matière de vérification des images, clichés, photos qui leur parviennent par exemple du "théâtre des opérations", comme actuellement en Ukraine. Cette photo d'un immeuble bombardé date t-il bien de février 2022, l'immeuble est-il vraiment situé à Kharkiv, ou bien s'agit-il d'un bâtiment en partie détruit pendant une autre guerre, par exemple en Tchétchénie ? 

Le Renseignement est bien entendu très concerné par l'analyse de tout ce qui se trouve accessible sur le web et notamment les réseaux sociaux. Les combattants se filment avec leur portable, commentent leurs actions, dansent devant l'objectif de l'ordiphone d'un compagnon de luttes un fusil dans la main. Que ce soit pour la partie adverse, ou bien pour les nations tierces, l'exploitation de ces informations est sans doute d'un très grand intérêt pour percer ce fameux "brouillard de la guerre", cette *confusâo*  que Richard Kapuczinsky savait si bien décrire au mitan des années 70, au moment où seul le téléphone analogique permettait de se tenir au courant des derniers mouvements de troupes. 

De façon plus triviale, la recherche open source est une manière de mieux connaître les outils qu'on utilise quotidiennement et d'améliorer leur usage. Elle permet également de prendre pleinement conscience de l'importance des traces que le web conserve sur le moindre endroit du globe. Résoudre une énigme de Quiztime est donc très instructif pour suivre la manière dont les outils évoluent et dont les bases de données en libre accès se multiplient.

### une maison jaune

Le 16 mars 2022, comme tous les vendredis, le compte Quiztime a retweeté l'énigme du jour proposée par Tilman, un formateur en recherche open source. 

![](quiztime1.png)

Lorsqu'on télécharge l'[image](street.jpg) de cette énigme, plusieurs détails retiennent notre attention : 
- le panneau d'interdiction de stationner au premier plan
- la maison peinte en jaune
- au fond, en arrière plan, le viaduc qui soutient une voie ferrée. 

Si l'on ignore que Tilman poste la plupart du temps des photos de sites situés en Allemagne, on peut l'apprendre en étudiant la forme du panneau triangulaire. 
Ce panneau représente un enfant plus petit qui court devant un enfant plus grand. 
En France, l'ordre est inverse : l'enfant le plus grand est devant, il ne court pas mais guide les pas du plus petit (voir par exemple [ici](https://www.stocksignes.fr/panneau-attention-enfants/524-attention-enfants-triangle-base-700mm-classe-2.html))
Lorsqu'on sélectionner cette partie de l'image (uniquement le panneau triangulaire) et qu'on fait une recherche inverse d'images, on tombe sur des panneaux comportant des légendes telles que *Vorsicht*, *achtung Kinder*, *achtung spielende Kinder !*

![](quiztime4.png)

Ce panneau est manifestement allemand ou autrichien. 
Lorsqu'on fait [une recherche sur Google Images en excluant les résultats provenant de pages autrichiennes](https://www.google.com/search?q=achtung+kinder+site%3A*.at&tbm=isch&ved=2ahUKEwjqmYCktdf2AhWZ0oUKHf0tASYQ2-cCegQIABAA&oq=achtung+kinder+site%3A*.at&gs_lcp=CgNpbWcQA1CSEVixJmCYKGgAcAB4AIABM4gB_QGSAQE2mAEAoAEBqgELZ3dzLXdpei1pbWfAAQE&sclient=img&ei=4os4YuqgO5mllwT924SwAg), on s'aperçoit que les panneaux autrichiens sont sensiblement différents par rapport aux panneaux allemands (la majorité sont sur fond jaune)

Il y a de fortes chances par conséquent que la photo ait été prise en Allemagne. 

## viaduc ou pont ferré

On voit donc en arrière-plan un pont à arches qui supporte une voie ferrée. La question est de désigner ce bâtiment correctement sur un moteur de recherche comme Google. 
Un pont avec des arches, c'est par définition un viaduc.
en allemand un viaduc qui permet à un train de circuler se dit à *Bahnviadukt*

Une recherche inverse d'images sur les arches du pont ne donne rien d'intéressant

![](bridge.png)

- Recherche sur Google images

Bahnviadukt (site:\*.de OR site:\*.at)

- Recherche sur Wikidata

Voir [[Sparql#les ponts supportant des voies ferrées en Allemagne et en Autriche]]

Il faut comparer le style des arches du viaduc avec les images obtenues comme résultats. 
On peut ainsi isoler ce résultat : 

- Dans google images : https://de.wikipedia.org/wiki/Datei:Kasbachtalbahn_Bahnviadukt_Kasbach.JPG
- Dans Wikidata : https://www.wikidata.org/wiki/Q111312746

Il s'agit du viaduc de Kasbach-Ohlenberg. 










