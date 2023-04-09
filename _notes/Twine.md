---
title: Twine
subtitle:
author: Damien Belvèze
date: 05-08-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [twinery, twine, Interactive Digital Storytelling, IDS]
tags: [serious_games, programmation]
---

logiciel libre permettant de construire des récits interactifs ("jeux dont vous êtes le héros")
moteur de jeu narratif inventé par Chris Klimas en 2009 et sorti des limbes par la game-designeuse Anna Anthropy en 2012 ([[@friedhoffUntanglingTwinePlatform]])
Ce moteur est utilisable par des gens qui ne savent pas coder pour construire des jeux où la narration occupe une part importante. 
D'ailleurs, le jeu n'est pas d'abord conçu pour des développeurs mais mets l'emphase sur l'écriture de l'histoire : 

>Putting the emphasis on 'writers,' rather than  
'developers' or 'game-makers,' implies that creating this kind of interactive experience is  
not limited to those with technical ability. This point is emphasized by the reference  
materials' attitude to code. The materials do not assume that code is inherently valuable or  
that all users will be interested in learning it (or able to learn it at all) ([[@friedhoffUntanglingTwinePlatform]])

Twine permet d'exposer sous une forme ludique des sujets qui exigent de la réflexion ou de l'empathie (voir pour cette dernière la manière dont la communauté [[LGBTQ ]]a investi la plateforme)

Mémo de la syntaxe[[@reseaucyber-baselacq-orthezMemoTwine2021]]

