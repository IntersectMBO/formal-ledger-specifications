---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Epoch/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">EPOCH</span>: Computational {#sec:epoch-computational}

This module proves that the `EPOCH`{.AgdaDatatype} and `NEWEPOCH`{.AgdaDatatype}
transition rules are computational.

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction
module Ledger.Dijkstra.Specification.Epoch.Properties.Computational
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Agda.Builtin.FromNat
import Relation.Binary.PropositionalEquality as PE
open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Epoch txs abs
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.Ratify.Properties.Computational txs
open import Ledger.Dijkstra.Specification.Rewards txs abs
open import Ledger.Dijkstra.Specification.Rewards.Properties.Computational txs abs
open Computational ⦃...⦄

module _ {eps : EpochState} {e : Epoch} where

  EPOCH-total : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
  EPOCH-total = -, EPOCH (RATIFIES-total' .proj₂ , SNAP-total .proj₂)

  -- Proved via cong₂ so Agda only needs unification for the non-varying components
  -- (acnt', ls', es), not normalization of the full let block.
  EPOCH-deterministic : ∀ eps' eps''
    → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'' → eps' ≡ eps''

  EPOCH-deterministic eps' eps''
    (EPOCH {ss' = ss'₁} {fut' = fut'₁} (rat₁ , snap₁))
    (EPOCH {ss' = ss'₂} {fut' = fut'₂} (rat₂ , snap₂)) =
    cong₂  (λ ss fut → ⟦ _ , ss , _ , _ , fut ⟧ᵉ')
           ss-eq
           (RATIFIES-deterministic-≡ Γ-eq refl refl rat₁ rat₂)
      where
      ss-eq : ss'₁ ≡ ss'₂
      ss-eq = SNAP-deterministic snap₁ snap₂
      -- Prove ratifyΓ₁ ≡ ratifyΓ₂ by showing both are `f ss'ᵢ` for the
      -- same function f.  The `_`s absorb all complex sub-terms by
      -- unification with ratifyΓᵢ, so no let-block normalization occurs.
      Γ-eq = cong  (λ ss →  record
                            { stakeDistrs  = mkStakeDistrs (Snapshots.mark ss) e _ _ _ _
                            ; currentEpoch = _
                            ; dreps        = _
                            ; ccHotKeys    = _
                            ; treasury     = _
                            ; pools        = _
                            ; delegatees   = _
                            })
                   ss-eq

  abstract
    EPOCH-total' : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    EPOCH-total' = EPOCH-total

    -- Derive completeness from determinism: no `refl` check needed,
    -- so the let-block is never forced to normalize.
    EPOCH-complete' : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total' ≡ eps'
    EPOCH-complete' eps' h =
      EPOCH-deterministic (proj₁ EPOCH-total') eps' (proj₂ EPOCH-total') h

instance
```
-->

```agda
  Computational-EPOCH : Computational _⊢_⇀⦇_,EPOCH⦈_ ⊥
  Computational-EPOCH .computeProof _ _ _ = success EPOCH-total'
  Computational-EPOCH .completeness _ _ _ s' h = cong success (EPOCH-complete' s' h)
```

<!--
```agda
module _ {e : Epoch} where
  NEWEPOCH-total : ∀ nes → ∃[ nes' ] _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes'
  NEWEPOCH-total nes
    with e ≟ NewEpochState.lastEpoch nes + 1
       | NewEpochState.ru nes
       | inspect NewEpochState.ru nes
  ... | yes p | just ru | PE.[ refl ] =
        ⟦ e , _ , _ , EPOCH-total' .proj₁ , nothing , _ ⟧
        , NEWEPOCH-New (p , EPOCH-total' .proj₂)
  ... | yes p | nothing | PE.[ refl ] =
        ⟦ e , _ , _ , proj₁ EPOCH-total' , nothing , _ ⟧
        , NEWEPOCH-No-Reward-Update (p , EPOCH-total' .proj₂)
  ... | no ¬p | _ | _ = -, NEWEPOCH-Not-New ¬p

  NEWEPOCH-complete : ∀ nes nes' → _ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes'
                                 → proj₁ (NEWEPOCH-total nes) ≡ nes'
  NEWEPOCH-complete nes nes' h
    with e ≟ NewEpochState.lastEpoch nes + 1
       | NewEpochState.ru nes
       | inspect NewEpochState.ru nes
       | h
  ... | yes p | just ru  | PE.[ refl ] | NEWEPOCH-New (x , x₁)
      rewrite EPOCH-complete' _ x₁ = refl
  ... | yes p | ru       | PE.[ refl ] | NEWEPOCH-Not-New x    = ⊥-elim (x p)
  ... | yes p | nothing  | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , x₁)
      rewrite EPOCH-complete' _ x₁ = refl
  ... | no ¬p | ru       | PE.[ refl ] | NEWEPOCH-New (x , _)  = ⊥-elim (¬p x)
  ... | no ¬p | ru       | PE.[ refl ] | NEWEPOCH-Not-New x    = refl
  ... | no ¬p | nothing  | PE.[ refl ] | NEWEPOCH-No-Reward-Update (x , _)
      = ⊥-elim (¬p x)

instance
```
-->

```agda
  Computational-NEWEPOCH : Computational _⊢_⇀⦇_,NEWEPOCH⦈_ ⊥
  Computational-NEWEPOCH .computeProof _ s _ = success (NEWEPOCH-total _)
  Computational-NEWEPOCH .completeness _ s _ s' h =
    cong success (NEWEPOCH-complete _ s' h)

```
