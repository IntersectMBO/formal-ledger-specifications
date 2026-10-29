---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/StateEquiv.lagda.md
---

# Extensional equivalence of Dijkstra ledger states {#sec:dijkstra-state-equiv}

The Dijkstra counterpart of the Conway `_≈ˡ_`: `_≡ᵉ_` on map-valued fields,
`_≡_` on scalars, and `_≈ᵍ_` (vote maps up to `_≡ᵉ_`) on the governance state.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.StateEquiv
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs using (UTxOState)
open import Ledger.Dijkstra.Specification.Gov govStructure using (GovState)
open import Data.List.Relation.Binary.Pointwise using (Pointwise; []; _∷_)
```
-->

## Governance state

```agda
record _≈ᵛ_ (w w′ : GovVotes) : Type where
  field
    cc≈  : GovVotes.gvCC   w ˢ ≡ᵉ GovVotes.gvCC   w′ ˢ
    dr≈  : GovVotes.gvDRep w ˢ ≡ᵉ GovVotes.gvDRep w′ ˢ
    spo≈ : GovVotes.gvSPO  w ˢ ≡ᵉ GovVotes.gvSPO  w′ ˢ

-- an action state with its votes erased
noVotes : GovActionState → GovActionState
noVotes a = record a { votes = record { gvCC = ∅ᵐ ; gvDRep = ∅ᵐ ; gvSPO = ∅ᵐ } }

record _≈ᵃ_ (a a′ : GovActionState) : Type where
  field
    votes≈ : GovActionState.votes a ≈ᵛ GovActionState.votes a′
    rest≡  : noVotes a ≡ noVotes a′

_≈ᵍ_ : GovState → GovState → Type
_≈ᵍ_ = Pointwise (λ (i , a) (i′ , a′) → i ≡ i′ × a ≈ᵃ a′)

≈ᵛ-refl : ∀ {w} → w ≈ᵛ w
≈ᵛ-refl = record { cc≈ = SetSetoid.refl ; dr≈ = SetSetoid.refl ; spo≈ = SetSetoid.refl }

≈ᵛ-sym : ∀ {w w′} → w ≈ᵛ w′ → w′ ≈ᵛ w
≈ᵛ-sym e = record { cc≈ = sy (e .cc≈) ; dr≈ = sy (e .dr≈) ; spo≈ = sy (e .spo≈) }
  where open _≈ᵛ_ ; sy = SetSetoid.sym

≈ᵛ-trans : ∀ {w w′ w″} → w ≈ᵛ w′ → w′ ≈ᵛ w″ → w ≈ᵛ w″
≈ᵛ-trans e f = record { cc≈ = tr (e .cc≈) (f .cc≈) ; dr≈ = tr (e .dr≈) (f .dr≈) ; spo≈ = tr (e .spo≈) (f .spo≈) }
  where open _≈ᵛ_ ; tr = SetSetoid.trans

≈ᵃ-refl : ∀ {a} → a ≈ᵃ a
≈ᵃ-refl = record { votes≈ = ≈ᵛ-refl ; rest≡ = refl }

≈ᵃ-sym : ∀ {a a′} → a ≈ᵃ a′ → a′ ≈ᵃ a
≈ᵃ-sym e = record { votes≈ = ≈ᵛ-sym (e .votes≈) ; rest≡ = sym (e .rest≡) }
  where open _≈ᵃ_

≈ᵃ-trans : ∀ {a a′ a″} → a ≈ᵃ a′ → a′ ≈ᵃ a″ → a ≈ᵃ a″
≈ᵃ-trans e f = record { votes≈ = ≈ᵛ-trans (e .votes≈) (f .votes≈) ; rest≡ = trans (e .rest≡) (f .rest≡) }
  where open _≈ᵃ_

≈ᵍ-refl : ∀ {g} → g ≈ᵍ g
≈ᵍ-refl {[]}    = []
≈ᵍ-refl {_ ∷ _} = (refl , ≈ᵃ-refl) ∷ ≈ᵍ-refl

≈ᵍ-sym : ∀ {g g′} → g ≈ᵍ g′ → g′ ≈ᵍ g
≈ᵍ-sym []                  = []
≈ᵍ-sym ((i≡ , a≈) ∷ rest) = (sym i≡ , ≈ᵃ-sym a≈) ∷ ≈ᵍ-sym rest

≈ᵍ-trans : ∀ {g g′ g″} → g ≈ᵍ g′ → g′ ≈ᵍ g″ → g ≈ᵍ g″
≈ᵍ-trans [] [] = []
≈ᵍ-trans ((i≡ , a≈) ∷ rest) ((i≡′ , a≈′) ∷ rest′) =
  (trans i≡ i≡′ , ≈ᵃ-trans a≈ a≈′) ∷ ≈ᵍ-trans rest rest′

