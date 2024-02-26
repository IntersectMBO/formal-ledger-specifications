\subsection{Witnessing}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Crypto
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Utxo txs abs
open import Ledger.ScriptValidation txs abs
\end{code}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
getVKeys : ℙ Credential → ℙ KeyHash
getVKeys = mapPartial isInj₁

getScripts : ℙ Credential → ℙ ScriptHash
getScripts = mapPartial isInj₂

credsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × Credential)
credsNeeded utxo txb
  =  mapˢ (λ (i , o) → (Spend i , payCred (proj₁ o))) ((utxo ∣ txins) ˢ)
  ∪  mapˢ (λ a → (Rwrd     a , RwdAddr.stake a)) (dom (txwdrls .proj₁))
  ∪  mapˢ (λ c → (Cert     c , cwitness c)) (fromList txcerts)
  ∪  mapˢ (λ x → (Mint     x , inj₂ x)) (policies mint)
  ∪  mapˢ (λ v → (Vote     v , proj₂ v)) (fromList $ map GovVote.voter txvote)
  ∪  mapPartial (λ p →  case p .GovProposal.policy of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
                        (just sh)  → just (Propose  p , inj₂ sh)
                        nothing    → nothing) (fromList txprop)
\end{code}
\begin{code}[hide]
  where open TxBody txb
\end{code}
\begin{code}

witsVKeyNeeded : UTxO → TxBody → ℙ KeyHash
witsVKeyNeeded = getVKeys ∘₂ mapˢ proj₂ ∘₂ credsNeeded

scriptsNeeded  : UTxO → TxBody → ℙ ScriptHash
scriptsNeeded = getScripts ∘₂ mapˢ proj₂ ∘₂ credsNeeded
\end{code}
\end{AgdaMultiCode}
\caption{Functions used for witnessing}
\label{fig:functions:utxow}
\end{figure*}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set
\end{code}
\caption{UTxOW transition-system types}
\label{fig:ts-types:utxow}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : Tx

data _⊢_⇀⦇_,UTXOW⦈_ where
\end{code}
\begin{code}
  UTXOW-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
        open UTxOState s
        witsKeyHashes     = mapˢ hash (dom vkSigs)
        witsScriptHashes  = mapˢ hash scripts
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ scriptsP1 ] validP1Script witsKeyHashes txvldt s
    ∙  witsVKeyNeeded utxo txb ⊆ witsKeyHashes
    ∙  scriptsNeeded utxo txb ≡ᵉ witsScriptHashes
    ∙  txADhash ≡ map hash txAD
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}
\begin{code}[hide]
pattern UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ h
      = UTXOW-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , h)
unquoteDecl UTXOW-inductive-premises =
  genPremises UTXOW-inductive-premises (quote UTXOW-inductive)
\end{code}
\end{NoConway}
