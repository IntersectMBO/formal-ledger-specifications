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
  txTop : TopLevelTx
  txSub : SubLevelTx
```
-->

## Witnessing Functions {#sec:witnessing-functions}

```agda
UsesBootstrapAddress : UTxO → Tx ℓ → Type
UsesBootstrapAddress utxo tx
  = ∃[ o ∈ (range txOuts) ∪ range (utxo ∣ (txIns ∪ referenceInputs)) ] isBootstrapAddr (proj₁ o)
  where
    open Tx tx; open TxBody txBody

module _ (tx : TopLevelTx) where
  open Tx tx
  open TxBody txBody

  module _ (utxo : UTxO) where
    HasInlineDatum : TxOut → Type
    HasInlineDatum txout = Is-just (txOutToDatum txout)

    UsesV2Features : Type
    UsesV2Features = ∃[ o ∈ (range txOuts) ∪ range (utxo ∣ (txIns ∪ referenceInputs)) ] HasInlineDatum o

  data UsesV3Features : Set where
    hasVotes     : ¬ (Is-[] txGovVotes)     → UsesV3Features
    hasProposals : ¬ (Is-[] txGovProposals) → UsesV3Features
    hasDonation  : NonZero txDonation       → UsesV3Features
    hasTreasure  : Is-just currentTreasury  → UsesV3Features

  data UsesV4Features : Set where
    hasSubtransactions  : ¬ (Is-[] txSubTransactions) → UsesV4Features
    hasGuards           : ¬ (Is-∅ txGuards)           → UsesV4Features
```

<!--
```agda
module _ {tx : TopLevelTx} where
  open Tx tx
  open TxBody txBody

  instance
    Dec-UsesV3Features : UsesV3Features tx ⁇
    Dec-UsesV3Features .dec
      with ¿ ¬ (Is-[] txGovVotes) ¿ | ¿ ¬ (Is-[] txGovProposals) ¿
         | ¿ NonZero txDonation   ¿ | ¿ Is-just currentTreasury  ¿
    ... | yes p | _ | _ | _ = yes (hasVotes p)
    ... | _ | yes p | _ | _ = yes (hasProposals p)
    ... | _ | _ | yes p | _ = yes (hasDonation p)
    ... | _ | _ | _ | yes p = yes (hasTreasure p)
    ... | no p₁ | no p₂ | no p₃ | no p₄
      = no λ { (hasVotes x) → p₁ x ; (hasProposals x) → p₂ x ; (hasDonation x) → p₃ x ; (hasTreasure x) → p₄ x}

module _ {tx : TopLevelTx} where
  open Tx tx
  open TxBody txBody

  instance
    Dec-UsesV4Features : UsesV4Features tx ⁇
    Dec-UsesV4Features .dec
      with ¿ ¬ (Is-[] txSubTransactions) ¿ | ¿ ¬ (Is-∅ txGuards) ¿
    ... | yes p | _ = yes (hasSubtransactions p)
    ... | _ | yes p = yes (hasGuards p)
    ... | no p₁ | no p₂
      = no λ { (hasSubtransactions x) → p₁ x ; (hasGuards x) → p₂ x}
```
-->

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

<!--
```agda
-- Consolidate Witnessing Logic into a single Record
record WitnessLogic (tx : Tx ℓ) (Γ : UTxOEnv) : Type where
  constructor mkWitnessLogic
  open Tx tx; open TxBody txBody; open TxWitnesses txWitnesses

  field
    dataProvided     : ℙ Data
    scriptsProvided  : ℙ Script

  credentialsNeeded : ℙ Credential
  credentialsNeeded = mapˢ proj₂ (credsNeeded (UTxOOf Γ) tx)
  vKeyHashesProvided : ℙ KeyHash
  vKeyHashesProvided = mapˢ hash (dom (TxWitnesses.vKeySigs (Tx.txWitnesses tx) ))

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

  dataHashesNeeded : ℙ DataHash
  dataHashesNeeded =
    mapPartial (λ txOut@(a , _ , d , _) → do
                  sh ← isScriptObj (payCred a)
                  _  ← lookupHash sh p2ScriptsNeeded
                  x  ← d
                  isInj₂ x) (range (UTxOOf Γ ∣ txIns))

-- The WitnessLogic record type is inhabited in one of two ways:
-- 1. Normal mode (legacy=false) uses the DataPool and ScriptPool;
-- 2. Legacy mode (legacy=true) uses the UTxO to determine data and scripts.
collectWitnessLogic : (legacy : Bool) (tx : Tx ℓ) (Γ : UTxOEnv) → WitnessLogic tx Γ
collectWitnessLogic legacy tx Γ .WitnessLogic.dataProvided =
  if legacy  then getTxData tx (UTxOOf Γ)
             else range (DataPoolOf Γ)
