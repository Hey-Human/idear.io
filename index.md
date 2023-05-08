---
layout: default
title: idear.io
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
    color: #ffffff;
    text-align: center;
    margin-top: 40px;
    background-image: linear-gradient(to right, #48e0a4, #37b08d);
    padding: 15px;
    border-radius: 10px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
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
    background-image: linear-gradient(to right, #48e0a4, #37b08d);
    padding: 15px;
    border-radius: 10px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: all 0.3s;
    text-align: center;
    min-height: 100px; /* Establece la altura mínima de cada elemento li */
    max-height: 100px; /* Establece la altura máxima de cada elemento li */
    overflow: hidden; /* Oculta el contenido que excede la altura máxima */
    height: 100px; /* Establece la altura de cada elemento li */
    overflow-y: auto; /* Habilita el desplazamiento vertical si el contenido excede la altura */
    margin: 15px 15px 15px 15px; /* Asegura que todos los márgenes sean iguales */
    color: #ffffff;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
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
  
  ol {
    list-style-type: decimal;
    margin: 0;
    padding-left: 20px;
    margin-bottom: 20px;
  }

ol li {
  margin: 10px 0;
  background-image: linear-gradient(to right, #4ecb78, #37b08d);
  padding: 15px;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  color: #ffffff;
  text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
}

  ol li:first-child {
    margin-top: 4px;
  }

  ol li a {
    font-size: 1rem;
    line-height: 1.5;
    color: #0366d6;
    text-decoration: none;
  }

  ol li a:hover {
    text-decoration: underline;
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

/* Footer */

footer {
    background-color: #0d1117;
    padding: 20px 0;
    text-align: center;
  }

  .footer-content p {
    margin: 0;
    padding: 5px 0;
  }

  .footer-content i {
    color: #58a6ff;
    margin-right: 5px;
  }

  .footer-content a {
    color: #58a6ff;
    text-decoration: none;
    transition: color 0.3s;
  }

  .footer-content a:hover {
    color: #bc9cff;
    text-decoration: underline;
  }

  .footer-item {
    display: flex;
    align-items: center;
  }

  .footer-item i {
    margin-right: 5px;
  }

  /* How to image container */
  .image-container {
    background-color: rgba(255, 255, 255, 0.1); /* Fondo semitransparente blanco */
    border-radius: 5px;
    padding: 20px;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 40px auto;
    max-width: 80%; /* Ajusta el ancho máximo según tus preferencias */
  }
</style>

{% include readme.html %}

<h2>Cómo funciona desde github hasta la web?</h2>

<div class="image-container">
   <img src="{{ site.baseurl }}/assets/images/ideario_how_to.png" alt="Cómo funciona?">
</div>

<h2>Checkout some ideas</h2>
<ul>
  {% for file in site.static_files %}
    {% if file.path contains 'ideas/' and file.path contains '.md' %}
      <li>
        <a href="{{ site.baseurl }}{{ file.path | replace: '.md', '.html' }}">{{ file.path | split: '/' | last | replace: '.md', '' }}</a>
        <a href="https://twitter.com/intent/tweet?url={{ site.url }}{{ file.path | replace: '.md', '.html' }}&text={{ file.path | split: '/' | last | replace: '.md', '' }}%20on%20{{ site.url }}/" target="_blank" rel="noopener" class="twitter-share-button"><i class="fab fa-twitter"></i> Share with Twitter</a>
      </li>
    {% endif %}
  {% endfor %}
</ul>

<!-- Footer -->
<footer>
  <div class="footer-content">
    <p>&copy; {{ 'now' | date: "%Y" }} Hey, Human! | Todos los derechos reservados.</p>
    <p class="footer-item"><a href="https://github.com/{{ site.repository }}"><i class="fab fa-github"></i> {{ site.app_name }} Repository</a></p>
    <p class="footer-item"><i class="fas fa-envelope"></i> <a href="mailto:{{ site.email }}">Mail me!</a></p>
    <p class="footer-item"><a href="https://github.com/Hey-Human"><i class="fab fa-github"></i> Hey, Human!</a></p>
    <p class="footer-item"><a href="https://hey-human.github.io/">🏠 Hey, Human! Home</a></p>
  </div>
</footer>
