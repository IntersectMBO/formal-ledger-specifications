\subsection{Witnessing}
\label{sec:witnessing}
\modulenote{\LedgerModule{Utxow}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_∘_) renaming (_∘₂_ to _∘_)
open import Ledger.Crypto
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Utxo txs abs
open import Ledger.ScriptValidation txs abs
open import Ledger.Certs govStructure
\end{code}

The purpose of witnessing is make sure the intended action is
authorized by the holder of the signing key.  (For details see
the formal ledger specification for the Shelley era~\cite[Sec.~8.3]{shelley-ledger-spec}.)
Figure~\ref{fig:functions:utxow} defines functions used for witnessing.
\witsVKeyNeeded and \scriptsNeeded are now defined by projecting the same information out of
\credsNeeded.  Note that the last component of \credsNeeded adds the script in the proposal policy
only if it is present.

\allowedLanguages has additional conditions for new features in
Conway. If a transaction contains any votes, proposals, a treasury
donation or asserts the treasury amount, it is only allowed to contain
Plutus V3 scripts. Additionally, the presence of reference scripts or
inline scripts does not prevent Plutus V1 scripts from being used in a
transaction anymore. Only inline datums are now disallowed from
appearing together with a Plutus V1 script.

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}[hide]
module _ (o : TxOut) where
  d = proj₁ (proj₂ (proj₂ o))
  data HasInlineDatum : Set where
    InlineDatum  : ∀ {d'} → d ≡ just (inj₁ d') → HasInlineDatum

instance
  Dec-HasInlineDatum : ∀ {o} → HasInlineDatum o ⁇
  Dec-HasInlineDatum {_ , _ , just (inj₁ x) , _} = ⁇ yes (InlineDatum refl)
  Dec-HasInlineDatum {_ , _ , just (inj₂ x) , _} = ⁇ no λ where
    (InlineDatum x) → case x of λ ()
  Dec-HasInlineDatum {_ , _ , nothing , _} = ⁇ no λ where
    (InlineDatum x) → case x of λ ()

module _ (txb : TxBody) (let open TxBody txb) where
  data UsesV3Features : Set where
    HasVotes : txvote ≢ [] → UsesV3Features
    HasProps : txprop ≢ [] → UsesV3Features
    HasDonation : txdonation ≢ 0 → UsesV3Features
    HasTreasury : curTreasury ≢ nothing → UsesV3Features

instance
  Dec-UsesV3Features : ∀ {txb} → UsesV3Features txb ⁇
  Dec-UsesV3Features {record { txvote = [] ; txprop = [] ; txdonation = zero ; curTreasury = nothing }}
    = ⁇ no λ where (HasVotes x)    → x refl
                   (HasProps x)    → x refl
                   (HasDonation x) → x refl
                   (HasTreasury x) → x refl
  Dec-UsesV3Features {record { txvote = [] ; txprop = [] ; txdonation = zero ; curTreasury = just x }}
    = ⁇ yes (HasTreasury (λ ()))
  Dec-UsesV3Features {record { txvote = [] ; txprop = [] ; txdonation = suc txdonation }}
    = ⁇ yes (HasDonation (λ ()))
  Dec-UsesV3Features {record { txvote = [] ; txprop = x ∷ txprop }} = ⁇ yes (HasProps (λ ()))
  Dec-UsesV3Features {record { txvote = x ∷ txvote }} = ⁇ yes (HasVotes (λ ()))

languages : Tx → UTxO → ℙ Language
languages tx utxo = mapPartial getLanguage (txscripts tx utxo)
  where
    getLanguage : Script → Maybe Language
    getLanguage (inj₁ _) = nothing
    getLanguage (inj₂ s) = just (language s)
\end{code}
\begin{code}
getVKeys : ℙ Credential → ℙ KeyHash
getVKeys = mapPartial isKeyHashObj

allowedLanguages : Tx → UTxO → ℙ Language
allowedLanguages tx utxo =
  if (∃[ o ∈ os ] isBootstrapAddr (proj₁ o))
    then ∅
  else if UsesV3Features txb
    then fromList (PlutusV3 ∷ [])
  else if ∃[ o ∈ os ] HasInlineDatum o
    then fromList (PlutusV2 ∷ PlutusV3 ∷ [])
  else
    fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ [])
  where
    txb = tx .Tx.body; open TxBody txb
    os = range (outs txb) ∪ range (utxo ∣ (txins ∪ refInputs))

