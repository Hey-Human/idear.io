---
layout: default
title: Idear.io
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
</style>

# Whitepaper

{% include readme.html %}

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
  </svg>
</div>