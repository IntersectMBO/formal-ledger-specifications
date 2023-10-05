# Constants
AGDA?=agda
OUT_DIR?=../dist
LATEX?=latexmk -xelatex -shell-escape -halt-on-error
LATEX_DIR=latex
PRE=$(addprefix $(LATEX_DIR)/, \
  agda.sty agda-latex-macros.sty iohk.sty fonts/* preamble.tex)
PDF_DIR=$(OUT_DIR)/pdfs
HTML_DIR=$(OUT_DIR)/html
HS_DIR=$(OUT_DIR)/haskell

.PHONY: default clean all docs html hsGen hsTest
default: all

# Agda -> LaTeX -> PDF
latexFiles=$(patsubst %.lagda, $(LATEX_DIR)/%.tex, \
             $(shell find . -name '*.lagda' | sed 's|\.\/||g'))
$(latexFiles): $(LATEX_DIR)/%.tex: %.lagda
	@echo "Compiling $<"
	$(AGDA) --latex --latex-dir=$(LATEX_DIR) $< # --only-scope-checking
define latexToPdf =
    @echo "Generating $@"
    $(eval PDF=$(notdir $@))
    mkdir -p $(dir $@)
    cd $(LATEX_DIR) && $(LATEX) -jobname=$(PDF:.pdf=) $(subst $(LATEX_DIR)/,, $<)
    mv $(LATEX_DIR)/$(PDF) $@
endef
$(PDF_DIR)/cardano-ledger.pdf: $(LATEX_DIR)/Ledger/PDF.tex $(latexFiles) $(PRE)
	$(latexToPdf)
$(PDF_DIR)/midnight-example.pdf: $(LATEX_DIR)/MidnightExample/PDF.tex $(latexFiles) $(PRE)
	$(latexToPdf)

# Agda -> HTML
define agdaToHtml =
    @echo "Generating $@"
    $(AGDA) --html --html-dir $(HTML_DIR) $<
endef
$(HTML_DIR)/Ledger.PDF.html : Ledger/PDF.lagda
	$(agdaToHtml)
$(HTML_DIR)/MidnightExample.PDF.html : MidnightExample/PDF.lagda
	$(agdaToHtml)

# Agda -> Haskell
define agdaToHs =
    @echo "Generating $@"
    $(eval CABAL_FILE=$(1).cabal)
    $(eval PROJECT=$(firstword $(subst /, ,$(@:$(HS_DIR)/%=%))))
    $(eval HS_DIST=$(HS_DIR)/$(PROJECT))
    mkdir -p $(HS_DIST)
    cp -r $(PROJECT)/hs-src/* $(HS_DIST)/
    cp $(PROJECT)/hs-src/$(CABAL_FILE) $(HS_DIST)/
    $(AGDA) -c --ghc-dont-call-ghc --compile-dir $(HS_DIST) $<
    find $(HS_DIST)/MAlonzo -name "*.hs" -print \
      | sed "s#^$(HS_DIST)/#        #;s#\.hs##;s#/#.#g" \
      >> $(HS_DIST)/$(CABAL_FILE)
endef
HS_DIR_LEDGER=$(HS_DIR)/Ledger
HS_DIR_MIDNIGHT=$(HS_DIR)/MidnightExample
$(HS_DIR_LEDGER)/Foreign/HSLedger.hs: Ledger/Foreign/HSLedger.agda
	$(call agdaToHs,cardano-ledger)
$(HS_DIR_MIDNIGHT)/HSLedger.hs: MidnightExample/HSLedger.agda
	$(call agdaToHs,midnight-example)

# User commands
docs:
	$(MAKE) $(PDF_DIR)/cardano-ledger.pdf $(PDF_DIR)/midnight-example.pdf
html:
	$(MAKE) $(HTML_DIR)/Ledger.PDF.html $(HTML_DIR)/MidnightExample.PDF.html
hsGen:
	$(MAKE) $(HS_DIR_LEDGER)/Foreign/HSLedger.hs $(HS_DIR_MIDNIGHT)/HSLedger.hs
hsTest: $(HS_DIR_LEDGER)/Foreign/HSLedger.hs $(HS_DIR_MIDNIGHT)/HSLedger.hs
	cd $(HS_DIR_LEDGER)   && cabal run test
	cd $(HS_DIR_MIDNIGHT) && cabal run test
all: docs html hsGen hsTest

clean:
	rm -rf $(LATEX_DIR)/Ledger/ $(LATEX_DIR)/MidnightExample \
	       $(LATEX_DIR)/cardano-ledger.* $(LATEX_DIR)/midnight-example.* \
	       $(OUT_DIR)/

# TODO: integrate into `default.nix` to remove duplication
