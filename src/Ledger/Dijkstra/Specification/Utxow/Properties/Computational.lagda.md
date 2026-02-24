---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

import Data.Maybe as M

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxow.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.Computational txs abs
open import Data.List.Relation.Unary.Any using (here; there)

decide-SUBUTXOW-Premises : ∀ Γ s tx → Dec (SUBUTXOW-Premises Γ s tx)
decide-SUBUTXOW-Premises Γ s tx =
  let wd = collectWitnessDataSubTx tx Γ in
  let open WitnessDataSubTx wd in
  case ¿ ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses tx) ] isSigned vk (txidBytes (TxIdOf tx)) σ ¿ of λ where
    (no ¬p) → no (λ where (record { sigsValid = p }) → ¬p p)
    (yes sigsOk) →
      case ¿ ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (TxBody.txVldt (Tx.txBody tx)) s ¿ of λ where
      (no ¬p) → no (λ where (record { p1ScriptsValid = p }) → ¬p p)
      (yes p1Ok) →
        -- Hole 1: VKey Hashes Subset
        case ¿ vKeyHashesNeeded ⊆ vKeyHashesProvided ¿ of λ where
        (no ¬p) → no (λ where (record { vKeyHashesSubset = p }) → ¬p (λ {a} → p))
        (yes vkhOk) →
          -- Hole 2: Script Hashes Subset
          case ¿ scriptHashesNeeded ⊆ mapˢ hash scriptsProvided ¿ of λ where
          (no ¬p) → no (λ where (record { scriptHashesSubset = p }) → ¬p (λ {a} → p))
          (yes shOk) →
            -- Hole 3: Data Hashes Subset
            case ¿ dataHashesNeeded ⊆ mapˢ hash dataProvided ¿ of λ where
              (no ¬p) → no (λ where (record { dataHashesSubset = p }) → ¬p (λ {a} → p))
              (yes dhOk) →
                -- Hole 0: Language V4 check (Fixed Hiding)
                case ¿ languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵ ¿ of λ where
                (no ¬p) → no (λ where (record { languageV4Only = p }) → ¬p (λ {a} → p))
                (yes langOk) →
                  case ¿ TxBody.txADhash (Tx.txBody tx) ≡ map hash (Tx.txAuxData tx) ¿ of λ where
                  (no ¬p) → no (λ where (record { auxDataHashValid = p }) → ¬p p)
                  (yes adOk) →
                    yes (record
                      { sigsValid          = sigsOk
                      ; p1ScriptsValid     = p1Ok
                      ; vKeyHashesSubset   = (λ {a} → vkhOk {a})
                      ; scriptHashesSubset = (λ {a} → shOk {a})
                      ; dataHashesSubset   = (λ {a} → dhOk {a})
                      ; languageV4Only     = (λ {a} → langOk {a})
                      ; auxDataHashValid   = adOk
                      })

