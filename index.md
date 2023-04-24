---
layout: default
title: Lista de ideas
---

<style>
  body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
    color: #24292e;
    background-color: #f6f8fa;
  }

  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    margin-bottom: 20px;
  }

  ul li {
    margin: 10px 0;
  }

  a {
    color: #0366d6;
    text-decoration: none;
  }

  .github-link {
    margin-top: 20px;
    margin-bottom: 40px;
  }

  #add-idea-button {
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 6px;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    margin-bottom: 20px;
  }

  #add-idea-form {
    background-color: white;
    border-radius: 6px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    display: none;
  }

  #add-idea-form h2 {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
  }

  #add-idea-form label {
    font-size: 16px;
    font-weight: bold;
    display: block;
    margin-bottom: 10px;
  }

  #add-idea-form input {
    width: 100%;
    padding: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
    margin-bottom: 20px;
    font-size: 16px;
  }

  #add-idea-form button[type="submit"] {
    background-color: #28a745;
    color: white;
    border: none;
    border-radius: 6px;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
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
  <svg height="32" aria-hidden="true" viewBox="0 0 16 16" version="1.1" width="32" data-view-component="true" class="octicon octicon-mark-github">
    <path d="M8 0c4.42 0 8 3.58 8 8a8.013 8.013 0 0 1-5.45 7.59c-.4.08-.55-.17-.55-.38 0-.27.01-1.13.01-2.2 0-.75-.25-1.23-.54-1.48 1.78-.2 3.65-.88 3.65-3.95 0-.88-.31-1.59-.82-2.15.08-.2.36-1.02-.08-2.12 0 0-.67-.22-2.2.82-.64-.18-1.32-.27-2-.27-.68 0-1.36.09-2 .27-1.53-1.03-2.2-.82-2.2-.82-.44 1.1-.16 1.92-.08 2.12-.51.56-.82 1.28-.82 2.15 0 3.06 1.86 3.75 3.64 3.95-.23.2-.44.55-.51 1.07-.46.21-1.61.55-2.33-.66-.15-.24-.6-.83-1.23-.82-.67.01-.27.38.01.53.34.19.73.9.82 1.13.16.45.68 1.31 2.69.94 0 .67.01 1.3.01 1.49 0 .21-.15.45-.55.38A7.995 7.995 0 0 1 0 8c0-4.42 3.58-8 8-8Z"></path>
</svg>
</div>

<button id="add-idea-button">Agregar idea</button>

<div id="add-idea-form">
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
