---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">LEDGER</span>: Computational {#sec:ledger-computational}

This module proves that the `SUBLEDGER`{.AgdaDatatype} and `LEDGER`{.AgdaDatatype}
transition rules are computational.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Entities.Properties.Computational txs
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Gov.Properties.Computational txs
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxow.Properties.Computational txs abs

open import Data.Bool.Properties using (¬-not)

instance
  _ = Monad-ComputationResult

private
  if-false : ∀ {A : Type} {b : Bool} {x y : A} → b ≡ false → (if b then x else y) ≡ y
  if-false refl = refl

-- When isTopLevelValid ≡ false, SUBUTXO is a UTxO no-op,
-- so SUBUTXOW leaves the UTxOState unchanged.
  SUBUTXOW-noop
    : ∀ {Γ : SubUTxOEnv} {s s' : UTxOState} {stx : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ false
    → Γ ⊢ s ⇀⦇ stx ,SUBUTXOW⦈ s'
    → s' ≡ s
  SUBUTXOW-noop isI (SUBUTXOW (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , SUBUTXO _)) = if-false isI
  -- The SUBUTXO post-state index is `if IsTopLevelValidFlagOf Γ then … else ⟦ UTxOOf s , FeesOf s , DonationsOf s ⟧`;
  -- `if-false isI` reduces it to the `else` branch, which is s by eta-expansion of the UTxOState record.

-- When isTopLevelValid ≡ false, a single SUBLEDGER step is a no-op.
-- SUBLEDGER-V is impossible (its first premise is isTopLevelValid ≡ true).
  SUBLEDGER-step-noop
    : ∀ {Γ : SubLedgerEnv} {s s' : LedgerState} {stx : SubLevelTx}
    → Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s'
    → SubLedgerEnv.isTopLevelValid Γ ≡ false
    → s' ≡ s
  SUBLEDGER-step-noop (SUBLEDGER-I _)         _   = refl
  SUBLEDGER-step-noop (SUBLEDGER-V (isV , _)) isI =
    ⊥-elim (case trans (sym isV) isI of λ ())

-- The reflexive-transitive closure of no-ops is a no-op.
  SUBLEDGERS-noop
    : ∀ {Γ : SubLedgerEnv} {s s' : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ false
    → Γ ⊢ s ⇀⦇ stxs ,SUBLEDGERS⦈ s'
    → s' ≡ s
  SUBLEDGERS-noop _   SUBLEDGERS-[]   = refl
  SUBLEDGERS-noop isI (SUBLEDGERS-∷ step rest) =
    trans (SUBLEDGERS-noop isI rest) (SUBLEDGER-step-noop step isI)

instance
```
-->


## Subledger: Computational {#sec:subledger-computational}

```agda
  Computational-SUBLEDGER : Computational _⊢_⇀⦇_,SUBLEDGER⦈_ String
```

<!--
```agda
  Computational-SUBLEDGER = record {go}
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    opaque
      computeSubutxow : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,SUBUTXOW⦈ s')
      computeSubutxow = comp {STS = _⊢_⇀⦇_,SUBUTXOW⦈_}

      computeSubentities : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,SUBENTITIES⦈ s')
      computeSubentities = comp {STS = _⊢_⇀⦇_,SUBENTITIES⦈_}

      computeGov : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,GOVS⦈ s')
      computeGov = comp {STS = _⊢_⇀⦇_,GOVS⦈_}

      completeGov : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,GOVS⦈ s' → (proj₁ <$> computeGov Γ s x) ≡ success s'
      completeGov = complete {STS = _⊢_⇀⦇_,GOVS⦈_}

      completeSubutxow : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,SUBUTXOW⦈ s' → (proj₁ <$> computeSubutxow Γ s x) ≡ success s'
      completeSubutxow = complete {STS = _⊢_⇀⦇_,SUBUTXOW⦈_}

      completeSubentities : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,SUBENTITIES⦈ s' → (proj₁ <$> computeSubentities Γ s x) ≡ success s'
      completeSubentities = complete {STS = _⊢_⇀⦇_,SUBENTITIES⦈_}

    module go
      (Γ   : SubLedgerEnv) (let open SubLedgerEnv Γ)
      (s   : LedgerState)  (let open LedgerState s)
      (stx : SubLevelTx)
      where

      subUtxoΓ : SubUTxOEnv
      subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , pState₀ , precedingDCerts , allScripts , isTopLevelValid ⟧

      subentitiesΓ : SubEntitiesEnv
      subentitiesΓ = ⟦ epoch slot , pparams , allColdCreds govSt enactState , rewards₀  ⟧

      govΓ : CertState → GovEnv
      govΓ certSt = ⟦ TxIdOf stx , epoch slot , pparams , ppolicy , enactState , certSt , dom (RewardsOf certSt) ⟧
```
-->

```agda
      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s')
```

<!--
```agda
      computeProof-aux : Dec (isTopLevelValid ≡ true) → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s')
      computeProof-aux (yes p) = do
        (certSt' , certStep) ← computeSubentities subentitiesΓ certState stx
        (govSt'  , govStep)  ← computeGov (govΓ certSt') govSt (GovProposals+Votes stx)
        (utxoSt' , utxoStep) ← computeSubutxow subUtxoΓ utxoSt stx
        success (_ , SUBLEDGER-V (p , certStep , govStep , utxoStep ))
      computeProof-aux (no ¬p) = do
        (utxoSt' , utxoStep) ← computeSubutxow subUtxoΓ utxoSt stx
        let utxoStep' = subst (subUtxoΓ ⊢ utxoSt ⇀⦇ stx ,SUBUTXOW⦈_)
                              (SUBUTXOW-noop (¬-not ¬p) utxoStep) utxoStep
        success (_ , SUBLEDGER-I (¬-not ¬p , utxoStep'))

      computeProof = computeProof-aux (isTopLevelValid ≟ true)
```
-->

```agda
      completeness : ∀ s' → Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
```

<!--
```agda
      completeness-aux : (d : Dec (isTopLevelValid ≡ true)) → ∀ s' → Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s'
                       → (proj₁ <$> computeProof-aux d) ≡ success s'
      completeness-aux (no ¬v) _ (SUBLEDGER-V (v , _)) = contradiction v ¬v
      completeness-aux (yes _) _ (SUBLEDGER-V {certState₁ = certSt'} (_ , certStep , govStep , utxoStep)) =
        bind-complete (computeSubentities subentitiesΓ certState stx) (completeSubentities _ _ _ _ certStep) λ _ →
        bind-complete (computeGov (govΓ certSt') govSt (GovProposals+Votes stx)) (completeGov (govΓ certSt') _ _ _ govStep) λ _ →
        bind-complete (computeSubutxow subUtxoΓ utxoSt stx) (completeSubutxow _ _ _ _ utxoStep) λ _ → refl
      completeness-aux (yes v) _ (SUBLEDGER-I (i , _)) = case trans (sym v) i of λ ()
      completeness-aux (no _) _ (SUBLEDGER-I (_ , utxoStep)) =
        bind-complete (computeSubutxow subUtxoΓ utxoSt stx) (completeSubutxow _ _ _ _ utxoStep) λ _ → refl

      completeness = completeness-aux (isTopLevelValid ≟ true)

instance
```
-->

```agda
  Computational-SUBLEDGERS : Computational _⊢_⇀⦇_,SUBLEDGERS⦈_ String
```

<!--
```agda
  Computational-SUBLEDGERS = record {go}
    where
      open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
      opaque
        computeSubLedger : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,SUBLEDGER⦈ s')
        computeSubLedger = comp {STS = _⊢_⇀⦇_,SUBLEDGER⦈_}

        completeSubLedger : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,SUBLEDGER⦈ s' → (proj₁ <$> computeSubLedger Γ s x) ≡ success s'
        completeSubLedger = complete {STS = _⊢_⇀⦇_,SUBLEDGER⦈_}

      module go
        where
        computeProof : ∀ (Γ   : SubLedgerEnv) (s : LedgerState) (stxs : List SubLevelTx) → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ stxs ,SUBLEDGERS⦈ s')
        computeProof Γ s [] = success (s , SUBLEDGERS-[])
        computeProof Γ s (stx ∷ stxs) = do
          (s'  , p) ← computeSubLedger Γ s stx
          (s'' , q) ← computeProof (record Γ { precedingDCerts = SubLedgerEnv.precedingDCerts Γ ++ DCertsOf stx }) s' stxs
          success (s'' , SUBLEDGERS-∷ p q)

        completeness : ∀ (Γ : SubLedgerEnv) (s : LedgerState) (stxs : List SubLevelTx) (s' : LedgerState) → Γ ⊢ s ⇀⦇ stxs ,SUBLEDGERS⦈ s' → (proj₁ <$> computeProof Γ s stxs) ≡ success s'
        completeness Γ s [] s' SUBLEDGERS-[] = refl
        completeness Γ s (stx ∷ stxs) s' (SUBLEDGERS-∷ p q) =
          bind-complete (computeSubLedger Γ s stx) (completeSubLedger _ _ _ _ p) λ _ →
          bind-complete (computeProof Γ' _ stxs) (completeness Γ' _ stxs _ q) λ _ → refl
          where Γ' = record Γ { precedingDCerts = SubLedgerEnv.precedingDCerts Γ ++ DCertsOf stx }

instance
```
-->

## <span class="AgdaDatatype">LEDGER</span>: Computational {#sec:ledger-computational}

```agda
  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_ String
```

<!--
```agda
  Computational-LEDGER = record {go}
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    opaque
      computeSubledgers : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,SUBLEDGERS⦈ s')
      computeSubledgers = comp {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}

      computeUtxow : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,UTXOW⦈ s')
      computeUtxow = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}

      computeEntities : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,ENTITIES⦈ s')
      computeEntities = comp {STS = _⊢_⇀⦇_,ENTITIES⦈_}

      computeGov : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,GOVS⦈ s')
      computeGov = comp {STS = _⊢_⇀⦇_,GOVS⦈_}

      completeSubledgers : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,SUBLEDGERS⦈ s' → (proj₁ <$> computeSubledgers Γ s x) ≡ success s'
      completeSubledgers = complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}

      completeUtxow : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,UTXOW⦈ s' → (proj₁ <$> computeUtxow Γ s x) ≡ success s'
      completeUtxow = complete {STS = _⊢_⇀⦇_,UTXOW⦈_}

      completeEntities : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,ENTITIES⦈ s' → (proj₁ <$> computeEntities Γ s x) ≡ success s'
      completeEntities = complete {STS = _⊢_⇀⦇_,ENTITIES⦈_}

      completeGov : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,GOVS⦈ s' → (proj₁ <$> computeGov Γ s x) ≡ success s'
      completeGov = complete {STS = _⊢_⇀⦇_,GOVS⦈_}

    module go
      (Γ     : LedgerEnv)   (let open LedgerEnv Γ)
      (s     : LedgerState) (let open LedgerState s)
      (txTop : TopLevelTx)
      where
      utxo₀ : UTxO
      utxo₀ = UTxOOf utxoSt

      pState₀ : PState
      pState₀ = PStateOf certState

      allScripts : ℙ Script
      allScripts = getAllScripts txTop utxo₀

      legacyMode : Bool
      legacyMode = isLegacyMode utxo₀ allScripts txTop

      subΓ : SubLedgerEnv
      subΓ = ⟦ slot , ppolicy , pparams , enactState , treasury , utxo₀ , RewardsOf (CertStateOf s) , pState₀ , [] , allScripts , IsValidFlagOf txTop ⟧

      entitiesΓ : GovState → CertState → EntitiesEnv
      entitiesΓ govSt certSt = ⟦ epoch slot , pparams , allColdCreds govSt enactState , legacyMode , RewardsOf certSt ⟧

      govΓ : CertState → GovEnv
      govΓ certSt = ⟦ TxIdOf txTop , epoch slot , pparams , ppolicy , enactState , certSt , dom (RewardsOf certSt) ⟧

      utxoΓ : UTxOEnv
      utxoΓ = ⟦ slot , pparams , treasury , utxo₀ , pState₀ , allScripts , legacyMode ⟧
```
-->

```agda
      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s')
```

<!--
```agda
      computeProof-aux : Dec (IsValidFlagOf txTop ≡ true) → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s')
      computeProof-aux (yes p) = do
        (s₁      , subStep)  ← computeSubledgers subΓ s (SubTransactionsOf txTop)
        (certSt₂ , certStep) ← computeEntities (entitiesΓ (GovStateOf s₁) (CertStateOf s)) (CertStateOf s₁) txTop
        (govSt₂  , govStep)  ← computeGov (govΓ certSt₂) (GovStateOf s₁) (GovProposals+Votes txTop)
        (utxoSt₂ , utxoStep) ← computeUtxow utxoΓ (UTxOStateOf s₁) txTop
        success (_ , LEDGER-V (p , subStep , certStep , govStep , utxoStep))
      computeProof-aux (no ¬p) = do
        (s₁      , subStep)  ← computeSubledgers subΓ s (SubTransactionsOf txTop)
        (utxoSt₁ , utxoStep) ← computeUtxow utxoΓ utxoSt txTop
        let subStep' = subst (subΓ ⊢ s ⇀⦇ SubTransactionsOf txTop ,SUBLEDGERS⦈_)
                             (SUBLEDGERS-noop (¬-not ¬p) subStep) subStep
        success (_ , LEDGER-I (¬-not ¬p , subStep' , utxoStep))

      computeProof = computeProof-aux (IsValidFlagOf txTop ≟ true)
```
-->

```agda
      completeness : ∀ s' → Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
```

<!--
```agda
      completeness-aux : (d : Dec (IsValidFlagOf txTop ≡ true)) → ∀ s' → Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s'
                       → (proj₁ <$> computeProof-aux d) ≡ success s'
      completeness-aux (no ¬v) _ (LEDGER-V (v , _)) = contradiction v ¬v
      completeness-aux (yes _) _
        (LEDGER-V {utxoState₁ = utxoSt₁} {govSt₁} {certSt₁} {certSt₂} {govSt₂} {utxoSt₂}
        (_ , subStep , entitiesStep , govStep , utxoStep)) =
        bind-complete (computeSubledgers subΓ s (SubTransactionsOf txTop))
          (completeSubledgers subΓ s (SubTransactionsOf txTop) ⟦ utxoSt₁ , govSt₁ , certSt₁ ⟧ˡ subStep) λ _ →
        bind-complete (computeEntities (entitiesΓ govSt₁ (CertStateOf s)) certSt₁ txTop)
          (completeEntities (entitiesΓ govSt₁ (CertStateOf s)) certSt₁ txTop certSt₂ entitiesStep) λ _ →
        bind-complete (computeGov (govΓ certSt₂) govSt₁ (GovProposals+Votes txTop))
          (completeGov (govΓ certSt₂) govSt₁ (GovProposals+Votes txTop) govSt₂ govStep) λ _ →
        bind-complete (computeUtxow utxoΓ utxoSt₁ txTop)
          (completeUtxow utxoΓ utxoSt₁ txTop utxoSt₂ utxoStep) λ _ → refl
      completeness-aux (yes v) _ (LEDGER-I (i , _)) = case trans (sym v) i of λ ()
      completeness-aux (no _) _ (LEDGER-I {utxoState₁ = utxoSt₁} (_ , subStep , utxoStep)) =
        bind-complete (computeSubledgers subΓ s (SubTransactionsOf txTop))
          (completeSubledgers subΓ s (SubTransactionsOf txTop) s subStep) λ _ →
        bind-complete (computeUtxow utxoΓ utxoSt txTop)
          (completeUtxow utxoΓ utxoSt txTop utxoSt₁ utxoStep) λ _ → refl

      completeness = completeness-aux (IsValidFlagOf txTop ≟ true)
```
-->
