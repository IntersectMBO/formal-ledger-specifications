---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Leios/Validity/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">EB</span>: Computational {#sec:eb-computational}

The `EB`{.AgdaDatatype} computation checks the references and size bounds
before applying the closure through `LEDGERS`{.AgdaDatatype}.  Its environment
pairs the announcing ledger environment with the resolved closure.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)
open import Ledger.Dijkstra.Specification.Abstract using (AbstractFunctions)

module Ledger.Dijkstra.Specification.Leios.Validity.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledgers.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure
open import Ledger.Dijkstra.Specification.Leios.Validity txs abs
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)

open Computational ⦃...⦄

wellFormed? : ∀ eb → Dec (EBWellFormed eb)
wellFormed? eb = map′ (λ (n , u) → ebWellFormed (n , u))
  (λ where (ebWellFormed (n , u)) → n , u)
  (nonempty? refs ×-dec unique? _≟_ (map proj₁ refs))
  where
    refs = EndorserBlock.ebTxRefs eb
    nonempty? : ∀ {A : Type} (xs : List A) → Dec (xs ≢ [])
    nonempty? [] = no λ p → p refl
    nonempty? (_ ∷ _) = yes λ ()

module _ (Γ : LedgerEnv) (closure : List TopLevelTx) (eb : EndorserBlock) where
  open PParams (PParamsOf Γ)

  checks? : Dec ( EBWellFormed eb
                × EndorserBlock.ebTxRefs eb ≡ map refOf closure
                × ebSize eb ≤ leiosMaxEBSize
                × ∑ˡ[ tx ← closure ] SizeOf tx ≤ leiosMaxEBTxsSize )
  checks? = wellFormed? eb ×-dec ¿ _ ¿

instance
```
-->

```agda
  Computational-EB : Computational {C = LedgerEnv × List TopLevelTx}
    (λ (Γ , closure) ls eb ls' → Γ , closure ⊢ ls ⇀⦇ eb ,EB⦈ ls') String
```

<!--
```agda
  Computational-EB .computeProof (Γ , closure) ls eb with checks? Γ closure eb
  ... | no _ = failure "EB: the references or size bounds do not hold"
  ... | yes (wf , refs , sz , tsz) = do
    ls' , ext ← computeProof _ ls closure
    success (ls' , EB (wf , refs , sz , tsz , ext))

  Computational-EB .completeness (Γ , closure) ls eb ls' (EB (wf , refs , sz , tsz , ext))
    with checks? Γ closure eb
  ... | no ¬checks = ⊥-elim (¬checks (wf , refs , sz , tsz))
  ... | yes _ with recomputeProof ext | completeness _ _ _ _ ext
  ... | success _ | refl = refl
```
-->
