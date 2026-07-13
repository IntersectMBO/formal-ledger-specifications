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
open import Ledger.Conway.Specification.Tiers  txs abs
open import Ledger.Conway.Specification.Utxo txs abs
```
-->

# Blocks

The block follows mostly the definition of the Shelley specification. One
notable difference is that the size and the hash of the block body are fields
of the block, instead of functions.

An Endorser Block is identified by (the hash of) its body, `EBID`. A Ranking Block
may carry an `EBCert`{.AgdaRecord} — an EB id together with the endorsements vouching
for the Endorser Block — in place of a transaction list. The endorsement type and the
functions that check endorsements / resolve an id are abstract (in
`AbstractFunctions`{.AgdaRecord}).

```agda
EBID = KeyHash

record EBCert : Type where
  constructor ⟦_,_⟧ᵉᵇᶜ
  field
    ebid         : EBID
    endorsements : List Endorsement

record BHBody : Type where
  field
    bvkcold   : VKey
    bsize     : ℕ
    slot      : Slot
    bhash     : KeyHash
    hBbsize   : ℕ
    blockType : BlockType      -- EB or RB

record BHeader : Type where
  field
    bhbody : BHBody
    bhsig  : Sig

record Block : Type where
  field
    bheader     : BHeader
    ts          : List Tx
    ebCert      : Maybe EBCert   -- a Ranking Block carries *either* an EB certificate
                                 -- (ebCert ≡ just c, with ts ≡ []) *or* a transaction
                                 -- list (ebCert ≡ nothing)
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

A Ranking Block carries **either** a transaction list **or** an EB certificate,
selected by the `ebCert`{.AgdaField} field, giving the `BBODY`{.AgdaDatatype} rule
two cases:

* **Transaction list** (`ebCert`{.AgdaField} `≡ nothing`, rule
  `BBODY-Block-Body`{.AgdaInductiveConstructor}) — business as usual. The transition
  is executed if:
    * The size of the block body matches the value given in the block header body.
    * The hash of the block body matches the value given in the block header body.
    * The `LEDGERS`{.AgdaDatatype} transition succeeds on the block's transactions.
    * The `DIVUP`{.AgdaDatatype} transition updates the diversity policy.
  After this, the transition system updates the mapping of the hashed stake pool
  keys to the incremented value of produced blocks `n + 1`.

* **EB certificate** (`ebCert`{.AgdaField} `≡ just cert`, rule
  `BBODY-EB-Cert`{.AgdaInductiveConstructor}) — the Ranking Block instead endorses an
  Endorser Block. The transition is executed if:
    * The block is a Ranking Block (`blockType`{.AgdaField} `≡ RB`{.AgdaInductiveConstructor}).
    * The certificate's endorsements are valid, checked by the abstract function
      `checkEndorsements`{.AgdaField}.
    * The Endorser Block `ebBlock`{.AgdaBound} that the certificate's id resolves to is
      confirmed by the abstract function `checkEBID`{.AgdaField}.
    * `BBODY`{.AgdaDatatype} succeeds on `ebBlock`{.AgdaBound} itself — i.e. the
      Endorser Block's own transactions are processed by the transaction-list case.
  The resulting state is that of applying the resolved Endorser Block. The endorsement
  type and both checks are abstract for now.

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

  -- Transaction-list case: the block carries no EB certificate (ebCert ≡ nothing).
  -- Business as usual — process the block's transactions through LEDGERS and update
  -- the diversity policy via DIVUP.
  BBODY-Block-Body : ∀ {acnt ls ls' b block es ps'} →
    let
      open BHeader
      open BHBody
      open Block
      open EnactState
      txs = block .ts
      bhb = block .bheader .bhbody
      hk = hash (bhb .bvkcold)
      pp = PParamsOf es
      Γ  = ⟦ bhb .slot , ∣ es .constitution ∣ , pp , es , TreasuryOf acnt
           , bhb .blockType ⟧
      ls'' = record { LState ls' ; utxoSt = record { UTxOState (ls' .LState.utxoSt) ; policyState = ps' } }
     in
    ∙ block .ebCert ≡ nothing
    ∙ block .bBodySize ≡ bhb .hBbsize
    ∙ block .bBodyHash ≡ bhb .bhash
    ∙ Γ ⊢ ls ⇀⦇ txs ,LEDGERS⦈ ls'
    ∙ (pp , bhb .blockType) ⊢ (ls .LState.utxoSt .UTxOState.policyState) ⇀⦇ tt ,DIVUP⦈ ps'
    ────────────────────────────────
    (es , acnt) ⊢ ls , b ⇀⦇ block ,BBODY⦈ ( ls'' , incrBlocks hk b)

  -- EB-certificate case: a Ranking Block carries an EB certificate (ebCert ≡ just cert)
  -- instead of a transaction list. We (1) check the endorsements, and (2) run BBODY on
  -- the Endorser Block named by the certificate's id. `ebBlock` is the block the id
  -- resolves to; `checkEBID` (abstract) checks that it is the block for this id, and
  -- `checkEndorsements` (abstract) checks the endorsements. The resulting state is that
  -- of applying the resolved EB. Both `checkEndorsements` and `checkEBID` are abstract
  -- for now.
  -- TODO: block-count attribution for EB-certificate RBs (whose issuer's count to
  --       increment) is left to the recursive BBODY on the EB; revisit if the RB issuer
  --       should also be credited.
  -- TODO: the resolved `ebBlock` should itself be an EB (bhb.blockType ≡ EB); left
  --       abstract via `checkEBID` for now.
  BBODY-EB-Cert : ∀ {acnt ls b block es bcur' st'} {cert : EBCert} {ebBlock : Block} →
    let
      open BHeader
      open BHBody
      open Block
      bhb = block .bheader .bhbody
     in
    ∙ block .ebCert ≡ just cert
    ∙ bhb .blockType ≡ RB                       -- only Ranking Blocks carry EB certificates
    ∙ checkEndorsements (cert .EBCert.ebid) (cert .EBCert.endorsements) ≡ true
    ∙ checkEBID (cert .EBCert.ebid) (ebBlock .bBodyHash) ≡ true
    ∙ (es , acnt) ⊢ ls , b ⇀⦇ ebBlock ,BBODY⦈ (st' , bcur')
    ────────────────────────────────
    (es , acnt) ⊢ ls , b ⇀⦇ block ,BBODY⦈ (st' , bcur')
```
