---
layout: post
title:  "Getting Jekyll running in windows with docker"
date:   2018-01-31 10:00:47 +0000
categories: blog
---

So I decided to start a blog and for one reason or another decided on jekyll/github.io.

I'm not terribly familiar with Ruby, I tried to install the ruby gem for jekyll but it failed to install in my system. I spent a little while googling but ficxing my ruby install was not high enough on my priorities to spend too much time on it.

Doing what I normally do, I tried fixing this with docker. Following https://cardano.github.io/blog/2016/11/29/creating-an-engineering-blog I used their docker-compose file, but I found for some reason or another it wasn't properly mapping the port.

Even though its more clunky I managed to do it with docker on the command line.

docker run -it -p 4000:4000 -v %cd%:/opt/app jekyll/jekyll bash

followed by

sh -c 'jekyll serve -s /opt/app --watch'
