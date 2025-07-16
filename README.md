# The Cardano Formal Ledger Specification

This is the formal ledger specifications for the Cardano blockchain.
It is written in [Agda](https://wiki.portal.chalmers.se/agda/pmwiki.php) and
is executable; Haskell code can be extracted and run for conformance testing.

The project consists entirely of [literate][] Agda code from which the HTML
documentation is generated.  Thus the latest human-readable Cardano ledger
specification is a collection of Markdown and HTML files; these replace the
PDF documents of previous eras.

[The formal ledger GitHub repository][formal-ledger-specifications] contains formal
ledger specifications for all eras, starting with Shelley, up to and including the Conway era.
While the Agda formalization of the Conway era is complete, some pieces of the
ledgers from previous eras have yet to be formalized.  We hope to finish formalizing
the outstanding pieces in the near future.

You can interact with the specification by building the artifacts,
generating Haskell source code for conformance testing, or exploring the literate
Agda files in a development environment.  Instructions for doing so are provided in
the [Contributing Guide][].

---

## 📜 **Published Artifacts**

The table below provides links to the full formal ledger specification (as browsable HTML), as well as the legacy PDF artifacts.

| Artifact | Link | Description |
| :---- | :---- | :---- |
| **HTML Source Code** | [Browseable HTML](https://IntersectMBO.github.io/formal-ledger-specifications/site) | An interactive, hyperlinked version of the Agda source code. |
| **Full PDF**<sup>†</sup> | [cardano-ledger.pdf](https://IntersectMBO.github.io/formal-ledger-specifications/cardano-ledger.pdf) | The complete specification for the Cardano Ledger. |
| **Conway-Era PDF**<sup>†</sup> | [conway-ledger.pdf](https://IntersectMBO.github.io/formal-ledger-specifications/conway-ledger.pdf) | A differential specification for the Conway era. |

† As we are migrating from a LaTeX-based to a Markdown-based documentation workflow,
*building PDFs from source is currently deprecated and unsupported*.  Please use the
links above to access the pre-built PDF documents.

---

## 🤝 **Contributions and Feedback**

We welcome contributions and feedback!

For detailed instructions on setting up a development environment, running tests, and
understanding the project structure, please see our [Contributing Guide][].

If you encounter any issues, please check the [Troubleshooting Guide][] or [submit a new issue][] in this repository.



[Troubleshooting Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/TROUBLESHOOTING.md
[submit a new issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[Contributing Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/CONTRIBUTING.md
[literate]: https://en.wikipedia.org/wiki/Literate_programming

