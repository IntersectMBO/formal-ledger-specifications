<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Utxo.Properties.GenMinSpend
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Prelude; open Equivalence
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All); open Properties
open import Data.List.Relation.Unary.All  using (All)
open import Ledger.Conway.Specification.Utxo txs abs
open import Data.Nat.Properties hiding (_≟_)

```
-->

## General Minimum Spending Condition

```agda
isRefundCert : DCert → Bool
isRefundCert (dereg c _) = true
isRefundCert (deregdrep c _) = true
isRefundCert _ = false

noRefundCert : List DCert → Type _
noRefundCert l = All (λ cert → isRefundCert cert ≡ false) l

opaque
  unfolding List-Model
  unfolding finiteness
  fin∘list[] : {A : Type} → proj₁ (finiteness{A = A} ∅) ≡ []
  fin∘list[] = refl
  fin∘list∷[] : {A : Type} {a : A} → proj₁ (finiteness ❴ a ❵) ≡ [ a ]
  fin∘list∷[] = refl

coin∅ : CoinOf{A = Deposits} ∅ ≡ 0
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

CoinOf-singleton : ((dp , c) : DepositPurpose × Coin) → indexedSumᵛ' id ❴ (dp , c) ❵ ≡ c
CoinOf-singleton _ = indexedSum-singleton' {A = DepositPurpose × Coin} {f = proj₂} (finiteness _)

module _ -- ASSUMPTION --
         (gc-hom : (d₁ d₂ : Deposits) → CoinOf (d₁ ∪⁺ d₂) ≡ CoinOf d₁ + CoinOf d₂)
  where
  ∪⁺singleton≡ : {deps : Deposits} {(dp , c) : DepositPurpose × Coin}
                 → CoinOf (deps ∪⁺ ❴ (dp , c) ❵ᵐ) ≡ CoinOf deps + c
  ∪⁺singleton≡ {deps} {(dp , c)} = begin
    CoinOf (deps ∪⁺ ❴ (dp , c) ❵)
      ≡⟨ gc-hom deps ❴ (dp , c) ❵ ⟩
    CoinOf deps + CoinOf{A = Deposits} ❴ (dp , c) ❵
      ≡⟨ cong (CoinOf deps +_) (CoinOf-singleton (dp , c)) ⟩
    CoinOf deps + c
      ∎
    where open Prelude.≡-Reasoning

  module _ {deposits : Deposits} {txid : TxId} {gaDep : Coin} where

    ≤updatePropDeps : (props : List GovProposal)
      → CoinOf deposits ≤ CoinOf (updateProposalDeposits props txid gaDep deposits)
    ≤updatePropDeps [] = ≤-reflexive refl
    ≤updatePropDeps (x ∷ props) = ≤-trans (≤updatePropDeps props)
                                          (≤-trans (m≤m+n _ _)
                                                   (≤-reflexive $ sym $ ∪⁺singleton≡))
    updatePropDeps≡ : (ps : List GovProposal)
      → CoinOf (updateProposalDeposits ps txid gaDep deposits) - CoinOf deposits ≡ (length ps) * gaDep
    updatePropDeps≡ [] = n∸n≡0 (CoinOf deposits)
    updatePropDeps≡ (_ ∷ ps) = let
      upD = updateProposalDeposits ps txid gaDep deposits in
      begin
        CoinOf (upD ∪⁺ ❴ GovActionDeposit (txid , length ps) , gaDep ❵ᵐ) ∸ CoinOf deposits
          ≡⟨ cong (_∸ CoinOf deposits) ∪⁺singleton≡ ⟩
        CoinOf upD + gaDep ∸ CoinOf deposits
          ≡⟨ +-∸-comm _ (≤updatePropDeps ps) ⟩
        (CoinOf upD ∸ CoinOf deposits) + gaDep
          ≡⟨ cong (_+ gaDep) (updatePropDeps≡ ps) ⟩
        (length ps) * gaDep + gaDep
          ≡⟨ +-comm ((length ps) * gaDep) gaDep ⟩
        gaDep + (length ps) * gaDep
          ∎
        where open Prelude.≡-Reasoning

  ≤certDeps  :  {d : Deposits} {(dp , c) : DepositPurpose × Coin}
             →  CoinOf d ≤ CoinOf (d ∪⁺ ❴ (dp , c) ❵)

  ≤certDeps {d} = begin
    CoinOf d                      ≤⟨ m≤m+n (CoinOf d) _ ⟩
    CoinOf d + _                  ≡⟨ sym ∪⁺singleton≡ ⟩
    CoinOf (d ∪⁺ ❴ _ ❵)           ∎
    where open ≤-Reasoning


  ≤updateCertDeps : (cs : List DCert) {pp : PParams} {deposits : Deposits}
    → noRefundCert cs
    → CoinOf deposits ≤ CoinOf (updateCertDeposits pp cs deposits)
  ≤updateCertDeps [] nrf = ≤-reflexive refl
  ≤updateCertDeps (reg c v ∷ cs) {pp} {deposits} (_ All.∷ nrf) =
    ≤-trans ≤certDeps (≤updateCertDeps cs {pp} {deposits ∪⁺ ❴ CredentialDeposit c , pp .PParams.keyDeposit ❵} nrf)
  ≤updateCertDeps (delegate c _ _ v ∷ cs) {pp} {deposits} (_ All.∷ nrf) =
    ≤-trans ≤certDeps (≤updateCertDeps cs {pp} {deposits ∪⁺ ❴ CredentialDeposit c , v ❵} nrf)
  ≤updateCertDeps (regpool _ _ ∷ cs)       (_ All.∷ nrf) = ≤-trans ≤certDeps (≤updateCertDeps cs nrf)
  ≤updateCertDeps (retirepool _ _ ∷ cs)    (_ All.∷ nrf) = ≤updateCertDeps cs nrf
  ≤updateCertDeps (regdrep _ _ _ ∷ cs)     (_ All.∷ nrf) = ≤-trans ≤certDeps (≤updateCertDeps cs nrf)
  ≤updateCertDeps (ccreghot _ _ ∷ cs)      (_ All.∷ nrf) = ≤updateCertDeps cs nrf
