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


-- Shelley Fig 10:
--   wit : TxWitness = (VKey ⇀ Sig) × (ScriptHash ⇀ Script)
--   txwitsScript : Tx → (ScriptHash ⇀ Script)
-- Shelley Fig 18:
--   scriptsNeeded : UTxO → Tx → ℙ ScriptHash       (required script hashes)
-- Shelley Fig 20:
--   scriptsNeeded utxo tx = dom(txwitsScript tx)

data _⊢_⇀⦇_,UTXOW⦈_ where
\end{code}
\begin{code}
  UTXOW-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
                                                           -- txw := txwits tx
                                                           -- txw : TxWitnesses
                                                           -- fields vkSigs   : VKey ⇀ Sig
                                                           --        scripts  : ℙ Script
                                                           --        txdats   : DataHash ⇀ Datum
                                                           --        txrdmrs  : RdmrPtr  ⇀ Redeemer × ExUnits
                                                           --
        open UTxOState s
        witsKeyHashes     = mapˢ hash (dom vkSigs)
                       -- = {hashKey vk|vk ∈ dom(txwitsVKey txw)} (in pdf spec)
        witsScriptHashes  = mapˢ hash scripts
        inputHashes = (mapˢ (proj₁ ∘ proj₂ ∘ proj₂) (range (utxo ∣ txins))) --  ＼ Datum
-- X ＼ Y
--                {  | ( a, _ , h, _ ) ∈ range(utxo|spendInputs tx ) }
-- inputHashes := {h | isTwoPhaseScriptAddress tx utxo a             } − Datum
--                {  |                                               }

        neededHashes = scriptsNeeded utxo txb -- : ℙ ScriptHash
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ mapPartial isInj₁ (txscripts tx utxo) ∩ scriptsP1 ] validP1Script witsKeyHashes txvldt s
    -- ∀s ∈ (txscripts txw utxo neededHashes ) ∩ Scriptph1 , validateScript s tx (in pdf spec)
    -- Question: Why the extra `needsHashes` argument to `txscripts` in Babbage pdf spec?

    ∙  witsVKeyNeeded utxo txb ⊆ witsKeyHashes
    -- witsVKeyNeeded utxo tx genDelegs ⊆ witsKeyHashes  (in pdf spec)
    ∙  neededHashes  ≡ᵉ witsScriptHashes
-- ＼ (refScripts tx utxo))
-- refScripts = mapPartial (proj₂ ∘ proj₂ ∘ proj₂) (range (utxo ∣ (txins ∪ refInputs)))

       -- neededHashes − dom(refScripts tx utxo ) = dom(txwitscripts txw)
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
