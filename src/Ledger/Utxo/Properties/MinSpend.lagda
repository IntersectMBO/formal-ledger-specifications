\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxo.Properties.MinSpend
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\themodpath}{Utxo/Properties/MinSpend}

\begin{code}[hide]
open import Ledger.Certs govStructure
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All)
open import Ledger.Properties txs abs using (validTxIn₂)
open import Ledger.Utxo txs abs

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

\begin{theorem}[%
  \LedgerMod{\themodpath.lagda}{\AgdaModule{\themodpath{}}}:
  general spend lower bound%
  ]\
  \label{thm:minspend}

  \begin{itemize}
    \item \textit{Informally}.  
      Let \ab{tx}~:~\Tx{} be a valid transaction and let \AgdaFunction{txcerts} be its
      list of \DCert{}s.
      Denote by
      \AgdaFunction{noRefundCert}~\AgdaFunction{txcerts} the assertion that no
      element in \AgdaFunction{txcerts} is one of the two refund types
      (i.e., an element of \ab{l} is neither a \dereg{} nor a \deregdrep{}).
      \\[4pt]
      Let \ab{s}, \ab{s'}~:~\UTxOState{} be two UTxO states.
      If \ab{s}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,UTXO⦈}~\ab{s'}
      and if \AgdaFunction{noRefundCert}~\AgdaFunction{txcerts},
      then the coin consumed by \ab{tx} is at least the sum of the governance action
      deposits of the proposals in \ab{tx}.

    \item \textit{Formally}.
\begin{AgdaMultiCode}
\begin{code}
  utxoMinSpend : {Γ : UTxOEnv} {tx : Tx} {s s' : UTxOState}
    → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
    → noRefundCert (txcertsOf tx)
    → coin (consumed _ s (TxBodyOf tx)) ≥ length (txpropOf tx) * govActionDepositOf Γ
\end{code}
    \item \textit{Proof}. See the
      \LedgerMod{\themodpath.lagda}{\AgdaModule{\themodpath{}}} module
      in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
  utxoMinSpend step@(UTXO-inductive⋯ tx Γ utxoSt _ _ _ _ _ c≡p cmint≡0 _ _ _ _ _ _ _ _ _ _) nrf =
    begin
    length txprop * govActionDepositOf Γ
      ≡˘⟨ updatePropDeps≡ txprop ⟩
    getCoin (updateProposalDeposits txprop txid (govActionDepositOf Γ) deposits) ∸ getCoin deposits
      ≤⟨ ∸-monoˡ-≤ (getCoin deposits) (≤updateCertDeps txcerts nrf) ⟩
    getCoin (updateDeposits (PParamsOf Γ) txb deposits) - getCoin deposits
      ≡⟨ ∸≡posPart⊖ {getCoin (updateDeposits (PParamsOf Γ) txb deposits)} {getCoin deposits} ⟩
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
    open Tx tx renaming (body to txb); open TxBody txb
    open UTxOState utxoSt

    newDeps refunds wdrls : Coin
    newDeps = newDeposits (PParamsOf Γ) utxoSt txb
    refunds = depositRefunds (PParamsOf Γ) utxoSt txb
    wdrls = getCoin (txwdrlsOf tx)

    balIn balOut : Value
    balIn = balance (utxo ∣ txins)
    balOut = balance (outs txb)
\end{code}
\end{AgdaMultiCode}
  \end{itemize}
\end{theorem}

\begin{theorem}[%
  \LedgerMod{\themodpath.lagda}{\AgdaModule{\themodpath{}}}:
  spend lower bound for proposals%
  ]\

  \begin{itemize}
  \item \textit{Preliminary remarks}.
  \begin{enumerate}
    \item Define \AgdaFunction{noRefundCert}~\ab{l} and \ab{pp} as in \cref{thm:minspend}.
    \item Given a ledger state \ab{ls} and a transaction \ab{tx}, denote by
      \AgdaFunction{validTxIn₂}~\ab{tx} the assertion that there exists ledger state
      \ab{ls'} such that \ab{ls}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,LEDGER⦈}~\ab{ls'}.  
    \item Assume the following additive property of the \AgdaFunction{∪⁺} operator holds:
\begin{code}[hide]
module _
    ( indexedSum-∪⁺-hom :  {A V : Type}
                           ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq V ⦄
                           ⦃ _ : CommutativeMonoid 0ℓ 0ℓ V ⦄
                           (d₁ d₂ : A ⇀ V)
       →
\end{code}
\begin{code}
                           ∑[ x ← d₁ ∪⁺ d₂ ] x ≡ ∑[ x ← d₁ ] x ◇ ∑[ x ← d₂ ] x
\end{code}
\begin{code}[hide]
    )
\end{code}
  \end{enumerate}
  \item \textit{Informally}.
    Let \ab{tx}~:~\Tx{} be a valid transaction and let \ab{cs}~:~\ChainState{} be a chain state.
    If the condition \AgdaFunction{validTxIn₂}~\ab{tx} (described above) holds,
    then the coin consumed by \ab{tx} is at least the sum of the governance action
    deposits of the proposals in \ab{tx}.

  \item \textit{Formally}.
\begin{code}[hide]
  where
  open import Ledger.Utxow txs abs
  open ChainState; open NewEpochState; open EpochState
  open LState; open EnactState;  open PParams
\end{code}
\begin{AgdaMultiCode}
\begin{code}
  propose-minSpend :  {slot : Slot} {tx : Tx} {cs : ChainState}
                      ( let  pp      = PParamsOf cs
                             utxoSt  = UTxOStateOf cs )
\end{code}
\begin{code}[hide]
    ( open Tx tx )
    ( open TxBody body )
\end{code}
\begin{code}
    → noRefundCert txcerts
    → validTxIn₂ cs slot tx
    → coin (consumed pp utxoSt body) ≥ length txprop * pp .govActionDeposit 
\end{code}
  \item \textit{Proof}. See the
    \LedgerMod{\themodpath.lagda}{\AgdaModule{\themodpath{}}} module
    in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
  propose-minSpend noRef valid = case valid of λ where
    (_ , LEDGER-V (_ , UTXOW⇒UTXO x , _ , _)) → utxoMinSpend indexedSum-∪⁺-hom x noRef
    (_ , LEDGER-I (_ , UTXOW⇒UTXO x))         → utxoMinSpend indexedSum-∪⁺-hom x noRef

\end{code}
\end{AgdaMultiCode}
  \end{itemize}
\end{theorem}
