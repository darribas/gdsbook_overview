all: html pdf
html:
	pandoc --section-divs -t revealjs -s --metadata pagetitle="Dani Arribas-Bel" --variable theme="journal" --template template.revealjs -o index.html index.md
pdf:
	decktape automatic --chrome-arg=--no-sandbox -s 1280x960 index.html index.pdf
container:
	docker run --rm -ti -v ${PWD}:/home/jovyan/work gds19 start.sh

