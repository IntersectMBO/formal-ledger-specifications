# Constants
AGDA?=agda
OUT_DIR?=../dist
LATEX?=latexmk -xelatex -shell-escape -halt-on-error
LATEX_DIR=latex
PRE=$(addprefix $(LATEX_DIR)/,\
  agda.sty agda-latex-macros.sty iohk.sty fonts/* preamble.tex)
PDF_DIR=$(OUT_DIR)/pdfs
HTML_DIR=$(OUT_DIR)/html
HS_DIR=$(OUT_DIR)/haskell
MALONZO_DIR=MAlonzo/Code
CABAL_TEST=cabal run test
LEDGER=Ledger
MIDNIGHT=MidnightExample

# Agda -> LaTeX -> PDF
latexFiles=$(patsubst %.lagda, $(LATEX_DIR)/%.tex,\
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
$(PDF_DIR)/cardano-ledger.pdf: $(LATEX_DIR)/$(LEDGER)/PDF.tex $(latexFiles) $(PRE)
	$(latexToPdf)
$(PDF_DIR)/midnight-example.pdf: $(LATEX_DIR)/$(MIDNIGHT)/PDF.tex $(latexFiles) $(PRE)
	$(latexToPdf)

# Agda -> HTML
define agdaToHtml =
    @echo "Generating $@"
    $(AGDA) --html --html-dir $(HTML_DIR) $<
endef
$(HTML_DIR)/$(LEDGER).PDF.html : $(LEDGER)/PDF.lagda
	$(agdaToHtml)
$(HTML_DIR)/$(MIDNIGHT).PDF.html : $(MIDNIGHT)/PDF.lagda
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
    $(AGDA) --transliterate -c --ghc-dont-call-ghc --compile-dir $(HS_DIST) $<
    find $(HS_DIST)/MAlonzo -name "*.hs" -print\
      | sed "s#^$(HS_DIST)/#        #;s#\.hs##;s#/#.#g"\
      >> $(HS_DIST)/$(CABAL_FILE)
endef
HS_LEDGER=$(HS_DIR)/$(LEDGER)/$(MALONZO_DIR)/$(LEDGER)/Foreign/HSLedger.hs
HS_MIDNIGHT=$(HS_DIR)/$(MIDNIGHT)/$(MALONZO_DIR)/$(MIDNIGHT)/HSLedger.hs
$(HS_LEDGER): $(LEDGER)/Foreign/HSLedger.agda
	$(call agdaToHs,cardano-ledger)
$(HS_MIDNIGHT): $(MIDNIGHT)/HSLedger.agda
	$(call agdaToHs,midnight-example)

# Haskell -> HTML
define hsToHtml =
	@echo "Generating $@"
	cd $$(dirname $@)\
	  && cabal haddock --haddock-hyperlink-source\
	  && find -type f -name 'index.html' -exec dirname {} \;\
	     | xargs -I{} mv {} html/
endef
$(HS_DIR)/$(LEDGER)/html/: # $(HS_LEDGER)
	$(hsToHtml)
$(HS_DIR)/$(MIDNIGHT)/html/: # $(HS_MIDNIGHT)
	$(hsToHtml)

# Main website
define indexHtml =
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
  ledger.docs midnight.docs docs \
  ledger.html midnight.html html \
  ledger.hs midnight.hs hs \
  ledger.hsTest midnight.hsTest hsTest \
  ledger.hsDocs midnight.hsDocs hsDocs \
  staticWebsite

ledger.docs: $(PDF_DIR)/cardano-ledger.pdf
midnight.docs: $(PDF_DIR)/midnight-example.pdf
docs: ledger.docs midnight.docs

ledger.html: $(HTML_DIR)/$(LEDGER).PDF.html
midnight.html: $(HTML_DIR)/$(MIDNIGHT).PDF.html
html: ledger.html midnight.html

ledger.hs: $(HS_LEDGER)
midnight.hs: $(HS_MIDNIGHT)
hs: ledger.hs midnight.hs

ledger.hsTest: $(HS_LEDGER)
	cd $(HS_DIR)/$(LEDGER)   && $(CABAL_TEST)
midnight.hsTest: $(HS_MIDNIGHT)
	cd $(HS_DIR)/$(MIDNIGHT) && $(CABAL_TEST)
hsTest: ledger.hsTest midnight.hsTest

ledger.hsDocs: $(HS_DIR)/$(LEDGER)/html/
midnight.hsDocs: $(HS_DIR)/$(MIDNIGHT)/html/
hsDocs: ledger.hsDocs midnight.hsDocs

staticWebsite: $(OUT_DIR)/index.html

clean:
	rm -rf $(LATEX_DIR)/$(LEDGER) $(LATEX_DIR)/$(MIDNIGHT)\
	       $(LATEX_DIR)/cardano-ledger.* $(LATEX_DIR)/midnight-example.*\
	       $(OUT_DIR)/
