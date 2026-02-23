---
source_path: build-tools/static/md/common/src/EarlierEras.md
---


## Earlier Eras

Many of the material in the Conway specification is derived from the specifications of
earlier eras. In this section we provide an account of how aspects of the earlier specifications
have been modified in later specifications.

### Changes to Shelley

We describe changes to the specification [CVG19](#shelley-ledger-spec) by rule type.

#### `CHAIN`{.AgdaDatatype} (Figure 75)

The uses of rules `PRTCL`{.AgdaDatatype}, `TICKN`{.AgdaDatatype}, and functions
`chainChecks`{.AgdaFunction} and `prtlSeqChecks`{.AgdaFunction} were removed from the ledger specification
and added to the consensus specification [[link]][consensus-spec].

#### `BBODY`{.AgdaDatatype} (Figure 72)

The block body hash function `bbodyHash`{.AgdaFunction} became a field of the
`Block`{.AgdaDatatype} type.

The block header hash function `bhash`{.AgdaFunction} became a field of the
`BHeader`{.AgdaDatatype} type.

The block body size function `bbodySize`{.AgdaFunction} became a field of the
`Block`{.AgdaDatatype} type.

The block header size function `hBbsize`{.AgdaFunction} became a field of the
`BHeader`{.AgdaDatatype} type.

The function `isOverlaySlot`{.AgdaFunction} was removed in the Babbage
era [[link]][babbage-spec].

#### `TICK`{.AgdaDatatype} (Figure 64)

The function `adoptGenesisDelegs`{.AgdaFunction} was removed.

#### `NEWEPOCH`{.AgdaDatatype} (Figure 57)

The proof of the net neutrality of the reward update was moved to the
`RewardUpdate`{.AgdaDatatype}.

The `PoolDistr`{.AgdaDatatype} data type was replaced with the richer
`PoolDelegatedStake`{.AgdaDatatype} data type.

The `MIR` rule was phased out in the Conway era.

#### `EPOCH`{.AgdaDatatype} (Figure 45)

The `NEWPP`{.AgdaDatatype} rule was phased
out in the Conway era.

#### `LEDGER`{.AgdaDatatype} (Figure 31)

Shelley assumes the transaction is valid

The use of rule `DELEGS`{.AgdaDatatype} was removed in the Conway era.

A use of rule `CERTS`{.AgdaDatatype} was added in Conway.

#### `UTXOW`{.AgdaDatatype} (Figure 20)

The quorum check was removed in the Conway era, superseded by
the new governance mechanism [[link]][conway-cip].

The checks about required scripts now account for reference scripts.

#### `UTXO`{.AgdaDatatype} (Figure 16)

The use of the `PPUP`{.AgdaDataype} rule was removed in Conway, superseded by
the new governance mechanism [[link]][conway-cip].

### Changes to Alonzo

We describe changes to the specification [VK21](#alonzo-ledger-spec) by rule type.

#### `UTXOS`{.AgdaDatatype} (Figure 9)

The constants `EI`{.AgdaBound} and `SysSt`{.AgdaBound} are not declared. Instead,
the abstract functions that need them, must grab them from somewhere not in the ledger
specification.

#### `UTXO`{.AgdaDatatype} (Figure 11)

The `feesOK`{.AgdaFunction} function has been inlined in the premises of the rule.

For the same reasons as in the case of the Shelley specification, the
`PPUP`{.AgdaDatatype} rule has been removed.

#### `UTXOW`{.AgdaDatatype} (Figure 13)

The `isTwoPhaseScriptAddress`{.AgdaFunction} function is replaced with the
`txOutToP2Script`{.AgdaFunction} function in the premises of the rule.

#### `DELEG`{.AgdaDatatype} (Figure 18)

The `Deleg-Mir`{.AgdaBound} and `Deleg-Mir-Trans`{.AgdaBound} cases, and the
`MIR`{.AgdaDatatype} relation were phased out in Conway.


## References {#references .unnumbered}

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.

**\[VK21\]** <span id="alonzo-ledger-spec"
label="alonzo-ledger-spec"></span> Polina Vinogradova and Andre Knispel.
*A Formal Specification of the Cardano Ledger integrating Plutus Core*.
2021.

[consensus-spec]: https://github.com/IntersectMBO/ouroboros-consensus/tree/d3fa7ecf1e230d54b08bcd6aa96c4c65db5f08e7/docs/agda-spec
[babagge-spec]: https://github.com/intersectmbo/cardano-ledger/releases/latest/download/babbage-ledger.pdf
[conway-cip]: https://github.com/cardano-foundation/CIPs/tree/master/CIP-1694