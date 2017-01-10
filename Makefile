######
##
## The SSSTA XHB Certificate Template
## SSSTA 星火杯奖状模板
##
######


### The name list
NAME_LIST=name.list 
## for each line : name classify



all: output.pdf

output.pdf: .ignore/tmp.tex
	@xelatex -output-directory=.ignore .ignore/tmp.tex
	@mv .ignore/tmp.pdf output.pdf

.ignore/tmp.tex: .ignore
	@cp certificate_template.tex .ignore/tmp.tex
	@cat ${NAME_LIST} | awk -E makeup.awk | sh

.ignore: 
	@mkdir .ignore

help:

clean:
	@rm -rf .ignore/tmp.*
