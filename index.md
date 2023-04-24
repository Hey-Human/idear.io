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

<button id="add-idea-button">Agregar idea</button>

<div id="add-idea-form" style="display: none;">
  <h2>Agregar una nueva idea</h2>
  <form action="/add-idea" method="POST">
    <label for="idea-plan">Plan de idea:</label><br>
    <input type="text" id="idea-plan" name="idea-plan"><br>
    <button type="submit">Añadir a la lista de espera</button>
  </form>
</div>

<script>
  var addIdeaButton = document.getElementById("add-idea-button");
  var addIdeaForm = document.getElementById("add-idea-form");

  addIdeaButton.addEventListener("click", function() {
    addIdeaForm.style.display = "block";
  });
</script>
