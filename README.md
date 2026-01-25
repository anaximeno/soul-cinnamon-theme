# Soul Cinnamon Theme

A Cinnamon desktop theme inspired by Dark Souls and MacOS design principles.

## Structure
- `src/sass`: SASS source files.
- `src/assets`: Image assets (SVGs).
- `src/templates`: JSON templates for metadata.
- `dist`: Compiled theme output.

```txt
soul-cinnamon-theme/
├── Makefile                # Build script
├── README.md               # Instructions
└── src/
    ├── assets/             # SVGs and images (Empty structure created)
    │   ├── common-assets/
    │   ├── dark-assets/
    │   └── light-assets/
    ├── sass/               # SASS Source
    │   ├── soul-dark.scss  # Entry point for Dark variant
    │   ├── soul-light.scss # Entry point for Light variant
    │   ├── _soul-main.scss # Main logic (formerly cinnamon.scss)
    │   ├── _common.scss    # Shared styles & variables
    │   ├── _drawing.scss   # Mixins for drawing UI elements
    │   ├── _colors-soul-dark.scss
    │   ├── _colors-soul-light.scss
    │   └── widgets/        # Component styles
    └── templates/          # Build templates
        ├── index-dark.theme
        ├── index-light.theme
        ├── metadata-dark.json
        └── metadata-light.json
```

## Compiling
Requirements: `sassc`

To build both Light and Dark variants:
```bash
make
```

To build specific variant:
```bash
make dark
# or
make light
```

## Customization
Edit `src/sass/_colors-soul-dark.scss` or `src/sass/_colors-soul-light.scss` to adjust the color palette.
Edit `src/sass/_soul-main.scss` or widgets for structural changes.
