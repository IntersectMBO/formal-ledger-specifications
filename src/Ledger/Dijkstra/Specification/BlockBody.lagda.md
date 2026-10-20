---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/BlockBody.lagda.md
---

# Blocks {#sec:blocks}

A block is a header and a body; the body's size and hash are fields of the
block rather than functions of it.  Leios ([CIP-164]) extends a ranking block
in two places ([Ranking Blocks][cip-rb]): the header may announce an endorser
block (EB) and flags whether the body certifies the EB announced by the
previous block, and the body may carry that certificate.

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.BlockBody
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledgers txs abs
open import Ledger.Dijkstra.Specification.Leios govStructure using (EBCert)
open import Ledger.Dijkstra.Specification.Rewards txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs using (totalExUnits)

open LeiosCryptoStructure leiosCryptoStructure using (EBHash; RBHeaderHash)
```
-->

An **announcement** is the pair a header may carry: the announced EB's
identifier and its declared byte size.

```agda
Announcement : Type
Announcement = EBHash × ℕ
```

A wrong declared size invalidates nothing (the CIP has honest nodes decline to
vote instead), so size agreement belongs to the voters' checks, not to block
validity.

```agda
record BHBody : Type where
  field
    bvkcold      : VKey
    bsize        : ℕ
    slot         : Slot
    bhash        : KeyHash
    hBbsize      : ℕ
    announcedEB  : Maybe Announcement
    certifiesEB  : Bool

record BHeader : Type where
  field
    bhbody : BHBody
    bhsig  : Sig
```

A certifying body carries the certificate and nothing else of Leios
([Ranking Blocks][cip-rb]): the EB it certifies and that EB's *closure*, its
referenced transactions resolved and in reference order, are not part of the
block.  The chain-level rules receive them beside the block, resolved by
consensus, and check them against the certificate; the block itself says only
that it certifies.

```agda
record Block : Type where
  field
    bheader      : BHeader
    bHeaderHash  : RBHeaderHash
    ts           : List TopLevelTx
    ebCert       : Maybe EBCert
    bBodySize    : ℕ
    bBodyHash    : KeyHash
    ≡-bBodySize  : bBodySize ≡ BHBody.hBbsize (BHeader.bhbody bheader)
    ≡-bBodyHash  : bBodyHash ≡ BHBody.bhash (BHeader.bhbody bheader)
```

The header hash is a field for the same reason the body hash is: it is computed
from the header's bytes, which the specification does not model, so consensus
supplies it.  It is the message a later certificate is verified against
(`ValidEBCert`{.AgdaRecord} in `Leios`{.AgdaModule}).

## The <span class="AgdaDatatype">BBODY</span> Transition System {#sec:the-bbody-transition-system}

The transition updates the ledger state and the map of blocks produced per pool,
in an environment of the enact state and the accounting state.
`incrBlocks`{.AgdaFunction} counts a certifying block like any other.

```agda
BBodyEnv : Type
BBodyEnv = EnactState × Acnt

BBodyState : Type
BBodyState = LedgerState × BlocksMade

incrBlocks : KeyHash → BlocksMade → BlocksMade
incrBlocks hk b = b ∪⁺ singletonᵐ hk 1
```

CIP-164 fixes two rules about a block alone ([Inclusion Rules][cip-inclusion];
[Step 5][cip-step5]): a header that sets `certified_eb` obliges its body to
carry a certificate, and a body carrying a certificate carries no transactions
of its own.  `ValidLeiosBlock`{.AgdaFunction} states both as a disjoint union,
one alternative for a body without a certificate and one for a body with one,
so the bit is required in both directions and a false bit cannot hide a
certificate.

```agda
ValidLeiosBlock : Block → Type
ValidLeiosBlock b =  (Is-nothing ebCert × certifiesEB ≡ false)
                  ⊎  (Is-just ebCert × certifiesEB ≡ true × length ts ≡ 0)
  where
    open Block b
    open BHBody (BHeader.bhbody bheader)
```

The bit is an input the rule checks, not a value computed from the body.  Header
validation sees the bit but not the body, so a check it gates on the bit is sound
only if the ledger verifies the bit.

The rule requires the body's size and hash to agree with the header, the block
to satisfy `ValidLeiosBlock`{.AgdaFunction}, and `LEDGERS`{.AgdaDatatype} to
accept the transactions within the block's limits on reference-script size and
execution units.
The checks that need the announcing block, which `BBODY`{.AgdaDatatype} does
not see, belong to `CHAIN`{.AgdaDatatype}: the certification delay, the epoch
the two blocks share, the certificate's validity against the committee pinned at
announcement (`ValidEBCert`{.AgdaRecord}), and the certified EB's validity and
application (`ValidEB`{.AgdaRecord}).

```agda
data _⊢_⇀⦇_,BBODY⦈_
  : BBodyEnv → BBodyState → Block → BBodyState → Type where

  BBODY-Block-Body :
    {acnt    : Acnt}
    {ls ls'  : LedgerState}
    {b       : BlocksMade}
    {block   : Block}
    {es      : EnactState} →

    let
      open BHeader
      open BHBody
      open Block
      open EnactState
      txs = block .ts
      bhb = block .bheader .bhbody
      hk = hash (bhb .bvkcold)
      pp = PParamsOf es
      Γ  = ⟦ bhb .slot , ∣ es .constitution ∣ , pp , es , TreasuryOf acnt ⟧
      Γw = ⟦ Γ , PParams.maxRefScriptSizePerBlock pp , PParams.maxBlockExUnits pp ⟧
     in

    ∙ block .bBodySize ≡ bhb .hBbsize
    ∙ block .bBodyHash ≡ bhb .bhash
    ∙ ValidLeiosBlock block
    ∙ Γw ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
    ────────────────────────────────
    (es , acnt) ⊢ ls , b ⇀⦇ block ,BBODY⦈ (ls' , incrBlocks hk b)
```

[CIP-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md
[cip-rb]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#ranking-blocks-rbs
[cip-inclusion]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#rb-inclusion-rules
[cip-step5]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-5-chain-inclusion
