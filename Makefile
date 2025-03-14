##
# Formal Ledger Specification
#
# @file
# @version 0.1

# Constants
AGDA?=agda
AGDA_RUN=$(AGDA) --transliterate
OUT_DIR?=dist
LATEX?=latexmk -xelatex -shell-escape -halt-on-error
LATEX_DIR=latex
CONWAY_TEX_DIR=latex/Conway
HL_LIST=$(LATEX_DIR)/hldiff_list.txt
PRE=$(addprefix $(LATEX_DIR)/,\
  agda.sty macros.sty fonts/* preamble.tex Diagrams/CardanoLedger.tex references.bib)
PDF_DIR=$(OUT_DIR)/pdfs
PYTHON=python
HTML_DIR=$(OUT_DIR)/html
HS_DIR=$(OUT_DIR)/haskell
MALONZO_DIR=MAlonzo/Code
CABAL_TEST=cabal run test
LEDGER=Ledger
VV_SCRIPT=scripts/agda2vec.py
HL_SCRIPT=scripts/hldiff.py

# Agda -> LaTeX -> PDF
latexFiles=$(patsubst %.lagda, $(LATEX_DIR)/%.tex,\
             $(shell find src -name '*.lagda' | sed -e 's|src\/||' -e 's|\.\/||g'))

# Conway Tex Files
CONWAY_TEX_FILES=$(patsubst %.lagda, $(CONWAY_TEX_DIR)/%.tex,\
             $(shell find src -name '*.lagda' | sed -e 's|src\/||' -e 's|\.\/||g'))

# to be postprocessed for vertical vector typesetting
VV_NAMES=Certs Chain Enact Epoch Ratify Ledger NewPP Utxo #Utxo/Properties

VV_TEX_FILES=$(addprefix $(LATEX_DIR)/$(LEDGER)/,$(VV_NAMES:%=%.tex))
CONWAY_VV_TEX_FILES=$(addprefix $(CONWAY_TEX_DIR)/$(LEDGER)/,$(VV_NAMES:%=%.tex))

# to be postprocessed for highlighting new symbols in Coway pdf
HL_NAMES=Transaction Utxo
HL_TEX_FILES=$(addprefix $(CONWAY_TEX_DIR)/$(LEDGER)/,$(HL_NAMES:%=%.tex))

# General rule for all LaTeX files (with postprocessing for vertical vectors)
$(latexFiles): $(LATEX_DIR)/%.tex: src/%.lagda
	@echo "Compiling $<"
	$(AGDA_RUN) --latex --latex-dir=$(LATEX_DIR) $<
	@set -e; \
	if echo "$(VV_TEX_FILES)" | grep -wq "$@"; then \
		echo "Postprocessing $@ for vertical vectors"; \
		$(PYTHON) $(VV_SCRIPT) $@ $@; \
	fi

# Rule for Conway LaTeX files
# (with postprocessing for vertical vectors and highlighting new Conway symbols)
$(CONWAY_TEX_FILES): $(CONWAY_TEX_DIR)/%.tex: src/%.lagda
	@echo "Compiling $<"
	$(AGDA_RUN) --latex --latex-dir=$(CONWAY_TEX_DIR) $<
	@set -e; \
	if echo "$(CONWAY_VV_TEX_FILES)" | grep -wq "$@"; then \
		echo "Postprocessing $@ for vertical vectors"; \
		$(PYTHON) $(VV_SCRIPT) $@ $@; \
	fi
	@set -e; \
	if echo "$(HL_TEX_FILES)" | grep -wq "$@"; then \
		echo "Postprocessing $@ for highlighting symbols"; \
		$(PYTHON) $(HL_SCRIPT) $@ $@ $(HL_LIST); \
	fi

define latexToPdf
    @echo "Generating $@"
    $(eval PDF=$(notdir $@))
    mkdir -p $(dir $@)
    cd $(LATEX_DIR) && $(LATEX) -jobname=$(PDF:.pdf=) $(subst $(LATEX_DIR)/,, $<)
    mv $(LATEX_DIR)/$(PDF) $@
endef

$(PDF_DIR)/cardano-ledger.pdf: $(LATEX_DIR)/cardano-ledger.tex $(latexFiles) $(PRE)
	$(latexToPdf)
$(PDF_DIR)/conway-ledger.pdf: $(LATEX_DIR)/conway-ledger.tex $(CONWAY_TEX_FILES) $(PRE)
	$(latexToPdf)

# Agda -> HTML
define agdaToHtml
    @echo "Generating $@"
    $(AGDA_RUN) --html --html-dir $(HTML_DIR) $<
endef
$(HTML_DIR)/Html.html : src/Html.agda
	$(agdaToHtml)

# Agda -> Haskell
define agdaToHs
    @echo "Generating $@"
    $(eval CABAL_FILE=$(1).cabal)
    $(eval PROJECT=$(firstword $(subst /, ,$(@:$(HS_DIR)/%=%))))
    $(eval HS_DIST=$(HS_DIR)/$(PROJECT))
    mkdir -p $(HS_DIST)
    cp -r src/$(PROJECT)/hs-src/* $(HS_DIST)/
    cp src/$(PROJECT)/hs-src/$(CABAL_FILE) $(HS_DIST)/
    $(AGDA_RUN) -c --ghc-dont-call-ghc --compile-dir $(HS_DIST) $<
    find $(HS_DIST)/MAlonzo -name "*.hs" -print\
      | sed "s#^$(HS_DIST)/#        #;s#\.hs##;s#/#.#g"\
      >> $(HS_DIST)/$(CABAL_FILE)
endef
HS_LEDGER=$(HS_DIR)/$(LEDGER)/$(MALONZO_DIR)/$(LEDGER)/Conway/Foreign/HSLedger.hs
$(HS_LEDGER): src/$(LEDGER)/Conway/Foreign/HSLedger.agda
	$(call agdaToHs,cardano-ledger-executable-spec)

# Haskell -> HTML
define hsToHtml
	@echo "Generating $@"
	cd $$(dirname $@)\
	  && cabal haddock --haddock-hyperlink-source\
	  && find -type f -name 'index.html' -exec dirname {} \;\
	     | xargs -I{} mv {} html/
endef
$(HS_DIR)/$(LEDGER)/html/: # $(HS_LEDGER)
	$(hsToHtml)

# Main website
define indexHtml
<!DOCTYPE html>
<html>
<body>

<h3>PDF specs</h3>
<ul>$(foreach pdf,$(wildcard $(PDF_DIR)/*.pdf),\
<li><a href="$(pdf:$(OUT_DIR)/%=%)">$(notdir $(pdf))</a></li>)</ul>

<h3>HTML specs</h3>
<ul>$(foreach html,$(wildcard $(HTML_DIR)/*.PDF.html),\
<li><a href="$(html:$(OUT_DIR)/%=%)">$(notdir $(html))</a></li>)</ul>

<!--
<h3>Haskell documentation</h3>
<ul>$(foreach html,$(wildcard $(HS_DIR)/*/html/index.html),\
<li><a href="$(hs:$(OUT_DIR)/%=%)">$(notdir $(html))</a></li>)</ul>
-->

