# Notes on the TeX to Markdown Migration Pipeline

With the following commands you can run the scripts which convert our code base from LaTeX-based literate Agda to Markdown-based literate Agda.

```bash
git clone git@github.com:IntersectMBO/formal-ledger-specifications.git`
cd formal-ledger-specifications
nix develop .#docs
python ./build-tools/scripts/md/build.py --run-agda
cd _build/md/mkdocs/
mkdocs serve
```

If all of these commands complete without errors, then pointing a browser to `127.0.0.1:8000` will display the mkdocs site that the pipeline creates.

**Remarks**.

+  The command `python ./build-tools/scripts/md/build.py --run-agda` may take quite a long time because the `--run-agda` flag causes Agda to type-check (and convert to nicely formatted html) all of the code blocks in the entire code base.

+  You can optionally run the pipeline without the `--run-agda` flag and it will finish very quickly, but then the Agda code on the resulting web pages will not have conventional Agda syntax highlighting.

