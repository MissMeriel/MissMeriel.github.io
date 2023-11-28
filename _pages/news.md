---
layout: archive
title: "News"
permalink: /news/
author_profile: true
---

Leadership, service, honors, and activities I'm up to :sunglasses:
<!-- Complete list of github markdown emoji markup: https://gist.github.com/rxaviers/7360908 -->

{% include base_path %}

{% for post in site.talks reversed %}
  {% include archive-single-talk.html %}
{% endfor %}