Exemple de jeu sérieux sur le management des données de recherche conçu avec Twine : [https://rdm-games.gitlab.io/rdm-adventure/](https://rdm-games.gitlab.io/rdm-adventure/)


# vocabulaire : 

- story

- passage

- texte : un passage peu être fait de texte seul ou de texte associé à des valeurs ou des commandes (dans ce cas, on parle de hook). Dans tous les cas, le texte peut être formaté en [[Markdown]]

- hook : un texte entre crochets auquel on accole une valeur (présentation, condition)

>A **hook** is a section of passage prose enclosed in `[` or `]`, or preceded with `[=`. The main purpose of hooks is that they can be visually or textually altered by special data values called **changers**. Changers are usually placed in front of hooks to change them.

```harlowe
(if: $anneau_vole)[Comme on pouvait s'y attendre, l'anneau a été volé.]
```

```harlowe
(transition:"slide-right")[le texte glisse vers la droite]
```
- command

- changer : change un hook (en changeant le style de la police par exemple)

````harlowe
`L'ombre (text-style: "shadow")[s'étend] sur toi!`
````

- variable

une variable peut être un entier, mais peut aussi être un nom ou un événement : si le fait d'avoir rencontré un moine ou pas est important dans la suite du jeu on peut écrire au passage de la rencontre

- variable pour l'embranchement

Vous rencontrez un moine

````harlowe
(set: $moine to true)
````

`````sugarcube

<< set $moine to true >>

`````

et plus tard : 

Si vous avez rencontré un moine
`````harlowe
(if: $moine is true)[le moine vous a amené ici]
(else:)[vous êtes arrivé ici par hasard]
`````

une commande permet de fixer une variable

```harlowe
(set: $endurance to 10)

```
et de la modifier en cours de jeu

```harlowe
(set: $endurance to it - 4)[ce coup vous fait perdre 4 points d'endurance]

```
Pour afficher une variable dans du texte, il n'y a pas besoin de commande particulière (mais on peut aussi utiliser la commande (print: $variable) : 

```harlowe
Il ne vous reste plus que $sous sous
```

une variable peut être plusieurs choses : une valeur mais aussi un changer : 

```harlowe
(set: $robotic to (font:'Courier New'))
$robotic[Hi, it's me. Your clanky, cold friend.]
```

tous les hooks précédés de la variable $robotic seront désormais écrits en Courier New

# les liens

Utiliser les wikiliens pour relier les passages

# modifier l'affichage de l'histoire ou de tel ou tel passage

## la sidebar de Sugarcube

Avec le dialecte Sugarcube, une sidebar permettant de sauvegarder sa progression ou de repartir à zéro s'affiche à droite.
Si on veut la supprimer tout au long du jeu, dans la feuille javascript de l'histoire, entrer le code 

````javascript
UIBar.destroy();
````

## modifier la feuille de style de l'Histoire 

cliquer en bas à gauche sur le titre de l'histoire. 
Choisir "Modifier le style de l'histoire"

ajouter le CSS correspondant à ses voeux : 

- format des citations : 

````css
{
  quotes: '“' '”' "‘" "’";
}
````

- couleur de fond : 

````css
tw-story {
  background-color: #fff;
  color: #000;
}
`````

- image de fond pour l'ensemble des passages

````css
tw-story {
  background-image:url("lien");
  background-size:cover;
}
````

- image de fond pour les passages balisés "ciel"
- 
````css
body.ciel {
	background-image: [img[black_sky.jpg]];
   background-size: cover; 
}
````

* police, taille des caractères :

````css
body, tw-story  {  
font-family: Palatino;  
font-size: 18px;  
font-color: #fefe9c;  
}
````


- taille maximale de l'image :
````css
img {
  max-width: 80%;
}
````

- format et couleur des liens :

````css

.glossary tw-link {
  color: inherit;
  font-weight: inherit;
  text-decoration: underline dotted #197fe6; /*#9f5810;*/
}

````

Supprimer la sidebar dans la version Sugarcube

````css
#ui-bar   {
display: none;   
}
````

Modifier le format de l'Histoire = changer la syntaxe du code (par défaut Harlowe 3.2)

# Exemples

## liens entre les passages

faire un lien vers un autre passage
```harlowe
Do you [[make this -> first proposal]] or [[that -> second proposal]]
````

Copier-coller le texte d'un passage dans un autre passage

````html
{
passage1
}(display: "passage2")
````


## animer le texte
Faire apparaître du texte en cliquer sur les mots

```harlowe
Voulez vous exclure ou inclure ce terme dans le titre : (click: "exclure")[: terme exclu.] (click: "inclure")[: terme inclu]
```

faire clignoter un mot
```harlowe
(text-style: "blink")[Votre texte ici]
```


## échapper

Possibilité d'utiliser dans l'éditeur la fonctionnalité Verbatim : le texte en verbatim ignore le balisage sous jacent. On peut aussi mettre le texte entre apostrophes : 

````sugarcube ou harlowe
`$score` 
````



## ajouter des conditions


````harlowe
(if: visits is variable)[{
texte
}](else:)[{
texte
}]
````

````harlowe
{
  (if: $variable contains "texte")[
    (display: "passage1")
  ](else:)[
    (display: "passage2")
  ]
}
`````

Bonnes ou mauvaises réponses à une question :

````harlowe
    I mean, I ask you. What exactly is a *data management plan* when it’s at home?</q></p>
  <p>The professor’s mocking tone has you smiling in sympathy before you realise the question was not rhetorical, and you are expected to answer.</p>
  <ul>
    <li><q>(link: 'I’m sorry, I’m not entirely sure myself.')[
      (set: $response to 0)
      (set: $feedback's DMP to it + (a: '0 (out of 4) for not knowing what a data management plan is. Don’t worry, this is easily fixed!'))
      (go-to: 'DMP purpose')]</q></li>
    <li><q>(link: 'It’s a detailed handbook for how data will be handled during the project.')[
      (set: $response to 2)
      (set: $feedback's DMP to it + (a: '2 (out of 4) for your definition of a data management plan. They are more of an outline than a detailed handbook, and also discuss how data will be handled *after* the project.'))
      (go-to: 'DMP purpose')]</q></li>
    <li><q>(link: 'It’s where you outline how data will be managed at each stage of the project and beyond.')[
      (set: $response to 4)
      (set: $feedback's DMP to it + (a: '4 (out of 4) for your definition of a data management plan.'))
      (go-to: 'DMP purpose')]</q></li>
    <li><q>(link: 'It’s where you outline the procedures you will use for managing data during the research project.')[
      (set: $response to 3)
      (set: $feedback's DMP to it + (a: '3 (out of 4) for your definition of a data management plan. They also discuss how data will be handled *after* the project.'))
      (go-to: 'DMP purpose')]</q></li>
    <li><q>(link: 'It’s a plan for managing data.')[
      (set: $response to 1)
      (set: $feedback's DMP to it + (a: '1 (out of 4) for your wittily unhelpful definition of a data management plan.'))
      (go-to: 'DMP purpose')]</q></li>
  </ul>
}


`````


if, else-if, else : 

````harlowe
  <p>I see you went for the (if: $training_cycle contains "second")[first](else-if: $training_cycle contains "third")[second](else:)[third] option.</p>
`````


## gérer un inventaire

créer un inventaire

````harlowe
(set: $inventaire to (a: "épée", " bouclier", " lance"))
`````

afficher l'inventaire

````harlowe
Vous disposez des éléments suivants (print: $inventaire) dans votre besace
`````

ajouter un objet à un inventaire

````harlowe
vous ramassez le miroir et le mettez dans votre sac

(set: $inventaire to $inventaire + (a: "miroir"))

````

supprimer un objet dans l'inventaire

````harlowe
votre lance se casse en deux

(set: $inventaire to $inventaire - (a: "lance"))

````

## Gérer les scores

baisser ou augmenter un score

````bash
(set: $score to it - 1)
`````

lier un score à un profil de performance

```harlowe
{
  (if: $score < ($max_score / 3))[(set: $rank to "Data&nbsp;Novice")]
  (else-if: $score < (2 * $max_score / 3))[(set: $rank to "Data&nbsp;Wrangler")]
  (else:)[(set: $rank to "Data&nbsp;Boffin")]
  (set: $displayed_score to $score)
}
```

Pour permettre à l'apprenant d'imprimer son score et de l'envoyer à l'enseignant :


````
Vous voici arrivé au terme de cette aventure [[print $nom]]

Votre score est de [[print $score]]

Cliquer ci-dessous pour imprimer votre score et envoyer le document à votre enseignant : 

<button onclick="window.print()">Imprimer le score</button>

````


## Fixer des variables en cliquant sur des objets

### définition de la variable : 

>En informatique, une variable est un symbole (habituellement un nom) qui renvoie à une position de mémoire dont le contenu peut prendre successivement différentes valeurs pendant l'exécution d'un programme

(source: Wikipédia)

### types de variables

3 types de variables : 

- les booléennes (vrai ou faux)
- les strings (chaînes de caractères)
- les valeurs (numérique)

### définir une variable

````harlowe
(set: $nomdemavariable to "string" ou 1 ou true)
````

modifier une variable numérique en cours de jeu

```harlowe
(set: $nomdevariable to it +1)
```

````sugarcube

<<set $score to $score -= 4>>

<<set $chance to $chance **= 2>>
````

augmente le score de 4 points, double les points de chance.


Demander au joueur de fixer la variable avec PROMPT

````harlowe
(set: $name to (prompt: "Quel est ton nom?", "Mimi Exemple"))
````
Mimi exemple remplit le champ de réponse

Demander au joueur de faire un choix entre deux options

````harlowe
il y a un pommier et un prunier
voulez-vous manger une (link: "pomme")[(set: $fruit to "pomme") (goto: "arbre")] ou une (link: "prune")[(set: $fruit to "prune") (goto: "arbre")]

````

passage "arbre"
````harlowe
(if: $fruit is "pomme")[vous avez mangé une pomme empoisonnée, vous mourrez sur le coup]
(else:)[ce fruit est délicieux, vous en mettez quelques autres dans votre sac]
````

# Incruster du son, des vidéos

<video src="fichier.mp4" width="640" height="480" autoplay></video>


# bibliographie

