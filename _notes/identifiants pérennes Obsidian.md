---
title: identifiants pérennes Obsidian
subtitle:
id: 202301081909_identifiants pérennes Obsidian
author: Damien Belvèze
date: 08-01-2023
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [programmation, Python]
---

````python
import yaml
import frontmatter
import os
path = 'D:\\Home\\dbelveze\\Desktop\\dossier1\\texte1.md'
with open(path, 'r') as f:
    post = frontmatter.load(f)
data = post['id']
file = os.path.basename(path)
name, extension = file.split('.')
os.rename(path, data+extension)


````




