# Meriel's Personal Website

My website: https://missmeriel.github.io

This repository contains the site used by Meriel von Stein. This site was built using [Jekyll](https://jekyllrb.com). The original site's theme is based on [bulma-clean-theme](https://github.com/chrisrhymes/bulma-clean-theme), a theme created by [C.S. Rhymes](https://dev.to/chrisrhymes). 

## Working on the Website Locally.

To work on the website locally you have two options. You can either use docker or you can install the dependencies manually

### Docker

First you need to install docker. Once you are done, go into the website repo and run the following command:
```bash
docker run --rm -it \
  --volume="$PWD:/srv/jekyll" \
  --volume="$PWD/vendor/bundle:/usr/local/bundle" \
  -p 4000:4000 jekyll/jekyll:3.8 \
  jekyll serve
```

### Installing Locally

To view this website, you will need [Ruby](https://www.ruby-lang.org/en/) and [Bundle](https://bundler.io). Ruby is an open-source programming language, while Bundle is a tool that takes care of all the dependencies required to run Ruby projects. Below we provide the instructions needed to install these on both Mac OS and Ubuntu.

#### Mac OS

To install Ruby and Bundle on Mac OS, you need to run the following:

```bash
$ brew update
$ brew install ruby
$ sudo gem install bundler
```

**Note:** there have been some issues with the dependencies on Mac, although some people have got it working.

Next, to install all the dependencies for the website, go into the `Website` folder and run:

```bash
$ bundle install
```

You can view the website by running the following in the `website` folder:
```bash
$ bundle exec jekyll serve
```

**Note:** For this to work on Mac OS you will need to install xcode. You can install xcode from the app store (it takes a while).

#### Ubuntu

To install Ruby and Bundle on Ubuntu you need to run the following:

```bash
$ sudo apt update
$ sudo apt install ruby-full
$ sudo gem install bundler
```

**Note:** These instructions were tested on Ubuntu 18.04

Next, to install all the dependencies for the website, go into the `Website` folder and run:

```bash
$ bundle install
```

You can view the website by running the following in the `website` folder:
```bash
$ bundle exec jekyll serve
```

### Viewing the Website

You can then view the website on:
```
http://127.0.0.1:4000/
```

## Adding Information

Adding information is as easy as opening the appropriate folder (listed below) and adding a markdown file with the correct information. 

* [Team Members](./_team) :  `_team`
* [Projects](./_projects) :  `_projects`
* [Gallery Images (team section)](./_gallery) :  `_gallery`
* [Publications](./_publications) :  `_publications`

More information on what format the markdown file should be is listed under the appropriate headings below.

### Team Members

To add a team member, add your markdown file to the `_team` folder. The fields which need to be filled in are:

* **first_name**: (required) Your first name.
* **last_name**: (required) Your last name.
* **picture**: (optional) A picture of you, preferably in the folder `/images/team/`. **Note:** the image needs to be square.
* **website**: (optional) A link to your personal website.
* **dblp_uri**: (optional) A link to your dblp bib file. By adding this, we will automatically add your publications to the publications tab.
* **tier**: (required) This needs to be one of the following (Professors, Postdoctoral Students, Graduate Students, Undergraduate Students, Previous Students).

An example of a complete team member markdown file is shown below:

```markdown
---
first_name: Mary Lou
last_name: Soffa
picture: /images/team/marylou.jpg
website: www.cs.virginia.edu/~soffa/index.html%3Fp=6.html
dblp_uri: https://dblp.org/pid/s/MaryLouSoffa.bib
tier: Professors
---
```

### Projects

To add a project to the website, add a markdown file to the `_project` folder. The fields which need to be filled in are:

* **title**: (required) The title of your project.
* **image**: (optional) An image that will be displayed as a banner for your project, preferably in the folder `/images/projects/`. **Note** it is best to use an image that longer vertically than horizontally for best formatting.
* **date**: (required) the date which the project was started in the format `YYYY-MM-DD`, used for sorting the projects.
* **team**: (optional) A list of team members separated by commas.
* **label**: (required) This defines which section your project will end up in. It needs to be one of the following (DNN, Robotics, Foundational)
* **sponsors**: (optional) A sentence describing the sponsors of this project.

You can then add your project details below the data fields using the standard markdown format. For a guide on basic markdown formatting, take a look at this [link](https://www.markdownguide.org/cheat-sheet).

An example of a complete project would look as follows:

```markdown
---
title: Fuzzing Mobile Robot Environments for Fast Automated Crash Detection
image: /images/projects/Fuzzing.png
date: 2021-06-02
team: Trey Woodlief, Sebastian Elbaum, and Kevin Sullivan
label: Robotics
sponsor: 'This effort is supported by NSF Awards #1853374 and #1909414'
---

Lorem ipsum dolor sit amet.

### Subtitle

We tried to:
* create
* a
* list

This is how you make something **bold** wow!
```

### Gallery Images

To add a gallery image to the website, add a markdown file to the `_gallery` folder. The fields which need to be filled in are:

* **image**: (required) A link to the image you want to display, preferably in the folder `/images/gallery/`. 
* **description**: (optional) A short description of the image.
* **image_ratio**: (optional) What ratio the image is, used to format the final image. Defaults to `is-3by1`. A complete list of ratios is available [here](https://bulma.io/documentation/elements/image/).
* **date**: (required) The date your image was taken in the format `YYYY-MM-DD`, used for sorting.

An example of a complete gallery markdown file is shown below:

```markdown
---
image: /images/gallery/carltalk.jpg
description: Carl giving a talk on his recently published work on creating stressful trajectories for robots.
ratio: is-4by3
date: 2020-03-22
---
```

### Publications

We have developed a way to automatically pull your publications using the `dblp_uri` tag from your team profile. However, you can also add a publication manually. To add a publication to the website, add a markdown file to the `_publications` folder. The fields which need to be filled in are:

* **title**: (required) The title of your publication
* **date**: (required) The date your publication was published in the format `YYYY-MM-DD`.
* **venue**: (optional) The venue your publication was published in. You are able to add both HTML and markdown to this field. 
* **paperurl**: (optional) A link to your paper.
* **authors** (optional) A list of authors separated by commas.

An example of a complete publication markdown file is shown below:

```markdown
``
---
title: "At The End Of Synthesis: Narrowing Program Candidates"
date: 2017-01-01
venue: "39th IEEE/ACM International Conference on Software Engineering: New Ideas and Emerging Technologies Results Track, ICSE-NIER 2017, Buenos Aires, Argentina, May 20-28, 2017"
paperurl: https://doi.org/10.1109/ICSE-NIER.2017.7
authors: "David Shriver, Sebastian G Elbaum and Kathryn T Stolee"
---
```

## Automatically Updating Publications

To update the publications, all you need to do is run the `UpdatePublications.py` script. To do that you can run the following command in your terminal:
```bash
$ python3 UpdatePublications.py
```