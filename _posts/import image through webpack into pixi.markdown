in your webpack conf

```
{
    test: /\.(png|jpg)$/,
    loader: "img-element-loader!url-loader"
},
```

you get an actual `<img>` type element

in your code

```
import * as PIXI from "pixi.js";
import mechHero from "./mech_hero.png";
```

then when you want to use it

```
this.hero = new PIXI.Sprite(new PIXI.Texture(new PIXI.BaseTexture(mechHero)));
this.hero.anchor = {
    x: 0.5,
    y: 0.5
};
//etc
```
