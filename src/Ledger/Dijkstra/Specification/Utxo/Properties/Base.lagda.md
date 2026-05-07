---
source_branch: 1123-cip-159-11-prove-pov-and-invariants
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/Base.lagda.md
---

# UTXO Properties: Base lemmas (Dijkstra era)

This module collects era-independent helper lemmas used by
`Utxo.Properties.PoV`{.AgdaModule}.  It currently contains:

+  `∙-homo-Coin`{.AgdaFunction}: the `coin` monoid-homomorphism's `_∙_` property.
+  `newTxid⇒disj`{.AgdaFunction}: freshness of `TxIdOf tx` in an existing
   `utxo` implies `disjoint'`{.AgdaFunction} of `dom utxo`{.AgdaFunction} and
   `dom (outs tx)`{.AgdaFunction}.
+  `outs-disjoint`{.AgdaFunction}: the specialisation used by
   `Utxo.Properties.PoV`{.AgdaModule}.

**Not yet ported from Conway**: the `balance`{.AgdaFunction}-arithmetic lemmas
(`balance-cong`{.AgdaFunction}, `balance-cong-coin`{.AgdaFunction},
`balance-∪`{.AgdaFunction}, `split-balance`{.AgdaFunction}).  Conway's versions
rely on `indexedSumᵐ-cong`{.AgdaFunction} over a finite map of hashed TxOuts;
Dijkstra's `balance`{.AgdaFunction} is defined as `∑ˢ[ v ← valuesOfUTxO utxo ] v`
(a sum over a `ℙ Value`{.AgdaFunction}), so the Conway proofs don't apply
verbatim.  Porting them requires the set-theoretic cong lemmas from
`abstract-set-theory.FiniteSetTheory`{.AgdaModule}; for now, `balance-∪`{.AgdaFunction}
and `split-balance`{.AgdaFunction} remain as module parameters to
`Utxo.Properties.PoV`{.AgdaModule}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract    using (AbstractFunctions)
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo.Properties.Base
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Prelude; open Equivalence
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All); open Properties
open import Ledger.Dijkstra.Specification.Utxo txs abs

open import Algebra.Morphism using (module MonoidMorphisms; IsMagmaHomomorphism)

open MonoidMorphisms.IsMonoidHomomorphism

private variable
  ℓ : TxLevel
```
-->

## `∙-homo-Coin`

```agda
∙-homo-Coin : ∀ (x y : Value) → coin (x + y) ≡ coin x + coin y
∙-homo-Coin = IsMagmaHomomorphism.homo (isMagmaHomomorphism coinIsMonoidHomomorphism)
```

## `coin-∑ˡ`

`coin`{.AgdaField} is a monoid homomorphism from `Value`{.AgdaField} (under `+ᵛ`/`ε`) to
`ℕ`{.AgdaDatatype} (under `+`/`0`), so it distributes over a list-indexed sum.  This
is the "coin version" of the generic fact that a monoid homomorphism commutes with
`foldr _∙_ ε`.

```agda
coin-∑ˡ : ∀ {A : Type} (f : A → Value) (xs : List A)
        → coin (∑ˡ[ x ← xs ] f x) ≡ sum (map (coin ∘ f) xs)
coin-∑ˡ f []       = ε-homo coinIsMonoidHomomorphism
coin-∑ˡ f (x ∷ xs) = trans  (∙-homo-Coin (f x) (∑ˡ[ z ← xs ] f z))
                            (cong (coin (f x) +_) (coin-∑ˡ f xs))
```


## Freshness ⇒ disjointness

```agda
module _ (tx : Tx ℓ) (let open Tx tx; open TxBody txBody)
         {utxo : UTxO} where

  newTxid⇒disj : TxIdOf tx ∉ mapˢ proj₁ (dom utxo)
               → disjoint' (dom utxo) (dom (outs tx))
  newTxid⇒disj id∉utxo =
    disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
      (-, (case from ∈-map h' of λ where
            (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

  -- Specialisation used by Utxo.Properties.PoV:
  -- freshness ⇒ (utxo ∣ SpendInputs ᶜ) and outs are disjoint.
  outs-disjoint : TxIdOf tx ∉ mapˢ proj₁ (dom utxo)
                → disjoint (dom (utxo ∣ SpendInputsOf tx ᶜ)) (dom (outs tx))
  outs-disjoint fresh =
    λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj fresh) $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
```
