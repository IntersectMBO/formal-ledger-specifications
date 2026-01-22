---
source_branch: master
source_path: src/Ledger/Conway/Specification/Utxow.lagda.md
---

# Witnessing {#sec:witnessing}

The purpose of witnessing is making sure that the actions specified in a
transaction are authorized
by the holder of the signing key. (For details see [CVG19](#shelley-ledger-spec).)
This section formalizes the mechanisms use by the Cardano ledger to support witnessing.

<!--
```agda
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
```
-->

## Witnessing Functions {#sec:witnessing-functions}

<!--
```agda
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
```
-->

We begin with the definition of `allowedLanguages`{.AgdaFunction}, which
includes conditions for new features in Conway.  If a transaction contains any votes,
proposals, a treasury donation or asserts the treasury amount, it is only allowed to
contain Plutus V3 scripts.  Additionally, the presence of reference scripts or inline
scripts does not prevent Plutus V1 scripts from being used in a transaction anymore.
Only inline datums are now disallowed from appearing together with a Plutus V1 script.

```agda
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
```

## Checking the script integrity hash

The script integrity hash helps determining that the cost model for execution
of a script hasn't changed since the transaction was submitted. Otherwise,
evaluation of the script could yield a different value than expected.

```agda
hashScriptIntegrity
  : PParams
  → ℙ Language
  → RdmrPtr ⇀ (Redeemer × ExUnits)
  → ℙ Datum
  → Maybe ScriptHash
hashScriptIntegrity pp langs rdrms dats
  with rdrms ˢ ≟ ∅ˢ | langs ≟ ∅ˢ | dats ≟ ∅ˢ
...  | yes _        | yes _      | yes _ = nothing
...  | _            | _          | _     =
    just $ hash (dats , rdrms , mapˢ (getLanguageView pp) langs)
```

## The <span class="AgdaDatatype">UTXOW</span> Transition System {#sec:the-utxow-transition-system}

<!--
```agda

private variable
  Γ     : UTxOEnv
  s s'  : UTxOState
  tx    : Tx

open UTxOState
```
-->

```agda
data _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type where

  UTXOW-inductive :
    let  open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
         utxo                = s .utxo
         witsKeyHashes       = mapˢ hash (dom vkSigs)
         witsScriptHashes    = mapˢ hash scripts
         refScriptHashes     = mapˢ hash (refScripts tx utxo)
         neededScriptHashes  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo txb)
         neededVKeyHashes    = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo txb)
                               ∪ reqSignerHashes
         txdatsHashes        = mapˢ hash txdats
         inputsDataHashes    = mapPartial (λ txout →  if txOutToP2Script utxo tx txout
                                                      then txOutToDataHash txout
                                                      else nothing) (range (utxo ∣ txIns))
         refInputsDataHashes = mapPartial txOutToDataHash (range (utxo ∣ refInputs))
         outputsDataHashes   = mapPartial txOutToDataHash (range txOuts)
         nativeScripts       = mapPartial toP1Script (txscripts tx utxo)
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ nativeScripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededScriptHashes - refScriptHashes ≡ᵉ witsScriptHashes
    ∙  inputsDataHashes ⊆ txdatsHashes
    ∙  txdatsHashes ⊆ inputsDataHashes ∪ outputsDataHashes ∪ refInputsDataHashes
    ∙  languages tx utxo ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAD
    ∙  scriptIntegrityHash ≡
          hashScriptIntegrity
            (PParamsOf Γ)
            (languages tx utxo)
            txrdmrs
            txdats
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
```

**Remarks**

+  the line `inputsDataHashes`{.AgdaBound} `⊆`{.AgdaInductiveConstructor} `txdatsHashes`{.AgdaBound}
   compares two inhabitants of type `PowerSet`{.AgdaFunction} `DataHash`{.AgdaFunction}.
   In the Alonzo era, these two terms inhabited the `ℙ`{.AgdaFunction}
   (`Maybe`{.AgdaDatatype} `DataHash`{.AgdaFunction}) type, where a
   `nothing`{.AgdaInductiveConstructor} was simply thrown out [VK21,](#alonzo-ledger-spec).

+  `neededScriptHashes`{.AgdaBound} and `neededVKeyHashes`{.AgdaBound} are
   defined by projecting information out of `credsNeeded`{.AgdaFunction}.  Also, the
   last component of the `credsNeeded`{.AgdaFunction} function (defined in the
   [Script Validation][] module) adds the script in the proposal policy only if it is present.

<!--
```agda
pattern UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ h
      = UTXOW-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , h)
pattern UTXOW⇒UTXO x = UTXOW-inductive⋯ _ _ _ _ _ _ _ _ _ x

unquoteDecl UTXOW-inductive-premises =
  genPremises UTXOW-inductive-premises (quote UTXOW-inductive)
```
-->


!!! note "Plutus Script Context"

    [CIP-0069](https://cips.cardano.org/cip-0069) unifies the arguments
    given to all types of Plutus scripts currently available: spending,
    certifying, rewarding, minting, voting, proposing.

    The formal specification permits running spending scripts in the absence datums in
    the Conway era.  However, since the interface with Plutus is kept abstract in this
    specification, changes to the representation of the script context which are part of
    [CIP-0069](https://cips.cardano.org/cip-0069) are not included here.

    To supply this specification with a
    [CIP-0069](https://cips.cardano.org/cip-0069)-conformant implementation of Plutus, an
    additional step processing the `List`{.AgdaDatatype} `Data`{.AgdaFunction} argument
    we provide would be required.

# References {#references .unnumbered}

**\[CVG19\]** <span id="shelley-ledger-spec"
label="shelley-ledger-spec"></span> Jared Corduan and Polina Vinogradova
and Matthias Güdemann. *A Formal Specification of the Cardano Ledger*.
2019.

**\[VK21\]** <span id="alonzo-ledger-spec"
label="alonzo-ledger-spec"></span> Polina Vinogradova and Andre Knispel.
*A Formal Specification of the Cardano Ledger integrating Plutus Core*.
2021.
