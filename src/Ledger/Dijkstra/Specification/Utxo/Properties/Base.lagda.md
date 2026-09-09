---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/Base.lagda.md
---

# UTxO Properties: basic lemmas

This module collects some algebraic properties used in the preservation-of-value
proofs in `Utxo.Properties.PoV`{.AgdaModule} and
`Utxow.Properties.PoV`{.AgdaModule}.  The lemmas proved are the following:

+  `∙-homo-Coin`{.AgdaFunction}.  `coin`{.AgdaField} distributes over
   `Value`{.AgdaField} addition.

+  `coin-∑ˡ`{.AgdaFunction}.  `coin`{.AgdaField} distributes over a list-indexed
   sum of `Value`{.AgdaField}s.

+  `newTxid⇒disj`{.AgdaFunction} / `outs-disjoint`{.AgdaFunction}.  If the id of a
   transaction `tx` does not occur in `utxo`, then neither do the outputs of `tx`.

+  `balance-cong`{.AgdaFunction} / `balance-cong-coin`{.AgdaFunction}.
   `balance`{.AgdaFunction} is invariant under extensional equality of UTxOs.
   That is, if two UTxOs are equal as sets, then their coin balances are equal as
   well.

+  `balance-∪`{.AgdaFunction}. `cbalance`{.AgdaFunction} is additive on disjoint
   unions.

+  `split-balance`{.AgdaFunction}.  `cbalance`{.AgdaFunction} splits along a
   key-set restriction and its complement.

+  `_AgreesWith_`{.AgdaFunction} / `agrees-cbalance`{.AgdaFunction} /
   `agrees-step`{.AgdaFunction} / `fresh-step`{.AgdaFunction}.  The two facts
   about the running UTxO of a batch, agreement with the pre-batch snapshot and
   freshness of the pending transaction ids, are preserved by a step, and
   agreement makes a spent balance the same whether resolved against the running
   UTxO or the snapshot.

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

open import Algebra.Morphism using (module MonoidMorphisms)
open import Relation.Binary using (IsEquivalence)

open MonoidMorphisms.IsMonoidHomomorphism

private variable
  ℓ : TxLevel
  A : Type
```
-->

## <span class="AlgebraFunction">∙-homo-Coin</span> and <span class="AlgebraFunction">coin-∑ˡ`</span>

`coin`{.AgdaField} is a monoid homomorphism from `Value`{.AgdaField} (under `+ᵛ`/`ε`)
to `ℕ`{.AgdaDatatype} (under `+`/`0`).

```agda
∙-homo-Coin : (x y : Value) → coin (x + y) ≡ coin x + coin y
∙-homo-Coin = homo coinIsMonoidHomomorphism
```

Consequently, `coin`{.AgdaField} distributes over a list-indexed sum.

```agda
coin-∑ˡ : (f : A → Value) (xs : List A) → coin (∑ˡ[ x ← xs ] f x) ≡ sum (map (coin ∘ f) xs)
coin-∑ˡ f [] = ε-homo coinIsMonoidHomomorphism
coin-∑ˡ f (x ∷ xs) = trans  (∙-homo-Coin (f x) (∑ˡ[ z ← xs ] f z))
                            (cong (coin (f x) +_) (coin-∑ˡ f xs))
```

## Freshness ⇒ disjointness

If the id of a transaction `tx` does not occur in `utxo`, then the outputs of `tx`
(whose keys all have first component `TxIdOf tx`) are disjoint from `utxo`.

```agda
module _
  (tx : Tx ℓ)
  {utxo : UTxO}
  (id∉utxo : TxIdOf tx ∉ mapˢ proj₁ (dom utxo))
  where

  newTxid⇒disj : disjoint' (dom utxo) (dom (outs tx))
  newTxid⇒disj = disjoint⇒disjoint' disj-utxo-txouts
    where
    witness : {a : TxIn} → a ∈ dom utxo → a ∈ dom (outs tx)
      → Σ[ a' ∈ TxIn ] TxIdOf tx ≡ proj₁ a' × a' ∈ dom utxo
    witness {a} h h' = case from ∈-map h' of λ where
      (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → (a , refl , h)

    disj-utxo-txouts : disjoint (dom utxo) (dom (outs tx))
    disj-utxo-txouts h h' = id∉utxo $ to ∈-map (witness h h')
```

A weaker result, `outs-disjoint`{.AgdaFunction}, is the form used in the PoV
proofs; it involves the restriction `utxo ∣ SpendInputsOf tx ᶜ`, which only
shrinks the domain, so the disjointness with `outs tx` persists, *a fortiori*.

