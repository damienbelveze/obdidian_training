---
title: Panique à la Rédac Vidéos
subtitle: document pour le formateur, deuxième partie
author: Damien Belvèze
date: 05-07-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [serious_game]
---

# Identification du matériel vidéo

## inventaire des vidéos

Le dossier comporte 4 vidéos sous la forme de fichiers .mp4

- tir_roquettes.mp4 (également [disponible en ligne](https://video.twimg.com/ext_tw_video/1314222618971648003/pu/vid/1280x720/NESraXGuI51n_AD0.mp4)) : 

légende à indiquer à côté de la vidéo :  images prises sur le terrain par une chaîne de télévision ukrainienne du côté de Kharkiv

- bombardement.mp4 : 
légende à faire figurer : vidéo prise le 26 avril 2022 à Kyev.

- bataille_rue.mp4
légende à faire figurer : l'avancée des Russes à Severodonesk

- emeute.mp4 (également [disponible en ligne](https://video.univ-rennes1.fr/permalink/v1264071880cfzucp9lt/iframe/))
légende à faire figurer :  scène de manifestation réprimée à Caracas par les Forces de l'ordre 


## Solutions et méthode pour parvenir à identifier ces vidéos

### Méthode générale : 

Il n'existe pas d'outil accessible à tous permettant de faire un lien direct entre une vidéo et l'ensemble des vidéos indexées sur les moteurs de recherche. 
Une vidéo peut-être identifiée de trois façon différentes : 

- avec un oeil (et une oreille) attentif : repérer les inscriptions sur l'image (noms de rue, graffitis, panneaux routiers, uniformes, symboles, architectures caractéristiques ou immeubles connus). Identifier les langues parlées. 
- en prenant une capture d'écran de la vidéo qui nous paraît significative et en faisant une recherche inverse d'images avec Google Images ou Yandex. On peut automatiser le processus de captures d'images fixes au moyen d'un outil comme Invid (fonctionnalité keyframes) et sélectionner les captures qui nous paraissent les plus significatives pour faire une recherche inverse (invid fait cette recherche inverse dans Google Images)
- en utilisant les métadonnées de la vidéo. Bien que dans bien des cas, les métadonnées des vidéos soient effacées lorsqu'elles sont postées sur Youtube ou d'autres plateformes d'échanges de vidéos en ligne, cela peut fonctionner quand on trouve la vidéo sur d'autres sites.

### Solutions 

#### tir_roquettes.mp4

Méthode suivie : 
peu de détails sur la vidéo, mais tout-de-même le logo de la chaîne de télévision. 
Une recherche inverse sur ce logo montre qu'il ne s'agit pas d'une chaîne ukrainienne mais de la chaîne Alghadeer, une chaîne irakienne.
Par ailleurs, l'analyse des métadonnées de la vidéo avec Invid (Metadata) montre que la vidéo date de 2020 et non pas de 2022. 
Il ne s'agit pas en tout cas d'une scène filmée depuis le déclenchement de l'invasion de l'Ukraine par la Russie
[https://video.twimg.com/ext_tw_video/1314222618971648003/pu/vid/1280x720/NESraXGuI51n_AD0.mp4](https://video.twimg.com/ext_tw_video/1314222618971648003/pu/vid/1280x720/NESraXGuI51n_AD0.mp4)

#### bombardement.mp4

Peu d'images. On n'a pas l'embarras du choix pour choisir une capture. Une recherche inverse d'images sur Google permet d'accéder à un [article du Midi Libre en ligne](https://www.midilibre.fr/2022/06/26/guerre-en-ukraine-poutine-veut-nucleariser-la-bielorussie-des-frappes-sur-kiev-ce-dimanche-matin-10397512.php. Cet article confirme la date et le lieu de l'événement. 

#### bataille_rue.mp4

l'usage de la fonctionnalité keyframe d'invid permet de sélectionner un soldat de dos avec un pylone bleu caractéristique. La recherche inverse d'images permet d'obtenir ces résultats : 

![](images/armenia.PNG)

Le [tweet de @navigator_imp](https://twitter.com/imp_navigator/status/1325349888335491074)permet de situer l'action au Haut-Karabach, lors du conflit opposant les forces arméniennes et azerbaïdjanaises

#### emeute.mp4

Invid est peu efficace identifier cette vidéo. 
Il vaut mieux s'en remettre à une attentive des images qui la composent. 
Cette manifestation comporte certains invariants (drapeau anarchiste, ACAB, [[uniforme|uniformes]] des policiers anti-émeutes) qui ne disent pas grand-chose du contexte. Des inscriptions sur les murs montrent qu'on est dans un pays hispanophone ("organiza la revolta")

0:14, 0:27, 1:00 : on voit apparaître à plusieurs reprises un drapeau à franges noires et à bandes horizontales bleu clair, vert, rouge, frappé d'un disque jaune.
Il ne semble pas correspondre à un pays en particulier, mais plutôt à une minorité ethnique qui -en l'occurrence manifeste pour sa reconnaissance. 
Le web visible est un répertoire de listes et de bases de données majoritairement rédigées en anglais. 
Une requête comme "ethnic flags list", "indigenous flags list" , "autochtonous flags list"ou "cultural flags list" permet d'obtenir des listes de drapeaux tels que ceux-ci : 
https://commons.wikimedia.org/wiki/Cultural_flags
https://en.wikipedia.org/wiki/Ethnic_flag
En suivant cette piste, on peut identifier l'ethnie mapuche (Araucaniens)
Le peuple Mapuche est présent au Chili et en Argentine. 

entre 0:14 et 0:27, lorsque les policiers sortent du camion, ils passent devant une inscription sur un mur en bleu clair : *ni un ojo menos* (plus un seul oeil en moins). 

Interroger un moteur de recherche sur cette expression permet de se rendre compte qu'elle était usitée pendant les manifestations au Chili contre l'ancien gouvernement de Pinera (voir par exemple [cette video sur Youtube](https://youtu.be/JZ8vIWhO5lA)). Ce mot d'ordre dénonce les violences policières qui comme en France pendant la Crise des Gilets Jaunes ont pour effet d'éborger certains manifestants.

Suite à cette investigation, nous pouvons conclure que cette vidéo n'a pas été prise à Caracas, mais quelque part au Chili entre 2019 et 2022, probablement à Santiago, la capitale (le bâtiment en arrière plan, au toit caractéristique qui rappelle le [logo de la compagnie qui gère le métro à Santiago](https://fr.m.wikipedia.org/wiki/Fichier:Santiago_Metro_logo.svg)) semble abriter des comptoirs d'achat pour des tickets de métro).