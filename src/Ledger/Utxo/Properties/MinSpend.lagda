\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All)
open import Ledger.Abstract
open import Ledger.Transaction
import Ledger.Certs

module Ledger.Utxo.Properties.MinSpend
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Chain txs abs
open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Enact govStructure
open import Ledger.Utxo txs abs
open import Ledger.Properties txs abs using (validTxIn₂)

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
\end{code}

In the next two properties, if \ab{l} is a list of certificates (\DCert{}s), then
\AgdaFunction{noRefundCert}~\ab{l} denotes the assertion that no element in \ab{l} is
one of the two refund types (i.e., an element of \ab{l} is neither a \dereg{} nor a
\deregdrep{}).

\begin{property}[%
  \LedgerMod{Utxo/Properties/MinSpend.lagda}{\AgdaModule{MinSpend}}:
  \textbf{general spend lower bound};
  \textbf{proved}%
]\

\begin{AgdaMultiCode}
\begin{code}[hide]
  gmsc : 
\end{code}
\noindent Assume
\begin{code}
    { Γ        : UTxOEnv    }
    { tx       : Tx         }
    { utxoSt   : UTxOState  }
    { utxoSt'  : UTxOState  }
\end{code}
\begin{code}[hide]
    → let
\end{code}
and let
\begin{code}[inline]
      pp = UTxOEnv.pparams Γ
\end{code}
%~be the protocol parameters of the UTxO environment Γ.
\begin{code}[hide]
      open Tx tx
      open TxBody body
      in
\end{code}
.\\[6pt]
If
\begin{code}[inline]
    Γ ⊢ utxoSt ⇀⦇ tx ,UTXO⦈ utxoSt'
\end{code}
\begin{code}[hide]
    →
\end{code}
~and~
\begin{code}[inline]
    noRefundCert txcerts
\end{code}
\begin{code}[hide]
    →
\end{code}
, then
\begin{code}
      coin (consumed pp utxoSt body) ≥ length txprop * PParams.govActionDeposit pp
\end{code}
.

\begin{code}[hide]
  gmsc step@(UTXO-inductive⋯ tx Γ utxoState _ _ _ _ _ c≡p cmint≡0 _ _ _ _ _ _ _ _ _ _) nrf =
    begin
    length txprop * govActionDeposit
      ≡˘⟨ updatePropDeps≡ txprop ⟩
    getCoin (updateProposalDeposits txprop txid govActionDeposit deps) ∸ getCoin deps
      ≤⟨ ∸-monoˡ-≤ (getCoin deps) (≤updateCertDeps txcerts nrf) ⟩
    getCoin (updateDeposits pp txb deps) - getCoin deps
      ≡⟨ ∸≡posPart⊖ {getCoin (updateDeposits pp txb deps)} {getCoin deps} ⟩
    newDeps
      ≤⟨ m≤n+m newDeps (coin balOut + txfee + txdonation) ⟩
    coin balOut + txfee + txdonation + newDeps
      ≡⟨ +-assoc (coin balOut + txfee) txdonation newDeps ⟩
    coin balOut + txfee + (txdonation + newDeps)
      ≡⟨ cong (coin balOut + txfee +_) (+-comm txdonation newDeps) ⟩
    coin balOut + txfee + (newDeps + txdonation)
      ≡˘⟨ +-assoc (coin balOut + txfee) newDeps txdonation ⟩
    coin balOut + txfee + newDeps + txdonation
      ≡˘⟨ cong (λ x → x + newDeps + txdonation) coin-inject-lemma ⟩
    coin (balOut + inject txfee) + newDeps + txdonation
      ≡˘⟨ cong (_+ txdonation) coin-inject-lemma ⟩
    coin (balOut + inject txfee + inject newDeps) + txdonation
      ≡˘⟨ coin-inject-lemma ⟩
    coin (balOut + inject txfee + inject newDeps + inject txdonation)
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
    wdrls = getCoin txwdrls

    balIn balOut : Value
    balIn = balance (st ∣ txins)
    balOut = balance (outs txb)
\end{code}
\end{AgdaMultiCode}
\end{property}

To state the next property we define some more notation.
Given a ledger state \ab{ls} and
a transaction \ab{tx}, denote by \AgdaFunction{validTxIn₂}~\ab{tx} the assertion that
there exists ledger state \ab{ls'} such that
\ab{ls}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,LEDGER⦈}~\ab{ls'}.  
Also, assume the following additive property of
the \AgdaFunction{∪⁺} operator holds:
\begin{AgdaMultiCode}
\begin{code}[hide]
module _
\end{code}
\begin{code}
    ( indexedSum-∪⁺-hom :  {A V : Type}
                           ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq V ⦄
                           ⦃ _ : CommutativeMonoid 0ℓ 0ℓ V ⦄
                           (d₁ d₂ : A ⇀ V)
\end{code}
\begin{code}[hide]
       →
\end{code}
\begin{code}
                           ────────────────────────────────
                           ∑[ x ← d₁ ∪⁺ d₂ ] x ≡ ∑[ x ← d₁ ] x ◇ ∑[ x ← d₂ ] x )
\end{code}

\begin{property}[%
  \LedgerMod{Utxo/Properties/MinSpend.lagda}{\AgdaModule{MinSpend}}:
  \textbf{spend lower bound for proposals};
  \textbf{proved}%
]\

\noindent Assume
\begin{code}
    { cs     : ChainState }
\end{code}
\begin{code}[hide]
  where
  open import Ledger.Utxow txs abs
  propose-minSpend :
\end{code}
\begin{code}
    { slot   : Slot }
    { tx     : Tx }
    { valid  : validTxIn₂ cs slot tx }
\end{code}
and let
\begin{code}[hide]
    (let
\end{code}
\begin{code}
         ne      = cs .ChainState.newEpochState
         ep      = ne .NewEpochState.epochState 
         ls      = ep .EpochState.ls
         es      = ep .EpochState.es
         pp      = es .EnactState.pparams .proj₁
         utxoSt  = ls .LState.utxoSt
\end{code}
\begin{code}[hide]
         open Tx tx
         open TxBody body)
    → 
\end{code}
.\\[4pt]  If
\begin{code}[inline]
    noRefundCert txcerts
\end{code}
\begin{code}[hide]
    →
\end{code}
, then
\begin{code}
      coin (consumed pp utxoSt body) ≥ length txprop * PParams.govActionDeposit pp
\end{code}
\begin{code}[hide]
  propose-minSpend {slot} {tx} {valid} noRef = case valid of λ where
    (_ , LEDGER-V (_ , UTXOW⇒UTXO x , _ , _)) → gmsc indexedSum-∪⁺-hom x noRef
    (_ , LEDGER-I (_ , UTXOW⇒UTXO x))         → gmsc indexedSum-∪⁺-hom x noRef

\end{code}
\end{property}
\end{AgdaMultiCode}
