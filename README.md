# resume-pandoc

Forked from John Bokma's [repo](https://github.com/john-bokma/resume-pandoc)
with

Templates for authoring a resume in pdf, txt, html and docx formats via a single
markdown file.

- html: header info via `templates/html/header.html` and style via `templates/html/style.css`
- pdf (via latex): `templates/my_format.tex`
- docx: `templates/wordstyle.docx`
- txt: plain text requires no template `:)`

See the `Makefile` for recipes on how I generate the required files.


## YAML Meta Block

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
