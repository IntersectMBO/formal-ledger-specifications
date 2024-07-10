\subsection{Witnessing}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra              using (CommutativeMonoid)
open import Data.Integer.Ext     using (posPart; negPart)
open import Data.Nat.Properties  using (+-0-monoid)
import Data.Maybe as M
import Data.Sum.Relation.Unary.All as Sum

import Data.Integer as ℤ
import Data.Rational as ℚ

open import Tactic.Derive.DecEq

open import Ledger.Prelude
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

credsNeeded : UTxOTemp → TxBody → ℙ (ScriptPurpose × Credential)
credsNeeded utxoTemp txb
  =  mapˢ (λ (i , o)  → (Spend  i , payCred (proj₁ o))) (((nutxo utxoTemp) ∣ txins) ˢ)
  ∪  mapˢ (λ a        → (Rwrd   a , stake a)) (dom (txwdrls .proj₁))
  ∪  mapˢ (λ c        → (Cert   c , cwitness c)) (fromList txcerts)
  ∪  mapˢ (λ x        → (Mint   x , ScriptObj x)) (policies mint)
  ∪  mapˢ (λ v        → (Vote   v , proj₂ v)) (fromList $ map voter txvote)
  ∪  mapˢ (λ (i , o)  → (Spend i , payCred (proj₁ o))) (((frxo utxoTemp) ∣ fulfills) ˢ)
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

witsVKeyNeeded : UTxOTemp → TxBody → ℙ KeyHash
witsVKeyNeeded = getVKeys ∘₂ mapˢ proj₂ ∘₂ credsNeeded

scriptsNeeded  : UTxOTemp → TxBody → ℙ ScriptHash
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
  _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOStateTemp → Tx → UTxOStateTemp → Type
\end{code}
\caption{UTxOW transition-system types}
\label{fig:ts-types:utxow}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
private variable
  Γ : UTxOEnv
  s s' : UTxOStateTemp
  tx : Tx

data _⊢_⇀⦇_,UTXOW⦈_ where
\end{code}
\begin{code}
  UTXOW-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
        open UTxOStateTemp s
        witsKeyHashes     = mapˢ hash (dom vkSigs)
        witsScriptHashes  = mapˢ hash scripts
        inputHashes       = getInputHashes tx utxoTemp
        refScriptHashes   = mapˢ hash (refScripts tx utxoTemp)
        neededHashes      = scriptsNeeded utxoTemp txb
        txdatsHashes      = dom txdats
        allOutHashes      = getDataHashes (range txouts) ∪ getDataHashes (range requests)
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ mapPartial isInj₁ (txscripts tx utxoTemp) ] validP1Script witsKeyHashes txvldt s
    ∙  witsVKeyNeeded utxoTemp txb ⊆ witsKeyHashes
    ∙  (neededHashes ＼ refScriptHashes) ≡ᵉ witsScriptHashes
    ∙  inputHashes ⊆ txdatsHashes
    ∙  txdatsHashes ⊆ (inputHashes ∪ allOutHashes ∪ getDataHashes (range ((nutxo utxoTemp) ∣ refInputs)))
    ∙  txADhash ≡ map hash txAD
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
