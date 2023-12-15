---
layout: archive
title: "News"
permalink: /news/
author_profile: true
---

Leadership, service, honors, and activities I'm up to :sunglasses:
<!-- Complete list of github markdown emoji markup: https://gist.github.com/rxaviers/7360908 -->

{% include base_path %}

{% for post in site.news reversed%}
  <article>
    <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
    <p>{{ post.excerpt | strip_html }}</p>
    <!-- You can customize the above code based on your needs -->
  </article>
{% endfor %}