```agda
  outs-disjoint : disjoint (dom (utxo ∣ SpendInputsOf tx ᶜ)) (dom (outs tx))
  outs-disjoint h h' = ∉-∅ $ proj₁ newTxid⇒disj $ to ∈-∩ (res-comp-domᵐ h , h')
```

## Balance arithmetic

`balance`{.AgdaFunction} is the indexed sum of `txOutToValue`{.AgdaFunction} over
the UTxO map, so it is invariant under extensional equality of the underlying maps.

```agda
module _ (utxo utxo' : UTxO) where

  balance-cong : utxo ˢ ≡ᵉ utxo' ˢ → balance utxo ≈ balance utxo'
  balance-cong eq =
    indexedSumᵐ-cong {M = Value} {x = (mapValues txOutToValue utxo) ᶠᵐ}
      {(mapValues txOutToValue utxo') ᶠᵐ} (map-≡ᵉ eq)

  balance-cong-coin : utxo ˢ ≡ᵉ utxo' ˢ → cbalance utxo ≡ cbalance utxo'
  balance-cong-coin eq = ⟦⟧-cong coinIsMonoidHomomorphism (balance-cong eq)
```

`cbalance`{.AgdaFunction} (the "coin value" of `balance`{.AgdaFunction}) is
additive over disjoint unions.

```agda
  balance-∪ : disjoint (dom utxo) (dom utxo')
    → cbalance (utxo ∪ˡ utxo') ≡ cbalance utxo + cbalance utxo'
  balance-∪ h = begin
    cbalance (utxo ∪ˡ utxo')             ≡⟨ i ⟩
    coin (indexedSumᵐ proj₂ vals-union)  ≡⟨ ii ⟩
    coin (balance utxo + balance utxo')  ≡⟨ ∙-homo-Coin _ _ ⟩
    cbalance utxo + cbalance utxo'       ∎
    where
    open ≡-Reasoning
    vals-union : FinMap TxIn Value
    vals-union = (mapValues txOutToValue utxo ᶠᵐ) ∪ˡᶠ (mapValues txOutToValue utxo' ᶠᵐ)

    i :  cbalance (utxo ∪ˡ utxo') ≡ coin (indexedSumᵐ proj₂ vals-union)
    i =  ⟦⟧-cong coinIsMonoidHomomorphism
         $ indexedSumᵐ-cong {f = proj₂} {x = mapValues txOutToValue (utxo ∪ˡ utxo') ᶠᵐ}
           {vals-union} (disjoint-∪ˡ-mapValues {M = utxo} {utxo'} txOutToValue h)

    ii : coin (indexedSumᵐ proj₂ vals-union) ≡ coin (balance utxo + balance utxo')
    ii =  ⟦⟧-cong coinIsMonoidHomomorphism
          $ indexedSumᵐ-∪ {M = Value} {X = mapValues txOutToValue utxo ᶠᵐ}
            {(mapValues txOutToValue utxo') ᶠᵐ} (λ x x₁ → h (dom-mapʳ⊆ x) (dom-mapʳ⊆ x₁))
```

## Splitting a UTxO along a key set

Restricting to a key set and to its complement partitions the map, so the two restricted balances add up to the whole.

```agda
split-balance : (u : UTxO) (keys : ℙ TxIn)
  → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys)
split-balance u keys =
  begin
  cbalance u                                   ≡˘⟨ cbal-split-≡  ⟩
  cbalance (u ∣ keys ᶜ ∪ˡ u ∣ keys)            ≡⟨  balance-∪ (u ∣ keys ᶜ) (u ∣ keys)
                                                   $ flip res-ex-disjoint ⟩
  cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys)  ∎
  where
  open ≡-Reasoning
  open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to infixl 4 _≡ᵉ-∘_)

  cbal-split-≡ : cbalance ((u ∣ keys ᶜ) ∪ˡ (u ∣ keys)) ≡ cbalance u
  cbal-split-≡ =  balance-cong-coin ((u ∣ keys ᶜ) ∪ˡ (u ∣ keys)) u
                  $ disjoint-∪ˡ-∪  (disjoint-sym res-ex-disjoint)
                                   ≡ᵉ-∘ ∪-sym ≡ᵉ-∘ res-ex-∪ (_∈? keys)
```

## The running UTxO of a batch

Within a batch the UTxO is stepped once per transaction; a step removes the
transaction's spend inputs and adds its outputs, keyed by its id.  Two facts
about the running UTxO carry the preservation-of-value argument across the
batch, and this section proves that a step preserves both.

