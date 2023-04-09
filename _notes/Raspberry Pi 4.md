---
title: Raspberry Pi
subtitle:
author: Damien Belvèze
date: 15-01-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [programmation]
---


# Kit (achat décembre 2020)

![[cout_raspberrypi4.pdf]]

# configuration
fichier config 

``````
gpu_mem=16
start_file=recovery.elf
fixup_file=fixup_rc.dat

hdmi_drive=2

[pi4]
start_file=recover4.elf
fixup_file=fixup4rc.dat
``````

# accès SSH

Sur le raspberry pi, valider la connexion par SSH 
(préférences > configuration du Rpi > Interfaces > SSH : activé)
dans Pi créer un fichier ssh vide (ssh.txt puis enlever txt)

Aller dans le terminal de la machine distante (sur Windows, utiliser Putty pour se connecter au Rpi)
Dans Putty entrer l'IP du Rpi (consulter IP sur l'administration du routeur)
Dans un terminal Linux : ssh pi@IP
``````
ssh pi@IP

``````
(laisser port 22)
IP : 192.168.1.11

utilisateur : pi
mot de passe :  si laissé par défaut : raspberry

Supprimer l'accès SSH en root en suivant la [procédure suivante](https://www.howtogeek.com/768053/how-to-ssh-into-your-raspberry-pi/) : 
``````
sudo raspi config
``````
sélectionner : 
3. Interface options : configure connections to peripherals
P2 SHH

éditer le fichier config du ssh avec nano (en mode administrateur)

``````
sudo nano /etc/ssh/sshd_config
``````

sous 
``````
#PermitRootLogin prohibit-password
``````
(qu'on laisse en commentaire), ajouter 
``````
PermitRootLogin no
``````

enregistrer et quitter nano

# mémoire

pour mesure le taux d'utilisation de la carte SD : 

``````
df -h
``````


-h permet d'afficher les valeurs en Gigabytes et Megabytes

# chargement de logiciels

## snap

``````
sudo apt-update
sudo apt install snapd
``````

nécessité de rebooter le Rpi

`````
sudo reboot
``````
 installer Snap

 ``````
 sudo snap install core
 ``````
 Pour installer un logiciel présent dans Snap (Inkscape par exemple)

 ``````
 sudo snap install inkscape
 ``````
 [source](https://snapcraft.io/install/inkscape/raspbian)

On peut charger certains logiciels (par exemple Scratch ou LibreOffice depuis Préférences > Recommended Software)



# bibliographie

