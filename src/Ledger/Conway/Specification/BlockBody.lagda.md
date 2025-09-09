<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction
 
module Ledger.Conway.Specification.BlockBody
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Rewards txs abs
```
-->

# Blocks

The block follows mostly the definition of the Shelley specification. One
notable difference is that the size and the hash of the block body are fields
of the block, instead of functions.

```agda
record BHBody : Type where
  field
    bvkcold : VKey
    bsize   : ℕ
    slot    : Slot
    bhash   : KeyHash
    hBbsize : ℕ

record BHeader : Type where
  field
    bhbody : BHBody
    bhsig  : Sig

record Block : Type where
  field
    bheader     : BHeader
    ts          : List Tx
    bBodySize   : ℕ
    bBodyHash   : KeyHash
    ≡-bBodySize : bBodySize ≡ BHBody.hBbsize (BHeader.bhbody bheader)
    ≡-bBodyHash : bBodyHash ≡ BHBody.bhash (BHeader.bhbody bheader)
```

# Block Body Transition

The Block Body Transition updates the block body state which comprises the
ledger state and the map describing the produced blocks. The environment of the
`BBODY`{.AgdaDatatype} transition includes the protocol parameters and the accounting
state.

The helper function `incrBlocks`{.AgdaFunction} counts the number of
non-overlay blocks produced by each stake pool.

The signal of the `BBODY`{.AgdaDatatype} rule is a block from which we extract:
* the sequence of transactions, `txs`{.AgdaBound} = `block`{.AgdaBound} .`ts`{.AgdaField}, of the block;
* the block header body `bhb`{.AgdaBound} = `block`{.AgdaBound} .`bheader`{.AgdaField} .`bhbody`{.AgdaField};
* the hash of the verification key of the issuer of the block, `hk`{.AgdaBound} = `hash`{.AgdaFunction} (`bhb`{.AgdaBound} .`bvkcold`{.AgdaField}).

The transition is executed if the following preconditions are met:
* The size of the block body matches the value given in the block header body.
* The hash of the block body matches the value given in the block header body.
* The `LEDGERS`{.AgdaDatatype} transition succeeds.

After this, the transition system updates the mapping of the hashed stake pool
keys to the incremented value of produced blocks `n + 1`, provided the current
slot is not an overlay slot.

The `BBODY`{.AgdaDatatype} rule has two predicate failures:
* if the size of the block body in the header is not equal to the real size of
  the block body, there is a WrongBlockBodySize failure.
* if the hash of the block body is not also the hash of transactions, there is
  an InvalidBodyHash failure.

```agda
BBodyEnv : Type
BBodyEnv = EnactState × Acnt

BBodyState : Type
BBodyState = LState × BlocksMade

incrBlocks : KeyHash → BlocksMade → BlocksMade
incrBlocks hk b = b ∪⁺ singletonᵐ hk 1

data _⊢_⇀⦇_,BBODY⦈_
  : BBodyEnv → BBodyState → Block → BBodyState → Type where

  BBODY-Block-Body : ∀ {acnt ls ls' b block es} →
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
    ∙ Γ ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
    ────────────────────────────────
    (es , acnt) ⊢ ls , b ⇀⦇ block ,BBODY⦈ (ls' , incrBlocks hk b)
```
