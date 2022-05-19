.PHONY: all
all:
	agda --only-scope-checking --latex Ledger.lagda
	cd latex && xelatex Ledger.tex
	cp latex/Ledger.pdf .
