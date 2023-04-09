
---
title: Liascript
subtitle:
id: 202303051459_Liascript
author: Damien Belvèze
date: 05-03-2023
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [mardown, programmation, vscode, quiz]
---

Présentation du projet par André Dietrich [[@dietrichLIASCRIPTDOMAINSPECIFICLANGUAGEINTERACTIVE2019]]

Atom, VScode (Atom n'est plus mis à jour, on va faire la démo pour Visual Studio Code)

Charger les extensions suivantes dans VS Code : 
- Liascript preview
- Liascript Snippets

Palette : Ctrl+shift+P
entrer "settings"
sélectionner Preferences Open Settings JSON

Dans Liascript snippet, copier le snippet suivant : 

````json
"[markdown]": {  
"editor.tabCompletion": "on",  
"editor.quickSuggestions": true,  
"editor.snippetSuggestions": "top"  
},
`````

coller ce snippet après 
````json
{

    "workbench.colorTheme": "Default Dark+",
`````

<iframe width="560" height="315" src="https://www.youtube.com/embed/8vFYMo5xqyY?start=242" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

Créer un dossier 
dans ce dossier, créer un document en [[markdown]]
Sur ce document éditer un premier [[quiz]]

(taper L I A Q, cela fait apparaître les différents quiz disponibles)





