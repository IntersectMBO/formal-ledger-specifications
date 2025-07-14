# Formal Ledger Specifications

This repository contains the formal ledger specifications for the Cardano blockchain,
written in [Agda](https://wiki.portal.chalmers.se/agda/pmwiki.php). These
specifications are executable, and Haskell code can be extracted from the Agda source
code and run for conformance testing.

The project consists entirely of literate Agda code from which we generate documentation,
viewable in a web browser, that replaces the TeX/PDF-based specifications of previous eras.

The repository provides the specification for the Cardano ledger up to and including
the Conway era.   The Agda formalization of the Conway era is complete, whereas that
of previous eras is still work-in-progress.

You can interact with the specification by building the artifacts,
generating Haskell source code for conformance testing, or exploring the Agda source
in a development environment.  This is described in the [Contributing Guide][].

---

## **Published Artifacts**

The browseable documentation and the legacy PDF artifacts are available at the
links in the table.

| Artifact | Link | Description |
| :---- | :---- | :---- |
| **HTML Source Code** | [Browseable HTML](https://IntersectMBO.github.io/formal-ledger-specifications/site) | An interactive, hyperlinked version of the Agda source code. |
| **Full PDF**<sup>†</sup> | [cardano-ledger.pdf](https://IntersectMBO.github.io/formal-ledger-specifications/cardano-ledger.pdf) | The complete specification for the Cardano Ledger. |
| **Conway-Era PDF**<sup>†</sup> | [conway-ledger.pdf](https://IntersectMBO.github.io/formal-ledger-specifications/conway-ledger.pdf) | A differential specification for the Conway era. |

† **Note on PDFs** As we are migrating from a LaTeX-based to a Markdown-based documentation workflow, **building** PDFs **from source is currently deprecated and unsupported.** Please use the links above to access the pre-built PDF documents.

---

## **🚀 Quick Start: Building Local Artifacts**

### **Clone the Repository**

```
git clone https://github.com/IntersectMBO/formal-ledger-specifications.git
cd formal-ledger-specifications
```

### **Build Targets**

Invoke the following `nix-build` commands from inside the
`formal-ledger-specifications` directory
(You must have [Nix](https://nixos.org/download/) installed and have enabled [Nix Flakes](https://nixos.wiki/wiki/Flakes).)

```
# Type-check the entire Agda specification (the default package)
nix build .#formal-ledger
# Or, more simply:
nix build

# Generate Haskell source code from the Agda specification
nix build .#hs-src

# Generate a local browseable HTML version of the Agda source code
nix build .#html

# Build the mkdocs documentation site
nix build .#mkdocs
```

The build results will be available in the `result/` directory.

### Conformance-testing example

For an example on how to use the Agda-generated Haskell code for conformance
testing see [`conformance-example`](conformance-example)

---

## **🤝 Contributions and Feedback**

We welcome contributions and feedback!

For detailed instructions on setting up a development environment, running tests, and
understanding the project structure, please see our [Contributing Guide][].

If you encounter any issues, please check the [Troubleshooting Guide][] first.
If your issue is not listed, please [submit a new issue][] in this repository.

[Troubleshooting Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/TROUBLESHOOTING.md
[submit a new issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[Contributing Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/CONTRIBUTING.md
