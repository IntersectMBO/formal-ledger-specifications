---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow.lagda.md
---

# UTxOW

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
import Data.List.Relation.Unary.Any as L
import Data.List.Relation.Unary.All as L

private variable
  ℓ     : TxLevel
  A     : Type
  Γ     : A
  s s'  : UTxOState
  s₀ s₁ : UTxOState
  txTop : TopLevelTx
  txSub : SubLevelTx
```
-->

## Witnessing Functions {#sec:witnessing-functions}

```agda
UsesBootstrapAddress : UTxO → Tx ℓ → Type
UsesBootstrapAddress utxo tx
  = ∃[ o ∈ (range txOuts) ∪ range (utxo ∣ (txIns ∪ referenceInputs)) ] IsBootstrapAddr (proj₁ o)
  where
    open Tx tx; open TxBody txBody

module _ (tx : TopLevelTx) where
  module _ (utxo : UTxO) where
    HasInlineDatum : TxOut → Type
    HasInlineDatum txout = Is-just (txOutToDatum txout)

    UsesV2Features : Type
    UsesV2Features = ∃[ o ∈ (range (TxOutsOf tx)) ∪ range (utxo ∣ (SpendInputsOf tx ∪ ReferenceInputsOf tx)) ] HasInlineDatum o

  data UsesV3Features : Set where
    hasVotes     : ¬ (Is-[] (ListOfGovVotesOf tx))      → UsesV3Features
    hasProposals : ¬ (Is-[] (ListOfGovProposalsOf tx))  → UsesV3Features
    hasDonation  : NonZero (DonationsOf tx)             → UsesV3Features
    hasTreasure  : Is-just (CurrentTreasuryOf tx)       → UsesV3Features

  data UsesV4Features : Set where
    hasSubtransactions   : ¬ Is-[] (SubTransactionsOf tx)        → UsesV4Features
    hasGuards            : ¬ Is-∅ (GuardsOf tx)                  → UsesV4Features
    hasDirectDeposits    : ¬ Is-∅ (dom (DirectDepositsOf tx))    → UsesV4Features
    hasBalanceIntervals  : ¬ Is-∅ (dom (BalanceIntervalsOf tx))  → UsesV4Features

```

<!--
```agda
module _ {tx : TopLevelTx} where
  instance
    Dec-UsesV3Features : UsesV3Features tx ⁇
    Dec-UsesV3Features .dec
      with ¿ ¬ Is-[] (ListOfGovVotesOf tx) ¿ | ¿ ¬ Is-[] (ListOfGovProposalsOf tx) ¿
         | ¿ NonZero (DonationsOf tx)   ¿ | ¿ Is-just (CurrentTreasuryOf tx)  ¿
    ... | yes p | _ | _ | _ = yes (hasVotes p)
    ... | _ | yes p | _ | _ = yes (hasProposals p)
    ... | _ | _ | yes p | _ = yes (hasDonation p)
    ... | _ | _ | _ | yes p = yes (hasTreasure p)
    ... | no p₁ | no p₂ | no p₃ | no p₄
      = no λ { (hasVotes x) → p₁ x ; (hasProposals x) → p₂ x ; (hasDonation x) → p₃ x ; (hasTreasure x) → p₄ x}

module _ {tx : TopLevelTx} where
  open Tx tx
  -- open TxBody txBody

  instance
    Dec-UsesV4Features : UsesV4Features tx ⁇
    Dec-UsesV4Features .dec
      with ¿ ¬ Is-[] (SubTransactionsOf tx) ¿ | ¿ ¬ Is-∅ (GuardsOf tx) ¿
         | ¿ ¬ Is-∅ (dom (DirectDepositsOf tx)) ¿ | ¿ ¬ Is-∅ (dom (BalanceIntervalsOf tx)) ¿
    ... | yes p | _ | _ | _ = yes (hasSubtransactions p)
    ... | _ | yes p | _ | _ = yes (hasGuards p)
    ... | _ | _ | yes p | _ = yes (hasDirectDeposits p)
    ... | _ | _ | _ | yes p = yes (hasBalanceIntervals p)
    ... | no p₁ | no p₂ | no p₃ | no p₄
      = no λ { (hasSubtransactions x) → p₁ x ; (hasGuards x) → p₂ x
             ; (hasDirectDeposits x) → p₃ x ; (hasBalanceIntervals x) → p₄ x }
