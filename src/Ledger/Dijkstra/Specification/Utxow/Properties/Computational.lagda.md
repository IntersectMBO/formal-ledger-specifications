---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/Computational.lagda.md
---

<!--
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

decide-SUBUTXOW-Premises : ∀ Γ s tx → Dec (SUBUTXOW-Premises Γ s tx)
decide-SUBUTXOW-Premises Γ s tx =
  let wd = collectWitnessLogicSubTx tx Γ in
  let open WitnessLogicSubTx wd in
  case ¿ ∀[ (vk , σ) ∈ TxWitnesses.vKeySigs (Tx.txWitnesses tx) ] isSigned vk (txidBytes (TxIdOf tx)) σ ¿ of λ where
    (no ¬p) → no (λ where (record { sigsValid = p }) → ¬p p)
    (yes sigsOk) →
      case ¿ ∀[ s ∈ p1ScriptsNeeded ] validP1Script vKeyHashesProvided (TxBody.txVldt (Tx.txBody tx)) s ¿ of λ where
      (no ¬p) → no (λ where (record { p1ScriptsValid = p }) → ¬p p)
      (yes p1Ok) →
        case ¿ vKeyHashesNeeded ⊆ vKeyHashesProvided ¿ of λ where
        (no ¬p) → no (λ where (record { vKeyHashesSubset = p }) → ¬p (λ {a} → p))
        (yes vkhOk) →
          case ¿ scriptHashesNeeded ⊆ mapˢ hash scriptsProvided ¿ of λ where
          (no ¬p) → no (λ where (record { scriptHashesSubset = p }) → ¬p (λ {a} → p))
          (yes shOk) →
            case ¿ dataHashesNeeded ⊆ mapˢ hash dataProvided ¿ of λ where
              (no ¬p) → no (λ where (record { dataHashesSubset = p }) → ¬p (λ {a} → p))
              (yes dhOk) →
                case ¿ languages p2ScriptsNeeded ⊆ dom (PParams.costmdls (PParamsOf Γ)) ∩ ❴ PlutusV4 ❵ ¿ of λ where
                (no ¬p) → no (λ where (record { languageV4Only = p }) → ¬p (λ {a} → p))
                (yes langOk) →
                  case ¿ TxBody.txADhash (Tx.txBody tx) ≡ map hash (Tx.txAuxData tx) ¿ of λ where
                  (no ¬p) → no (λ where (record { auxDataHashValid = p }) → ¬p p)
                  (yes adOk) → yes (record { sigsValid = sigsOk ; p1ScriptsValid = p1Ok
                                           ; vKeyHashesSubset = λ {a} → vkhOk {a}
                                           ; scriptHashesSubset = λ {a} → shOk {a}
                                           ; dataHashesSubset = λ {a} → dhOk {a}
                                           ; languageV4Only = λ {a} → langOk {a}
                                           ; auxDataHashValid = adOk })


decide-Legacy : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (Legacy Γ txTop)
decide-Legacy Γ txTop = ¿ ∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []) ¿
  where
  wd : WitnessLogic txTop Γ
  wd = collectWitnessLogic true txTop Γ
  open WitnessLogic wd


decide-Normal-Premises : ∀ Γ s tx → Dec (UTXOW-Normal-Premises Γ s tx)
decide-Normal-Premises Γ s tx =
  let wd = collectWitnessLogic false tx Γ in
  let open WitnessLogic wd in
    case ¿ (UsesBootstrapAddress (UTxOOf Γ) tx → Is-∅ p2ScriptsNeeded) ¿ of λ where
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
                      (yes adOk) → yes (record { bootstrap = bootOk ; guardsPolicy = guardsOk
                                               ; sigsValid = sigsOk ; p1ScriptsValid = p1Ok
                                               ; vKeyHashesSubset = λ {a} → vkhOk {a}
                                               ; scriptHashesSubset = λ {a} → shOk {a}
                                               ; dataHashesSubset = λ {a} → dhOk {a}
                                               ; languageV4Only = λ {a} → langOk {a}
                                               ; auxDataHashValid = adOk })

