---
layout: default
title: Lista de ideas
---

# Lista de ideas

<ul>
{% for file in site.static_files %}
  {% if file.path contains 'ideas/' and file.path contains '.md' %}
    <li><a href="{{ site.baseurl }}{{ file.path | replace: '.md', '.html' }}">{{ file.path | split: '/' | last | replace: '.md', '' }}</a></li>
  {% endif %}
{% endfor %}
</ul>
