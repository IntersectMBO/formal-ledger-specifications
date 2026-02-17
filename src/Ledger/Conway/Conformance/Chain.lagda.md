---
source_branch: master
source_path: src/Ledger/Conway/Conformance/Chain.lagda.md
---
```agda

{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Conformance.Chain
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Conway.Specification.Ratify govStructure
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Epoch txs abs
open import Ledger.Conway.Conformance.Certs govStructure

record ChainState : Type where

  field

    newEpochState  : NewEpochState

record Block : Type where

  field

    ts    : List Tx
    slot  : Slot

private variable
  s : ChainState
  b : Block
  ls' : LState
  nes : NewEpochState

instance _ = +-0-monoid

-- TODO: do we still need this for anything?
maybePurpose : DepositPurpose → (DepositPurpose × Credential) → Coin → Maybe Coin
maybePurpose prps (prps' , _) c with prps ≟ prps'
... | yes _ = just c
... | no _ = nothing

maybePurpose-prop : ∀ {prps} {x} {y}
  → (m : (DepositPurpose × Credential) ⇀ Coin)
  → (x , y) ∈ dom ((mapMaybeWithKeyᵐ (maybePurpose prps) m) ˢ)
  → x ≡ prps
maybePurpose-prop {prps = prps} {x} {y} _ xy∈dom with from dom∈ xy∈dom
... | z , ∈mmwk with prps ≟ x | ∈-mapMaybeWithKey {f = maybePurpose prps} ∈mmwk
... | yes refl | _ = refl

filterPurpose : DepositPurpose → (DepositPurpose × Credential) ⇀ Coin → Credential ⇀ Coin
filterPurpose prps m = mapKeys proj₂ (mapMaybeWithKeyᵐ (maybePurpose prps) m)
  {λ where x∈dom y∈dom refl → cong (_, _)
                            $ trans (maybePurpose-prop {prps = prps} m x∈dom)
                            $ sym   (maybePurpose-prop {prps = prps} m y∈dom)}

govActionDeposits : LState → VDeleg ⇀ Coin
govActionDeposits ls =
  let open LState ls; open CertState certState; open PState pState
      open UTxOState utxoSt; open DState dState
   in foldl _∪⁺_ ∅ $ setToList $
    mapPartial
      (λ where (gaid , record { returnAddr = record {stake = c} }) → do
        vd ← lookupᵐ? voteDelegs c
        dep ← lookupᵐ? (DState.deposits dState) (GovActionDeposit gaid)
        just ❴ vd , dep ❵ )
      (fromList govSt)

data

  _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Type

  where

  CHAIN :
    let open ChainState s; open Block b; open NewEpochState nes
        open EpochState epochState; open EnactState es
    in
       _ ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    →  ⟦ slot , ∣ constitution ∣ , ∣ pparams ∣ , es , Acnt.treasury acnt
       ⟧ ⊢ ls ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈
        record s { newEpochState = record nes { epochState = record epochState { ls = ls'} } }
```
