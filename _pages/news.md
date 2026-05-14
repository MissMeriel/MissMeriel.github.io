---
layout: archive
title: "News"
permalink: /news/
author_profile: true
---

{% include base_path %}

<ul class="timeline">
{% assign news_sorted = site.news | sort: "date" | reverse %}
{% for post in news_sorted %}
  <li class="timeline__item">
    <span class="timeline__date">{{ post.date | date: "%b %Y" }}</span>
    <span class="timeline__dot"></span>
    <div class="timeline__body">
      {% if post.category %}
        <span class="timeline__tag timeline__tag--{{ post.category | downcase }}">{{ post.category }}</span>
      {% endif %}
      <h3 class="timeline__title">
        {% if post.url and post.url != "" %}
          <a href="{{ post.url }}" target="_blank" rel="noopener">{{ post.title }}</a>
        {% else %}
          {{ post.title }}
        {% endif %}
      </h3>
      <p class="timeline__excerpt">{{ post.excerpt | strip_html | truncatewords: 40 }}</p>
    </div>
  </li>
{% endfor %}
</ul>