```
-->

CIP-159 fields (`txDirectDeposits`{.AgdaField} and `txBalanceIntervals`{.AgdaField})
require at least PlutusV4 and are explicitly forbidden in legacy mode via the
`Is-∅ (dom txDirectDeposits)` and `Is-∅ (dom txBalanceIntervals)` premises in
`UTXOW-legacy`.  This follows the same pattern as `Is-∅ (GuardsOf txTop)` for guard
scripts.

When backward compatibility with older Plutus scripts (v1–v3) is needed, CIP-159
fields can appear in sub-transactions while older scripts run at the top level
(the CIP-118 escape hatch).

```agda
languages :  ℙ P2Script → ℙ Language
languages p2Scripts = mapˢ language p2Scripts

allowedLanguagesLegacyMode : TopLevelTx → UTxO → ℙ Language
allowedLanguagesLegacyMode tx utxo =
  if UsesV3Features tx
    then fromList (PlutusV3 ∷ [])
    else
  if UsesV2Features tx utxo
    then fromList (PlutusV3 ∷ PlutusV2 ∷ [])
    else fromList (PlutusV3 ∷ PlutusV2 ∷ PlutusV1 ∷ [])
```

## Checking the script integrity hash

The script integrity hash helps determining that the cost model for execution
of a script hasn't changed since the transaction was submitted. Otherwise,
evaluation of the script could yield a different value than expected. It also
helps checking that the same datums and redeemers are provided every time
a transaction is validated. See Section 2.2, Propery C.8 and the proof of
Lemma C.10 in [VK21,](#alonzo-ledger-spec) for the details.

```agda
hashScriptIntegrity
  : PParams
  → ℙ Language
  → RedeemerPtr ⇀ (Redeemer × ExUnits)
  → ℙ Datum
  → Maybe ScriptHash
hashScriptIntegrity pp langs rdrms dats
  with rdrms ˢ ≟ ∅ˢ | langs ≟ ∅ˢ | dats ≟ ∅ˢ
...  | yes _        | yes _      | yes _ = nothing
...  | _            | _          | _     =
    just $ hash (dats , rdrms , mapˢ (getLanguageView pp) langs)
```

## Required Top-level Guards

```agda
TopLevelGuardWellFormed : ℙ Script → Credential × Maybe Datum → Type
TopLevelGuardWellFormed scripts (c , just d)  = Is-just (credentialToP2Script c scripts)
TopLevelGuardWellFormed scripts (c , nothing) = Is-just (isKeyHashObj c) ⊎ Is-just (credentialToP1Script c scripts)
```

<!--
```agda
instance
  TopLevelGuardWellFormed? : TopLevelGuardWellFormed ⁇²
  TopLevelGuardWellFormed? {y = c , just d}  = Dec-MAny
  TopLevelGuardWellFormed? {y = c , nothing} = Dec-⊎ ⦃ it ⦄ ⦃ it ⦄
