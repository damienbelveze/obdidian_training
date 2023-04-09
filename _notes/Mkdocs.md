---
title: Mkdocs
subtitle:
id: 202212281830_Mkdocs
author: Damien Belvèze
date: 28-12-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: []
---

Générateur de [[site statique|sites_statiques]]

[Documentation en ligne](https://squidfunk.github.io/mkdocs-material/getting-started/)

Le workflow proposé (ci-dessous) permet de déployer le site à partir de github pages à chaque fois que l'on push les modifs dans le répertoire.

```
name: ci 

on:
  push:
    branches:
      - master
      - main
permissions:
  contents: write
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - uses: actions/setup-python@v4
        with:
          python-version: 3.x
      - run: pip install mkdocs-material 
      - run: mkdocs gh-deploy --force
```