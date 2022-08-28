---
layout: archive
title: "Tools and Artifacts"
permalink: /artifacts/
author_profile: true
---

{% include base_path %}

{% for post in site.artifacts reversed %}
  {% include archive-single-talk-cv.html type='grid'%}
{% endfor %}