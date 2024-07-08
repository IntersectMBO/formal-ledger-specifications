\subsection{Witnessing}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_∘_) renaming (map to mapᴸ; mapˢ to map; _∘₂_ to _∘_)
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

Figure~\ref{fig:functions:utxow} defines functions used for
witnessing. \witsVKeyNeeded and \scriptsNeeded are now defined by
projecting the same information out of \credsNeeded. Note that the
last component of \credsNeeded adds the script in the proposal policy
only if it is present.

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
getVKeys : ℙ Credential → ℙ KeyHash
getVKeys = mapPartial isKeyHashObj

getScripts : ℙ Credential → ℙ ScriptHash
getScripts = mapPartial isScriptObj

credsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × Credential)
credsNeeded utxo txb
  =  map (λ (i , o)  → (Spend  i , payCred (proj₁ o))) ((utxo ∣ txins) ˢ)
  ∪  map (λ a        → (Rwrd   a , stake a)) (dom (txwdrls .proj₁))
  ∪  map (λ c        → (Cert   c , cwitness c)) (fromList txcerts)
  ∪  map (λ x        → (Mint   x , ScriptObj x)) (policies mint)
  ∪  map (λ v        → (Vote   v , proj₂ v)) (fromList $ mapᴸ voter txvote)
  ∪  mapPartial (λ p  → case  p .policy of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
                              (just sh)  → just (Propose  p , ScriptObj sh)
                              nothing    → nothing) (fromList txprop)
\end{code}
\begin{code}[hide]
  where open TxBody txb; open GovVote; open RwdAddr; open GovProposal
\end{code}
\begin{code}

witsVKeyNeeded : UTxO → TxBody → ℙ KeyHash
witsVKeyNeeded = getVKeys ∘ map proj₂ ∘ credsNeeded

scriptsNeeded  : UTxO → TxBody → ℙ ScriptHash
scriptsNeeded = getScripts ∘ map proj₂ ∘ credsNeeded
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
  _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type
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
        witsKeyHashes     = map hash (dom vkSigs)
        witsScriptHashes  = map hash scripts
        inputHashes       = getInputHashes tx utxo
        refScriptHashes   = map hash (refScripts tx utxo)
        neededHashes      = scriptsNeeded utxo txb
        txdatsHashes      = dom txdats
        allOutHashes      = getDataHashes (range txouts)
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ mapPartial isInj₁ (txscripts tx utxo) ] validP1Script witsKeyHashes txvldt s
    ∙  witsVKeyNeeded utxo txb ⊆ witsKeyHashes
    ∙  neededHashes ＼ refScriptHashes ≡ᵉ witsScriptHashes
    ∙  inputHashes ⊆ txdatsHashes
    ∙  txdatsHashes ⊆ inputHashes ∪ allOutHashes ∪ getDataHashes (range (utxo ∣ refInputs))
    ∙  txADhash ≡ mapᴸ hash txAD
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}
\begin{code}[hide]
pattern UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ h
      = UTXOW-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , h)
unquoteDecl UTXOW-inductive-premises =
  genPremises UTXOW-inductive-premises (quote UTXOW-inductive)
\end{code}
\end{NoConway}
