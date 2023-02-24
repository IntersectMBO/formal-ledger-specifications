.PHONY: all clean
all:
	agda --only-scope-checking --latex src/Ledger.lagda
	cd src/latex && xelatex Ledger.tex
	cp src/latex/Ledger.pdf .
Everything.agda:
	@echo "target: $@ prereq: $<"
	@echo "module Everything where\n" > src/Everything.agda
	git ls-tree --full-tree -r --name-only HEAD | find . -name "*.*agda" | sed -e 's|/|.|g' -e 's/.lagda//' -e 's/.agda//' -e 's/..src./import /' -e '/import Everything/d' | LC_COLLATE='C' sort >> src/Everything.agda
clean:
	rm -rf src/MAlonzo