collectWitnessLogic legacy tx Γ .WitnessLogic.scriptsProvided =
  if legacy  then witnessScripts tx ∪ spendScripts tx (UTxOOf Γ) ∪ referenceScripts tx (UTxOOf Γ)
             else ScriptPoolOf Γ

-- Mode trigger: legacy mode is selected iff at least one *needed* phase-2 script
-- (based on legacy=true witness collection) uses PlutusV1–V3.
Legacy : UTxOEnv → TopLevelTx → Type
Legacy Γ txTop = ∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ [])
  where
  wd : WitnessLogic txTop Γ
  wd = collectWitnessLogic true txTop Γ
  open WitnessLogic wd

-- Define Named Premise Records (replaces long tuples and makes Computational instance much faster).
record UTXOW-Normal-Premises (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) : Type where
  constructor mkNormalPremises

  -- centralized witness collector with legacy=false
  wd = collectWitnessLogic false txTop Γ
  open WitnessLogic wd

  field
    -- (2) No bootstrap addresses if using scripts
    bootstrap           : UsesBootstrapAddress (UTxOOf Γ) txTop → Is-∅ p2ScriptsNeeded
    -- (3) Subtransaction guards are present at top-level
    guardsPolicy        : RequiredGuardsInTopLevel txTop
    -- Witnessing logic
    sigsValid           : ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses txTop) ] isSigned vk (txidBytes (TxIdOf txTop)) σ
    p1ScriptsValid      : ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (TxBody.txVldt (Tx.txBody txTop)) s
    vKeyHashesSubset    : vKeyHashesNeeded ⊆ vKeyHashesProvided
    scriptHashesSubset  : scriptHashesNeeded ⊆ mapˢ hash scriptsProvided
    dataHashesSubset    : dataHashesNeeded ⊆ mapˢ hash dataProvided
    -- (1) Plutus V4 Enforcement
    languageV4Only      : languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵
    auxDataHashValid    : TxBody.txADhash (Tx.txBody txTop) ≡ map hash (Tx.txAuxData txTop)


-- Define Named Premise Records (replaces long tuples and makes Computational instance much faster).
record UTXOW-Legacy-Premises (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) : Type where
  constructor mkLegacyPremises

  -- centralized witness collector with legacy=true
  wd = collectWitnessLogic true txTop Γ
  open WitnessLogic wd

  field
    -- (3) Legacy mode cannot handle bootstrap addresses
    noBootstrap         : ¬ (UsesBootstrapAddress (UTxOOf Γ) txTop)
    -- (4) Guard sets must be empty
    noGuards            : Is-∅ (GuardsOf txTop)
    guardsPolicy        : RequiredGuardsInTopLevel txTop
    -- Witnessing logic (Same as normal)
    sigsValid           : ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses txTop) ] isSigned vk (txidBytes (TxIdOf txTop)) σ
    p1ScriptsValid      : ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (TxBody.txVldt (Tx.txBody txTop)) s
    vKeyHashesSubset    : vKeyHashesNeeded ⊆ vKeyHashesProvided
    scriptHashesSubset  : scriptHashesNeeded ⊆ mapˢ hash scriptsProvided
    dataHashesSubset    : dataHashesNeeded ⊆ mapˢ hash dataProvided
    -- (2) Version-restricted languages
    legacyLanguages     : languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ allowedLanguagesLegacyMode txTop (UTxOOf Γ)
    auxDataHashValid    : TxBody.txADhash (Tx.txBody txTop) ≡ map hash (Tx.txAuxData txTop)

