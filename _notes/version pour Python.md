---
title: version pour Python
subtitle:
id: 202301011719_version pour Python
author: Damien Belvèze
date: 01-01-2023
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [programmation, python]
---


```python
from __future__ import print_function
import os
import platform
import tk
import os.path
input("cliquez sur une touche pour sélectionner le coffre de vos notes")

from tkinter.filedialog import askdirectory
path = askdirectory()
if not any(File.endswith('.md') for File in os.listdir(path)):
    print("pas de note trouvée dans ce dossier, chargez une note en markdown présente ailleurs")
    from tkinter.filedialog import askopenfilename
    path = askopenfilename(filetypes=[("Markdown notes", "*.md")])
else:
	from tkinter import *
	from tkinter import filedialog as fd
	filename = fd.askopenfilename(initialdir=path, filetypes = (('sélectionner une note', '*.md'),('All files', '*.*')))
	notepath = os.path.basename(filename)
	notefull = notepath.split('.')
	notename = notefull[0]
	noteext = notefull[1]





