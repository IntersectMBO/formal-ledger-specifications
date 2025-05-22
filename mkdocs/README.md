## mkdocs

This directory is where we place static mkdocs source code for the web docs.

+  `mkdocs/nav.yml` is used by the `scripts/mkdocs/build.py` script to populate 
   the `nav` section of the final `_build/mkdocs/src/mkdocs.yml` mkdocs site 
   confiuration file.  If the `mkocs/nav.yml` file is not found, `build.py` 
   generates a new `nav` section in `_build/mkdocs/src/mkdocs.yml` which include 
   only those files that the script processes.
+  `mkdocs/src/mkdocs.yml` is a template that the `scripts/mkdocs/build.py` script uses
   as a starting point on which to build the final `_build/mkdocs/src/mkdocs.yml` 
   mkdocs site confiuration file.

To add a static markdown file, say, `Example.md`, to the web site documentation, 
place that file in `mkdocs/src/docs` and add an entry for it in the `nav.yml` file.

