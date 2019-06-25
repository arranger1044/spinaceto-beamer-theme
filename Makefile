TEXMFHOME = $(shell kpsewhich -var-value=TEXMFHOME)
#
# local dir
# TEXMFHOME = $(shell kpsewhich -var-value=TEXMFLOCAL)
INSTALL_DIR = $(TEXMFHOME)/tex/latex/spinacetotheme

.PHONY: clean install

install:
	mkdir -p $(INSTALL_DIR)
	cp *.sty $(INSTALL_DIR)

clean:
	rm -r $(INSTALL_DIR)

reload:
	texhash
