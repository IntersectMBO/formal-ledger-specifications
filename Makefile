tex_files := Introduction.tex BaseTypes.tex TokenAlgebra.tex Crypto.tex Address.tex Script.tex GovernanceActions.tex PParams.tex Transaction.tex Utxo.tex Utxow.tex Tally.tex Deleg.tex Ledger.tex Ratify.tex Chain.tex Utxo/Properties.tex PDF.tex

tex_files2 := $(addprefix src/latex/Ledger/, $(tex_files))

.PHONY: all clean
src/latex/Ledger/%.tex: src/Ledger/%.lagda
	cd src && agda --only-scope-checking --latex ../$<
all: $(tex_files2)
	cd src/latex && xelatex Ledger/PDF.tex
	cp src/latex/PDF.pdf .
clean:
	rm -rf src/latex
	rm -rf src/MAlonzo
