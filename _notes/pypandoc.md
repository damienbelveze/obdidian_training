---
title: pypandoc
subtitle:
author: Damien Belvèze
date: 19-01-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [Pandoc with Python, Pandoc avec Python]
tags: [Python, programmation]
---

# installation

pré-requis : avoir installé Python
Sur windows : 

``````bash
py -m pip install pypandoc
``````

# conversion simple

``````python
import pypandoc
pypandoc.convert_file('D:/Home/dbelveze/Desktop/titre.odt', format='odt', to='md', outputfile='D:/Home/dbelveze/Desktop/titre.md')
``````

# conversion avec suppression de caractères indésirables
``````python
import os
import pypandoc
fichier = input("Quel fichier voulez-vous convertir ?")
with open(fichier, 'r') as file :
  filedata = file.read()

# Replace the target string
filedata = filedata.replace('[[', '').replace(']]','')

# Write the file out again
with open('file.txt', 'w') as file:
  file.write(filedata)
# convert modified file into open document file
pypandoc.convert_file('file.txt', format='md', to='pdf', outputfile='new_file.pdf')
# delete file text
os.remove('file.txt')
``````

avec une biblio:

````python
import os

import pypandoc

import citeproc

fichier = input("Quel fichier voulez-vous convertir ?")

with open(fichier, 'r') as file :

  filedata = file.read()

  

# Replace the target string

filedata = filedata.replace('[[', '').replace(']]','')

  

# Write the file out again

with open('file.txt', 'w') as file:

  file.write(filedata)

# convert modified file into open document file

pypandoc.convert_file('file.txt', format='markdown', to='pdf', outputfile='new_file.pdf',

extra_args=['--filter=citeproc', '--bibliography=D:\Home\dbelveze\Desktop\obsidian3.bib', '--csl=D:\Home\dbelveze\Desktop\ieee.csl'])

# delete file text

os.remove('file.txt')
`````

proposition de [[ChatGPT]] (15/01/2023)

[[20230115_chatGPT.txt]]

````python
import pypandoc

from citeproc import CitationStylesStyle, CitationStylesBibliography

  

# path to your citation style file

style_path = 'D:\Home\dbelveze\Desktop\ieee.csl'

# path to your bibliography file

bibliography_path = 'D:\Home\dbelveze\Desktop\coulmont.bib'

  

# read in your markdown file

with open('pseudonymat.md', 'r') as f:

    markdown_text = f.read()

  

# create a citation style and bibliography object

style = CitationStylesStyle(style_path)

biblio = CitationStylesBibliography(style, bibliography_path)

  

# convert the markdown text to HTML while processing citations

pdf_text = pypandoc.convert_text(markdown_text, 'pdf', format='md', outputfile='pdf_text.pdf', extra_args=['--citeproc', f'--bibliography=D:\Home\dbelveze\Desktop\coulmont.bib'])

# print the HTML text

print(pdf_text)
`````





voir script complet de choix d'une note à sélectionner 

# bibliographie

