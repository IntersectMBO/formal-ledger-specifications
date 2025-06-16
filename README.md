# Formal Ledger Specifications

---

**ABOUT THIS BRANCH**

This is the `legacy-latex` branch of the formal-ledger-specifications repository.

The purpose of this branch is to archive the repository just before we transition
from LaTeX-based literate Agda to Markdown-based literate Agda.

Until we have an adequate way of generating pdf documentation from the Markdown-based
literate Agda, we refer to this branch for those documents.

The CI configuration in this branch (in [`.github/workflows/ci.yml`][]) was created
specifically for the `legacy-latex` branch; it generates the PDFs and creates the
`legacy-latex-artifacts` branch.

For more details, see [LEGACY_CI.md][].


[`.github/workflows/ci.yml`]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/legacy-latex/.github/workflows/ci.yml
[LEGACY_CI.md]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/legacy-latex/LEGACY_CI.md


---

This repository contains the formal ledger specifications that are intended to eventually replace the existing formal specifications of the Cardano ledger found [here](https://github.com/IntersectMBO/cardano-ledger). This project is currently incomplete and work in progress.

This repository currently contains the work-in-progress specification for Cardano (up to and including the Conway era). The specification is executable and contains some documentation in the form of a PDF document. It can be built by following the steps in [Building](#building).

| Formal Specification | HTML Version |
| -------------------- | ------------ |
| [Full Cardano Ledger](https://IntersectMBO.github.io/formal-ledger-specifications/cardano-ledger.pdf) | [Ledger](https://IntersectMBO.github.io/formal-ledger-specifications/html/index.html) |
| [Conway](https://IntersectMBO.github.io/formal-ledger-specifications/conway-ledger.pdf) | [Ledger](https://IntersectMBO.github.io/formal-ledger-specifications/html/index.html) |

---

## Building

### Clone this repository and enter its directory

```
git clone https://github.com/IntersectMBO/formal-ledger-specifications.git
cd formal-ledger-specifications
```

### Using `nix-build`

Invoke the following `nix-build` commands from inside the
`formal-ledger-specifications` directory:

```
nix-build -A ledger.docs      # generate the PDF spec of the Cardano ledger
nix-build -A ledger.hsSrc     # extract the Haskell code of the Cardano ledger
```

## Conformance-testing example

For an example on how to use the Agda-generated Haskell code for conformance
testing see [`conformance-example`](conformance-example)

## Contributions and Feedback

If you would like more detailed information and/or you want to contribute to the Agda formalization of the spec, please see the [CONTRIBUTING.md](CONTRIBUTING.md) file.

Please [submit a new issue][] if you find problems with, and/or wish to comment on, this repository.

[submit a new issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
