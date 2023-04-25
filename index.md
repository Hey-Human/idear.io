---
layout: default
title: Idear.io
---

<style>
  body {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
    color: #24292e;
    background-color: #f6f8fa;
    line-height: 1.6;
    margin: 0;
    padding: 0;
  }

  h1 {
    font-size: 2.5rem;
    color: #2c3e50;
    text-align: center;
    margin-top: 40px;
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
  }

  ul li {
    margin: 15px;
    background-color: #fff;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: all 0.3s;
    text-align: center;
  }

  ul li:hover {
    transform: translateY(-5px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
  }

  a {
    color: #0366d6;
    text-decoration: none;
    font-weight: bold;
  }

  a:hover {
    text-decoration: underline;
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
      <li><a href="{{ site.baseurl }}{{ file.path | replace: '.md', '.html' }}">{{ file.path | split: '/' | last | replace: '.md', '' }}</a></li>
    {% endif %}
  {% endfor %}
</ul>