decide-Legacy-Premises : ∀ Γ s tx → Dec (UTXOW-Legacy-Premises Γ s tx)
decide-Legacy-Premises Γ s tx =
  let wd = collectWitnessLogic true tx Γ in
  let open WitnessLogic wd in
    case ¿ ¬ (UsesBootstrapAddress (UTxOOf Γ) tx) ¿ of λ where
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
                          (yes adOk) → yes (record { noBootstrap = noBootOk
                                                   ; noGuards = noGuardsOk ; guardsPolicy = guardsOk
                                                   ; sigsValid = sigsOk ; p1ScriptsValid = p1Ok
                                                   ; vKeyHashesSubset = λ {a} → vkhOk {a}
                                                   ; scriptHashesSubset = λ {a} → shOk {a}
                                                   ; dataHashesSubset = λ {a} → dhOk {a}
                                                   ; legacyLanguages  = λ {a} → legLangOk {a}
                                                   ; auxDataHashValid  = adOk })

instance
```
-->

```agda
  Computational-SUBUTXOW : Computational _⊢_⇀⦇_,SUBUTXOW⦈_ String
  Computational-SUBUTXOW = MkComputational computeProof completeness
    where
    open Computational Computational-SUBUTXO
      renaming (computeProof to computeP; completeness to completeP)

    computeProof : (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx)
      → ComputationResult String (∃[ s' ] (Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈ s'))
    computeProof Γ s txSub with decide-SUBUTXOW-Premises Γ s txSub
    ... | no ¬p = failure "SUBUTXOW premises failed"
    ... | yes p = map (λ where (s' , h) → s' , SUBUTXOW (p , h)) (computeP Γ s txSub)

    completeness : (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx) (s' : UTxOState)
      → Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈ s' → map proj₁ (computeProof Γ s txSub) ≡ success s'
    completeness Γ s txSub s' (SUBUTXOW (p , h)) with decide-SUBUTXOW-Premises Γ s txSub
    ... | no ¬p = ⊥-elim (¬p p)
    ... | yes _ with computeP Γ s txSub | completeP Γ s txSub s' h
    ... | success _ | refl = refl

  Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_ String
  Computational-UTXOW = MkComputational computeProof completeness
    where
    open Computational Computational-UTXO
      renaming (computeProof to computeP; completeness to completeP)

    computeProof : (Γ : UTxOEnv) (s : UTxOState) (tx : TopLevelTx)
      → ComputationResult String (∃[ s' ] (Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'))

    computeProof Γ s tx with decide-Legacy Γ tx
    ... | no notrig = case (decide-Normal-Premises Γ s tx) of λ where
      (no  _) → failure "UTXOW failed: normal premises"
      (yes pN) → map (λ where (s' , hU) → s' , UTXOW-normal (notrig , pN , hU)) (computeP (Γ , false) s tx)
    ... | yes trig = case (decide-Legacy-Premises Γ s tx) of λ where
      (no  _) → failure "UTXOW failed: legacy premises"
      (yes pL) → map (λ where (s' , hU) → s' , UTXOW-legacy (trig , pL , hU)) (computeP (Γ , true) s tx)

    completeness : (Γ : UTxOEnv) (s : UTxOState) (tx : TopLevelTx) (s' : UTxOState)
      → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s' → map proj₁ (computeProof Γ s tx) ≡ success s'

    completeness Γ s tx s' (UTXOW-legacy (trig , pL , hU))
      with decide-Legacy Γ tx
    ... | no notrig = ⊥-elim (notrig trig)
    ... | yes _ with decide-Legacy-Premises Γ s tx
    ... | no ¬pL = ⊥-elim (¬pL pL)
    ... | yes _ with computeP (Γ , true) s tx | completeP (Γ , true) s tx s' hU
    ... | success _ | refl = refl
    ... | failure _ | ()

    completeness Γ s tx s' (UTXOW-normal (notrig , pN , hU))
      with decide-Legacy Γ tx
    ... | yes trig = ⊥-elim (notrig trig)
    ... | no _ with decide-Normal-Premises Γ s tx
    ... | no ¬pN = ⊥-elim (¬pN pN)
    ... | yes _ with computeP (Γ , false) s tx | completeP (Γ , false) s tx s' hU
    ... | success _ | refl = refl
    ... | failure _ | ()
```
