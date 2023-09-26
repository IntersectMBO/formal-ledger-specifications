.PHONY: all docs html codeGen hsBuild

all:
	$(MAKE) -C src/
docs:
	$(MAKE) -C src/ docs
html:
	$(MAKE) -C src/ html
codeGen:
	$(MAKE) -C src/ codeGen
hsBuild:
	$(MAKE) -C src/ hsBuild
