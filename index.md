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

<button id="add-idea-button" style="background-color: #007bff; color: white; border: none; border-radius: 5px; padding: 10px 20px; font-size: 16px; cursor: pointer;">Agregar idea</button>>

<div id="add-idea-form" style="display: none; background-color: white; border-radius: 5px; padding: 20px; box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);">
  <h2 style="font-size: 24px; font-weight: bold; margin-bottom: 20px;">Agregar una nueva idea</h2>
  <form action="/add-idea" method="POST">
    <label for="idea-plan" style="font-size: 16px; font-weight: bold;">Plan de idea:</label><br>
    <input type="text" id="idea-plan" name="idea-plan" style="width: 100%; padding: 10px; border-radius: 5px; border: 1px solid #ccc; margin-bottom: 20px;"><br>
    <button type="submit" style="background-color: #007bff; color: white; border: none; border-radius: 5px; padding: 10px 20px; font-size: 16px; cursor: pointer;">Añadir a la lista de espera</button>
  </form>
</div>

<script>
  var addIdeaButton = document.getElementById("add-idea-button");
  var addIdeaForm = document.getElementById("add-idea-form");

  addIdeaButton.addEventListener("click", function() {
    addIdeaForm.style.display = "block";
  });
</script>
