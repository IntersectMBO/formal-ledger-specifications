# CI for the legacy-latex branch

## What this CI does

The CI for the `legacy-latex` branch

- **triggers** only on `legacy-latex` branch pushes (plus manual dispatch);
- **builds** the formal ledger using the existing Nix setup;
- **generates pdfs** using our existing `build_artifact.yml` with legacy `.lagda` files;
- **creates artifacts branch** `legacy-latex-artifacts` containing the pdfs;
- **stores** `cardano-ledger.pdf`, `conway-ledger.pdf`, and HTML docs.

## Testing the Setup

```bash
# 1. Push to legacy-latex branch to trigger CI
git checkout legacy-latex
git push origin legacy-latex

# 2. Check that CI runs successfully on GitHub Actions

# 3. Verify legacy-latex-artifacts branch was created
git fetch origin
git branch -a | grep legacy-latex-artifacts

# 4. Check the artifacts branch contents
git checkout legacy-latex-artifacts
ls -la  # Should see cardano-ledger.pdf and conway-ledger.pdf
```

Once the `legacy-latex-artifacts` branch exists with PDFs, our main branch CI can copy those PDFs instead of building them.



