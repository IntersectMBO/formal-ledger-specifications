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
open import Ledger.Dijkstra.Specification.Leios govStructure using (EBCert)
open import Ledger.Dijkstra.Specification.Rewards txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs using (totExUnits)

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
    certifiedEB  : Bool

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

The header hash is an input: no body contains the hash of its own header,
so consensus supplies it, and it is the message a later certificate is verified
against (`ValidEBCert`{.AgdaRecord} in `Leios`{.AgdaModule}).

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
of its own.  `ValidLeiosBlock`{.AgdaFunction} states both, by cases on the
body's certificate, requiring the bit in both directions so that a false bit
cannot hide a certificate.

```agda
certifiedBit : Block → Bool
certifiedBit b = BHBody.certifiedEB (BHeader.bhbody (Block.bheader b))

ValidLeiosBlock : Block → Type
ValidLeiosBlock b = valid (certifiedBit b) (Block.ebCert b) (Block.ts b)
  where
    valid : Bool → Maybe EBCert → List TopLevelTx → Type
    valid certified nothing   _    = certified ≡ false
    valid certified (just _)  txs  = certified ≡ true × txs ≡ []
```

The bit is an input the rule checks, not a value computed from the body.  Header
validation sees the bit but not the body, so a check it gates on the bit is sound
only if the ledger verifies the bit.

<!--
```agda
ValidLeiosBlock? : ∀ b → Dec (ValidLeiosBlock b)
ValidLeiosBlock? b with Block.ebCert b | Block.ts b
... | nothing | _     = certifiedBit b ≟ false
... | just _  | _ ∷ _ = no λ { (_ , ()) }
... | just _  | []    with certifiedBit b ≟ true
... | yes p = yes (p , refl)
... | no ¬p = no (¬p ∘ proj₁)

instance
  Dec-ValidLeiosBlock : ∀ {b} → ValidLeiosBlock b ⁇
  Dec-ValidLeiosBlock {b} = ⁇ (ValidLeiosBlock? b)
```
-->

The rule requires the body's size and hash to agree with the header, the block
to satisfy `ValidLeiosBlock`{.AgdaFunction}, the transactions' execution units to
fit the block limit, and `LEDGERS`{.AgdaDatatype} to accept the transactions.
The checks that need the announcing block, which `BBODY`{.AgdaDatatype} does
not see, belong to `CHAIN`{.AgdaDatatype}: the certification delay, the
certificate's validity against the committee pinned at announcement
(`ValidEBCert`{.AgdaRecord}), and the certified EB's validity and application
(`ValidEB`{.AgdaRecord}).

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
     in

    ∙ block .bBodySize ≡ bhb .hBbsize
    ∙ block .bBodyHash ≡ bhb .bhash
    ∙ ValidLeiosBlock block
    ∙ PParams.maxBlockExUnits pp ≥ᵉ (∑ˡ[ tx ← txs ] totExUnits tx)
    ∙ Γ ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
    ────────────────────────────────
    (es , acnt) ⊢ ls , b ⇀⦇ block ,BBODY⦈ (ls' , incrBlocks hk b)
```

[CIP-164]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md
[cip-rb]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#ranking-blocks-rbs
[cip-inclusion]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#rb-inclusion-rules
[cip-step5]: https://github.com/cardano-foundation/CIPs/blob/master/CIP-0164/README.md#step-5-chain-inclusion