getScripts : ℙ Credential → ℙ ScriptHash
getScripts = mapPartial isScriptObj

credsNeeded : UTxO → TxBody → ℙ (ScriptPurpose × Credential)
credsNeeded utxo txb
  =  mapˢ (λ (i , o)  → (Spend  i , payCred (proj₁ o))) ((utxo ∣ (txins ∪ collateral)) ˢ)
  ∪  mapˢ (λ a        → (Rwrd   a , stake a)) (dom (txwdrls .proj₁))
  ∪  mapPartial (λ c  → (Cert   c ,_) <$> cwitness c) (fromList txcerts)
  ∪  mapˢ (λ x        → (Mint   x , ScriptObj x)) (policies mint)
  ∪  mapˢ (λ v        → (Vote   v , proj₂ v)) (fromList (map voter txvote))
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
witsVKeyNeeded = getVKeys ∘ mapˢ proj₂ ∘ credsNeeded

scriptsNeeded  : UTxO → TxBody → ℙ ScriptHash
scriptsNeeded = getScripts ∘ mapˢ proj₂ ∘ credsNeeded
\end{code}
\end{AgdaMultiCode}
\caption{Functions used for witnessing}
\label{fig:functions:utxow}
\end{figure*}

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
\begin{AgdaMultiCode}
\begin{code}[hide]
private variable
  Γ           : UTxOEnv
  s s'        : UTxOState
  tx          : Tx

open UTxOEnv
open UTxOState

data _⊢_⇀⦇_,UTXOW⦈_ where
\end{code}
\begin{code}
  UTXOW-inductive :
    let  utxo                                = s .utxo
\end{code}
\begin{code}[hide]
         open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
\end{code}
\begin{code}
         witsKeyHashes                       = mapˢ hash (dom vkSigs)
         witsScriptHashes                    = mapˢ hash scripts
         inputHashes                         = getInputHashes tx utxo
         refScriptHashes                     = fromList $ map hash (refScripts tx utxo)
         neededHashes                        = scriptsNeeded utxo txb
         txdatsHashes                        = dom txdats
         allOutHashes                        = getDataHashes (range txouts)
         nativeScripts                       = mapPartial isInj₁ (txscripts tx utxo)
\end{code}
\begin{code}
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ nativeScripts ] (hash s ∈ neededHashes → validP1Script witsKeyHashes txvldt s)
    ∙  witsVKeyNeeded utxo txb ⊆ witsKeyHashes
    ∙  neededHashes ＼ refScriptHashes ≡ᵉ witsScriptHashes
    ∙  inputHashes ⊆ txdatsHashes
    ∙  txdatsHashes ⊆ inputHashes ∪ allOutHashes ∪ getDataHashes (range (utxo ∣ refInputs))
    ∙  languages tx utxo ⊆ allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAD
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\end{AgdaMultiCode}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}
\begin{code}[hide]
pattern UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ h
      = UTXOW-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , h)
pattern UTXOW⇒UTXO x = UTXOW-inductive⋯ _ _ _ _ _ _ _ _ x

unquoteDecl UTXOW-inductive-premises =
  genPremises UTXOW-inductive-premises (quote UTXOW-inductive)
\end{code}

\subsection{Plutus script context}
\hrefCIP{0069}
unifies the arguments given to all types of Plutus scripts currently available
(spending, certifying, rewarding, minting, voting, proposing).

The formal specification permits running spending scripts in the absence datums
in the Conway era.  However, since the interface with Plutus is kept abstract
in this specification, changes to the representation of the script context which
are part of \hrefCIP{0069} are not included here.  To provide a \hrefCIP{0069}-conformant
implementation of Plutus to this specification, an additional step processing
the \List \Data argument we provide would be required.

In Figure~\ref{fig:rules:utxow}, the line
\inputHashes~\subseteqfield~\txdatsHashes compares two inhabitants of
\PowerSet~\DataHash.  In the Alonzo spec, these two terms would
have inhabited \PowerSet~(\Maybe~\DataHash), where a \nothing is thrown out
(see~\cite[Sec.~3.1]{alonzo-ledger-spec}).
