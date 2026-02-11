# Soul Cinnamon Theme

A Cinnamon DE theme with focus on consistency, adaptiveness, efficiency, and a modern look.

Open for contributions, just keep in mind the points above (for example regarding efficiency, using many heavy effects like box shadow or blur aren't advised since it makes the theme more resource intensive), plus make sure to take in account UX aspects for the theming.

Also the main source of truth regarding the most important theme components should be https://github.com/linuxmint/cinnamon/tree/master/data/theme.

## Screenshots

![Dark Screenshot](screenshot-dark.png)
**Screenshot**: Soul Dark

![Light Screenshot](screenshot-light.png)
**Screenshot**: Soul Light

## Structure

- `src/sass`: SASS source files.
- `src/assets`: Image assets (SVGs).
- `src/templates`: JSON templates for metadata.
- `dist`: Compiled theme output.

## Compiling

Dependencies:

- `sassc`

If you're on a debian based system you can install the dependencies with:

```bash
apt install sassc
```

To build all variants (Dark, Light, Ink, Matrix, Colorfection, Comical):

```bash
make
```

To build a specific variant:

```bash
make dark
# or
make light
# or
make ink
# or
make matrix
# or
make colorfection
# or
make comical
```

## Testing

After compiling you can test the theme by moving the produced artifacts in the `dist/` folder to the `~/.themes/` folder in your system:

```bash
cp -r dist/* ~/.themes
```

Or using the Makefile instruction:

```bash
make install
```

## Customization

Edit `src/sass/_colors-soul-dark.scss`, `src/sass/_colors-soul-light.scss`, `src/sass/_colors-soul-ink.scss`, `src/sass/_colors-soul-matrix.scss`, `src/sass/_colors-soul-colorfection.scss`, or `src/sass/_colors-soul-comical.scss` to adjust the color palette. Edit `src/sass/_soul-main.scss` or widgets for structural changes.
