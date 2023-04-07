.PHONY : all
all: output pdf html txt docx

output:
	mkdir output

.PHONY : pdf
pdf: resume.pdf
resume.pdf: resume.md ; pandoc resume.md -f markdown+yaml_metadata_block --template templates/my_format.latex -o output/resume.pdf

.PHONY : docx
docx: resume.docx
resume.docx: resume.md ; pandoc resume.md -f markdown+yaml_metadata_block --reference-doc=templates/wordstyle.docx -o output/resume.docx

.PHONY : html
html: resume.html
resume.html: resume.md ; pandoc resume.md -f markdown+yaml_metadata_block --toc --toc-depth=1 -t html5 -o output/resume.html --self-contained --css templates/html/style.css  --include-before-body=templates/html/header.html

.PHONY : txt
txt: resume.txt
resume.txt: resume.md ; pandoc resume.md -f markdown+yaml_metadata_block -t plain -o output/resume.txt

.PHONY : clean
clean: ; rm -f output/*