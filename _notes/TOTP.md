---
title: TOTP
subtitle: Time Based - One Time Passeword
author: Damien Belvèze
date: 15-02-2022
link_citations: true
bibliography: mylibrary.bib
biblio_style: csl\ieee.csl
aliases: []
tags: [cryptographie]
---

TOTP= Time Based One Time Passeword

protocole de [[double authentification]]. Ce protocole repose sur l'envoi d'un code éphémère (quelques secondes) depuis l'application où l'on souhaite s'identifier vers une application tierce où l'on reçoit ce code. Ce code une fois récupéré doit être entré dans l'application qui le demande avant son expiration pour que le service soit délivré. 

Exemple de double-authentification fonctionnant au moyen d'une application TOTP : Twitter ou Google et Authy. 

# Limites des applications TOTP

Si l'usager perd son téléphone ou se trouve l'app ou bien s'il désinstalle l'app sans avoir conservé de code de secours pour accéder à ses comptes, il perd l'usage de ses comptes. 
Il faut donc prévoir un mode de sauvegarde du compte au cas où l'une de ces deux choses arriverait. 
Ce mode de sauvegarde est habituellement un identifiant (numéro de téléphone pour Authy par exemple) et un  mot de passe. 
Ce mot de passe est souvent trop simple et utilisé pour d'autres services, ce qui le rend vulnérable. 

Un prototype Blues [[double authentification|2FA]][[@GilsenanDecentralizedbackuprecovery2020]] a été lancé qui repose sur la sauvegarde collective (entre plusieurs mobiles ou ordinateurs) des accès à la sauvegarde des informations de connexion en [[double authentification]]. 
Ce prototype divise la clé d'accès en éléments distincts et chiffrés qui seront détenus par plusieurs mobiles / personnes selon le principe du partage de secrets de Shamir ([[Shamir Secret Share]])









# bibliographie

