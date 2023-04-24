---
layout: default
title: Lista de ideas
---

# Lista de ideas

<ul>
{% for file in site.static_files %}
  {% if file.path contains 'ideas/' and file.path contains '.md' %}
    <li><a href="{{ site.baseurl }}{{ file.path }}">{{ file.path | replace: 'ideas/', '' }}</a></li>
  {% endif %}
{% endfor %}
</ul>
