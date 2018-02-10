if you are using a foreach loop and you are deleting elements in it for whatever reason that shit don't fly

you want to be all like

```
        this.objectives.children.slice().forEach(child => {
            //wipe it
            this.objectives.removeChild(child);
        });

```
