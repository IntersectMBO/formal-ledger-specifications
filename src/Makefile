# Constants
AGDA?=agda
OUT_DIR?=../dist
LATEX?=latexmk -xelatex -shell-escape -halt-on-error
LATEX_DIR=latex
PRE=$(addprefix $(LATEX_DIR)/, \
  agda.sty agda-latex-macros.sty iohk.sty fonts/* preamble.tex)
HTML_DIR=$(OUT_DIR)/html
HS_DIR=$(OUT_DIR)/MAlonzo
HS_DIR_LEDGER=$(HS_DIR)/Ledger
HS_DIR_MIDNIGHT=$(HS_DIR)/MidnightExample

.PHONY: default clean all docs html hsGen hsTest
default: all

# Agda -> LaTeX -> PDF
latexFiles=$(patsubst %.lagda, $(LATEX_DIR)/%.tex, \
             $(shell find . -name '*.lagda' | sed 's|\.\/||g'))
$(latexFiles): $(LATEX_DIR)/%.tex: %.lagda
	@echo "Compiling $<"
	$(AGDA) --latex --latex-dir=$(LATEX_DIR) $< # --only-scope-checking

$(OUT_DIR)/cardano-ledger.pdf: $(LATEX_DIR)/Ledger/PDF.tex $(latexFiles) $(PRE)
	@echo "Generating $@"
	cd $(LATEX_DIR) && $(LATEX) $(subst $(LATEX_DIR)/,, $<)
	mv $(LATEX_DIR)/PDF.pdf $@

$(OUT_DIR)/midnight-example.pdf: $(LATEX_DIR)/MidnightExample/PDF.tex $(latexFiles) $(PRE)
	@echo "Generating $@"
	cd $(LATEX_DIR) && $(LATEX) $(subst $(LATEX_DIR)/,, $<)
	mv $(LATEX_DIR)/PDF.pdf $@

# Agda -> HTML
$(HTML_DIR)/Ledger.PDF.html : Ledger/PDF.lagda
	@echo "Generating $@"
	$(AGDA) --html --html-dir $(HTML_DIR) $<
$(HTML_DIR)/MidnightExample.PDF.html : MidnightExample/PDF.lagda
	@echo "Generating $@"
	$(AGDA) --html --html-dir $(HTML_DIR) $<

# Agda -> Haskell
LEDGER_CABAL=cardano-ledger.cabal
$(HS_DIR_LEDGER)/Foreign/HSLedger.hs: Ledger/Foreign/HSLedger.agda
	@echo "Generating $@"
	mkdir -p $(HS_DIR_LEDGER)
	cp -r Ledger/hs-src/* $(HS_DIR_LEDGER)/
	cp Ledger/hs-src/$(LEDGER_CABAL) $(HS_DIR_LEDGER)/
	$(AGDA) -c --ghc-dont-call-ghc --compile-dir $(HS_DIR_LEDGER) $<
	find $(HS_DIR_LEDGER)/MAlonzo -name "*.hs" -print \
	  | sed "s#^$(HS_DIR_LEDGER)/#        #;s#\.hs##;s#/#.#g" \
	  >> $(HS_DIR_LEDGER)/$(LEDGER_CABAL)

MIDNIGHT_CABAL=midnight-example.cabal
$(HS_DIR_MIDNIGHT)/HSLedger.hs: MidnightExample/HSLedger.agda
	mkdir -p $(HS_DIR_MIDNIGHT)
	@echo "Generating $@"
	cp -r MidnightExample/hs-src/* $(HS_DIR_MIDNIGHT)/
	cp MidnightExample/hs-src/$(MIDNIGHT_CABAL) $(HS_DIR_MIDNIGHT)/
	$(AGDA) -c --ghc-dont-call-ghc --compile-dir $(HS_DIR_MIDNIGHT) $<
	find $(HS_DIR_MIDNIGHT)/MAlonzo -name "*.hs" -print \
	  | sed "s#^$(HS_DIR_MIDNIGHT)/#        #;s#\.hs##;s#/#.#g" \
	  >> $(HS_DIR_MIDNIGHT)/$(MIDNIGHT_CABAL)

# User commands
docs:
	$(MAKE) $(OUT_DIR)/cardano-ledger.pdf
	$(MAKE) $(OUT_DIR)/midnight-example.pdf
html:
	$(MAKE) $(HTML_DIR)/Ledger.PDF.html
	$(MAKE) $(HTML_DIR)/MidnightExample.PDF.html
hsGen:
	$(MAKE) $(HS_DIR_LEDGER)/Foreign/HSLedger.hs
	$(MAKE) $(HS_DIR_MIDNIGHT)/HSLedger.hs
hsTest: $(HS_DIR_LEDGER)/test/ $(HS_DIR_MIDNIGHT)/test/
	cd $(HS_DIR_LEDGER)   && cabal run test
	cd $(HS_DIR_MIDNIGHT) && cabal run test
all: docs html codeGen hsBuild

clean:
	rm -rf $(LATEX_DIR)/Ledger/ $(LATEX_DIR)/MidnightExample $(LATEX_DIR)/PDF.* \
	       $(OUT_DIR)/

# TODO: integrate into `default.nix` to remove duplication
