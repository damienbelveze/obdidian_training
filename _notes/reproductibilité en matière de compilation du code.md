
---
title: reproductibilité en matière de compilation du code
subtitle:
id: 202304031048_reproductibilité en matière de compilation du code
author: Damien Belvèze
date: 03-04-2023
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: [reproducible builds]
tags: [compilation_code, programmation]
---

Chris Lamb
Reproducible Builds
Debian Project leader since 2017

  
Download.exe /.deb /.rpm

  gets blackmails by an unknown personn who introduces a different compiler

Download Source

Download.exe may make you download a compromised software

Bob

Modification des compilers lors du chargement des fichiers source : possibilité d’introduire des backdoors pendant le process

Carol

Quand on distribue des copies d’un logiciel, il faut s’assurer de la sécurité de l’ordinateur où le logiciel a été chargé avant d’être distribué

Most users install pre-compiled packages

can we trust the compilation process ?

Compromised mirrors.

Solution :

starting with the same source

ensure builds always have identical results

Compare results

compare checksums

If the checksum is different than the sig, then the binary has been changed

How to make Reliable Builds ?

Timestamps, build paths, non deterministic file ordering, users, groups may modify the final hash

Others advantages of reproducible builds than security and privacy ?

  

- Minimal differences on deliberate changes

- Cache ratio, save time, money & Co2

- remove build dependencies

Tests

vary :

hostname & domain name

different locales

filesystem

timestamp

isdebianreproducibleyet.com

diffoscope lets you know where a reproducible buid is available

diffoscope will not help to find backdoor in the sourcecode, but backdoors in the compilation process

most common mistakes that make the build unreproducible with a compiler like GCC



1.Encoding timestamps