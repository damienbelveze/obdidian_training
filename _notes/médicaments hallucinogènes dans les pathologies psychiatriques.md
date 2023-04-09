
---
title: préparation d'une métaanalyse sur les médicaments hallucinogènes dans les pathologies psychiatriques
author: notes de Damien Belvèze
date: 17 février 2023
---

Demande de l'étudiant : 

> Dans le cadre d'une UE de master, nous travaillons sur un projet d'article scientifique supervisé par F. Naudet, une méta-recherche sur les études interventionnelles impliquant l'utilisation des médicaments hallucinogènes dans les pathologies psychiatriques. Nous devons pour ce faire réaliser une équation de recherche sur ClinicalTrials, et nous souhaiterions la faire vérifier par un bibliothécaire avant de procéder au traitement des données.

# définition des termes

études interventionnelles : utilisation de thérapeutiques dans le cadre des soins courants mais faisant l'objet d'une surveillance particulière (cf. définition présente [sur le site du CHU de Grenoble](https://www.chu-grenoble.fr/content/les-differents-types-de-recherche-clinique)). Ces études requièrent également le consentement de la personne traitée et l'avis favorable de plusieurs comités pour être entreprises (CPP et ANSM).

````mesh
("Hallucinogens"[Mesh] OR "Hallucinogens" [Pharmacological Action] OR "Psychotropic Drugs"[Mesh]) AND "Psychiatry"[Mesh] AND (clinicaltrial[Filter])
````
88 résultats

````mesh
("Hallucinogens"[Mesh] OR "Hallucinogens" [Pharmacological Action]) AND "Psychiatry"[Mesh] AND (clinicaltrial[Filter])
````

2 résultats

L'ajout de "mental disorders" qui complète "psychiatry" fait exploser le nombre de résultats

````mesh
("Hallucinogens"[Mesh] OR "Hallucinogens" [Pharmacological Action]) AND ("Psychiatry"[Mesh] OR "mental disorders"[Mesh]) AND (clinicaltrial[Filter])
````
429 résultats

restriction de mental disorders à "Major Topics"

````mesh
("Hallucinogens"[Mesh] OR "Hallucinogens" [Pharmacological Action]) AND ("Psychiatry"[Mesh] OR "mental disorders"[Majr]) AND (clinicaltrial[Filter])
`````
356 résultats

L'équation ne permet pas de dissocier les études portant sur les effets des hallucinogènes comme causes de maladies mentales et les effets des hallucinogènes administrés pour traiter les maladies mentales. 

remplacement de Hallucinogens\[Mesh\] par Hallucinogens/therapeutic use\[Majr\]  

````mesh
("Hallucinogens/therapeutic use"[Majr] OR "Hallucinogens" [Pharmacological Action]) AND ("Psychiatry"[Mesh] OR "mental disorders"[Majr]) AND (clinicaltrial[Filter])
`````
356 résultats

suppression de "Hallucinogens" \[Pharmacological Action\]

````mesh
"Hallucinogens/therapeutic use"[MAJR] AND ("Psychiatry"[Mesh] OR "mental disorders"[Majr]) AND (clinicaltrial[Filter])
`````

48 résultats

# autres bases interrogées

## clinical trials

(études complétées uniquement)

PICO
P= psychiatric / Mental Disorder
I = Hallucinogens
C = néant
O = néant

````clinicaltrials
psychiatric AND AREA[OverallStatus] EXPAND[Term] COVER[FullMatch] ( "Available" OR "Completed" ) AND AREA[ResultsFirstSubmitDate] NOT MISSING AND AREA[StudyType] EXPAND[Term] COVER[FullMatch] "Interventional" AND AREA[ConditionSearch] Mental Disorder AND AREA[InterventionSearch] Hallucinogens
`````
11 résultats

## european clinical trials

https://www.clinicaltrialsregister.eu/ctr-search/search?query=hallucinogen*+AND+%22mental+disorder*%22+OR+psychiatric*

## Cochrane Library 

(hallucinogens):ti,ab,kw AND ((psychia\*):ti,ab,kw OR (mental disorder\*):ti,ab,kw (Word variations have been searched))"

100 résultats. 

Problème d'export des résultats issus de la Cochrane Library vers [[Zotero]] (mail envoyé aux techniciens de la Cochrane Library le 17 février 2023 à 14h)

> I noticed several times that when I was trying to import saved results formatted in bibtex into my Zotero library, the import was not complete because of three different kind of errors* (see also here [https://twitter.com/CochraneLibrary/status/1626546711697956864](https://twitter.com/CochraneLibrary/status/1626546711697956864)):  
>in the bib file, an underscore is missing between "publication" and "type" (publication_type = {journal article},  
>same thing between review and groups (as in review_groups = {Drugs and Alcohol; Schizophrenia}, )  
>At last particle nouns should also be linked with these underscores or concatenated in order to get proper citation keys :  
>@article{de Wit22, will get an error, while @article{de_Wit22 o @article{deWit22 will work, but original imported file contains @article{de Wit22

# Web of Science


(TS=hallucinogen* and (ALL=clinical use or ALL="therapeutic use")) and (TS="mental disorder" or ALL=psychiatr*) not ALL=review

difficulté à trouver des résultats qui ne soient pas des revues de littérature ou des méta-analyses, même en supprimant les articles mentionnant le terme "review"

# synthèse

[bibliothèque Zotero](https://www.zotero.org/groups/4956512/hallucinogens_therapeutic_use_patients_suffering_from_mental_disorders/library)

# Retour sur l'entretien

Les deux étudiants de médecine ne devaient pas faire une revue de littérature mais exposer de façon visuelle (avec ggplot dans R) les études cliniques interventionnelles sur le sujet trouvées exclusivement dans Clinical Trials. 

Ils souhaitaient faire vérifier leur requête déjà assez longue. Dans Clinical Trials, ils avaient pris le parti de ne pas utiliser de terme générique pour désigner les hallucinogènes considérant que chaque étude pertinente y serait plutôt enregistrée et indexée avec le nom de l'hallucinogène testé comme intervention (par exemple Psylocybin). 
Par conséquent, ils avaient ajouté à mental disorder la liste de tous les hallucinogènes répertoriés dans un certain manuel de pharmacie (noms de molécules généralement) séparés par des OR. 
Cette requête était si longue qu'elle dépassait le nombre de caractères permis dans la version stable de ClinicalTrials. En revanche, elle pouvait être intégralement figurer dans la nouvelle version bêta de l'outil. 
A noter que les deux versions avec les mêmes critères d'interrogation ne donnaient pas exactement les mêmes résultats. Je leur ai donc conseillé de tronquer en plusieurs (3 ou 4) requêtes leur requête initiale dans la version stable de CT pour compiler les résultats et les comparer / les dédoublonner avec les résultats obtenus sur la version bêta. 
le dédoublonnage des études cliniques se fait simplement sur le numéro matricule de l'étude clinique. Ils comptaient faire ce dédoublonnage avec un script [[Python]].

L'idée était aussi de croiser le champ libre "condition" de CT avec une ontologie répertoriant toutes les maladies mentales (probablement https://www.ebi.ac.uk/ols/ontologies/mfomd), ceci afin de classer les résultats obtenus puis d'en donner une représentation visuelle à travers le [[R (logiciel)| logiciel R]] (ggplot ou plus R shiny pour en faire un site web)

Aucun autre rendez-vous n'est prévu. 