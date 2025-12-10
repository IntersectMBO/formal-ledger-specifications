<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Core.Specification.Transaction

module Ledger.Conway.Specification.Utxo.Properties.GenMinSpend
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.List.Relation.Unary.All  using (All)
open import Data.Nat.Properties hiding (_≟_)

open import Prelude
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All)

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Transaction txs abs
open import Ledger.Conway.Specification.Utxo txs abs

open Equivalence
open Properties
```
-->

## General Minimum Spending Condition

### Helper Functions and Lemmas

```agda
isRefundCert : DCert → Bool
isRefundCert (dereg c _)      = true
isRefundCert (deregdrep c _)  = true
isRefundCert _                = false

noRefundCert : List DCert → Type _
noRefundCert l = All (λ cert → isRefundCert cert ≡ false) l
```

<!--
```agda
opaque
  unfolding List-Model
  unfolding finiteness
  fin∘list[] : {A : Type} → proj₁ (finiteness{A = A} ∅) ≡ []
  fin∘list[] = refl
  fin∘list∷[] : {A : Type} {a : A} → proj₁ (finiteness ❴ a ❵) ≡ [ a ]
  fin∘list∷[] = refl
```
-->

```agda
coin∅ : getCoin{A = Deposits} ∅ ≡ 0
```

(For proof this and other results on this page, click the "Show more Agda" button above.)

<!--
```agda
coin∅ = begin
  foldr (λ x → (proj₂ x) +_) 0 (deduplicate _≟_ (proj₁ (finiteness ∅)))
    ≡⟨ cong (λ u → (foldr (λ x → (proj₂ x) +_) 0 (deduplicate _≟_ u))) fin∘list[] ⟩
  foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0 (deduplicate _≟_ [])
    ≡⟨ cong (λ u → (foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0  u))
            {x = deduplicate _≟_ []} {y = []} refl ⟩
  foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0 []
    ≡⟨ refl ⟩
  0 ∎
  where open Prelude.≡-Reasoning
```
-->

```agda
getCoin-singleton : ((dp , c) : DepositPurpose × Coin) → indexedSumᵛ' id ❴ (dp , c) ❵ ≡ c
getCoin-singleton _ = indexedSum-singleton' {A = DepositPurpose × Coin} {f = proj₂} (finiteness _)

module _

  -- !!! ASSUMPTION !!! --
  (gc-hom : (d₁ d₂ : Deposits) → getCoin (d₁ ∪⁺ d₂) ≡ getCoin d₁ + getCoin d₂)

  where

  ∪⁺singleton≡ : {deps : Deposits} {(dp , c) : DepositPurpose × Coin}
    → getCoin (deps ∪⁺ ❴ (dp , c) ❵ᵐ) ≡ getCoin deps + c
```

<!--
```agda
  ∪⁺singleton≡ {deps} {(dp , c)} = begin
    getCoin (deps ∪⁺ ❴ (dp , c) ❵)
      ≡⟨ gc-hom deps ❴ (dp , c) ❵ ⟩
    getCoin deps + getCoin{A = Deposits} ❴ (dp , c) ❵
      ≡⟨ cong (getCoin deps +_) (getCoin-singleton (dp , c)) ⟩
    getCoin deps + c
      ∎
    where open Prelude.≡-Reasoning

  module _ {deposits : Deposits} {txid : TxId} {gaDep : Coin} where
```
-->

```agda
    ≤updatePropDeps : (props : List GovProposal)
      → getCoin deposits ≤ getCoin (updateProposalDeposits props txid gaDep deposits)
```

<!--
```agda
    ≤updatePropDeps [] = ≤-reflexive refl
    ≤updatePropDeps (x ∷ props) = ≤-trans (≤updatePropDeps props)
                                          (≤-trans (m≤m+n _ _)
                                                   (≤-reflexive $ sym $ ∪⁺singleton≡))
    updatePropDeps≡ : (ps : List GovProposal)
      → getCoin (updateProposalDeposits ps txid gaDep deposits) - getCoin deposits ≡ (length ps) * gaDep
    updatePropDeps≡ [] = n∸n≡0 (getCoin deposits)
    updatePropDeps≡ (_ ∷ ps) = let
      upD = updateProposalDeposits ps txid gaDep deposits in
      begin
        getCoin (upD ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵ᵐ) ∸ getCoin deposits
          ≡⟨ cong (_∸ getCoin deposits) ∪⁺singleton≡ ⟩
        getCoin upD + gaDep ∸ getCoin deposits
          ≡⟨ +-∸-comm _ (≤updatePropDeps ps) ⟩
        (getCoin upD ∸ getCoin deposits) + gaDep
          ≡⟨ cong (_+ gaDep) (updatePropDeps≡ ps) ⟩
        (length ps) * gaDep + gaDep
          ≡⟨ +-comm ((length ps) * gaDep) gaDep ⟩
        gaDep + (length ps) * gaDep
          ∎
        where open Prelude.≡-Reasoning
