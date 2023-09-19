LATEX=latexmk -xelatex -shell-escape -halt-on-error
LATEX_DIR=latex
PRE=$(addprefix $(LATEX_DIR)/, \
  agda.sty agda-latex-macros.sty iohk.sty fonts/* preamble.tex)
AGDA=/home/omelkonian/IOHK/agdaWithStdLibMeta/bin/agda \
  --latex --latex-dir=$(LATEX_DIR) # --only-scope-checking

.PHONY: default clean all
default: all

all: $(latexFiles)

# Compile a literate Agda file to LaTeX.
latexFiles=$(patsubst %.lagda, $(LATEX_DIR)/%.tex, \
             $(shell find . -name '*.lagda' | sed 's|\.\/||g'))
$(latexFiles): $(LATEX_DIR)/%.tex: %.lagda
	@echo "Compiling $<"
	$(AGDA) $<

../cardano-ledger.pdf: $(LATEX_DIR)/Ledger/PDF.tex $(latexFiles) $(PRE)
	@echo "Generating $@"
	cd $(LATEX_DIR) && $(LATEX) $(subst $(LATEX_DIR)/,, $<)
	mv $(LATEX_DIR)/PDF.pdf $@

../midnight-example.pdf: $(LATEX_DIR)/MidnightExample/PDF.tex $(latexFiles) $(PRE)
	@echo "Generating $@"
	cd $(LATEX_DIR) && $(LATEX) $(subst $(LATEX_DIR)/,, $<)
	mv $(LATEX_DIR)/PDF.pdf $@

all:
	$(MAKE) ../cardano-ledger.pdf
	$(MAKE) ../midnight-example.pdf

clean:
	rm -rf $(LATEX_DIR)/Ledger/ $(LATEX_DIR)/MidnightExample \
	       ../cardano-ledger.pdf ../midnight-example.pdf

# TODO: Agda HTML generation
# TODO: Haskell code generation
# TODO: use this into `default.nix` instead of repeating the same kind of commands
