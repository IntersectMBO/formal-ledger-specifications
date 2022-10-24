AGDA = ~/IOHK/ledger-agda/bin/agda

SOURCES = $(shell find src/ -name '*.lagda')
TEXFILES = $(patsubst src/%.lagda,build/%.tex,$(SOURCES))

build/%.tex : src/%.lagda builddir
	cd src && $(AGDA) --only-scope-checking --latex --latex-dir=../build $*.lagda

build/Ledger.pdf : $(TEXFILES) builddir
	echo $(SOURCES)
	echo $(AGDA)
	cd build && xelatex Ledger/Ledger.tex

.PHONY: all clean builddir
all:
	cd src && find . -name \*.lagda -exec $(AGDA) --only-scope-checking --latex {} \;
	cd src/latex && xelatex Ledger/Ledger.tex
	cp src/latex/Ledger.pdf .
clean:
	rm -rf src/MAlonzo
	rm -rf build
builddir:
	mkdir -p build
	cp src/latex/*.sty build
