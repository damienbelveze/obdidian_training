---
title: Zotero sur Linux
subtitle:
author: Damien Belvèze
date: 13-06-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [gestion_références, Linux]
---

Il s’agit dans ce document des salles informatiques en libre-service du bâtiment 40 que nous utilisons de temps en temps pour nos formations.

Les ordinateurs de ces salles fonctionnent avec le système d’exploitation Opensuse, une distribution de Linux.

  

Dans ces salles, la DSI chaque année réinstalle une version de Zotero sur ces postes

  

**Comment lancer Zotero ?**

  

En bas à gauche, cliquer sur Opensuse pour accéder aux applications

Dans le menu qui apparaît, sélectionner Bureautique, [[Zotero]] apparaît dans la liste tout en bas (de manière discrète, parfois l’icone du logiciel ne s’affiche pas)

  

**Faut-il activer le connecteur Zotero ?**

  

Firefox s’ouvre en allant dans le menu internet.

Le connecteur Zotero y a été chargé, mais il faudra parfois l’activer (idem pour Library Access).

Pour cela, cliquer sur le menu de Firefox

  

![](file:///C:/Users/dbelveze/AppData/Local/Temp/lu83326sfxer.tmp/lu83326sfxhi_tmp_b5b95b54ba273c35.png)  

  

Modules complémentaires > extensions

  

Cliquer sur « enable » ou « activer » pour activer ces deux extensions.

  

Rappelons que pour que le connecteur fonctionne, il faut que le logiciel Zotero soit ouvert.

  

**Que faire si les boutons Zotero ne répondent pas dans LibreOffice ?**

  

Dans ce cas, il va falloir télécharger à nouveau l’extension de Zotero pour LibreOffice dans le traitement de texte.

Si l’installation automatique qui est proposée à l’ouverture de LibreOffice ne fonctionne pas, il va falloir passer par l’installation manuelle (cliquer sur « manual installation »)

  

Cela va ouvrir une fenêtre comportant le fichier à télécharger dans LibreOffice (zotero_openoffice_integration.oxt) dans un répertoire un peu difficile à retrouver dans l’arborescence du bureau xcfe d’Opensuse (/usr/local/zotero_linux-86_64/extensions/..)

  

Il est plus aisé d’envoyer le fichier .oxt sur le bureau (clic droit sur le fichier > envoyer > vers le bureau)

  

Puis d’aller dans le gestionnaire d’extensions de LibreOffice (Outils > Gestionnaire d’extensions) et d’ajouter l’extension en téléchargeant ce fichier oxt depuis le bureau.

  

Une fois cela fait, il faut redémarrer LibreOffice.

Normalement les boutons Zotero sont à nouveau opérationnels.

  

**Que faire si je n’arrive pas à ouvrir Zotero ?**

  

Dans certains cas, les données conservées par un autre utilisateur de Zotero sur cet ordinateur peuvent empêcher Zotero de s’ouvrir correctement.

Dans ce cas, il convient de supprimer ces données en suivant la méthode suivante :

  

ouvrir le terminal (menu opensuse >émulateur de commandes)

taper la commande suivante : 

````rm -R .zotero Zotero````

 Cela va supprimer dans le dossier de l’utilisateur les données antérieures de Zotero. Cela ne supprime pas le logiciel. En revanche, suite à cette commande, il peut être nécessaire de recharger le connecteur zotero pour le navigateur depuis le site [www.zotero.org](http://www.zotero.org/) et de réinstaller l’extension Zotero pour LibreOffice.

  

Amusez-vous bien !





# bibliographie