≡⟹≈ᵍ : ∀ {g g′} → g ≡ g′ → g ≈ᵍ g′
≡⟹≈ᵍ refl = ≈ᵍ-refl
```

## Certificate state

```agda
record _≈ᶜ_ (cs cs′ : CertState) : Type where
  field
    vd≈  : DState.voteDelegs  (CertState.dState cs) ˢ ≡ᵉ DState.voteDelegs  (CertState.dState cs′) ˢ
    sd≈  : DState.stakeDelegs (CertState.dState cs) ˢ ≡ᵉ DState.stakeDelegs (CertState.dState cs′) ˢ
    rw≈  : DState.rewards     (CertState.dState cs) ˢ ≡ᵉ DState.rewards     (CertState.dState cs′) ˢ
    dd≈  : DState.deposits    (CertState.dState cs) ˢ ≡ᵉ DState.deposits    (CertState.dState cs′) ˢ
    pl≈  : PState.pools    (CertState.pState cs) ˢ ≡ᵉ PState.pools    (CertState.pState cs′) ˢ
    fp≈  : PState.fPools   (CertState.pState cs) ˢ ≡ᵉ PState.fPools   (CertState.pState cs′) ˢ
    rt≈  : PState.retiring (CertState.pState cs) ˢ ≡ᵉ PState.retiring (CertState.pState cs′) ˢ
    pd≈  : PState.deposits (CertState.pState cs) ˢ ≡ᵉ PState.deposits (CertState.pState cs′) ˢ
    dr≈  : GState.dreps     (CertState.gState cs) ˢ ≡ᵉ GState.dreps     (CertState.gState cs′) ˢ
    cck≈ : GState.ccHotKeys (CertState.gState cs) ˢ ≡ᵉ GState.ccHotKeys (CertState.gState cs′) ˢ
    gd≈  : GState.deposits  (CertState.gState cs) ˢ ≡ᵉ GState.deposits  (CertState.gState cs′) ˢ

≈ᶜ-refl : ∀ {cs} → cs ≈ᶜ cs
≈ᶜ-refl = record { vd≈ = rf ; sd≈ = rf ; rw≈ = rf ; dd≈ = rf ; pl≈ = rf ; fp≈ = rf
                 ; rt≈ = rf ; pd≈ = rf ; dr≈ = rf ; cck≈ = rf ; gd≈ = rf }
  where rf = SetSetoid.refl

≈ᶜ-sym : ∀ {cs cs′} → cs ≈ᶜ cs′ → cs′ ≈ᶜ cs
≈ᶜ-sym e = record { vd≈ = sy (e .vd≈) ; sd≈ = sy (e .sd≈) ; rw≈ = sy (e .rw≈) ; dd≈ = sy (e .dd≈)
                  ; pl≈ = sy (e .pl≈) ; fp≈ = sy (e .fp≈) ; rt≈ = sy (e .rt≈) ; pd≈ = sy (e .pd≈)
                  ; dr≈ = sy (e .dr≈) ; cck≈ = sy (e .cck≈) ; gd≈ = sy (e .gd≈) }
  where open _≈ᶜ_ ; sy = SetSetoid.sym

≈ᶜ-trans : ∀ {cs cs′ cs″} → cs ≈ᶜ cs′ → cs′ ≈ᶜ cs″ → cs ≈ᶜ cs″
≈ᶜ-trans e f = record
  { vd≈ = tr (e .vd≈) (f .vd≈) ; sd≈ = tr (e .sd≈) (f .sd≈) ; rw≈ = tr (e .rw≈) (f .rw≈)
  ; dd≈ = tr (e .dd≈) (f .dd≈) ; pl≈ = tr (e .pl≈) (f .pl≈) ; fp≈ = tr (e .fp≈) (f .fp≈)
  ; rt≈ = tr (e .rt≈) (f .rt≈) ; pd≈ = tr (e .pd≈) (f .pd≈) ; dr≈ = tr (e .dr≈) (f .dr≈)
  ; cck≈ = tr (e .cck≈) (f .cck≈) ; gd≈ = tr (e .gd≈) (f .gd≈) }
  where open _≈ᶜ_ ; tr = SetSetoid.trans
```

## Ledger state

```agda
record _≈ˡ_ (s₁ s₂ : LedgerState) : Type where
  field
    utxo≈      : UTxOState.utxo      (LedgerState.utxoSt s₁) ˢ ≡ᵉ UTxOState.utxo (LedgerState.utxoSt s₂) ˢ
    fees≈      : UTxOState.fees      (LedgerState.utxoSt s₁) ≡ UTxOState.fees      (LedgerState.utxoSt s₂)
    donations≈ : UTxOState.donations (LedgerState.utxoSt s₁) ≡ UTxOState.donations (LedgerState.utxoSt s₂)
    govSt≈     : LedgerState.govSt s₁ ≈ᵍ LedgerState.govSt s₂
    certs≈     : LedgerState.certState s₁ ≈ᶜ LedgerState.certState s₂

≈ˡ-refl : ∀ {s} → s ≈ˡ s
≈ˡ-refl = record { utxo≈ = SetSetoid.refl ; fees≈ = refl ; donations≈ = refl
                 ; govSt≈ = ≈ᵍ-refl ; certs≈ = ≈ᶜ-refl }

≈ˡ-sym : ∀ {s₁ s₂} → s₁ ≈ˡ s₂ → s₂ ≈ˡ s₁
≈ˡ-sym e = record { utxo≈ = SetSetoid.sym (e .utxo≈) ; fees≈ = sym (e .fees≈)
                  ; donations≈ = sym (e .donations≈) ; govSt≈ = ≈ᵍ-sym (e .govSt≈)
                  ; certs≈ = ≈ᶜ-sym (e .certs≈) }
  where open _≈ˡ_

≈ˡ-trans : ∀ {s₁ s₂ s₃} → s₁ ≈ˡ s₂ → s₂ ≈ˡ s₃ → s₁ ≈ˡ s₃
≈ˡ-trans e f = record { utxo≈ = SetSetoid.trans (e .utxo≈) (f .utxo≈) ; fees≈ = trans (e .fees≈) (f .fees≈)
                      ; donations≈ = trans (e .donations≈) (f .donations≈)
                      ; govSt≈ = ≈ᵍ-trans (e .govSt≈) (f .govSt≈) ; certs≈ = ≈ᶜ-trans (e .certs≈) (f .certs≈) }
  where open _≈ˡ_

≡⟹≈ˡ : ∀ {s₁ s₂} → s₁ ≡ s₂ → s₁ ≈ˡ s₂
≡⟹≈ˡ refl = ≈ˡ-refl
```
