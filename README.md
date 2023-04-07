# resume-pandoc

Generate your resume in different formats from a **single** markdown file via
`pandoc`! See the `output/` folder for example outputs (docx, pdf, html, txt).
The key advantage I found is that generating text file from pdf (using `pdftotext`)
gives out fairly decent and closely matching text output. Forked from John Bokma's
[repo](https://github.com/john-bokma/resume-pandoc) with changes on styles for the 
html, pdf, and docx outputs.

## Motivation
I presume this could be useful for folks uploading the resume to online portals 
which often perform this conversion in the backend. The docx file also serves
this purpose whereas the html output can embedded into your personal website.
Another advantage of the html output is higer control over the visual style and
an alternate option to get pdf (if you dont care about how the text extracted from
the pdf will look like!)

## Requirements

1. `pandoc`
2. `latex` distribution for pdf
3. `GNU make` (but not strictly required)

Tested with `pando 2.5` and `texlive 2019` on Ubuntu 20.04. I assume this should
still work on Mac and Windows by using the Makefile as a reference.

## Using the repo

1. Edit `resume.md` by adding in your details
2. Create an `output/` directory
3. Run `make all` in the repository root via command line
4. To clean or remove generated files: `make clean`

# Templates

Templates for authoring a resume in pdf, txt, html and docx formats via a single
markdown file.

- html: header info via `templates/html/header.html` and style via `templates/html/style.css`
- pdf (via latex): `templates/my_format.tex`
- docx: `templates/wordstyle.docx`
- txt: plain text requires no template `:)`

**NOTE:** See the `Makefile` for recipes on how I generate the required files in
case you don't have `make` installed on your system.


# YAML Meta Block

name
 : the name on the resume.

keywords
 : keywords to be added to the PDF file.

left-column
 : a list of lines you want in the left column, directly under the name
   on the first page.

right-column
 : a list of lines you want in the right column, directly under the
   name on the first page.

fontsize
 : default `10pt`.

fontenc
 : default `T1`.

urlcolor
 : used in PDF, default `blue`.

linkcolor
 : used in PDF, default `magenta`.

numbersections
 : number sections, default off. Can also be controlled using the
 `pandoc` option `-N, --number-sections`.


# Credits

- John Bokma's repo for [`resume-pandoc`](https://github.com/john-bokma/resume-pandoc)

- Jason R. Blevins for making the LaTeX resume example that inspired this template.

- LaTeX resume template for Pandoc based on Jason R. Blevins' template; http://jblevins.org/projects/cv-template/.