instance
  Computational-SUBUTXOW : Computational _⊢_⇀⦇_,SUBUTXOW⦈_ String
  Computational-SUBUTXOW = record {go}
    where
      module go (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx) where
        open Computational Computational-SUBUTXO renaming (computeProof to computeP; completeness to completeP)

        computeProof : ComputationResult String (∃ (Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈_))
        computeProof with decide-SUBUTXOW-Premises Γ s txSub
        ... | no ¬p = failure "SUBUTXOW premises failed"
        ... | yes p = map (λ where (s' , h) → s' , SUBUTXOW (p , h)) (computeP Γ s txSub)

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (SUBUTXOW (p , h) ) with decide-SUBUTXOW-Premises Γ s txSub
        ... | no ¬p = ⊥-elim (¬p p)
        ... | yes _ with computeP Γ s txSub | completeP Γ s txSub s' h
        ... | success _ | refl = refl

decide-Normal-Premises : ∀ b Γ s tx → Dec (UTXOW-Normal-Premises b Γ s tx)
decide-Normal-Premises b Γ s tx =
  let wd = collectWitnessData tx Γ in
  let open WitnessData wd in
  case ¿ b ≡ false ¿ of λ where
    (no ¬p) → no (λ where (record { v1-v3-allowed = p }) → ¬p p)
    (yes bOk) → case ¿ (UsesBootstrapAddress (UTxOOf Γ) tx → Is-∅ p2ScriptsNeeded) ¿ of λ where
      (no ¬p) → no (λ where (record { bootstrap = p }) → ¬p p)
      (yes bootOk) → case ¿ RequiredGuardsInTopLevel tx ¿ of λ where
        (no ¬p) → no (λ where (record { guardsPolicy = p }) → ¬p p)
        (yes guardsOk) → case ¿ ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses tx) ] isSigned vk (txidBytes (TxIdOf tx)) σ ¿ of λ where
          (no ¬p) → no (λ where (record { sigsValid = p }) → ¬p p)
          (yes sigsOk) → case ¿ ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (TxBody.txVldt (Tx.txBody tx)) s ¿ of λ where
            (no ¬p) → no (λ where (record { p1ScriptsValid = p }) → ¬p p)
            (yes p1Ok) → case ¿ vKeyHashesNeeded ⊆ vKeyHashesProvided ¿ of λ where
              (no ¬p) → no (λ where (record { vKeyHashesSubset = p }) → ¬p (λ {a} → p))
              (yes vkhOk) → case ¿ scriptHashesNeeded ⊆ mapˢ hash scriptsProvided ¿ of λ where
                (no ¬p) → no (λ where (record { scriptHashesSubset = p }) → ¬p (λ {a} → p))
                (yes shOk) → case ¿ dataHashesNeeded ⊆ mapˢ hash dataProvided ¿ of λ where
                  (no ¬p) → no (λ where (record { dataHashesSubset = p }) → ¬p (λ {a} → p))
                  (yes dhOk) → case ¿ languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵ ¿ of λ where
                    (no ¬p) → no (λ where (record { languageV4Only = p }) → ¬p (λ {a} → p))
                    (yes langOk) → case ¿ TxBody.txADhash (Tx.txBody tx) ≡ map hash (Tx.txAuxData tx) ¿ of λ where
                      (no ¬p) → no (λ where (record { auxDataHashValid = p }) → ¬p p)
                      (yes adOk) →
                        yes (record
                          { v1-v3-allowed = bOk ; bootstrap = bootOk ; guardsPolicy = guardsOk
                          ; sigsValid = sigsOk ; p1ScriptsValid = p1Ok ; vKeyHashesSubset = (λ {a} → vkhOk {a})
                          ; scriptHashesSubset = (λ {a} → shOk {a}) ; dataHashesSubset = (λ {a} → dhOk {a})
                          ; languageV4Only = λ {a} → langOk {a} ; auxDataHashValid = adOk
                          })