```
-->

## The <span class="AgdaDatatype">SUBUTXOW</span> Transition System {#sec:the-subutxow-transition-system}

1. All needed phase-2 scripts use Plutus language V4.

2. Sub-transactions cannot reference or use bootstrap addresses

3. Required top-level guards are well-formed. If the credential is a
   `KeyHash`{.AgdaDatatype} or a phase-1 script, then no datum should
   be specified, otherwise, when it is a phase-2 script, the datum
   should be specified.

```agda
data _⊢_⇀⦇_,SUBUTXOW⦈_ : SubUTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXOW :
    let
      open Tx txSub
      open TxBody txBody
      open TxWitnesses txWitnesses

      utxo₀ = UTxOOf Γ

      vKeyHashesProvided : ℙ KeyHash
      vKeyHashesProvided = mapˢ hash (dom vKeySigs)

      scriptsProvided : ℙ Script
      scriptsProvided = ScriptPoolOf Γ

      dataHashesProvided : ℙ DataHash
      dataHashesProvided = mapˢ hash (DataOf txSub)

      credentialsNeeded : ℙ Credential
      credentialsNeeded = mapˢ proj₂ (credsNeeded utxo₀ txSub)

      vKeyHashesNeeded : ℙ KeyHash
      vKeyHashesNeeded = mapPartial isKeyHashObj credentialsNeeded

      scriptHashesNeeded : ℙ ScriptHash
      scriptHashesNeeded = mapPartial isScriptObj credentialsNeeded

      scriptsNeeded : ℙ Script
      scriptsNeeded = filterˢ (λ s → hash s ∈ scriptHashesNeeded) scriptsProvided

      p1ScriptsNeeded : ℙ P1Script
      p1ScriptsNeeded = mapPartial toP1Script scriptsNeeded

      p2ScriptsNeeded : ℙ P2Script
      p2ScriptsNeeded = mapPartial toP2Script scriptsNeeded

      dataHashesNeededSpendInputs : ℙ DataHash
      dataHashesNeededSpendInputs =
        mapPartial (λ txOut@(a , _ , d , _) →
                        do sh ← isScriptObj (payCred a)
                           _  ← lookupHash sh p2ScriptsNeeded
                           d >>= isInj₂)
                   (range (utxo₀ ∣ txIns))

      dataHashesOutputs : ℙ DataHash
      dataHashesOutputs = mapPartial txOutToDataHash (range txOuts)

      dataHashesReferenceInputs : ℙ DataHash
      dataHashesReferenceInputs = mapPartial txOutToDataHash (range (UTxOOf Γ ∣ referenceInputs))

      scriptRedeemerPtrs : ℙ RedeemerPtr
      scriptRedeemerPtrs = mapPartial (λ (sp , c) → if credentialToP2Script c scriptsNeeded
                                                       then rdptr txSub sp
                                                       else nothing)
                                      (credsNeeded utxo₀ txSub)
    in
    ∙ ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes txId) σ
    ∙ ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (GuardsOf txSub) txVldt s
    ∙ ∀[ tlg ∈ TopLevelGuardsOf txSub ] TopLevelGuardWellFormed scriptsProvided tlg -- (3)
    ∙ (¬ UsesBootstrapAddress utxo₀ txSub) -- (2)
    ∙ vKeyHashesNeeded ⊆ vKeyHashesProvided
    ∙ scriptHashesNeeded ⊆ mapˢ hash scriptsProvided
    ∙ dataHashesNeededSpendInputs ⊆ dataHashesProvided
    ∙ dataHashesProvided ⊆ dataHashesNeededSpendInputs ∪ dataHashesOutputs ∪ dataHashesReferenceInputs
    ∙ dom txRedeemers ≡ᵉ scriptRedeemerPtrs
    ∙ languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵ -- (1)
    ∙ txADhash ≡ map hash txAuxData
    ∙ scriptIntegrityHash ≡ hashScriptIntegrity (PParamsOf Γ) (languages p2ScriptsNeeded) txRedeemers txData
    ∙ Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXO⦈ s₁
      ────────────────────────────────
      Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁
```

## The <span class="AgdaDatatype">UTXOW</span> Transition System {#sec:the-utxow-transition-system}

```agda
data _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where
```

In Dijkstra, the UTXOW transition system for the top-level transaction has two
different operating modes, **normal mode** and **legacy mode**. These correspond to
the rules `UTXOW-normal`{.AgdaInductiveConstructor} and
`UTXOW-legacy`{.AgdaInductiveConstructor}.

The mode is denoted by a Boolean in the second component of the environment,
(`Γ`{.AgdaBound} , `legacyMode`{.AgdaBound}), so a computation can select one
mode up front rather than deciding both.

### Normal Mode

1. All needed phase-2 scripts use Plutus language V4.

2. If the top-level transaction uses or references bootstrap addresses then the
   set of needed phase-2 scripts must be empty.

3. The required top-level guards of subtransactions appear in the set of
   guards at the top-level.

```agda
  UTXOW-normal :
    let
      open Tx txTop
      open TxBody txBody
      open TxWitnesses txWitnesses

      scriptsProvided : ℙ Script
      scriptsProvided = ScriptPoolOf Γ

      dataHashesProvided : ℙ DataHash
      dataHashesProvided = mapˢ hash (DataOf txTop)

      credentialsNeeded : ℙ Credential
      credentialsNeeded = mapˢ proj₂ (credsNeeded (UTxOOf Γ) txTop)

      vKeyHashesProvided : ℙ KeyHash
      vKeyHashesProvided = mapˢ hash (dom vKeySigs)

      vKeyHashesNeeded : ℙ KeyHash
      vKeyHashesNeeded = mapPartial isKeyHashObj credentialsNeeded

      scriptHashesNeeded : ℙ ScriptHash
      scriptHashesNeeded = mapPartial isScriptObj credentialsNeeded

      scriptsNeeded : ℙ Script
      scriptsNeeded = filterˢ (λ s → hash s ∈ scriptHashesNeeded) scriptsProvided

      p1ScriptsNeeded : ℙ P1Script
      p1ScriptsNeeded = mapPartial toP1Script scriptsNeeded

      p2ScriptsNeeded : ℙ P2Script
      p2ScriptsNeeded = mapPartial toP2Script scriptsNeeded

      dataHashesNeededSpendInputs : ℙ DataHash
      dataHashesNeededSpendInputs =
        mapPartial (λ txOut@(a , _ , d , _) → do
                      sh ← isScriptObj (payCred a)
                      _  ← lookupHash sh p2ScriptsNeeded
                      x  ← d
                      isInj₂ x) (range (UTxOOf Γ ∣ txIns))

      dataHashesOutputs : ℙ DataHash
      dataHashesOutputs = mapPartial txOutToDataHash (range txOuts)

      dataHashesReferenceInputs : ℙ DataHash
      dataHashesReferenceInputs = mapPartial txOutToDataHash (range (UTxOOf Γ ∣ referenceInputs))
    in
    ∙ ∀[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV4 ∷ []) -- (1)
    ∙ (UsesBootstrapAddress (UTxOOf Γ) txTop → Is-∅ p2ScriptsNeeded) -- (2)
    ∙ concatMapˡ (λ txSub → mapˢ proj₁ (TopLevelGuardsOf txSub)) (SubTransactionsOf txTop) ⊆ GuardsOf txTop -- (3)
    ∙ ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses txTop) ] isSigned vk (txidBytes (TxIdOf txTop)) σ
    ∙ ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (GuardsOf txTop) txVldt s
    ∙ vKeyHashesNeeded ⊆ vKeyHashesProvided
    ∙ scriptHashesNeeded ⊆ mapˢ hash scriptsProvided
    ∙ dataHashesNeededSpendInputs ⊆ dataHashesProvided
    ∙ dataHashesProvided ⊆ dataHashesNeededSpendInputs ∪ dataHashesOutputs ∪ dataHashesReferenceInputs
    ∙ languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵ -- (1)
    ∙ txADhash ≡ map hash txAuxData
    ∙ (Γ , false) ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXOW⦈ s'
