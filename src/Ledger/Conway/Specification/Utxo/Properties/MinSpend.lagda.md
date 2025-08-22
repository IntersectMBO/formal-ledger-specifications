<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Utxo.Properties.MinSpend
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All)
open import Ledger.Conway.Specification.Properties txs abs using (validTxIn₂)
open import Ledger.Conway.Specification.Utxo txs abs

open import Data.List.Relation.Unary.All  using (All)
open import Data.Nat.Properties           hiding (_≟_)

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

coin∅ : getCoin{A = DepositPurpose ⇀ Coin} ∅ ≡ 0
coin∅ = begin
  foldr (λ x → (proj₂ x) +_) 0 (deduplicate _≟_ (proj₁ (finiteness ∅)))
    ≡⟨ cong (λ u → (foldr (λ x → (proj₂ x) +_) 0 (deduplicate _≟_ u))) fin∘list[] ⟩
  foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0 (deduplicate _≟_ [])
    ≡⟨ cong (λ u → (foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0  u))
            {x = deduplicate _≟_ []} {y = []} refl ⟩
  foldr (λ (x : DepositPurpose × Coin) → (proj₂ x) +_) 0 []
    ≡⟨ refl ⟩
  0 ∎
  where open ≡-Reasoning

getCoin-singleton : ((dp , c) : DepositPurpose × Coin) → indexedSumᵛ' id ❴ (dp , c) ❵ ≡ c
getCoin-singleton _ = indexedSum-singleton' {A = DepositPurpose × Coin} {f = proj₂} (finiteness _)

module _ -- ASSUMPTION --
         (gc-hom : (d₁ d₂ : DepositPurpose ⇀ Coin) → getCoin (d₁ ∪⁺ d₂) ≡ getCoin d₁ + getCoin d₂)
  where

  ∪⁺singleton≡ : {deps : DepositPurpose ⇀ Coin} {(dp , c) : DepositPurpose × Coin}
                 → getCoin (deps ∪⁺ ❴ (dp , c) ❵ᵐ) ≡ getCoin deps + c
  ∪⁺singleton≡ {deps} {(dp , c)} = begin
    getCoin (deps ∪⁺ ❴ (dp , c) ❵)
      ≡⟨ gc-hom deps ❴ (dp , c) ❵ ⟩
    getCoin deps + getCoin{A = DepositPurpose ⇀ Coin} ❴ (dp , c) ❵
      ≡⟨ cong (getCoin deps +_) (getCoin-singleton (dp , c)) ⟩
    getCoin deps + c
      ∎
    where open ≡-Reasoning

  module _ {deposits : DepositPurpose ⇀ Coin} {txid : TxId} {gaDep : Coin} where

    ≤updatePropDeps : (props : List GovProposal)
      → getCoin deposits ≤ getCoin (updateProposalDeposits props txid gaDep deposits)
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
        where open ≡-Reasoning

  ≤certDeps  :  {d : DepositPurpose ⇀ Coin} {(dp , c) : DepositPurpose × Coin}
             →  getCoin d ≤ getCoin (d ∪⁺ ❴ (dp , c) ❵)

  ≤certDeps {d} = begin
    getCoin d                      ≤⟨ m≤m+n (getCoin d) _ ⟩
    getCoin d + _                  ≡⟨ sym ∪⁺singleton≡ ⟩
    getCoin (d ∪⁺ ❴ _ ❵)           ∎
    where open ≤-Reasoning


  ≤updateCertDeps : (cs : List DCert) {pp : PParams} {deposits :  DepositPurpose ⇀ Coin}
    → noRefundCert cs
    → getCoin deposits ≤ getCoin (updateCertDeposits pp cs deposits)
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
-->


<a id="thm:minspend"></a>
**Theorem (general spend lower bound)**.

*Informally*.

Let `tx`{.AgdaBound} : `Tx`{.AgdaRecord} be a valid transaction and let
`txCerts`{.AgdaFunction} be its list of `DCert`{.AgdaDatatype}s.  Denote
by `noRefundCert`{.AgdaFunction} `txCerts`{.AgdaFunction} the assertion that no
element in `txCerts`{.AgdaFunction} is one of the two refund types (i.e., an
element of `l`{.AgdaBound} is neither a `dereg`{.AgdaInductiveConstructor} nor a
`deregdrep`{.AgdaInductiveConstructor}).  Let `s`{.AgdaBound},
`s'`{.AgdaBound} : `UTxOState`{.AgdaRecord} be two UTxO states.
If `s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,UTXO⦈`{.AgdaDatatype} `s'`{.AgdaBound} and
if `noRefundCert`{.AgdaFunction} `txCerts`{.AgdaFunction}, then the coin consumed by
`tx`{.AgdaBound} is at least the sum of the governance action deposits of the
proposals in `tx`{.AgdaBound}.