<h3>Haskell tests</h3>
<ul>$(foreach hs,$(wildcard $(HS_DIR)/*/test/?*Spec.hs),\
<li><a href="$(hs:$(OUT_DIR)/%=%)">$(notdir $(hs))</a></li>)</ul>

</body>
</html>
endef
export indexHtml

$(OUT_DIR)/index.html:
	echo "$$indexHtml" > $@

# User commands
.PHONY: default clean \
  ledger.docs ledger.conway.docs docs \
  ledger.html html \
  ledger.hs hs \
  ledger.hsTest hsTest \
  ledger.hsDocs hsDocs \
  staticWebsite

ledger.docs: $(PDF_DIR)/cardano-ledger.pdf $(latexFiles)
ledger.conway.docs: $(PDF_DIR)/conway-ledger.pdf
docs: ledger.docs

ledger.html: $(HTML_DIR)/Html.html
html: ledger.html

ledger.hs: $(HS_LEDGER)
hs: ledger.hs

ledger.hsTest: $(HS_LEDGER)
	cd $(HS_DIR)/$(LEDGER)   && $(CABAL_TEST)
hsTest: ledger.hsTest

ledger.hsDocs: $(HS_DIR)/$(LEDGER)/html/
hsDocs: ledger.hsDocs

staticWebsite: $(OUT_DIR)/index.html

clean:
	rm -rf $(PDF_DIR)/conway-ledger.pdf $(PDF_DIR)/cardano-ledger.pdf\
           $(LATEX_DIR)/$(LEDGER)/PDF.tex $(CONWAY_TEX_DIR)/$(LEDGER)/PDF.tex

wipe: clean
	rm -rf $(LATEX_DIR)/$(LEDGER) $(CONWAY_TEX_DIR)/$(LEDGER)\
	       $(OUT_DIR)/\



# end
