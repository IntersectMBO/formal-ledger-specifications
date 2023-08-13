tex_files := Introduction.tex BaseTypes.tex TokenAlgebra.tex Crypto.tex Address.tex Script.tex GovernanceActions.tex PParams.tex Transaction.tex Utxo.tex Utxow.tex Gov.tex Deleg.tex Ledger.tex Ratify.tex Chain.tex Utxo/Properties.tex PDF.tex

tex_files2 := $(addprefix src/latex/Ledger/, $(tex_files))

tex_aux := acronyms.tex iohk.sty agda.sty

tex_aux_files := $(addprefix src/latex/, $(tex_aux))

.PHONY: all clean
src/latex/Ledger/%.tex: src/Ledger/%.lagda
	cd src && agda --only-scope-checking --latex ../$<

all: $(tex_files2) $(tex_aux_files)
	cd src/latex && latexmk -xelatex Ledger/PDF.tex
	cp src/latex/PDF.pdf cardano-ledger.pdf

$(tex_aux_files) :

clean:
	rm -rf src/latex/{.auctex-auto,PDF.*}
	rm -rf src/MAlonzo

wipe:
	rm -rf src/latex/{.auctex-auto,Ledger,PDF.*}
	rm -rf src/MAlonzo
