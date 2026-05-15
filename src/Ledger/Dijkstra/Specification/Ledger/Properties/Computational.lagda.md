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
import Ledger.Dijkstra.Specification.Certs

module Ledger.Dijkstra.Specification.Ledger.Properties.Computational
  (txs : _) (open TransactionStructure txs) (open Ledger.Dijkstra.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs.Properties.Computational govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Gov.Properties.Computational txs
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxow.Properties.Computational txs abs

open import Data.Bool.Properties using (¬-not)

instance
  _ = Monad-ComputationResult

-- When isTopLevelValid ≡ false, SUBUTXO is a UTxO no-op,
-- so SUBUTXOW leaves the UTxOState unchanged.
private
  SUBUTXOW-noop
    : ∀ {Γ : SubUTxOEnv} {s s' : UTxOState} {stx : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ false
    → Γ ⊢ s ⇀⦇ stx ,SUBUTXOW⦈ s'
    → s' ≡ s
  SUBUTXOW-noop isI (SUBUTXOW (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , SUBUTXO _)) rewrite isI = refl
  -- After `rewrite isI`, `IsTopLevelValidFlagOf Γ` reduces to `false`,
  -- so the SUBUTXO post-state index reduces to `⟦ UTxOOf s , FeesOf s , DonationsOf s ⟧`
  -- which is s by eta-expansion of the UTxOState record, giving refl.

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
  SUBLEDGERS-noop _   (BS-base Id-nop)   = refl
  SUBLEDGERS-noop isI (BS-ind step rest) =
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
    computeSubutxow = comp {STS = _⊢_⇀⦇_,SUBUTXOW⦈_}
    computeCerts    = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov      = comp {STS = _⊢_⇀⦇_,GOVS⦈_}

    module go
      (Γ   : SubLedgerEnv) (let open SubLedgerEnv Γ)
      (s   : LedgerState)  (let open LedgerState s)
      (stx : SubLevelTx)
      where
      subUtxoΓ : SubUTxOEnv
      subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧

      certΓ : CertEnv
      certΓ = ⟦ epoch slot , pparams , ListOfGovVotesOf stx , WithdrawalsOf stx , allColdCreds govSt enactState , DirectDepositsOf stx ⟧

      govΓ : CertState → GovEnv
      govΓ certSt = ⟦ TxIdOf stx , epoch slot , pparams , ppolicy , enactState , certSt , dom (RewardsOf certSt) ⟧
```
-->

```agda
      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s')
```

<!--
```agda
      computeProof = case isTopLevelValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeSubutxow subUtxoΓ utxoSt stx
          (certSt' , certStep) ← computeCerts certΓ certState (DCertsOf stx)
          (govSt'  , govStep)  ← computeGov (govΓ certSt') govSt (GovProposals+Votes stx)
          success (_ , SUBLEDGER-V (p , utxoStep , certStep , govStep))
        (no ¬p) → do
          (utxoSt' , utxoStep) ← computeSubutxow subUtxoΓ utxoSt stx
          let utxoStep' = subst (subUtxoΓ ⊢ utxoSt ⇀⦇ stx ,SUBUTXOW⦈_)
                                (SUBUTXOW-noop (¬-not ¬p) utxoStep) utxoStep
          success (_ , SUBLEDGER-I (¬-not ¬p , utxoStep'))
```
-->

```agda
      completeness : ∀ s' → Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
```

<!--
```agda
      completeness sub' (SUBLEDGER-V (v , utxoStep , certStep , govStep))
        with isTopLevelValid ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeSubutxow subUtxoΓ utxoSt stx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        with computeCerts certΓ certState (DCertsOf stx) | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with computeGov (govΓ certSt') govSt (GovProposals+Votes stx)
           | complete {STS = _⊢_⇀⦇_,GOVS⦈_} (govΓ certSt') _ _ _ govStep
      ... | success (govSt' , _) | refl = refl
      completeness sub' (SUBLEDGER-I (i , utxoStep))
        with isTopLevelValid ≟ true
      ... | yes v = case trans (sym v) i of λ ()
      ... | no ¬v
        with computeSubutxow subUtxoΓ utxoSt stx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-SUBLEDGERS : Computational _⊢_⇀⦇_,SUBLEDGERS⦈_ String
Computational-SUBLEDGERS = it

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
    computeSubledgers = comp {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}
    computeCerts      = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov        = comp {STS = _⊢_⇀⦇_,GOVS⦈_}
    computeUtxow      = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}

    module go
      (Γ     : LedgerEnv)   (let open LedgerEnv Γ)
      (s     : LedgerState) (let open LedgerState s)
      (txTop : TopLevelTx)
      where
      utxo₀ : UTxO
      utxo₀ = UTxOOf utxoSt

      allScripts : ℙ Script
      allScripts = getAllScripts txTop utxo₀

      subΓ : SubLedgerEnv
      subΓ = ⟦ slot , ppolicy , pparams , enactState , treasury , utxo₀ , IsValidFlagOf txTop , allScripts , RewardsOf certState ⟧

      certΓ : GovState → CertEnv
      certΓ govSt' = ⟦ epoch slot , pparams , ListOfGovVotesOf txTop , WithdrawalsOf txTop , allColdCreds govSt' enactState , DirectDepositsOf txTop ⟧

      govΓ : CertState → GovEnv
      govΓ certSt = ⟦ TxIdOf txTop , epoch slot , pparams , ppolicy , enactState , certSt , dom (RewardsOf certSt) ⟧

      utxoΓ-valid : CertState → CertState → UTxOEnv
      utxoΓ-valid certSt₁ certSt₂ =
        ⟦ slot , pparams , treasury , utxo₀
        , calculateDepositsChange certState certSt₁ certSt₂
        , allScripts , RewardsOf certState ⟧

      utxoΓ-invalid : UTxOEnv
      utxoΓ-invalid = ⟦ slot , pparams , treasury , utxo₀ , ⟦ 0ℤ , 0ℤ ⟧ , allScripts , RewardsOf certState ⟧
```
-->

```agda
      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s')
```

<!--
```agda
      computeProof = case IsValidFlagOf txTop ≟ true of λ where
        (yes p) → do
          (s₁      , subStep)  ← computeSubledgers subΓ s (SubTransactionsOf txTop)
          (certSt₂ , certStep) ← computeCerts (certΓ (GovStateOf s₁)) (CertStateOf s₁) (DCertsOf txTop)
          (govSt₂  , govStep)  ← computeGov (govΓ certSt₂) (GovStateOf s₁) (GovProposals+Votes txTop)
          (utxoSt₂ , utxoStep) ← computeUtxow (utxoΓ-valid (CertStateOf s₁) certSt₂) (UTxOStateOf s₁) txTop
          success (_ , LEDGER-V (p , subStep , certStep , govStep , utxoStep))
        (no ¬p) → do
          (s₁      , subStep)  ← computeSubledgers subΓ s (SubTransactionsOf txTop)
          (utxoSt₁ , utxoStep) ← computeUtxow utxoΓ-invalid utxoSt txTop
          let subStep' = subst (subΓ ⊢ s ⇀⦇ SubTransactionsOf txTop ,SUBLEDGERS⦈_)
                               (SUBLEDGERS-noop (¬-not ¬p) subStep) subStep
          success (_ , LEDGER-I (¬-not ¬p , subStep' , utxoStep))
```
-->

```agda
      completeness : ∀ s' → Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
```

<!--
```agda
      completeness ledgerSt
        (LEDGER-V {certState₁ = certSt₁} {certSt₂} {utxoState₁ = utxoSt₁} {govSt₁} {govSt₂} {utxoSt₂}
                  (v , subStep , certStep , govStep , utxoStep))
        with IsValidFlagOf txTop ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeSubledgers subΓ s (SubTransactionsOf txTop)
           | complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_} subΓ s (SubTransactionsOf txTop)
                      (⟦ utxoSt₁ , govSt₁ , certSt₁ ⟧ˡ) subStep
      ... | success (⟦ utxoSt₁ , govSt₁ , certSt₁ ⟧ˡ , _) | refl
        with computeCerts (certΓ govSt₁) certSt₁ (DCertsOf txTop)
           | complete {STS = _⊢_⇀⦇_,CERTS⦈_} (certΓ govSt₁) certSt₁ (DCertsOf txTop) certSt₂ certStep
      ... | success (certSt₂ , _) | refl
        with computeGov (govΓ certSt₂) govSt₁ (GovProposals+Votes txTop)
           | complete {STS = _⊢_⇀⦇_,GOVS⦈_} (govΓ certSt₂) govSt₁ (GovProposals+Votes txTop) govSt₂ govStep
      ... | success (govSt₂ , _) | refl
        with computeUtxow (utxoΓ-valid certSt₁ certSt₂) utxoSt₁ txTop
           | complete {STS = _⊢_⇀⦇_,UTXOW⦈_} (utxoΓ-valid certSt₁ certSt₂) utxoSt₁ txTop utxoSt₂ utxoStep
      ... | success (utxoSt₂ , _) | refl = refl
      completeness ledgerSt
        (LEDGER-I {utxoState₁ = utxoSt₁} (i , subStep , utxoStep))
        with IsValidFlagOf txTop ≟ true
      ... | yes v = case trans (sym v) i of λ ()
      ... | no ¬v
        with computeSubledgers subΓ s (SubTransactionsOf txTop)
           | complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_} subΓ s (SubTransactionsOf txTop) s subStep
      ... | success _ | refl
        with computeUtxow utxoΓ-invalid utxoSt txTop
           | complete {STS = _⊢_⇀⦇_,UTXOW⦈_} utxoΓ-invalid utxoSt txTop utxoSt₁ utxoStep
      ... | success _ | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it
```
-->
