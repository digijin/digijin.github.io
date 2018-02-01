---
layout: post
title:  "Getting image from pixi to react"
date:   2018-02-01 11:42 +0000
categories: blog
---

so I had a bunch of images I'm bringing into PIXI for my project and I also wanted to use them in some react ui that I set up a while ago - still deciding whether I want to keep react or not, but anyway...

to load into pixi:

{% highlight javascript %}
PIXI.loader.add("decor", "assets/decorsprites.json");
{% endhighlight %}

then do some `PIXI.loader.load(() => {` nonsense to make sure they are loaded.

a bit later on be all like

{% highlight javascript %}
Object.keys(PIXI.loader.resources["decor"].textures).forEach(key => {
let texture = PIXI.loader.resources["decor"].textures[key];
let sprite = new PIXI.Sprite(texture);
let container = new PIXI.Container();
container.addChild(sprite);
let img = { src: renderer.extract.base64(container) };
SomethingYoureOutputting.push(img)
{% endhighlight %}

then later on in react I'm used to using image elements because of I do the webpackz so my jsx code looks like this

{% highlight bash %}
<img
style={{
width: "32px",
height: "32px"
}}
src={b.image.src}
/>
{% endhighlight %}

and that works for both image elements and the `{src:base64}` format I used when going through the forEach a bit further up
