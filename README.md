# The Cardano Formal Ledger Specification

This is the formal ledger specifications for the Cardano blockchain.
It is written in [Agda](https://wiki.portal.chalmers.se/agda/pmwiki.php) and
is executable; Haskell code can be extracted and run for conformance testing.

The project consists entirely of [literate][] Agda code from which the HTML
documentation is generated.  Thus the latest human-readable Cardano ledger
specification is a collection of HTML files; these replace the PDF documents of
previous eras.

[The formal ledger GitHub repository][formal-ledger-specifications] contains formal
ledger specifications for all eras, starting with Shelley, up to and including the Conway era.
While the Agda formalization of the Conway era is complete, some pieces of the
ledgers from previous eras have yet to be formalized.  We hope to finish formalizing
the outstanding pieces in the near future.

## Where to go from here?

You can

+  read the [Introduction module][Ledger.Introduction.html] of the [HTML version of the formal specification][fls-site]

+  dive into one of the modules in the **Conway/ > Specification/** section of the website; for instance, you can read about how rewards are calculated in the [Conway/Specification/Rewards][Ledger.Conway.Specification.Rewards.html] module

+  view the [HTML version of the Agda source code][fls-html]

+  interact with and/or contribute to the formal specification; instructions for
   building the artifacts, generating Haskell source code for conformance testing, or
   exploring the literate Agda files in a development environment are available in
   the [Contributing Guide][].

---

## 📜 **Published Artifacts**

The table below provides links to the full formal ledger specification (as browsable HTML), as well as the legacy PDF artifacts.

| Artifact | Link | Description |
| :---- | :---- | :---- |
| **Source Code** | [HTML][fls-html] | Interactive, hyperlinked version of the Agda source code |
| **Formal Specification** | [HTML][fls-site] [cardano-ledger.pdf][]<sup>†</sup> | Complete specification of the Cardano Ledger |
| **Conway-Era PDF** | [conway-ledger.pdf][]<sup>†</sup> | Covers what's new in the Conway era |

† As we are migrating from a LaTeX-based to a Markdown-based documentation workflow,
*building PDFs from source is currently deprecated and unsupported*.  Please use the
links above to access the pre-built PDF documents.

---

## 🤝 **Contributions and Feedback**

We welcome contributions and feedback!

For detailed instructions on setting up a development environment, running tests, and
understanding the project structure, please see our [Contributing Guide][].

If you encounter any issues, please check the [Troubleshooting Guide][] or [submit a new issue][] in this repository.



[cardano-ledger.pdf]: https://IntersectMBO.github.io/formal-ledger-specifications/cardano-ledger.pdf
[conway-ledger.pdf]: https://IntersectMBO.github.io/formal-ledger-specifications/conway-ledger.pdf
[Contributing Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/CONTRIBUTING.md
[fls-html]: https://IntersectMBO.github.io/formal-ledger-specifications/html
[fls-site]: https://IntersectMBO.github.io/formal-ledger-specifications/site
[formal-ledger-specifications]: https://github.com/IntersectMBO/formal-ledger-specifications/
[Ledger.Conway.Specification.Rewards.html]: https://intersectmbo.github.io/formal-ledger-specifications/site/Ledger.Conway.Specification.Rewards.html
[Ledger.Introduction.html]: https://intersectmbo.github.io/formal-ledger-specifications/site/Ledger.Introduction.html
[literate]: https://en.wikipedia.org/wiki/Literate_programming
[submit a new issue]: https://github.com/IntersectMBO/formal-ledger-specifications/issues/new/choose
[Troubleshooting Guide]: https://github.com/IntersectMBO/formal-ledger-specifications/blob/master/TROUBLESHOOTING.md