*Formally*.

<!--
```agda
  module _ {Γ : UTxOEnv} where
    module Γ = UTxOEnv Γ
```
-->

```agda
    utxoMinSpend : {tx : Tx} {s s' : UTxOState}
      → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
      → noRefundCert (DCertsOf tx)
      → coin (consumed _ s (TxBodyOf tx)) ≥ length (GovProposalsOf tx) * Γ.govActionDeposit
```

*Proof*.

```agda
    utxoMinSpend step@(UTXO-inductive⋯ tx Γ utxoSt _ _ _ _ _ _ c≡p cmint≡0 _ _ _ _ _ _ _ _ _ _) nrf =
      begin
      length txGovProposals * Γ.govActionDeposit
        ≡˘⟨ updatePropDeps≡ txGovProposals ⟩
      getCoin (updateProposalDeposits txGovProposals txId (Γ.govActionDeposit) deposits) ∸ getCoin deposits
        ≤⟨ ∸-monoˡ-≤ (getCoin deposits) (≤updateCertDeps txCerts nrf) ⟩
      getCoin (updateDeposits (PParamsOf Γ) txb deposits) - getCoin deposits
        ≡⟨ ∸≡posPart⊖ {getCoin (updateDeposits (PParamsOf Γ) txb deposits)} {getCoin deposits} ⟩
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
      open Tx tx renaming (body to txb); open TxBody txb
      open UTxOState utxoSt

      newDeps refunds wdrls : Coin
      newDeps = newDeposits (PParamsOf Γ) utxoSt txb
      refunds = depositRefunds (PParamsOf Γ) utxoSt txb
      wdrls = getCoin (WithdrawalsOf tx)

      balIn balOut : Value
      balIn = balance (utxo ∣ txIns)
      balOut = balance (outs txb)
```


<a id="thm:spend-lower-bound"></a>
**Theorem (spend lower bound for proposals)**.

*Preliminary remarks*.

1.  Define `noRefundCert`{.AgdaFunction} `l`{.AgdaBound} and
    `pp`{.AgdaBound} as in the "min spend" theorem above.

2.  Given a ledger state `ls`{.AgdaBound} and a transaction
    `tx`{.AgdaBound}, denote by
    `validTxIn₂`{.AgdaFunction} `tx`{.AgdaBound} the assertion that there exists
    ledger state
    `ls'`{.AgdaBound} such that `ls`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,LEDGER⦈`{.AgdaDatatype} `ls'`{.AgdaBound}.

3.  Assume the following additive property of the `∪⁺`{.AgdaFunction} operator holds: 

<!--
```agda

module _
    ( indexedSum-∪⁺-hom :  {A V : Type}
                           ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq V ⦄
                           ⦃ _ : CommutativeMonoid 0ℓ 0ℓ V ⦄
                           (d₁ d₂ : A ⇀ V)
       →
```
-->

```agda

                           ∑[ x ← d₁ ∪⁺ d₂ ] x ≡ ∑[ x ← d₁ ] x ◇ ∑[ x ← d₂ ] x
```
<!--
```agda

    )
  where
  open import Ledger.Conway.Specification.Utxow txs abs
  open ChainState; open NewEpochState; open EpochState
  open LState; open EnactState;  open PParams
```
-->

*Informally*.

Let `tx`{.AgdaBound} : `Tx`{.AgdaRecord} be a valid transaction and let
`cs`{.AgdaBound} : `ChainState`{.AgdaRecord} be a  chain state. If the condition
`validTxIn₂`{.AgdaFunction} `tx`{.AgdaBound} (described above) holds, then the coin
consumed by `tx`{.AgdaBound} is at least the sum of the governance action deposits
of the proposals in `tx`{.AgdaBound}.

*Formally*.

```agda
  propose-minSpend :  {slot : Slot} {tx : Tx} {cs : ChainState}
                      ( let  pp      = PParamsOf cs
                             utxoSt  = UTxOStateOf cs )
```

<!--
```agda

    ( open Tx tx )
    ( open TxBody body )
```
-->

```agda
    → noRefundCert txCerts
    → validTxIn₂ cs slot tx
    → coin (consumed pp utxoSt body) ≥ length txGovProposals * pp .govActionDeposit
```


*Proof*.

```agda
  propose-minSpend noRef valid = case valid of λ where
    (_ , LEDGER-V (_ , UTXOW⇒UTXO x , _ , _)) → utxoMinSpend indexedSum-∪⁺-hom x noRef
    (_ , LEDGER-I (_ , UTXOW⇒UTXO x))         → utxoMinSpend indexedSum-∪⁺-hom x noRef
```