```

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
  gmsc :  let open Tx tx renaming (body to txb); open TxBody txb
              pp = UTxOEnv.pparams Γ; open PParams pp
              open UTxOState utxoState
                renaming (utxo to st; fees to fs; deposits to deps; donations to dons)
          in
    Γ ⊢  ⟦ st   , fs   , deps   , dons   ⟧ ⇀⦇ tx ,UTXO⦈
         ⟦ utxo'  , fees'  , deposits'  , donations'  ⟧

    → noRefundCert txCerts -- FINAL ASSUMPTION --

       -------------------------------------------------------------------
    →  coin (consumed pp utxoState txb) ≥ length txGovProposals * govActionDeposit

  gmsc step@(UTXO-inductive⋯ tx Γ utxoState _ _ _ _ _ _ c≡p cmint≡0 _ _ _ _ _ _ _ _ _ _) nrf =
    begin
    length txGovProposals * govActionDeposit
      ≡˘⟨ updatePropDeps≡ txGovProposals ⟩
    CoinOf (updateProposalDeposits txGovProposals txId govActionDeposit deps) ∸ CoinOf deps
      ≤⟨ ∸-monoˡ-≤ (CoinOf deps) (≤updateCertDeps txCerts nrf) ⟩
    CoinOf (updateDeposits pp txb deps) - CoinOf deps
      ≡⟨ ∸≡posPart⊖ {CoinOf (updateDeposits pp txb deps)} {CoinOf deps} ⟩
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
    wdrls = CoinOf txWithdrawals

    balIn balOut : Value
    balIn = balance (st ∣ txIns)
    balOut = balance (outs txb)
```


