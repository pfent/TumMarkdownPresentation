# Markdown template for TUM presentations

Beautiful LaTeX presentations, without the need to actually write LaTeX!

# Prerequisites

You need to have an installation of Latex (e.g. Texlive) and Pandoc installed.

```sh
sudo pacman -S pandoc texlive-core
```

```sh
sudo apt install pandoc texlive
```

Optionally, you can render SVG images in the `figures` folder with inkscape.

# Building
Just run
```
make
```

The Makefile now renders all `*.md` files to beamer presentations as `*.pdf`


