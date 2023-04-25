---
layout: default
title: Idear.io
---

<style>
    body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
    color: #fff;
    background-color: #0d1117; /* Fondo oscuro */
    line-height: 1.6;
    margin: 0;
    padding: 0;
  }

  h1 {
    font-size: 2.5rem;
    color: #58a6ff; /* Color degradado */
    text-align: center;
    margin-top: 40px;
    background-image: linear-gradient(90deg, #58a6ff, #bc9cff);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }

  ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    margin-bottom: 20px;
  }

  ul li {
    margin: 10px 0;
    background-color: #fff;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  a {
    color: #0366d6;
    text-decoration: none;
    display: block;
  }

  a:hover {
    text-decoration: underline;
  }

  .github-link {
    text-align: center;
    margin-top: 20px;
    margin-bottom: 40px;
  }

  .octicon {
    fill: #0366d6;
    vertical-align: middle;
  }

  h2 {
    font-size: 2rem;
    color: #2c3e50;
    text-align: center;
    margin-top: 40px;
  }

  ul {
    list-style-type: none;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    padding: 0;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: flex-start; /* Alinea todos los elementos en la parte superior */
  }

  ul li {
    margin: 15px;
    background-color: #fff;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: all 0.3s;
    text-align: center;
    min-height: 100px; /* Establece la altura mínima de cada elemento li */
    max-height: 100px; /* Establece la altura máxima de cada elemento li */
    overflow: hidden; /* Oculta el contenido que excede la altura máxima */
    height: 100px; /* Establece la altura de cada elemento li */
    overflow-y: auto; /* Habilita el desplazamiento vertical si el contenido excede la altura */
    margin: 15px 15px 15px 15px; /* Asegura que todos los márgenes sean iguales */
  }

  ul li:first-child {
    margin-top: 4px;
  }

  ul li:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
  }
  ul li a {
    font-size: 1rem; /* Ajusta el tamaño de la fuente según tus preferencias */
    line-height: 1.5; /* Ajusta el espacio entre líneas según tus preferencias */
  }

  a:hover {
    text-decoration: underline;
  }
  
  .twitter-share-button {
  background-color: #1da1f2;
  color: #fff;
  border: none;
  border-radius: 4px;
  font-size: 1rem;
  padding: 10px 20px;
  margin-left: 10px;
  text-decoration: none;
  transition: all 0.3s ease-in-out;
}

.twitter-share-button:hover {
  background-color: #0d8bf0;
  cursor: pointer;
}
</style>

<h1>Whitepaper</h1>

{% include readme.html %}

<div class="github-link">
  <a href="https://github.com/tres-caras/idear.io">GitHub Repo</a>
  <svg height="32" aria-hidden="true" viewBox="0 0 16 16" version="1.1" width="32" data-view-component="true" class="octicon octicon-mark-github">
  </svg>
</div>

<h2>Checkout some ideas</h2>
<ul>
  {% for file in site.static_files %}
    {% if file.path contains 'ideas/' and file.path contains '.md' %}
      <li>
        <a href="{{ site.baseurl }}{{ file.path | replace: '.md', '.html' }}">{{ file.path | split: '/' | last | replace: '.md', '' }}</a>
        <a href="https://twitter.com/intent/tweet?url={{ site.url }}{{ site.baseurl }}{{ file.path | replace: '.md', '.html' }}&text={{ file.path | split: '/' | last | replace: '.md', '' }}%20on%20Idear.io" target="_blank" rel="noopener" class="twitter-share-button"><i class="fab fa-twitter"></i> Share with Twitter</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>
