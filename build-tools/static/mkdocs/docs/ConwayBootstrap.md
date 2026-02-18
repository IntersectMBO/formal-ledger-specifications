---
source_path: build-tools/static/md/mkdocs/docs/ConwayBootstrap.md
---


# Bootstrapping the Governance System {#sec:conway-bootstrap-gov}

As described in [CIP-1694](https://cips.cardano.org/cip/CIP-1694), the governance
system needs to be bootstrapped.  During the bootstrap period, the following changes
will be made to the ledger described in this document.

+ Transactions containing any proposal except `TriggerHardFork`{.AgdaInductiveConstructor},
`ChangePParams`{.AgdaInductiveConstructor}, or `Info`{.AgdaInductiveConstructor} will be rejected.

+ Transactions containing a vote other than a `CC`{.AgdaInductiveConstructor} vote, a `SPO`{.AgdaInductiveConstructor} vote on a `TriggerHardFork`{.AgdaInductiveConstructor} action, or any vote on an `Info`{.AgdaInductiveConstructor} action will be rejected.

+ `Q4`{.AgdaField}, `P5`{.AgdaField}, and `Q5e`{.AgdaField} are set to $0$.

-   An SPO that does not vote is assumed to have voted `abstain`{.AgdaInductiveConstructor}.

This allows for a governance mechanism similar to the old, Shelley-era
governance during the bootstrap phase, where the constitutional
committee is mostly in charge ([Team18, ](#shelley-delegation-design)). These
restrictions will be removed during a subsequent hard fork, once enough
DRep stake is present in the system to properly govern and secure
itself.

**\[Team18\]** <span id="shelley-delegation-design"
label="shelley-delegation-design"></span> IOHK Formal Methods Team.
*Design Specification for Delegation and Incentives in Cardano, IOHK
Deliverable SL-D1*. 2018.
