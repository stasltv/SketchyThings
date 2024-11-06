## SketchyThings

A tiny plugin to display the next to-do item from the [Things](https://culturedcode.com/things/) app in your [Sketchybar](https://github.com/FelixKratz/SketchyBar).

![](image.webp)

## Installation

1. Copy `sketchy_things.sh` into your Sketchybar plugins directory.
2. Ensure the script is executable: `chmod +x sketchy_things.sh`.
3. (Optional) Adjust `MAX_LENGTH` to your preference.
4. Add the item to your Sketchybar configuration. For example:

```bash
sketchybar --add item sketchythings right \
           --set sketchythings \
                 script="$PLUGIN_DIR/sketchy_things.sh" \
                 update_freq=10
```
