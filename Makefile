.PHONY: all clean
all:
	agda --only-scope-checking --latex src/Ledger.lagda
	cd src/latex && xelatex Ledger.tex
	cp src/latex/Ledger.pdf .
clean:
	rm -rf src/MAlonzo