+  **Agreement**.  The running UTxO agrees with the pre-batch snapshot on the
   snapshot's keys, so a spent balance may be resolved against either.
+  **Freshness**.  The id of a transaction not yet applied does not occur in the
   running UTxO, so its outputs land on fresh keys.

A UTxO `u` *agrees with* `u₀` when every entry of `u` whose key `u₀` also holds
is an entry of `u₀`; since both are maps, this is agreement on the common keys.

```agda
_AgreesWith_ : UTxO → UTxO → Type
u AgreesWith u₀ = ∀ {i : TxIn} {o : TxOut} → (i , o) ∈ u → i ∈ dom u₀ → (i , o) ∈ u₀

agrees-refl : (u : UTxO) → u AgreesWith u
agrees-refl _ h _ = h
```

On a key set that both UTxOs hold, agreement makes the two restrictions equal as
sets, hence their balances equal.

```agda
module _ (u₀ u : UTxO) (agree : u AgreesWith u₀) {S : ℙ TxIn}
  (S⊆u₀ : S ⊆ dom u₀) (S⊆u : S ⊆ dom u)
  where

  agrees-res : (u ∣ S) ˢ ≡ᵉ (u₀ ∣ S) ˢ
  agrees-res = u⊆u₀ , u₀⊆u
    where
    u⊆u₀ : (u ∣ S) ˢ ⊆ (u₀ ∣ S) ˢ
    u⊆u₀ h = case to ∈-res h of λ where
      (io∈u , i∈S) → from ∈-res (agree io∈u (S⊆u₀ i∈S) , i∈S)

    u₀⊆u : (u₀ ∣ S) ˢ ⊆ (u ∣ S) ˢ
    u₀⊆u {i , o} h = case to ∈-res h of λ where
      (io∈u₀ , i∈S) → case from dom∈ (S⊆u i∈S) of λ where
        (o' , io'∈u) → from ∈-res
          (subst (λ v → (i , v) ∈ u) (proj₂ u₀ (agree io'∈u (S⊆u₀ i∈S)) io∈u₀) io'∈u , i∈S)

  agrees-cbalance : cbalance (u ∣ S) ≡ cbalance (u₀ ∣ S)
  agrees-cbalance = balance-cong-coin (u ∣ S) (u₀ ∣ S) agrees-res
```

A step spends the key set `S` and adds `outs t`, so every entry of the stepped
UTxO is an old entry or carries the id of `t`.  Agreement survives because the
old entries agree and the new keys lie outside the snapshot when the id of `t`
is fresh there; freshness of another id survives because the new keys all carry
the id of `t`.

```agda
module _ (t : Tx ℓ) (u : UTxO) (S : ℙ TxIn) where

  ∈-step : {i : TxIn} {o : TxOut}
    → (i , o) ∈ (u ∣ S ᶜ) ∪ˡ outs t → (i , o) ∈ u ⊎ proj₁ i ≡ TxIdOf t
  ∈-step h = case from ∈-∪ h of λ where
    (inj₁ h₁) → inj₁ (ex-⊆ h₁)
    (inj₂ h₂) → inj₂ (case from ∈-filter h₂ of λ where
      (_ , h₃) → case from ∈-map h₃ of λ where (_ , refl , _) → refl)

  agrees-step : (u₀ : UTxO) → TxIdOf t ∉ mapˢ proj₁ (dom u₀)
    → u AgreesWith u₀ → ((u ∣ S ᶜ) ∪ˡ outs t) AgreesWith u₀
  agrees-step u₀ fresh agree io∈u' i∈u₀ = case ∈-step io∈u' of λ where
    (inj₁ io∈u) → agree io∈u i∈u₀
    (inj₂ eq)   → ⊥-elim (fresh (subst (_∈ mapˢ proj₁ (dom u₀)) eq (∈-map′ i∈u₀)))

  fresh-step : {tid : TxId} → tid ∉ mapˢ proj₁ (dom u) → tid ≢ TxIdOf t
    → tid ∉ mapˢ proj₁ (dom ((u ∣ S ᶜ) ∪ˡ outs t))
  fresh-step tid∉u tid≢t tid∈u' = case from ∈-map tid∈u' of λ where
    (i , refl , i∈u') → case from dom∈ i∈u' of λ where
      (o , io∈u') → case ∈-step io∈u' of λ where
        (inj₁ io∈u) → tid∉u (∈-map′ (to dom∈ (o , io∈u)))
        (inj₂ eq)   → tid≢t eq
```