```

### Legacy mode

1. There is at least a needed phase-2 script with Plutus language version V1, V2
   or V3.

2. The language of all needed phase-2 scripts is compatible with the features
   used by the top-level transaction, (votes, proposals, inline datum, ...) (See
   `allowedLanguagesLegacy`). Moreover, all needed phase-2 scripts use Plutus
   language versions V1, V2, or V3.

3. The top-level transaction does not use or reference bootstrap addresses (in
   case it does, it is handled in normal mode).

4. `Guards` only contains keyhashes, and, thus, all sub-transaction's
   `requiredTopLevelGuards` contain only keyhashes. (`Guards` with
   only keyhashes correspond to `reqSignerHashes` in pre-Dijkstra).

5. The top-level transaction does not contain direct deposits (`txDirectDeposits` is empty).

6. The top-level transaction does not contain balance interval assertions
   (`txBalanceIntervals` is empty).

```agda
  UTXOW-legacy :
    let
      open Tx txTop
      open TxBody txBody
      open TxWitnesses txWitnesses

      scriptsProvided : ℙ Script
      scriptsProvided = ScriptPoolOf Γ

      dataHashesProvided : ℙ DataHash
      dataHashesProvided = mapˢ hash (DataOf txTop)

      credentialsNeeded : ℙ Credential
      credentialsNeeded = mapˢ proj₂ (credsNeeded (UTxOOf Γ) txTop)

      vKeyHashesProvided : ℙ KeyHash
      vKeyHashesProvided = mapˢ hash (dom vKeySigs)

      vKeyHashesNeeded : ℙ KeyHash
      vKeyHashesNeeded = mapPartial isKeyHashObj credentialsNeeded

      scriptHashesNeeded : ℙ ScriptHash
      scriptHashesNeeded = mapPartial isScriptObj credentialsNeeded

      scriptsNeeded : ℙ Script
      scriptsNeeded = filterˢ (λ s → hash s ∈ scriptHashesNeeded) scriptsProvided

      p1ScriptsNeeded : ℙ P1Script
      p1ScriptsNeeded = mapPartial toP1Script scriptsNeeded

      p2ScriptsNeeded : ℙ P2Script
      p2ScriptsNeeded = mapPartial toP2Script scriptsNeeded

      dataHashesNeededSpendInputs : ℙ DataHash
      dataHashesNeededSpendInputs =
        mapPartial (λ txOut@(a , _ , d , _) → do
                      sh ← isScriptObj (payCred a)
                      _  ← lookupHash sh p2ScriptsNeeded
                      x  ← d
                      isInj₂ x) (range (UTxOOf Γ ∣ txIns))

      dataHashesOutputs : ℙ DataHash
      dataHashesOutputs = mapPartial txOutToDataHash (range txOuts)

      dataHashesReferenceInputs : ℙ DataHash
      dataHashesReferenceInputs = mapPartial txOutToDataHash (range (UTxOOf Γ ∣ referenceInputs))

    in
    ∙ ∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ [])
    ∙ ¬ (UsesBootstrapAddress (UTxOOf Γ) txTop)
    ∙ ∀[ g ∈ GuardsOf txTop ] IsKeyHashObj g     -- (4)
    ∙ Is-∅ (dom txDirectDeposits)                -- (5)
    ∙ Is-∅ (dom txBalanceIntervals)              -- (6)
    ∙ concatMapˡ (λ txSub → mapˢ proj₁ (TopLevelGuardsOf txSub)) (SubTransactionsOf txTop) ⊆ GuardsOf txTop -- (3)
    ∙ ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes (TxIdOf txTop)) σ
    ∙ ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (GuardsOf txTop) txVldt s
    ∙ vKeyHashesNeeded ⊆ vKeyHashesProvided
    ∙ scriptHashesNeeded ⊆ mapˢ hash scriptsProvided
    ∙ dataHashesNeededSpendInputs ⊆ dataHashesProvided
    ∙ dataHashesProvided ⊆ dataHashesNeededSpendInputs ∪ dataHashesOutputs ∪ dataHashesReferenceInputs
    ∙ languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ allowedLanguagesLegacyMode txTop (UTxOOf Γ)
    ∙ txADhash ≡ map hash txAuxData
    ∙ (Γ , true) ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXOW⦈ s'
```

<!--
```agda
unquoteDecl UTXOW-normal-premises = genPremises UTXOW-normal-premises (quote UTXOW-normal)
unquoteDecl UTXOW-legacy-premises = genPremises UTXOW-legacy-premises (quote UTXOW-legacy)
unquoteDecl SUBUTXOW-premises = genPremises SUBUTXOW-premises (quote SUBUTXOW)
pattern UTXOW-normal-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ h = UTXOW-normal (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , h)
pattern UTXOW-legacy-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ h = UTXOW-legacy (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , h)
pattern SUBUTXOW-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ h = SUBUTXOW (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , h)
```
-->
