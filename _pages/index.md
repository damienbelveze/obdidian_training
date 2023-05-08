---
layout: page
title: Home
id: home
permalink: /
---

# Prendre en main Obsidian

<a href="https://flic.kr/p/7z2a5q"><img src="assets/medea.jpg" alt="Photo : Medea (de Malmö)" width="500"></a>

<p style="padding: 3em 1em; background: #f5f7ff; border-radius: 4px;">
  Accéder au support de la<span style="font-weight: bold">[[formation]]</span> pour visualiser et télécharger les fichiers utiles à la formation
</p>




<strong>Dernières notes mises à jour</strong>

<ul>
  {% assign recent_notes = site.notes | sort: "last_modified_at_timestamp" | reverse %}
  {% for note in recent_notes limit: 5 %}
    <li>
      {{ note.last_modified_at | date: "%Y-%m-%d" }} — <a class="internal-link" href="{{ note.url }}">{{ note.title }}</a>
    </li>
  {% endfor %}
</ul>

<style>
  .wrapper {
    max-width: 46em;
  }
</style>
