Blog

This repository contains the HTML and CSS source for [my blog](https://blog.aaronmanning.net).

## Site Content

The latest version of the site itself, as hosted, can be found in `content/website` folder. Note that the HTML provided in that folder is autogenerated from the markdown within `content` and not neatly formatted to be human read.

Front matter is used to specify the preview and date, with dates provided in `mm/dd/yyyy` format, due to bugs in the library being used to parse dates. Markdown files prefixed with `_` are ignored in the generation, as they are being written but not ready to be published.

## Build System

Posts are written in markdown and placed within `content`. `site-generation` contains a Rust project which parses the markdown and generates the site (excluding other manually added dependencies such as images, Bootstrap and MathJax). A `makefile` is provided at the top level which rebuilds the site.

## Dependencies and Links

A lot of the images generated for the blog are drawn using a tool I created called [Mathil](https://github.com/aaron-jack-manning/mathil). The source code for the images can be found in the `image-source-code` folder.

If you are interested in using the computer modern LaTeX font on a website just as I did, [this](https://checkmyworking.com/cm-web-fonts/) is a great resource.