```
-->

```agda
  ≤certDeps : {d : Deposits} {(dp , c) : DepositPurpose × Coin}
    → getCoin d ≤ getCoin (d ∪⁺ ❴ (dp , c) ❵)
```

<!--
```agda
  ≤certDeps {d} = begin
    getCoin d             ≤⟨ m≤m+n (getCoin d) _ ⟩
    getCoin d + _         ≡⟨ sym ∪⁺singleton≡ ⟩
    getCoin (d ∪⁺ ❴ _ ❵)  ∎
    where open ≤-Reasoning
```
-->


```agda
  ≤certDeps∪ˡ : {d : Deposits} {(dp , c) : DepositPurpose × Coin}
    → getCoin d ≤ getCoin (d ∪ˡ ❴ (dp , c) ❵)
```

<!--
```agda
  ≤certDeps∪ˡ {d} {dp , c} with dp ∈? dom d
  ... | yes dp∈ =
      from ≤⇔<∨≈ $ inj₂ $
        indexedSumᵛ'-cong {C = Coin} {x = d} {y = d ∪ˡ ❴ dp , c ❵} $
        begin
          d ˢ ≈⟨ ≡ᵉ.sym $ singleton-∈-∪ˡ {m = d} dp∈ ⟩
          (d ∪ˡ ❴ (dp , c) ❵) ˢ
        ∎
    where
      open import Relation.Binary.Structures using (IsEquivalence; IsPreorder)
      open import Relation.Binary.Reasoning.Setoid (≡ᵉ-Setoid {A = DepositPurpose × Coin})
      module ≡ᵉ = IsEquivalence ≡ᵉ-isEquivalence

  ... | no ¬p = begin
      getCoin d
        ≤⟨ m≤m+n (getCoin d) _ ⟩
      getCoin d + _
        ≡˘⟨ indexedSumᵐ-∪ {X = d ᶠᵐ} {Y = ❴ dp , c ❵ ᶠᵐ} {f = proj₂} (disjoint-sing ¬p) ⟩
      indexedSumᵐ proj₂ ((d ᶠᵐ) ∪ˡᶠ (❴ dp , c ❵ ᶠᵐ))
        ≡˘⟨ indexedSumᵐ-cong {f = proj₂} {x = (d ∪ˡ ❴ dp , c ❵) ᶠᵐ} {y = (d ᶠᵐ) ∪ˡᶠ (❴ dp , c ❵ ᶠᵐ)} ≡ᵉ.refl ⟩
      getCoin (d ∪ˡ ❴ dp , c ❵)
        ∎
    where
      open ≤-Reasoning
      open import Relation.Binary.Structures using (IsEquivalence)
      module ≡ᵉ = IsEquivalence ≡ᵉ-isEquivalence

      disjoint-sing : dp ∉ dom d → disjoint (dom d) (dom ❴ dp , c ❵ˢ)
      disjoint-sing dp∉d a∈d a∈sing
        rewrite from ∈-dom-singleton-pair a∈sing = dp∉d a∈d

  ≤updateCertDeps : (cs : List DCert) {pp : PParams} {deposits : Deposits}
    → noRefundCert cs
    → getCoin deposits ≤ getCoin (updateCertDeposits pp cs deposits)
  ≤updateCertDeps [] nrf = ≤-reflexive refl
  ≤updateCertDeps (reg c v ∷ cs) {pp} {deposits} (_ All.∷ nrf) =
    ≤-trans ≤certDeps (≤updateCertDeps cs {pp} {deposits ∪⁺ ❴ CredentialDeposit c , pp .PParams.keyDeposit ❵} nrf)
  ≤updateCertDeps (delegate c _ _ v ∷ cs) {pp} {deposits} (_ All.∷ nrf) =
    ≤-trans ≤certDeps (≤updateCertDeps cs {pp} {deposits ∪⁺ ❴ CredentialDeposit c , v ❵} nrf)
  ≤updateCertDeps (regpool _ _ ∷ cs) {_} {deposits} (_ All.∷ nrf) =
    ≤-trans (≤certDeps∪ˡ {d = deposits}) (≤updateCertDeps cs nrf)
  ≤updateCertDeps (retirepool _ _ ∷ cs)    (_ All.∷ nrf) = ≤updateCertDeps cs nrf
  ≤updateCertDeps (regdrep _ _ _ ∷ cs)     (_ All.∷ nrf) = ≤-trans ≤certDeps (≤updateCertDeps cs nrf)
  ≤updateCertDeps (ccreghot _ _ ∷ cs)      (_ All.∷ nrf) = ≤updateCertDeps cs nrf