decide-Legacy-Premises : ∀ b Γ s tx → Dec (UTXOW-Legacy-Premises b Γ s tx)
decide-Legacy-Premises b Γ s tx =
  let wd = collectWitnessDataLegacy tx Γ in
  let open WitnessData wd in
  case ¿ b ≡ true ¿ of λ where
    (no ¬p) → no (λ where (record { v1-v3-allowed = p }) → ¬p p)
    (yes bOk) → case ¿ ∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []) ¿ of λ where
      (no ¬p) → no (λ where (record { legacyScripts = p }) → ¬p p)
      (yes legOk) → case ¿ ¬ (UsesBootstrapAddress (UTxOOf Γ) tx) ¿ of λ where
        (no ¬p) → no (λ where (record { noBootstrap = p }) → ¬p p)
        (yes noBootOk) → case ¿ Is-∅ (GuardsOf tx) ¿ of λ where
          (no ¬p) → no (λ where (record { noGuards = p }) → ¬p p)
          (yes noGuardsOk) → case ¿ RequiredGuardsInTopLevel tx ¿ of λ where
            (no ¬p) → no (λ where (record { guardsPolicy = p }) → ¬p p)
            (yes guardsOk) → case ¿ ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses tx) ] isSigned vk (txidBytes (TxIdOf tx)) σ ¿ of λ where
              (no ¬p) → no (λ where (record { sigsValid = p }) → ¬p p)
              (yes sigsOk) → case ¿ ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (TxBody.txVldt (Tx.txBody tx)) s ¿ of λ where
                (no ¬p) → no (λ where (record { p1ScriptsValid = p }) → ¬p p)
                (yes p1Ok) → case ¿ vKeyHashesNeeded ⊆ vKeyHashesProvided ¿ of λ where
                  (no ¬p) → no (λ where (record { vKeyHashesSubset = p }) → ¬p (λ {a} → p))
                  (yes vkhOk) → case ¿ scriptHashesNeeded ⊆ mapˢ hash scriptsProvided ¿ of λ where
                    (no ¬p) → no (λ where (record { scriptHashesSubset = p }) → ¬p (λ {a} → p))
                    (yes shOk) → case ¿ dataHashesNeeded ⊆ mapˢ hash dataProvided ¿ of λ where
                      (no ¬p) → no (λ where (record { dataHashesSubset = p }) → ¬p (λ {a} → p))
                      (yes dhOk) → case ¿ languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ allowedLanguagesLegacyMode tx (UTxOOf Γ) ¿ of λ where
                        (no ¬p) → no (λ where (record { legacyLanguages = p }) → ¬p (λ {a} → p))
                        (yes legLangOk) → case ¿ TxBody.txADhash (Tx.txBody tx) ≡ map hash (Tx.txAuxData tx) ¿ of λ where
                          (no ¬p) → no (λ where (record { auxDataHashValid = p }) → ¬p p)
                          (yes adOk) →
                            yes (record
                              { v1-v3-allowed = bOk ; legacyScripts = legOk ; noBootstrap = noBootOk
                              ; noGuards = noGuardsOk ; guardsPolicy = guardsOk ; sigsValid = sigsOk
                              ; p1ScriptsValid = p1Ok ; vKeyHashesSubset = (λ {a} → vkhOk {a})
                              ; scriptHashesSubset = (λ {a} → shOk {a}) ; dataHashesSubset = (λ {a} → dhOk {a})
                              ; legacyLanguages  = (λ {a} → legLangOk {a}) ; auxDataHashValid  = adOk
                              })


normal-legacy-exclusive : ∀ {b Γ s tx}
  → UTXOW-Normal-Premises b Γ s tx
  → UTXOW-Legacy-Premises b Γ s tx
  → ⊥
normal-legacy-exclusive {Γ} {s} {tx} pN pL with UTXOW-Normal-Premises.v1-v3-allowed pN
                                   | UTXOW-Legacy-Premises.v1-v3-allowed pL
... | refl | ()

