---
title: smartphone et vie privée
subtitle: "Retour sur la présentation de l'atelier Smartphone & Vie Privée"
author: Damien Belvèze
date: 30-04-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [exodus]
tags: [smartphone, vie_privée]
---


# Organisation de l'atelier

L'atelier a eu lieu le 25 avril de 13h à 14h30 à la bibliothèque universitaire de Santé de Villejean.
Il a été animé par Yohann Le Corgne, mon collègue bibliothécaire-formateur de Rennes 1 et moi-même.
7 personnes étaient présentes, de niveaux très hétérogènes.
1 enseignant de cyber-sécurité qui est un partenaire de longue date du temps du Festival Des Libertés Numériques
1 étudiant avancé en cyber-sécurité
1 interne de médecine soucieux de la préservation des données de ses patients
1 étudiant moins avancé
3 collègues bibliothécaires (un assistant de bibliothèque et deux magasiniers). L'un de ces magasiniers n'avaient pas encore acquis de smartphone mais projetait de le faire.

La communication a été faite :
- par voie d'affichage à la bibliothèque
- différents tweets y compris depuis le compte Twitter de la BU
- l'atelier était présenté dans une newsletter envoyée à tous les étudiants
- un mail a été envoyé à tous les étudiants de médecine deux semaines avant l'événement au sujet de cet atelier
- un mail a été envoyé à tous les personnels du SCD
- des [[mails]] relayés par l'enseignant de cybersécurité présent à un grand nombre d'enseignants en informatique (et relayés ensuite aux étudiants)

On peut considérer que l'affluence est faible par rapport à l'effet attendu de ces mails et de cette newsletter.
Il est possible que le calendrier des études de médecine ait joué en notre défaveur, mais ce public est généralement peu présent aux ateliers optionnels dont le sujet sort de leurs préoccupations académiques immédiates.

# Déroulement de l'atelier

Nous nous sommes efforcés de rester le plus près possible de la conduite de l'atelier tel que vous l'avez conçue.
Il nous est arrivé parfois d'anticiper un peu ou de revenir sur un concept, mais généralement nous nous sommes tenus à la progression qui apparaissait sur le support et que nous avions toujours sous les yeux. Ce support est très facile à appréhender quand on prépare l'atelier. Il est très clair.

# remarques sur la progression

Dans l'ensemble, nous avons trouvé que cet atelier était cohérent dans sa progression et notre public a pu s'y retrouver.
Quand nous avons fait le bilan de l'atelier auprès des participants (en indiquant que leurs retours nous permettraient d'améliorer la formule), l'enseignant présent nous a conseillé de terminer l'atelier en posant aux participants la question : Quand et comment pensez-vous vous servir d'exodus ?
l'assistant de bibliothèque a trouvé que l'atelier insistait un peu trop sur les concepts de départ : _application_ et _profilage_, et qu'on pouvait aller plus vite au départ.

Il m'a semblé personnellement que nous avons passé un peu trop de temps à définir ce qu'était une application, les personnes présentes savaient déjà à quoi s'en tenir (rappel peut-être utile cependant pour la personne qui n'avait pas encore de smartphone)
Le focus sur le terme d'application nous a amené à négliger dans le premier temps de l'atelier le système d'exploitation dans lequel ces applications viennent s'installer. Nous avons dit un peu après que l'écosystème des smartphones était globalement propriétaire (iOS : entièrement propriétaire, [[Android]] : en grande partie libre mais avec des éléments propriétaires importants). Nous avons mentionné l'existence de /e/ (Gaël Duval), système entièrement libre, mais que nous n'avons pas pratiqué et dont l'usage à notre connaissance reste très marginal.
Nous avons ajouté à cela que la situation pour les ordinateurs personnels nous paraît plus favorable dans la mesure où il est moins compliqué d'installer un système libre sur un ordinateur portable (même si cela requiert de se faire accompagner pour certaines personnes).

Imaginer la vie de "Dominique" à partir des applications qu'iel a téléchargées est facile à faire avec les participant.e.s. Par contre le lien avec le profilage n'est pas aisé. Nous avons fait un détour par le [[fingerprinting]]  pour les PC qui n'était pas forcément pertinent pour un smartphone. Il n'est pas possible semble t-il d'identifier quelqu'un seulement à partir d'une liste d'applications.
Nous avons aussi mentionné l'importance d'utiliser un verrouillage de l'écran d'accueil, verrouillage si possible non biométrique.

