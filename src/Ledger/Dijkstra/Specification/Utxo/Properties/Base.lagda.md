---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/Base.lagda.md
---

# UTxO Properties: Base Lemmas

This module collects the pure `UTxO`{.AgdaFunction} algebra used by the
preservation-of-value proofs in `Utxo.Properties.PoV`{.AgdaModule} and
`Utxow.Properties.PoV`{.AgdaModule}:

+  `∙-homo-Coin`{.AgdaFunction}: `coin`{.AgdaField} distributes over `Value`{.AgdaField}
   addition (the `_∙_` law of the `coin`{.AgdaField} monoid homomorphism).
+  `coin-∑ˡ`{.AgdaFunction}: `coin`{.AgdaField} distributes over a list-indexed sum of
   `Value`{.AgdaField}s.
+  `newTxid⇒disj`{.AgdaFunction} / `outs-disjoint`{.AgdaFunction}: freshness of
   `TxIdOf tx` in a UTxO implies the outputs of `tx` are disjoint from it.
+  `balance-cong`{.AgdaFunction} / `balance-cong-coin`{.AgdaFunction}:
   `balance`{.AgdaFunction} is invariant under extensional equality of UTxOs.
+  `balance-∪`{.AgdaFunction}: `cbalance`{.AgdaFunction} is additive on disjoint unions.
+  `split-balance`{.AgdaFunction}: `cbalance`{.AgdaFunction} splits along a key-set
   restriction and its complement.

The balance lemmas are ports of their Conway counterparts (in
`Ledger.Conway.Specification.Utxo.Properties.Base`{.AgdaModule}): the Dijkstra
`balance`{.AgdaFunction} is again an indexed sum over a finite map of transaction
outputs (`∑[ x ← mapValues txOutToValue utxo ] x`), so the Conway proofs via
`indexedSumᵐ-cong`{.AgdaFunction} and `indexedSumᵐ-∪`{.AgdaFunction} carry over,
with `txOutToValue`{.AgdaFunction} in place of Conway's hashed outputs.  The
statements of `balance-∪`{.AgdaFunction}, `split-balance`{.AgdaFunction} and
`outs-disjoint`{.AgdaFunction} match the corresponding module parameters of
`Ledger.Properties.PoV`{.AgdaModule}, which they are intended to discharge.

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
open import Relation.Binary using (IsEquivalence)

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

If the id of a transaction `tx` does not occur in `utxo`, then the outputs of
`tx` (whose keys all have first component `TxIdOf tx`) are disjoint from
`utxo`.  The specialisation `outs-disjoint`{.AgdaFunction} is the form used by
the PoV proofs: the restriction `utxo ∣ SpendInputsOf tx ᶜ` only shrinks the
domain, so disjointness with `outs tx` persists.

```agda
module _ (tx : Tx ℓ) (let open Tx tx; open TxBody txBody)
         {utxo : UTxO} where

  newTxid⇒disj : TxIdOf tx ∉ mapˢ proj₁ (dom utxo)
               → disjoint' (dom utxo) (dom (outs tx))
  newTxid⇒disj id∉utxo =
    disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
      (-, (case from ∈-map h' of λ where
            (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

  outs-disjoint : TxIdOf tx ∉ mapˢ proj₁ (dom utxo)
                → disjoint (dom (utxo ∣ SpendInputsOf tx ᶜ)) (dom (outs tx))
  outs-disjoint fresh =
    λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj fresh) $ to ∈-∩ (res-comp-domᵐ h₁ , h₂)
```

## Balance arithmetic

`balance`{.AgdaFunction} is the indexed sum of `txOutToValue`{.AgdaFunction} over the
UTxO map, so it is invariant under extensional equality of the underlying maps
(`balance-cong`{.AgdaFunction}), and — via `indexedSumᵐ-∪`{.AgdaFunction} —
additive on unions with disjoint domains (`balance-∪`{.AgdaFunction}).

```agda
module _ {utxo utxo' : UTxO} where

  balance-cong : ∣ utxo ∣ ≡ᵉ ∣ utxo' ∣ → balance utxo ≈ balance utxo'
  balance-cong eq =
    indexedSumᵐ-cong {M = Value} {x = (mapValues txOutToValue utxo) ᶠᵐ}
                     {(mapValues txOutToValue utxo') ᶠᵐ} (map-≡ᵉ eq)

  balance-cong-coin : ∣ utxo ∣ ≡ᵉ ∣ utxo' ∣ → cbalance utxo ≡ cbalance utxo'
  balance-cong-coin eq = ⟦⟧-cong coinIsMonoidHomomorphism (balance-cong eq)

  balance-∪ : disjoint (dom utxo) (dom utxo')
            → cbalance (utxo ∪ˡ utxo') ≡ cbalance utxo + cbalance utxo'
  balance-∪ h = begin
    cbalance (utxo ∪ˡ utxo')
      ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
       $ indexedSumᵐ-cong {f = proj₂}
           {x = (mapValues txOutToValue (utxo ∪ˡ utxo')) ᶠᵐ}
           {((mapValues txOutToValue utxo) ᶠᵐ) ∪ˡᶠ ((mapValues txOutToValue utxo') ᶠᵐ)}
           (disjoint-∪ˡ-mapValues {M = utxo} {utxo'} _ h) ⟩
    coin (indexedSumᵐ _ (((mapValues txOutToValue utxo) ᶠᵐ) ∪ˡᶠ ((mapValues txOutToValue utxo') ᶠᵐ)))
      ≡⟨ ⟦⟧-cong coinIsMonoidHomomorphism
       $ indexedSumᵐ-∪ {M = Value} {X = (mapValues txOutToValue utxo) ᶠᵐ}
           {(mapValues txOutToValue utxo') ᶠᵐ}
           (λ x x₁ → h (dom-mapʳ⊆ x) (dom-mapʳ⊆ x₁)) ⟩
    coin (balance utxo + balance utxo')
      ≡⟨ ∙-homo-Coin _ _ ⟩
    cbalance utxo + cbalance utxo'
      ∎
    where open ≡-Reasoning
```

Splitting a UTxO along a key set: restricting to a key set and to its
complement partitions the map, so the two restricted balances add up to the
whole.

```agda
split-balance : ∀ (u : UTxO) (keys : ℙ TxIn)
              → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys)
split-balance u keys = begin
  cbalance u
    ≡˘⟨ balance-cong-coin {utxo = (u ∣ keys ᶜ) ∪ˡ (u ∣ keys)} {u}
      $ disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)
        ≡ᵉ-∘ ∪-sym
        ≡ᵉ-∘ res-ex-∪ (_∈? keys) ⟩
  cbalance ((u ∣ keys ᶜ) ∪ˡ (u ∣ keys))
    ≡⟨ balance-∪ {u ∣ keys ᶜ} {u ∣ keys} $ flip res-ex-disjoint ⟩
  cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys)
    ∎
  where
  open ≡-Reasoning
  open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to infixl 4 _≡ᵉ-∘_)
```
