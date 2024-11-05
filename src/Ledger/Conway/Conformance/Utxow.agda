
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_∘_) renaming (_∘₂_ to _∘_)
open import Ledger.Crypto
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Conway.Conformance.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.ScriptValidation txs abs
open import Ledger.Certs govStructure

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
  =  mapˢ (λ (i , o)  → (Spend  i , payCred (proj₁ o))) ((utxo ∣ txins) ˢ)
  ∪  mapˢ (λ a        → (Rwrd   a , stake a)) (dom (txwdrls .proj₁))
  ∪  mapˢ (λ c        → (Cert   c , cwitness c)) (fromList txcerts)
  ∪  mapˢ (λ x        → (Mint   x , ScriptObj x)) (policies mint)
  ∪  mapˢ (λ v        → (Vote   v , proj₂ v)) (fromList (map voter txvote))
  ∪  mapPartial (λ p  → case  p .policy of

    λ where

                              (just sh)  → just (Propose  p , ScriptObj sh)
                              nothing    → nothing) (fromList txprop)

  where open TxBody txb; open GovVote; open RwdAddr; open GovProposal


witsVKeyNeeded : UTxO → TxBody → ℙ KeyHash
witsVKeyNeeded = getVKeys ∘ mapˢ proj₂ ∘ credsNeeded

scriptsNeeded  : UTxO → TxBody → ℙ ScriptHash
scriptsNeeded = getScripts ∘ mapˢ proj₂ ∘ credsNeeded

data

  _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type

private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : Tx

data _⊢_⇀⦇_,UTXOW⦈_ where

  UTXOW-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
        open UTxOState s
        witsKeyHashes     = mapˢ hash (dom vkSigs)
        witsScriptHashes  = mapˢ hash scripts
        inputHashes       = getInputHashes tx utxo
        refScriptHashes   = mapˢ hash (refScripts tx utxo)
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
    ∙  languages tx utxo ⊆ allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAD
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'

pattern UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ h
      = UTXOW-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , h)
pattern UTXOW⇒UTXO x = UTXOW-inductive⋯ _ _ _ _ _ _ _ _ x

unquoteDecl UTXOW-inductive-premises =
  genPremises UTXOW-inductive-premises (quote UTXOW-inductive)