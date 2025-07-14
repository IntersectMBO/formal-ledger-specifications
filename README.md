# Formal Ledger Specifications

This repository contains the formal ledger specifications for the Cardano blockchain,
written in [Agda](https://wiki.portal.chalmers.se/agda/pmwiki.php). These
specifications are executable, and Haskell code can be extracted from the Agda source
code and run for conformance testing.

The project consists entirely of literate Agda code from which we generate documentation,
viewable in a web browser, that replaces the PDF-based specifications of previous eras.

The specification here is for the Cardano ledger up to and including the Conway era.
The Agda formalization of the Conway era is complete.  Some pieces of the ledgers
from previous eras have yet to be formalized, but we hope to complete them in
the near future.

You can interact with the specification by building the artifacts,
generating Haskell source code for conformance testing, or exploring the Agda source
in a development environment.  Instructions for doing so are provided in the [Contributing Guide][].

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

---

## **🤝 Contributions and Feedback**

We welcome contributions and feedback!

For detailed instructions on setting up a development environment, running tests, and
understanding the project structure, please see our [Contributing Guide][].

If you encounter any issues, please check the [Troubleshooting Guide][] or [submit a new issue][] in this repository.



[Troubleshooting Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/TROUBLESHOOTING.md
[submit a new issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[Contributing Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/CONTRIBUTING.md
