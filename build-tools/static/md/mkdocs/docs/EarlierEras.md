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
and are handled now by the consensus specification [[link]][consensus-spec].

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
specification [[link]][babbage-spec].

#### `TICK`{.AgdaDatatype} (Figure 64)

The function `adoptGenesisDelegs`{.AgdaFunction} has been removed.

#### `NEWEPOCH`{.AgdaDatatype} (Figure 57)

The proof of the net neutrality of the reward update has been moved to the
`RewardUpdate`{.AgdaDatatype}.

The `PoolDistr`{.AgdaDatatype} data type has been replaced with the richer
`PoolDelegatedStake`{.AgdaDatatype} data type.

The use of the `MIR` rule has been removed as it is phased out by Conway.

#### `EPOCH`{.AgdaDatatype} (Figure 45)

The use of the `NEWPP`{.AgdaDatatype} rule has been removed, as it was phased
out by Conway.

#### `LEDGER`{.AgdaDatatype} (Figure 31)

Shelley assumes the transaction is valid

A use of rule `DELEGS`{.AgdaDatatype} is added in Conway.

A use of rule `CERTS`{.AgdaDatatype} is added in Conway.

#### `UTXOW`{.AgdaDatatype} (Figure 20)

The quorum check has been removed by Conway, superseded by
the new governance mechanism [[link]][conway-cip].

The checks about required scripts now accounts for reference scripts.

#### `UTXO`{.AgdaDatatype} (Figure 16)

The use of the `PPUP`{.AgdaDataype} rule has been removed in Conway, superseded by
the new governance mechanism [[link]][conway-cip].

## References {#references .unnumbered}

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.

[consensus-spec]: https://github.com/IntersectMBO/ouroboros-consensus/tree/d3fa7ecf1e230d54b08bcd6aa96c4c65db5f08e7/docs/agda-spec
[babagge-spec]: https://github.com/intersectmbo/cardano-ledger/releases/latest/download/babbage-ledger.pdf
[conway-cip]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-1694