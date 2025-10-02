\subsection{Witnessing}
\label{sec:witnessing}
\modulenote{\ConwayModule{Utxow}}, in which we define witnessing.

The purpose of witnessing is make sure the intended action is
authorized by the holder of the signing key.  (For details
see \textcite[\sectionname~8.3]{shelley-ledger-spec}.)
\Cref{fig:functions:utxow} defines functions used for witnessing.
\witsVKeyNeeded{} and \scriptsNeeded{} are now defined by projecting the same
information out of \credsNeeded{}.  Note that the last component of \credsNeeded{}
adds the script in the proposal policy only if it is present.

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Certs govStructure
\end{code}

\allowedLanguages{} has additional conditions for new features in
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
    HasVotes : txGovVotes ≢ [] → UsesV3Features
    HasProps : txGovProposals ≢ [] → UsesV3Features
    HasDonation : txDonation ≢ 0 → UsesV3Features
    HasTreasure : currentTreasury ≢ nothing → UsesV3Features

instance
  Dec-UsesV3Features : ∀ {txb} → UsesV3Features txb ⁇
  Dec-UsesV3Features {record { txGovVotes = [] ; txGovProposals = [] ; txDonation = zero ; currentTreasury = nothing }}
    = ⁇ no λ where (HasVotes x)    → x refl
                   (HasProps x)    → x refl
                   (HasDonation x) → x refl
                   (HasTreasure x) → x refl
  Dec-UsesV3Features {record { txGovVotes = [] ; txGovProposals = [] ; txDonation = zero ; currentTreasury = just x }}
    = ⁇ yes (HasTreasure (λ ()))
  Dec-UsesV3Features {record { txGovVotes = [] ; txGovProposals = [] ; txDonation = suc txDonation }}
    = ⁇ yes (HasDonation (λ ()))
  Dec-UsesV3Features {record { txGovVotes = [] ; txGovProposals = x ∷ txGovProposals }} = ⁇ yes (HasProps (λ ()))
  Dec-UsesV3Features {record { txGovVotes = x ∷ txGovVotes }} = ⁇ yes (HasVotes (λ ()))

languages : Tx → UTxO → ℙ Language
languages tx utxo = mapPartial getLanguage (txscripts tx utxo)
  where
    getLanguage : Script → Maybe Language
    getLanguage (inj₁ _) = nothing
    getLanguage (inj₂ s) = just (language s)
\end{code}
\begin{code}

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
    os = range (outs txb) ∪ range (utxo ∣ (txIns ∪ refInputs))
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
         refScriptHashes                     = mapˢ hash (refScripts tx utxo)
         neededScriptHashes                  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo txb)
         neededVKeyHashes                    = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo txb)
         txdatsHashes                        = mapˢ hash txdats
         inputsDataHashes                    = mapPartial (λ txout → if txOutToP2Script utxo tx txout
                                                                      then txOutToDataHash txout
                                                                      else nothing) (range (utxo ∣ txIns))
         refInputsDataHashes                 = mapPartial txOutToDataHash (range (utxo ∣ refInputs))
         outputsDataHashes                   = mapPartial txOutToDataHash (range txOuts)
         nativeScripts                       = mapPartial toP1Script (txscripts tx utxo)
\end{code}
\begin{code}
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ nativeScripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededScriptHashes - refScriptHashes ≡ᵉ witsScriptHashes
    ∙  inputsDataHashes ⊆ txdatsHashes
    ∙  txdatsHashes ⊆ inputsDataHashes ∪ outputsDataHashes ∪ refInputsDataHashes
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
unifies the arguments given to all types of Plutus scripts currently available:
spending, certifying, rewarding, minting, voting, proposing.

The formal specification permits running spending scripts in the absence datums
in the Conway era.  However, since the interface with Plutus is kept abstract
in this specification, changes to the representation of the script context which
are part of \hrefCIP{0069} are not included here.  To provide a \hrefCIP{0069}-conformant
implementation of Plutus to this specification, an additional step processing
the \List{} \Data{} argument we provide would be required.

In \cref{fig:rules:utxow}, the line
\inputHashes{}~\subseteqfield{}~\txdatsHashes{} compares two inhabitants of
\PowerSet{}~\DataHash{}.  In the Alonzo spec, these two terms would
have inhabited \PowerSet{}~(\Maybe{}~\DataHash{}), where a \nothing{} is thrown
out~\parencite[\sectionname~3.1]{alonzo-ledger-spec}.