record WitnessLogicSubTx (tx : Tx ℓ) (utxo₀ : UTxO) (Γ : SubUTxOEnv) : Type where
  constructor mkWitnessLogicSubTx
  open Tx tx; open TxBody txBody; open TxWitnesses txWitnesses

  field
    vKeyHashesProvided : ℙ KeyHash
    scriptsProvided    : ℙ Script
    dataProvided       : ℙ Data
    credentialsNeeded  : ℙ Credential

  vKeyHashesNeeded : ℙ KeyHash
  vKeyHashesNeeded = mapPartial isKeyHashObj credentialsNeeded

  scriptHashesNeeded : ℙ ScriptHash
  scriptHashesNeeded = mapPartial isScriptObj credentialsNeeded

  scriptsNeeded : ℙ Script
  scriptsNeeded = filterˢ (λ s → hash s ∈ scriptHashesNeeded) scriptsProvided

  p1ScriptsNeeded    : ℙ P1Script
  p1ScriptsNeeded = mapPartial toP1Script scriptsNeeded

  p2ScriptsNeeded : ℙ P2Script
  p2ScriptsNeeded = mapPartial toP2Script scriptsNeeded

  dataHashesNeeded   : ℙ DataHash
  dataHashesNeeded =
    mapPartial (λ txOut@(a , _ , d , _) →
                    do sh ← isScriptObj (payCred a)
                       _  ← lookupHash sh p2ScriptsNeeded
                       d >>= isInj₂)
               (range (utxo₀ ∣ txIns))

collectWitnessLogicSubTx : (tx : Tx ℓ) (Γ : SubUTxOEnv) → WitnessLogicSubTx tx (UTxOOf Γ) Γ
collectWitnessLogicSubTx tx Γ = record
  { vKeyHashesProvided = mapˢ hash (dom (TxWitnesses.vKeySigs (Tx.txWitnesses tx)))
  ; scriptsProvided    = ScriptPoolOf Γ
  ; dataProvided       = range (DataPoolOf Γ)
  ; credentialsNeeded  = mapˢ proj₂ (credsNeeded (UTxOOf Γ) tx) }
  where open WitnessLogic; open Tx tx; open TxBody txBody; open TxWitnesses txWitnesses; open SubUTxOEnv Γ

-- Define Named Premise Records (replaces long tuples and makes Computational instance much faster).
record SUBUTXOW-Premises (Γ : SubUTxOEnv) (s : UTxOState) (tx : SubLevelTx) : Type where
  constructor mkSUBUTXOWPremises
  -- Re-use our centralized witness collector
  wd = collectWitnessLogicSubTx tx Γ
  open WitnessLogicSubTx wd

  field
    sigsValid          : ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses tx) ] isSigned vk (txidBytes (TxIdOf tx)) σ
    p1ScriptsValid     : ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (TxBody.txVldt (Tx.txBody tx)) s
    vKeyHashesSubset   : vKeyHashesNeeded ⊆ vKeyHashesProvided
    scriptHashesSubset : scriptHashesNeeded ⊆ mapˢ hash scriptsProvided
    dataHashesSubset   : dataHashesNeeded ⊆ mapˢ hash dataProvided
    languageV4Only     : languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵
    auxDataHashValid   : TxBody.txADhash (Tx.txBody tx) ≡ map hash (Tx.txAuxData tx)

-- These deciders use the ¿ _ ¿ syntax from the Ledger prelude to decide each field.
-- Since the WitnessLogic is computed once at the start, these are very efficient.
```
-->


## The <span class="AgdaDatatype">SUBUTXOW</span> Transition System {#sec:the-subutxow-transition-system}

Sub-transactions cannot reference or use bootstrap addresses

1. All needed phase-2 scripts use Plutus language V4.

```agda
data _⊢_⇀⦇_,SUBUTXOW⦈_ : SubUTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXOW :
    ∙ SUBUTXOW-Premises Γ s txSub
    ∙ Γ ⊢ s ⇀⦇ txSub ,SUBUTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈ s'
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
  -- Normal branch is taken exactly when Legacy does *not* hold.
  UTXOW-normal :
    ∙ ¬ Legacy Γ txTop
    ∙ UTXOW-Normal-Premises Γ s txTop
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

4. `Guards` is the empty set, and, thus, all sub-transaction's `requiredTopLevelGuards`
   are also the empty set.

```agda
  -- Legacy branch is taken exactly when Legacy holds.
  UTXOW-legacy :
    ∙ Legacy Γ txTop
    ∙ UTXOW-Legacy-Premises Γ s txTop
    ∙ (Γ , true) ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ txTop ,UTXOW⦈ s'
```

<!--
```agda
unquoteDecl UTXOW-normal-premises = genPremises UTXOW-normal-premises (quote UTXOW-normal)
unquoteDecl UTXOW-legacy-premises = genPremises UTXOW-legacy-premises (quote UTXOW-legacy)
unquoteDecl SUBUTXOW-premises = genPremises SUBUTXOW-premises (quote SUBUTXOW)
pattern UTXOW-normal-⋯ p₁ p₂ h = UTXOW-normal (p₁ , p₂ , h)
pattern SUBUTXOW-⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ h = SUBUTXOW (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , h)
```
-->
