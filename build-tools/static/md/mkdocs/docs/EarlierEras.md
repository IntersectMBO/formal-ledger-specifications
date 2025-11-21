---
source_path: build-tools/static/md/common/src/EarlierEras.md
---


## Earlier Eras

Many of the material in the Conway specification is brought from the spefication of
earlier eras. In this section we provide an account of how the earlier specifications
have been modified.

### Changes to Shelley

We describe changes to the specification [CVG19](#shelley-ledger-spec) by rule type.

#### `CHAIN`{.AgdaDatatype} (Figure 75)

The uses of rules `PRTCL`{.AgdaDatatype}, `TICKN`{.AgdaDatatype}, and functions
`chainChecks`{.AgdaFunction} and `prtlSeqChecks`{.AgdaFunction} have been removed
and are handled now by the consensus specification.

#### `BBODY`{.AgdaDatatype} (Figure 72)

The block body hash function `bbodyHash`{.AgdaFunction} has become a field of the
`Block`{.AgdaDatatype} type.

The block header hash function `bhash`{.AgdaFunction} has become a field of the
`BHeader`{.AgdaDatatype} type.

The block body size function `bbodySize`{.AgdaFunction} has become a field of the
`Block`{.AgdaDatatype} type.

The block header size function `hBbsize`{.AgdaFunction} has become a field of the
`BHeader`{.AgdaDatatype} type.

The function `isOverlaySlot`{.AgdaFunction} has been removed in the Babbage
specification.

#### `TICK`{.AgdaDatatype} (Figure 64)

The function `adoptGenesisDelegs`{.AgdaFunction} has been removed. (?)

#### `NEWEPOCH`{.AgdaDatatype} (Figure 57)

The flow conservation proof has been moved to the `RewardUpdate`{.AgdaDatatype}.

The `PoolDistr`{.AgdaDatatype} data type has been replaced with the richer
`PoolDelegatedStake`{.AgdaDatatype} data type.

The use of the `MIR` rule has been removed as it is deprecated by Conway (?).


Missing in NewEpochState
  * The flow conservation proof is in RewardUpdate instead of being in the rules
  * Instead of a PoolDistr we have a PoolDelegatedStake map
  * No MIR, supposedly deprecated by conway (?)

Missing in Epoch
  * No NEWPP, deprecated by conway (?)

Missing in LEDGER
  * Shelley assumes the transaction is valid
  * DELEGS is not defined in Agda
    CERTS is not defined in Shelley

Missing in UTXOW
  * Quorum check related to MIR
  * Tests about scriptsNeeded, validator hashes, and metadata hashes
  * PPUP rule

Missing in UTXO
  * genDelegs


None missing in
  * RUPD
  * POOLREAP
  * SNAP
  * LEDGERS
  * UTXOW

VRF?



## References {#references .unnumbered}

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.