{--
instance
  Computational-UTXOW : ∀ {b} → Computational _⊢_⇀⦇_,UTXOW⦈_ String
  Computational-UTXOW {b} = record {go}
    where
    module go (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) where
      open Computational Computational-UTXO renaming (computeProof to computeP; completeness to completeP)

      computeProof : ComputationResult String (∃[ s' ] (Γ ⊢ s ⇀⦇ txTop ,UTXOW⦈ s'))
      computeProof with decide-Normal-Premises b Γ s txTop
      ... | yes pN = map (λ where (s' , h) → s' , UTXOW-normal (pN , h)) (computeP (Γ , false) s txTop)
      ... | no _   with decide-Legacy-Premises b Γ s txTop
      ... | yes pL = map (λ where (s' , h) → s' , UTXOW-legacy (pL , h)) (computeP (Γ , true) s txTop)
      ... | no ¬pL = failure "UTXOW failed: Neither Normal nor Legacy premises met."

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ txTop ,UTXOW⦈ s' → map proj₁ computeProof ≡ success s'

      -- Case 1: V4
      completeness s' (UTXOW-normal {b = b} (pN , h)) with decide-Normal-Premises b Γ s txTop
      ... | no ¬pN = ⊥-elim (¬pN pN)
      ... | yes _  with computeP (Γ , false) s txTop | completeP (Γ , false) s txTop s' h
      ... | success _ | refl = {!!} -- refl

      -- Case 2: V1-V3
      completeness s' (UTXOW-legacy {b = b} (pL , h)) with decide-Normal-Premises b Γ s txTop
      -- This is where the exclusivity lemma is crucial
      ... | yes pN = ⊥-elim (normal-legacy-exclusive pN pL)
      ... | no _   with decide-Legacy-Premises b Γ s txTop
      ... | no ¬pL = ⊥-elim (¬pL pL)
      ... | yes _  with computeP (Γ , true) s txTop | completeP (Γ , true) s txTop s' h
      ... | success _ | refl = {!!} -- refl

--}


{--
module _
  {4≢1 : PlutusV4 ≢ PlutusV1}
  {4≢2 : PlutusV4 ≢ PlutusV2}
  {4≢3 : PlutusV4 ≢ PlutusV3}
  where
  -- Helper: A language cannot be V4 and also in the V1-V3 set.
  V4-not-legacy : ∀ {l} → l ≡ PlutusV4 → l ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []) → ⊥
  V4-not-legacy refl x with (Equivalence.from ∈-fromList x)
  ... | here 4≡1 = 4≢1 4≡1
  ... | there (here 4≡2) = 4≢2 4≡2
  ... | there (there (here 4≡3)) = 4≢3 4≡3

  normal-legacy-exclusive : ∀ {Γ s tx}
    → UTXOW-Normal-Premises Γ s tx
    → UTXOW-Legacy-Premises Γ s tx
    → ⊥
  normal-legacy-exclusive {Γ} {s} {tx} pN pL = V4-not-legacy sEqV4 legLangProof
    where
      -- 1. From Legacy, we get a script 's' and proof it's V1-V3
      -- (legScript , legInNeeded , legLangProof) = UTXOW-Legacy-Premises.legacyScripts pL
      wd wd-legacy : WitnessData tx Γ
      wd        = collectWitnessData tx Γ
      wd-legacy = collectWitnessDataLegacy tx Γ

      legScripts : ∃[ s ∈ (WitnessData.p2ScriptsNeeded wd-legacy) ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ [])
      legScripts = UTXOW-Legacy-Premises.legacyScripts pL

      legScript : P2Script
      legScript = legScripts .proj₁

      legLangProof : language legScript ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ [])
      legLangProof = legScripts .proj₂ .proj₂

      legInNeeded : language legScript ∈ languages (WitnessData.p2ScriptsNeeded wd)
      legInNeeded = {!!}

      -- 2. From Normal, we know ALL scripts in p2ScriptsNeeded are V4
      -- We apply the Normal language policy to our legacy script
      allV4 : languages (WitnessData.p2ScriptsNeeded wd) ⊆ˢ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵ˢ
      allV4 = UTXOW-Normal-Premises.languageV4Only pN

      open Equivalence
      -- Since legScript is in p2ScriptsNeeded, it must be V4
      sIsV4 : language legScript ∈ ❴ PlutusV4 ❵
      sIsV4 = proj₂ (from ∈-∩ (allV4 legInNeeded)) -- allV4 (map-preserve-∈ language legInNeeded)

      -- 3. Extract the equality from the singleton set {PlutusV4}
      -- In many ledger versions, (x ∈ ❴ y ❵) is just (x ≡ y)
      sEqV4 : language legScript ≡ PlutusV4
      sEqV4 = from ∈-singleton sIsV4

--}

```
