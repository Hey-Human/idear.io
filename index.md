---
layout: default
title: Lista de ideas
---

<style>
  /* Estilos para la lista */
  ul {
    list-style-type: none;
    padding: 0;
  }
  li {
    margin-bottom: 10px;
    padding: 10px;
    background-color: #f2f2f2;
    border-radius: 5px;
  }
  li a {
    color: #333;
    text-decoration: none;
    font-weight: bold;
  }
  li a:hover {
    text-decoration: underline;
  }
  
  /* Estilos para el enlace de GitHub */
  .github-link {
    display: block;
    margin-top: 20px;
    text-align: center;
  }
  .github-link a {
    color: #333;
    text-decoration: none;
    border: 2px solid #333;
    border-radius: 5px;
    padding: 10px 20px;
    font-weight: bold;
  }
  .github-link a:hover {
    background-color: #333;
    color: #fff;
  }
</style>

# Lista de ideas

<ul>
{% for file in site.static_files %}
  {% if file.path contains 'ideas/' and file.path contains '.md' %}
    <li><a href="{{ site.baseurl }}{{ file.path | replace: '.md', '.html' }}">{{ file.path | split: '/' | last | replace: '.md', '' }}</a></li>
  {% endif %}
{% endfor %}
</ul>

<div class="github-link">
  <a href="https://github.com/deptagency-dar/idear.io">Ver repositorio en GitHub</a>
</div>