En revanche, l'enseignant de cybersécurité nous a recommandé -la plupart de ses conseils ont été formulés lors d'une réunion-bilan informelle après l'atelier- d'insister plutôt sur les données personnelles qui sont utilisées par les applications et qui peuvent être fuitées (mais c'est pareil avec les ordis) et sur l'ID publicitaire de Google qui permet de compléter un profil à partir de l'activité d'une personne sur Android.
En revanche, comme nous avions mentionné comme possibilité de pistage les adresses IP et MAC, il nous a indiqué que les versions récentes d'Android étaient pourvues d'adresses mac randomisées et que cette remarque n'était plus pertinente aujourd'hui.

La vidéo sur les pisteurs est très parlante. Peut-être serait-il intéressant de la mettre en ligne sur Peertube pour faciliter son accès aux formateurs (et aux participants après l'atelier).

Cette vidéo nous a permis de revenir sur le RGPD et ses conditions d'application (amendes, "intérêt légitime", etc.)

# l'application exodus

Avant l'atelier, nous avons reçu un mail de l'interne de médecine nous demandant s'il y avait un équivalent d'exodus pour les téléphones apple. J'avais utilisé dans le passé l'application Mypermissions disponibles sur l'appstore d'Apple autant que le PlayStore d'Android, mais ça ne permet pas de gérer les pisteurs. Nous avons rappelé l'impossibilité juridique de pratiquer cet examen sur les applications de l'appstore.

Suite à une question dans ce sens, nous avons été un peu à court d'information sur la manière dont Exodus fonctionnait (scan automatique des applications du Playstore ou intervention humaine ?).

Au moment prévu dans le support de l'atelier, les participant.e.s étaient invité.e.s à charger exodus sur leur téléphone Android ou bien le tester sur des ordinateurs prêtés pour l'occasion (ordinateurs de notre classe mobile)

Nous avons testé au vidéo-projecteur plusieurs applications et commenté les pisteurs que cela permettait de découvrir. Nous nous sommes attardés sur le site de Meteo-France (pisteurs commerciaux pour un service en grande partie public) et les sites de presse en essayant de repérer les pisteurs en lien avec des data-brokers.
Là-dessus, il nous faudra préparer davantage pour la prochaine fois, car nous avons une ou deux fois confondu un pisteur publicitaire avec un outil de télémétrie de Google.
A propos des pisteurs de Facebook, nous avons mentionné l'existence des "shadow profiles" (profils de non-usagers)

Nous avons montré aux participant.e.s comment télécharger F-droid depuis le site https://f-droid.org puis ensuite comment installer Exodus (car à cette date, Exodus n'était plus dans le Playstore)
Nous avons rencontré des réticences à ce sujet. Je ne suis pas sûr qu'une seule personne parmi les 7 aient téléchargé effectivement l'application durant la séance, soit parce qu'ils en disposaient déjà, soit parce qu'ils préféraient tester avec l'ordinateur, ou parce qu'ils ne voulaient pas modifier les paramètres de leur smartphone.
En effet, le téléchargement de F-droid depuis le site web demande l'ouverture d'un paramètre de sécurité (administration du périphérique > Sources inconnues : autoriser) que l'enseignant de cybersécurité nous a recommandé de faire fermer ensuite.

Cet atelier serait plus facile à présenter si Exodus redevenait disponible sur le Playstore, même si présenter F-droid et les applications libres est toujours intéressant en soi.

# Pour aller plus loin

A ce jour, j'envisage de refaire cet atelier mais dans un cadre extra-universitaire, je suis en contact avec les organisateurs d'un événement qui aura lieu le 11 juin à l'EDULAB Pasteur (Rennes) sur l'utilisation d'un numérique responsable et éthique qui s'appuie sur les acteurs locaux du territoire et "les offres non marchandes de la MAIF" (dixit). J'hésite à proposer cet atelier ou un autre à cette occasion.
A ce titre, j'aimerais savoir si votre kit sera utilisable hors de cette période de test et quelle licence lui sera attribuée.







# bibliographie

