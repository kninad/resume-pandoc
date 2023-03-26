# resume-pandoc

Fork of John Bokma's [resume-pandoc](https://github.com/john-bokma/resume-pandoc)
repo for creating resume (pdf) using markdown. Now able to generate resume in
pdf, txt, docx and html formats.

See the `Makefile` to get a basic idea about how each format's resume recipe
looks like (which template files are used etc..)

`templates/` : contains the individual format's styling and templates.

`output/` : where each of the resume files will be saved. See this folder for
examples on how the outputs will look like!

## Changes

Key change is multi-format (pdf, txt, docx, html) output via the same markdown
file.

- Slight modifications to the latex template for the pdf output
- Simple and clean `html` template
- Very basic docx template, nothing fancy but good looking imo!
- Also generates plain text version in case we need to copy paste during job applications! 


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

- John Bokma for his repo! It was clear and easy to use/modify.

Earlier Credits:

- Jason R. Blevins for making the LaTeX resume example that inspired this
  template.

- Christoph Frings and Andrew for their help with description list; reference
  [enumitem: multiline label with text following label - TeX - LaTeX Stack Exchange](https://tex.stackexchange.com/questions/323903/enumitem-multiline-label-with-text-following-label).
