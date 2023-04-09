---
title: StopCovid / TousAntiCovid
subtitle:
author: Damien Belvèze
date: 20210514
link_citations: true
aliases: [StopCovid, stopcovid, TousAntiCovid, tousanticovid]
---
StopCovid, rebaptisée TousAntiCovid, est  l'une des [trente applications de traçage](https://en.wikipedia.org/wiki/COVID-19_apps) mises au point pour lutter contre la pandémie du COVID-19. Cette application a été conçue par des chercheurs français et permet aux détenteurs de smartphones d'être alertés et de se mettre en quarantaine puis de se faire tester s'ils ont croisé d'autres utilisateurs qui ont été testés positifis.

Au 19 avril 2021, soit à peu près un an après sa mise en fonctionnement, d'après Le Monde et Reuters, StopCoVID avait été téléchargé **14,7 millions de fois** et avait lancé **171 100** avertissement de contamination possible ([[@Covid19Franceapplication2021]]. 

Au 1er juillet 2021, suite au résultat une demande CADA, Gaëtan Leurant [estimait](https://twitter.com/cryptosaurus6/status/1410004693766529029) le nombre d'utilisateurs de l'application à 3 ou 4 millions. Un an après son lancement, il est tout à fait inhabituel et difficilement compréhensible de ne pas avoir de chiffres plus précis. Le nombre des personnes ayant désinstallé l'appli ou bien l'ayant conservé sous une forme non opérationnelle ou bien partiellement opérationnelle (bluetooth fermé, utilisation de l'application uniquement comme support du pass sanitaire) n'est pas connu.

# fonctionnement

Tandis que certains laboratoires, comme l'école polytechnique de Lausanne ([[@Renaudchercheurseuropeensproposent]]) mettent au point des solutions décentralisées (protocole DP-3T), en théorie moins vulnérables au vol de données, la France a misé sur une architecture centralisée (Protocole ROBERT).
L'établissement du contact entre deux smartphones se fait au moyen du bluetooth qui doit être activé en permanence. 
L'activation par défaut du bluetooth sur les téléphones actuellement produits n'existe pas et représente une vulnérabilité pour les concepteurs de ces téléphones. Il faut donc que l'usager de StopCovid active lui-même le bluetooth de façon permanente. L'une des garanties offertes par le bluetooth est que l'application ne géolocalise pas, il n'est donc pas possible, du moins sans autre information complémentaire, d'indiquer où le contact a eu lieu. 

Le téléphone sur lequel on a chargé l'application et qui a le bluetooth activé fonctionne comme l'indique la bande dessinée ci-dessous : 

![[images/stopcovid.png]]

Lorsque Alice a été testée positive, elle déclenche l'alerte depuis son smartphone envoyant à une autorité centralisée la liste des pseudonymes qu'elle a "entendus" les derniers jours. L'autorité centrale envoie cette liste de pseudonymes aux téléphones qui les ont émis. Les possesseurs de ces derniers savent qu'ils sont cas contact.

Comme l'indique Jérôme Nicolle, un fonctionnement centralisé est par définition plus simple et moins coûteux  à mettre en oeuvre : 

>Un système centralisé par conception est plus simple qu'un système distribué - donc moins cher et plus robuste en théorie - mais concentre alors plus de responsabilités et est une meilleure cible d'attaque (plan économique surtout). 

[Tweet](https://twitter.com/chiwawa_42/status/1384470012740595714)

Des ingénieurs de l'INRIA a montré que dès sa première version, l'application StopCovid pouvait être détournée de son usage pour exercer des formes de surveillence indue, insistant sur le fait que si l'application ne contenait aucune donnée nominative au départ, son [[pseudonymat]] n'en était pas moins fragile et sujet à ré-identification
Dans le cas de StopCovid, on ne peut pas parler d'anonymat, contrairement à ce que la communication officielle a fait valoir au début du déploiement (Cédric O. affirmant que cette application préservait l'anonymat). 

La Quadrature du Net a particulièrement critiqué cette "erreur" dans la campagne de lancement ([[@QuadratureduNetCNILarretemichemin2020]]) : 

> En pratique, une application anonyme n’aurait aucun intérêt : l’application doit envoyer à des personnes ciblées des alertes du type « vous avez été au contact de personnes malades, mettez-vous en quarantaine ». **Du moment que chaque alerte est envoyée à des personnes ciblées, le système n’est plus anonyme** : trivialement, il suffit qu’un tiers (un patron, un conjoint, etc.) puisse consulter votre téléphone pour constater que vous avez reçu une alerte. Des chercheu·ses de l’INRIA ont produit une excellente [liste de quinze scénarios](https://risques-tracage.fr/) de ce type, démontrant à quel point il était simple de lever ce prétendu « anonymat ». 


L'application vise uniquement le pseudonymat dans la mesure où les personnes ne sont pas identifiés par des identifiants civils ou un code INSEE mais par des identifiants générés selon des procédés cryptographiques. Ce pseudonymat peut être levé (ré-identification) en combinant ces identifiants aléatoires avec d'autres identifiants contenus dans la base (identifiants des personnes ayant été cas contact) ou extérieures (captation par une antenne bluetooth, ou adresse IP)

# critiques

Dès sa mise en place, l'application au départ baptisée StopCovid a été critiquée 

- au nom du risque que cette application pourrait faire courir aux libertés individuelles
- en raison de ses vulnérabilités intrinsèques (architecture centralisée notamment)
- en raison de son coût jugé excessif au regard de son utilité et de son efficacité

## acceptation de la surveillance de masse

>Pour faire fonctionner selon la pure théorie les droits et les lois, les juristes se mettaient imaginairement dans l’état de nature ; pour voir fonctionner les disciplines parfaites, les gouvernants rêvaient de l’état de peste

([[Michel Foucault]], Surveiller et punir)

Dans la tradition de la critique Foucaldienne, certains commentateurs ont expliqué que même si l'on démontrait que StopCovid ne présente pas de risque en soi de faire fuiter des données personnelles, l'application aurait deux effets indésirables : 

- nous faire accepter la surveillance de masse par le biais d'application pour smartphone (après StopCovid, le gouvernement pourrait imposer d'une manière ou d'une autre des applications plus intrusives)
- nous précipiter dans l'impasse du [[solutionnisme technologique]] dénoncé notamment par [[Evgeny Morozov]]. Le traçage des chaînes de contamination ne devrait pas se faire uniquement avec une application mais aussi au moyen de *brigades sanitaires* dont le travail est d'interroger les personnes testées positives pour prévenir les personnes contact. Jean-François Delfraissy, alors président du conseil scientifique dénonçait ainsi le faux parallèle avec la Corée du Sud dont la [[stratégie 0 Covid]] comportait à la fois du contact tracking mais aussi à la même période (cotnrairement à la France) un dépistage massif et une importante brigade sanitaire : 

> La Corée du Sud a une armada de 20 000 personnes pour suivre les cas contacts. On n'a pas ça en France. Sans cette brigade, ça ne marchera pas[[@TesquetEtaturgencetechnologique2021]]. 

La députée Paula Forteza allait dans le même sens en rappelant qu'on n'avait pas besoin d'un pistage massif de la population mais de dépistage massif

- Le coût important de l'application est considéré par certains comme autant d'argent enlevé aux travailleurs sanitaires sur le terrain.



une tribune de Jean-Baptiste Soufron, ancien secrétaire du Conseil du Numérique, faisait le rapprochement entre cette application et le bracelet électronique naguère porté par le condamné à de la liberté surveillée et désormais applicable à tous les citoyens en temps de COVID

>Autrement dit, le projet de bracelet électronique virtuel que représente l’application StopCovid n’est pas une réponse au Covid-19 : c’est une démarche idéologique destinée à limiter les libertés des personnes selon une logique reposant à la fois sur la culpabilisation [[méritocratie|méritocratique]] des individus, et sur le fantasme d’une technologie permettant de les contraindre par la norme, la surveillance et la sanction [[@Soufroncontacttrackingou]]

## détournement des fins de l'application

Le soupçon est accentué par le fait que des pays totalitaires comme la Chine mettent au même moment des applications de ce type pour contrôler les populations à la fois sous un angle sanitaire et sécuritaire (policier)

A Singapour, une enquête a permis de montrer que les données personnelles enregistrées via une application de ce type étaient transmises à la police ([[@YuSingaporepolicecan2021]]). 

En Europe, nous avons au moins un cas d'abus de données prélevées grâce à l'application anti-covid allemande Luca, équivalent outre-Rhin de TousAntiCovid [[@a23h30Allemagneenqueteursont2022]]

le 4 janvier 2023, Associated Press a fait paraître une étude sur les multiples détournements des outils de traçage comme TousAntiCovid à des fins de surveillance policière et de contrôle des populations[[@burkePoliceSeizeCOVID192022]]. 

> Now, from Beijing to Jerusalem to Hyderabad, India, and Perth, Australia, The Associated Press has found that authorities used these technologies and data to halt travel for activists and ordinary people, harass marginalized communities and link people’s health information to other surveillance and law enforcement tools. In some cases, data was shared with spy agencies. The issue has taken on fresh urgency almost three years into the pandemic as China’s ultra-strict zero-COVID policies recently ignited the sharpest public rebuke of the country’s authoritarian leadership since the pro-democracy protests in Tiananmen Square in 1989


## vulnérabilité du système due à sa centralisation

La centralisation liée au protocole ROBERT fait craindes des attaques contre ce serveur qui pourraient être ravageuses en terme de confiance ou bien une exploitation indue de ces données rassemblées au même endroit. En octobre 2020, la société privée chargée de conserver ces données n'était d'ailleurs pas connue du grand public ( [[@PUELMayenneApplicationAntiCovid2020]])
Ce manque de transparence a été signalé également à propos du code-source de l'application qui a tardé à être publié et qui d'ailleurs ne l'a pas été intégralement. Des références à Google (via un captcha) ont également été épinglés par les détracteurs du projet.
Gaëtan Leurant (chercheur à l'INRIA dans l'équipe COSMIQ (sur la [[cryptographie]] symétrique) propose une application concurrente conçue pour une architecture décentralisée (Lotocovid) 


## Vulnérabilité du système due à son inflation fonctionnelle

A partir du moment où l'application StopCovid, devenue TousAntiCovid a commencé à permettre de télécharger une attestation et dans la mesure où il devrait comporter un passeport vaccinal nominatif, il est très difficile de croire que cette application qui fonctionne au départ avec des pseudonymes ne fournira pas à un moment donné à un attaquant un lien entre ces pseudonymes et des identifiants, permettant d'attribuer ces contacts à une personne réelle. 

### Pass sanitaire

Le pass sanitaire qui indique la position du sujet par rapport à la vaccination et rend possible l'accès ou pas à certains lieux comme des concerts ou des rassemblements peut-être indépendant de l'application TousAntiCovid, mais peut également lui être lié (Les autorités incitent à charger sa situation vaccinale dans l'application -sous la rubrique TousAntiCovid Carnet- au moyen d'un [[QR code]] qui injecte dans l'appli non seulement les dates et la nature des vaccins mais d'autres informations personnelles relatives au receveur. Ces informations mettent à mal le principe de la pseudonymisation de TousAntiCovid. 
Une critique du pass sanitaire a été rédigée par Florian Maury de l'[[ANSSI]] sur le site Broken by design[[@MauryPasssanitairevie2021]]
La critique principale des auteurs de cette étude tient au fait que le Pass Sanitaire donne accès à un plus grand nombre d'informations que ce que les Autorités disent (par exemple, le fait d'être immuno-déprimé) et que la délivrance de ces informations ne sont pas restreintes aux seules personnes autorisées, car l'appli TousAntiCovid Verif - dont le code n'était pas disponible au 3 juin 2021 - qui permet de lire le pass est disponible à tous sur les stores Google Play pour [[Android]] et l'App Store pour iOS.
Il est donc impossible de s'assurer que seules les personnes habilitées à vérifier cette application s'en servent effectivement.

En outre, TousAntiCovid Verif n'a pas le monopole de la lecture des informations contenues dans TousAntiCovid, en raison du protocole 2D-DOC qui permet de transmettre ces données d'un système à un autre. Tout système compatible avec 2D-DOC peut dans les faits lire l'ensemble des informations enregistrées dans TousAntiCovid et pas seulement celles que TousAntiCovid est paramétré pour communiquer à TousAntiCovid Verif.

> De fait, une simple application mobile tenant compte du standard 2D-DOC [peut voir ces informations](https://twitter.com/MathisHammel/status/1397907305224622085). C’est ce qui fait dire à Mathis Hammel que si l’application TousAntiCovid-Verif est sans doute bridée afin de n’afficher que l’essentiel (c’était ce qui était suggéré en avril, quand ce dispositif a été évoqué), et éviter de trop en dire sur les personnes, d’autres applications pourraient émerger, et être utilisées à tort au lieu de la bonne ou volontairement à des fins malveillantes.[[@LaussonTousAntiCovidVerifpourquoiapp2021]]





Par ailleurs l'application n'est pas conforme selon la CNIL au principe de **minimisation de la collecte des données** du [[RGPD]] (trop d'informations collectées pour pouvoir simplement accéder à un concert sans risquer de contaminer autrui). 

>Si certaines informations sensibles doivent figurer dans le pass sanitaire, plusieurs pass doivent être remis en fonction du besoin d’en connaitre des employés de sécurité filtrant l’accès à un lieu

Utilisée à travers l'application TousAntiCovid Verif, le pass sanitaire ferait ainsi fuiter la géolocalisation de l'utilisateur : 

>Il convient de noter qu’une telle communication réseau génère des meta-données de communication avec le serveur ; il y a notamment l’adresse IP de l’équipement faisant tourner l’application TousAntiCovid Verif. Cette adresse IP permet la géolocalisation de l’équipement faisant tourner TousAntiCovid Verif, par l’entremise des opérateurs de télécommunication, comme Orange.
  En croisant ces données, l’État serait donc en mesure de dresser un listing des citoyens et de leurs lieux de fréquentation, grâce au pass sanitaire.
  
  

## Manque d'efficacité

L'efficacité de cette solution est une question centrale dans la mesure où elle devrait conditionner son acceptabilité aux yeux de la [[CNIL]] au nom de la proportionnalité entre la fin recherchée et le risque que cette application fait porter sur les données des utilisateurs (dans la mesure où StopCovid ne permet pas l'anonymat notamment).  Avec deux années de recul, la CNIL a souligné en 2022 l'effet très marginal de cette application pour endiguer les contaminations[[@laussonTousAntiCovidPasServi2022]]. 

Le manque d'efficacité ou tout au moins d'efficacité mesurable est l'argument qu'a retenu La Cour des Comptes en décembre 2022 pour fustiger une dépense de 600 000 000 sur le budget de la sécurité sociale sans réel effet (voir [l'Obs](https://www.nouvelobs.com/coronavirus-de-wuhan/20221206.OBS66806/le-contact-tracing-au-covid-a-coute-600-millions-d-euros-pour-une-efficacite-incertaine-epingle-la-cour-des-comptes.html?utm_term=Autofeed&utm_medium=Social&utm_source=Twitter#Echobox=1670339179))

### taux d'adoption

L'efficacité est liée au taux d'adoption : si cette application n'est pas adoptée par une grande partie de la population elle ne sera pas efficace. Pour être adoptée, il faut que la couverture en smartphone soit importante. 77% de la population dispose d'un smartphone mais ce n'est pas le cas de 44% des personnes de plus de 70 ans ([[@FortezaStopCovidefficaciteincertaine2020]])

La faiblesse du taux d'adoption mathématiquemet entraîne sa faible efficacité. Selon une étude, selon une [étude de l'université d'Oxford](https://science.sciencemag.org/content/368/6491/eabb6936), la proportion de cas contacts possiblement détectés par une application de contact tracing est le carré de la proportion qui l'a adoptée. Si 10% de la population adopte cette application, 10% de ce groupe seulement sera détecté en tant que cas contact, puisque le contact implique que les deux possesseurs de smartphone aient téléchargé l'application. Le résultat est que seulement 1% de la population globale est seulement susceptible d'être détectée cas contact par l'application. Christian Quest en novembre 2020 au plus fort de l'épidémie [relevait](https://cq94.medium.com/tousanticovid-in-efficacite-en-chiffres-8aba1c107113) que l'application n'avait envoyé d'alerte qu'à **0,55% des cas contacts** enregistrés en une semaine.

Luciano Floridi a souligné le risque, si l'application devenait obligatoire pour jouir de certains privilèges (aller au restaurant, au cinéma, au concert), de voir de nouvelles discriminations s'ajouter à une [[fracture numérique]] déjà très présente au sein de la population[[@LucianoMindAppConsiderations2020]] : 

>they are unfair if only those who have the app have access to some services. This may create first- and second-class citizens. As an example, consider that, according to the latest DESI report of the EU Commission ([data are available until 2016](https://link.springer.com/article/10.1007/s13347-020-00408-5#Fn6) ), only 44% of Italians between 16 and 74 years have “at least basic digital skills”. And not everybody owns or can afford the right model of mobile phone equipped with Bluetooth. In the UK, the NHS COVID-19 App Data Ethics Advisory Board (disclosure: I am a member) has expressed its concern that the app may exclude large numbers of people, given that according to Ofcom 21% of UK adults do not use a smartphone

Le taux d'adoption est entravé par la défiance dans la population française. Cette défiance a cru avec le contexte social difficile (climat d'insurrection lors des [[Gilets Jaunes)]] et [[répression des manifestations]]) et avec l'expérimentation de technologies accusées par les associations de défense des libertés publiques de généraliser la surveillance de masse pour endiguer la contestation sociale. Mentionnons dans ce cadre la [[reconnaissance faciale]] testée avec Alicem ou le contrat avec la compagnie d'analyse des données américaines Palantir. D'autres échecs antérieurs comme l'abandon d'une application de sécurité publique (SAIP) a encore augmenté le scepticisme des Français à l'égard de cette application de traçage.

### inconvénients du bluetooth

Le bluetooth est consommateur d'énergie (même le bluetooth LE) mais le principal inconvénient de cette technologie est que le signal est reçu de manière fort différente selon l'environnement du smartphone (au fond d'un sac ou dans la main, sur une table en bois, en plastique ou en métal. La qualité du signal varie également selon l'orientation des téléphones). La mesure de la proximité de deux smartphones avec cette technologie est donc très approximative, comme l'indique le journaliste Jean-Marc Manach dans un article paru sur Nextinpact ([[@ManachContacttracinglimites2020]]) et peut susciter des faux positifs (par exemple à travers une cloison) mais aussi faire l'impasse sur des cas réels de contamination. 
Par ailleurs, comme on l'a vu plus haut, si l'usage du bluetooth permet de ne pas géolocaliser l'utilisateur, il représente une vulnérabilité importante. En conditions normales, il est conseillé de ne pas laisser le bluetooth par défaut sur son terminal pour ne pas subir d'intrusion. Eric Filliol, chercheur en cybersécurité à l'ENSIBS de Vannes l'exprimait ainsi dans un article de Ouest-France du 29 octobre 2020 (peu après le changement de nom de l'application [[@PUELMayenneApplicationAntiCovid2020]]) : 

> À partir du moment où on allume le Bluetooth sur son smartphone, il est très facile pour les personnes mal intentionnées de collecter des données personnelles. Ce protocole ne fait pas l’unanimité, même au sein de l’Inria. Ma devise : «  Quand il y a un doute, il n’y a pas de doutes, il y a un problème


### Rapport coût-bénéfice

Les applications de traçage ne fonctionnent bien que si le taux d'adoption est important (60%). A défaut d'un tel taux, l'efficacité de ce type d'outil risque de ne pas équivaloir celle de tests aléatoires en nombre importants.

## Manque de transparence

Au 4 juin 2021, seul le nombre de téléchargements était communiqué par le Ministère de la Santé. Cela ne nous dit pas combien de personnes continuent d'avoir l'app sur leur smartphone, ni combien la font effectivement tourner en activant leur bluetooth

Pour rendre les alertes plus pertinentes, les critères de distance ont été changés, mais sans qu'on évalue correctement l'efficacité de l'application avant ce changement. 

D'après Gaëtan Leurant,  ([tweet](https://twitter.com/cryptosaurus6/status/1400507424059052034) paru le 5 juin)

>. Le décret StopCovid prévoyait un rapport sur le fonctionnement au plus tard le 30 janvier: il n'est jamais sorti, le décret a été modifié en février; 4. L'arrêté n'est pas à jour: il ne mentionne pas les nouveaux critères de distance de début mars

En juin 2021, le code source de l'application côté serveur n'était toujours pas publié. 
Les résultats de l'[expérimentation](https://www.francetvinfo.fr/sante/maladie/coronavirus/testee-grandeur-nature-par-une-soixantaine-de-militaires-l-application-stopcovid-est-prete-et-jugee-suffisamment-efficace_3981357.html) de mai 2020 n'étaient pas publiés non plus

# Conclusion

Bien que conçue par des chercheurs dans un cadre devant favoriser le contrôle sur les données ([[souveraineté numérique]]) recueillies et dans un souci de minimiser la collecte des données ou leur utilisation indue (choix de ne pas géolocaliser les utilisateurs, recours au bluetooth), l'utilisation de l'app StopCovid devenue TousAntiCovid pose un certain nombre de problèmes en matière de protection des données personnelles. 
L'adoption de ces applications en général n'est pas elle-même indemmne de critiques pour gérer une crise comme celle du COVID-19. Présentée comme une solution technologique miracle (au détriment de solutions coûteuses en personnel mais qui ont fait leur preuve par le passé comme les brigades sanitaires), érodant la notion de [[consentement]] là où son recueil est légal par des incitations à profiter de plaisir qui seront refusés à ceux qui ne l'utiliseront pas par choix ou parce qu'ils ne sont pas équippés, ces applications de contact-tracking doivent être vues 

> comme la porte d'entrée vers une économie de la surveillance toujours plus prédatrice de la [[Vie privée|vie privée]][[@TesquetEtaturgencetechnologique2021]].






