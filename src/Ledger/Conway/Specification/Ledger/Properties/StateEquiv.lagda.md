---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/StateEquiv.lagda.md
---

# Extensional equivalence of ledger states {#sec:state-equiv}

The concrete set model underlying the ledger is `List`-backed, so set equality
`_≡ᵉ_` (bag equality) is strictly weaker than propositional `_≡_`: two finite
maps with the same entries in a different order are `_≡ᵉ_`-equal but not `_≡_`.
Consequently, properties such as transaction-reordering determinism hold only
**up to set equality on the map components** — which is precisely the equality
`=` used by Vinogradova & Sorokin, *Properties of UTxO Ledgers and Programs
Implemented on Them* (LSFA'24), Theorem 5.2.1.

This module defines the corresponding component-wise extensional equivalence
`_≈ˡ_` on `LState`{.AgdaRecord}: `_≡ᵉ_` on every finite-map carrier, and `_≡_`
on the scalar/ordered fields (`fees`, `donations`).  The governance state is a
*list* of action states whose `votes` component is itself finite-map-backed,
so it gets its own structural equivalence `_≈ᵍ_`: same list spine, entries
pairwise identical except the three vote maps, which are compared by `_≡ᵉ_`.
Everything is an equivalence relation, and propositional equality refines it.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Specification.Ledger.Properties.StateEquiv
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Utxo txs abs using (UTxOState)
open import Ledger.Conway.Specification.Gov govStructure
  using (GovState)
open import Data.List.Relation.Binary.Pointwise using (Pointwise; []; _∷_)

private
  uof : LState → UTxOState;  uof = LState.utxoSt
  dof : LState → DState;      dof = CertState.dState ∘ LState.certState
  pof : LState → PState;      pof = CertState.pState ∘ LState.certState
  gof : LState → GState;      gof = CertState.gState ∘ LState.certState
```
-->

```agda
record _≈ᵛ_ (w w′ : GovVotes) : Type where
  field
    cc≈   : GovVotes.gvCC   w ˢ ≡ᵉ GovVotes.gvCC   w′ ˢ
    dr≈   : GovVotes.gvDRep w ˢ ≡ᵉ GovVotes.gvDRep w′ ˢ
    spo≈  : GovVotes.gvSPO  w ˢ ≡ᵉ GovVotes.gvSPO  w′ ˢ

-- an action state with its votes erased: "everything except the votes"
noVotes : GovActionState → GovActionState
noVotes a = record a { votes = record { gvCC = ∅ᵐ ; gvDRep = ∅ᵐ ; gvSPO = ∅ᵐ } }

record _≈ᵃ_ (a a′ : GovActionState) : Type where
  field
    votes≈ : GovActionState.votes a ≈ᵛ GovActionState.votes a′
    rest≡  : noVotes a ≡ noVotes a′

_≈ᵍ_ : GovState → GovState → Type
_≈ᵍ_ = Pointwise (λ (i , a) (i′ , a′) → i ≡ i′ × a ≈ᵃ a′)

≈ᵛ-refl : ∀ {w} → w ≈ᵛ w
≈ᵛ-refl = record { cc≈ = rf ; dr≈ = rf ; spo≈ = rf } where rf = SetSetoid.refl

≈ᵛ-sym : ∀ {w w′} → w ≈ᵛ w′ → w′ ≈ᵛ w
≈ᵛ-sym e = record { cc≈ = sy (e .cc≈) ; dr≈ = sy (e .dr≈) ; spo≈ = sy (e .spo≈) }
  where open _≈ᵛ_ ; sy = SetSetoid.sym

≈ᵛ-trans : ∀ {w w′ w″} → w ≈ᵛ w′ → w′ ≈ᵛ w″ → w ≈ᵛ w″
≈ᵛ-trans e f = record
  { cc≈ = tr (e .cc≈) (f .cc≈) ; dr≈ = tr (e .dr≈) (f .dr≈) ; spo≈ = tr (e .spo≈) (f .spo≈) }
  where open _≈ᵛ_ ; tr = SetSetoid.trans

≈ᵃ-refl : ∀ {a} → a ≈ᵃ a
≈ᵃ-refl = record { votes≈ = ≈ᵛ-refl ; rest≡ = refl }

≈ᵃ-sym : ∀ {a a′} → a ≈ᵃ a′ → a′ ≈ᵃ a
≈ᵃ-sym e = record { votes≈ = ≈ᵛ-sym (e .votes≈) ; rest≡ = sym (e .rest≡) }
  where open _≈ᵃ_

≈ᵃ-trans : ∀ {a a′ a″} → a ≈ᵃ a′ → a′ ≈ᵃ a″ → a ≈ᵃ a″
≈ᵃ-trans e f = record
  { votes≈ = ≈ᵛ-trans (e .votes≈) (f .votes≈) ; rest≡ = trans (e .rest≡) (f .rest≡) }
  where open _≈ᵃ_

≈ᵍ-refl : ∀ {g} → g ≈ᵍ g
≈ᵍ-refl {[]}    = []
≈ᵍ-refl {_ ∷ _} = (refl , ≈ᵃ-refl) ∷ ≈ᵍ-refl

≈ᵍ-sym : ∀ {g g′} → g ≈ᵍ g′ → g′ ≈ᵍ g
≈ᵍ-sym []                 = []
≈ᵍ-sym ((i≡ , a≈) ∷ rest) = (sym i≡ , ≈ᵃ-sym a≈) ∷ ≈ᵍ-sym rest

≈ᵍ-trans : ∀ {g g′ g″} → g ≈ᵍ g′ → g′ ≈ᵍ g″ → g ≈ᵍ g″
≈ᵍ-trans []                 []                   = []
≈ᵍ-trans ((i≡ , a≈) ∷ rest) ((i≡′ , a≈′) ∷ rest′) =
  (trans i≡ i≡′ , ≈ᵃ-trans a≈ a≈′) ∷ ≈ᵍ-trans rest rest′

≡⟹≈ᵍ : ∀ {g g′} → g ≡ g′ → g ≈ᵍ g′
≡⟹≈ᵍ refl = ≈ᵍ-refl

record _≈ˡ_ (s₁ s₂ : LState) : Type where
  field
    utxo≈      : UTxOState.utxo      (uof s₁) ˢ ≡ᵉ UTxOState.utxo      (uof s₂) ˢ
    fees≈      : UTxOState.fees       (uof s₁)   ≡  UTxOState.fees      (uof s₂)
    deposits≈  : UTxOState.deposits  (uof s₁) ˢ ≡ᵉ UTxOState.deposits  (uof s₂) ˢ
    donations≈ : UTxOState.donations  (uof s₁)   ≡  UTxOState.donations (uof s₂)
    govSt≈     : LState.govSt s₁ ≈ᵍ LState.govSt s₂
    vDelegs≈   : DState.voteDelegs   (dof s₁) ˢ ≡ᵉ DState.voteDelegs   (dof s₂) ˢ
    sDelegs≈   : DState.stakeDelegs  (dof s₁) ˢ ≡ᵉ DState.stakeDelegs  (dof s₂) ˢ
    rewards≈   : DState.rewards      (dof s₁) ˢ ≡ᵉ DState.rewards      (dof s₂) ˢ
    pools≈     : PState.pools        (pof s₁) ˢ ≡ᵉ PState.pools        (pof s₂) ˢ
    fPools≈    : PState.fPools       (pof s₁) ˢ ≡ᵉ PState.fPools       (pof s₂) ˢ
    retiring≈  : PState.retiring     (pof s₁) ˢ ≡ᵉ PState.retiring     (pof s₂) ˢ
    dreps≈     : GState.dreps        (gof s₁) ˢ ≡ᵉ GState.dreps        (gof s₂) ˢ
    ccKeys≈    : GState.ccHotKeys    (gof s₁) ˢ ≡ᵉ GState.ccHotKeys    (gof s₂) ˢ
```

`_≈ˡ_` is reflexive, symmetric and transitive (component-wise from `_≡ᵉ_` and
`_≡_`), and propositional equality refines it:

```agda
≈ˡ-refl : ∀ {s} → s ≈ˡ s
≈ˡ-refl = record
  { utxo≈ = rf ; fees≈ = refl ; deposits≈ = rf ; donations≈ = refl ; govSt≈ = ≈ᵍ-refl
  ; vDelegs≈ = rf ; sDelegs≈ = rf ; rewards≈ = rf ; pools≈ = rf ; fPools≈ = rf
  ; retiring≈ = rf ; dreps≈ = rf ; ccKeys≈ = rf }
  where rf = SetSetoid.refl

≈ˡ-sym : ∀ {s₁ s₂} → s₁ ≈ˡ s₂ → s₂ ≈ˡ s₁
≈ˡ-sym e = record
  { utxo≈ = sy (e .utxo≈) ; fees≈ = sym (e .fees≈) ; deposits≈ = sy (e .deposits≈)
  ; donations≈ = sym (e .donations≈) ; govSt≈ = ≈ᵍ-sym (e .govSt≈)
  ; vDelegs≈ = sy (e .vDelegs≈) ; sDelegs≈ = sy (e .sDelegs≈) ; rewards≈ = sy (e .rewards≈)
  ; pools≈ = sy (e .pools≈) ; fPools≈ = sy (e .fPools≈) ; retiring≈ = sy (e .retiring≈)
  ; dreps≈ = sy (e .dreps≈) ; ccKeys≈ = sy (e .ccKeys≈) }
  where open _≈ˡ_ ; sy = SetSetoid.sym

≈ˡ-trans : ∀ {s₁ s₂ s₃} → s₁ ≈ˡ s₂ → s₂ ≈ˡ s₃ → s₁ ≈ˡ s₃
≈ˡ-trans e f = record
  { utxo≈ = tr (e .utxo≈) (f .utxo≈) ; fees≈ = trans (e .fees≈) (f .fees≈)
  ; deposits≈ = tr (e .deposits≈) (f .deposits≈) ; donations≈ = trans (e .donations≈) (f .donations≈)
  ; govSt≈ = ≈ᵍ-trans (e .govSt≈) (f .govSt≈)
  ; vDelegs≈ = tr (e .vDelegs≈) (f .vDelegs≈) ; sDelegs≈ = tr (e .sDelegs≈) (f .sDelegs≈)
  ; rewards≈ = tr (e .rewards≈) (f .rewards≈) ; pools≈ = tr (e .pools≈) (f .pools≈)
  ; fPools≈ = tr (e .fPools≈) (f .fPools≈) ; retiring≈ = tr (e .retiring≈) (f .retiring≈)
  ; dreps≈ = tr (e .dreps≈) (f .dreps≈) ; ccKeys≈ = tr (e .ccKeys≈) (f .ccKeys≈) }
  where open _≈ˡ_ ; tr = SetSetoid.trans

≡⟹≈ˡ : ∀ {s₁ s₂} → s₁ ≡ s₂ → s₁ ≈ˡ s₂
≡⟹≈ˡ refl = ≈ˡ-refl
```