```
-->

### Main Theorem: General Minimum Spending Condition

<!--
```agda
  private variable
    tx                    : Tx
    utxo utxo'            : UTxO
    Γ                     : UTxOEnv
    fees fees'            : Fees
    utxoState             : UTxOState
    donations donations'  : Donations
    deposits deposits'    : Deposits
```
-->

```agda
  gmsc :
```

<!--
```agda
    let  open Tx tx renaming (body to txb); open TxBody txb
         pp = UTxOEnv.pparams Γ; open PParams pp
         open UTxOState utxoState
           renaming (utxo to st; fees to fs; deposits to deps; donations to dons)
    in
```
-->

```agda
    Γ ⊢  ⟦ st   , fs   , deps   , dons   ⟧ ⇀⦇ tx ,UTXO⦈
         ⟦ utxo'  , fees'  , deposits'  , donations'  ⟧

    → noRefundCert txCerts -- FINAL ASSUMPTION --

       -------------------------------------------------------------------
    →  coin (consumed pp utxoState txb) ≥ length txGovProposals * govActionDeposit
```

<!--
```agda
  gmsc step@(UTXO-inductive⋯ tx Γ utxoState _ _ _ _ _ _ c≡p cmint≡0 _ _ _ _ _ _ _ _ _ _) nrf =
    begin
    length txGovProposals * govActionDeposit
      ≡˘⟨ updatePropDeps≡ txGovProposals ⟩
    getCoin (updateProposalDeposits txGovProposals txId govActionDeposit deps) ∸ getCoin deps
      ≤⟨ ∸-monoˡ-≤ (getCoin deps) (≤updateCertDeps txCerts nrf) ⟩
    getCoin (updateDeposits pp txb deps) - getCoin deps
      ≡⟨ ∸≡posPart⊖ {getCoin (updateDeposits pp txb deps)} {getCoin deps} ⟩
    newDeps
      ≤⟨ m≤n+m newDeps (coin balOut + txFee + txDonation) ⟩
    coin balOut + txFee + txDonation + newDeps
      ≡⟨ +-assoc (coin balOut + txFee) txDonation newDeps ⟩
    coin balOut + txFee + (txDonation + newDeps)
      ≡⟨ cong (coin balOut + txFee +_) (+-comm txDonation newDeps) ⟩
    coin balOut + txFee + (newDeps + txDonation)
      ≡˘⟨ +-assoc (coin balOut + txFee) newDeps txDonation ⟩
    coin balOut + txFee + newDeps + txDonation
      ≡˘⟨ cong (λ x → x + newDeps + txDonation) coin-inject-lemma ⟩
    coin (balOut + inject txFee) + newDeps + txDonation
      ≡˘⟨ cong (_+ txDonation) coin-inject-lemma ⟩
    coin (balOut + inject txFee + inject newDeps) + txDonation
      ≡˘⟨ coin-inject-lemma ⟩
    coin (balOut + inject txFee + inject newDeps + inject txDonation)
      ≡˘⟨ cong coin c≡p ⟩
    coin (balIn + mint + inject refunds + inject wdrls) ∎
    where
    open ≤-Reasoning
    pp : PParams
    pp = UTxOEnv.pparams Γ; open PParams pp
    open Tx tx renaming (body to txb); open TxBody txb
    open UTxOState utxoState renaming (utxo to st; fees to fs; deposits to deps; donations to dons)

    newDeps refunds wdrls : Coin
    newDeps = newDeposits pp utxoState txb
    refunds = depositRefunds pp utxoState txb
    wdrls = getCoin txWithdrawals

    balIn balOut : Value
    balIn = balance (st ∣ txIns)
    balOut = balance (outs txb)
```
-->
