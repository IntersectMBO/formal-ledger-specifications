---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/Computational.lagda.md
---

# Ledger: Computational {#sec:ledger-computational}

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
  Computational-SUBLEDGER = MkComputational computeProof completeness
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)

    computeSubutxow = comp {STS = _⊢_⇀⦇_,SUBUTXOW⦈_}
    computeCerts    = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov      = comp {STS = _⊢_⇀⦇_,GOVS⦈_}

    -- Helper env constructors (avoid `let ... in with ...` parse issues)
    module _ (Γ : SubLedgerEnv) where
      open SubLedgerEnv Γ
      subUtxoΓ : SubUTxOEnv
      subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧

      certΓ : LedgerState → SubLevelTx → CertEnv
      certΓ s stx = ⟦ epoch slot , pparams , ListOfGovVotesOf stx , WithdrawalsOf stx , allColdCreds (GovStateOf s) enactState ⟧

      govΓ : SubLevelTx → CertState → GovEnv
      govΓ stx certSt = ⟦ TxIdOf stx , epoch slot , pparams , ppolicy , enactState , certSt , dom (RewardsOf certSt) ⟧
```
-->

```agda
    computeProof : (Γ : SubLedgerEnv) (s : LedgerState) (stx : SubLevelTx)
      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s')
```

<!--
```agda
    computeProof Γ s stx with SubLedgerEnv.isTopLevelValid Γ ≟ true
    ... | yes isV =
      computeSubutxow (subUtxoΓ Γ) (UTxOStateOf s) stx >>= λ where
        (utxoSt' , utxoStep) →
          computeCerts (certΓ Γ s stx) (CertStateOf s) (DCertsOf stx) >>= λ where
            (certSt' , certStep) →
              computeGov (govΓ Γ stx certSt') (GovStateOf s) (GovProposals+Votes stx) >>= λ where
                (govSt' , govStep) →
                  success ( ⟦ utxoSt' , govSt' , certSt' ⟧ˡ , SUBLEDGER-V (isV , utxoStep , certStep , govStep))

    ... | no ¬isV = case computeSubutxow (subUtxoΓ Γ) (UTxOStateOf s) stx of λ where
      (failure e) → failure e
      (success (utxoSt' , utxoStep)) →
        success ( s , SUBLEDGER-I ( ¬-not ¬isV , subst (subUtxoΓ Γ ⊢ (UTxOStateOf s) ⇀⦇ stx ,SUBUTXOW⦈_) (SUBUTXOW-noop (¬-not ¬isV) utxoStep) utxoStep ))

```
-->

```agda
    completeness : (Γ : SubLedgerEnv) (s : LedgerState) (stx : SubLevelTx) (s' : LedgerState)
      → Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s' → (proj₁ <$> computeProof Γ s stx) ≡ success s'
```

<!--
```agda
    completeness Γ s stx s'
      (SUBLEDGER-V {utxoState₁ = utxoSt₁} {certState₁ = certSt₁} {govState₁ = govSt₁}
        (isV , utxoStep , certStep , govStep))
      with SubLedgerEnv.isTopLevelValid Γ ≟ true
    ... | no ¬isV = contradiction isV ¬isV
    ... | yes refl
      with computeSubutxow (subUtxoΓ Γ) (UTxOStateOf s) stx
         | complete {STS = _⊢_⇀⦇_,SUBUTXOW⦈_} (subUtxoΓ Γ) (UTxOStateOf s) stx utxoSt₁ utxoStep
    ... | success (utxoSt₁ , _) | refl
      with computeCerts (certΓ Γ s stx) (CertStateOf s) (DCertsOf stx)
         | complete {STS = _⊢_⇀⦇_,CERTS⦈_} (certΓ Γ s stx) (CertStateOf s) (DCertsOf stx) certSt₁ certStep
    ... | success (certSt₁ , _) | refl
      with computeGov (govΓ Γ stx certSt₁) (GovStateOf s) (GovProposals+Votes stx)
         | complete {STS = _⊢_⇀⦇_,GOVS⦈_} (govΓ Γ stx certSt₁) (GovStateOf s) (GovProposals+Votes stx) govSt₁ govStep
    ... | success (govSt₁ , _) | refl = refl

    completeness Γ s stx s' (SUBLEDGER-I (isI , utxoStep))
      with SubLedgerEnv.isTopLevelValid Γ ≟ true
    ... | yes isV = case trans (sym isV) isI of λ ()
    ... | no ¬isV
      with computeSubutxow (subUtxoΓ Γ) (UTxOStateOf s) stx
         | complete {STS = _⊢_⇀⦇_,SUBUTXOW⦈_} (subUtxoΓ Γ) (UTxOStateOf s) stx (UTxOStateOf s) utxoStep
    ... | success _ | refl = refl

Computational-SUBLEDGERS : Computational _⊢_⇀⦇_,SUBLEDGERS⦈_ String
Computational-SUBLEDGERS = it

instance
```
-->

## Ledger: Computational {#sec:ledger-computational}

```agda
  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_ String
```

<!--
```agda
  Computational-LEDGER = MkComputational computeProof completeness
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    computeSubledgers = comp {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}
    computeCerts      = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov        = comp {STS = _⊢_⇀⦇_,GOVS⦈_}
    computeUtxow      = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}

    -- Helper builders (avoid `let ... in with ...`)
    allScriptsOf : TopLevelTx → LedgerState → ℙ Script
    allScriptsOf tx s = getAllScripts tx (UTxOOf s)

    module _ (Γ : LedgerEnv) where
      open LedgerEnv Γ
      subΓOf : LedgerState → TopLevelTx → SubLedgerEnv
      subΓOf s tx =
        ⟦ slot , ppolicy , pparams , enactState , treasury , UTxOOf s , IsValidFlagOf tx , allScriptsOf tx s , RewardsOf (CertStateOf s) ⟧

      certΓOf : TopLevelTx → GovState → CertEnv
      certΓOf tx govSt = ⟦ epoch slot , pparams , ListOfGovVotesOf tx , WithdrawalsOf tx , allColdCreds govSt enactState ⟧

      govΓOf : TopLevelTx → CertState → GovEnv
      govΓOf tx certSt = ⟦ TxIdOf tx , epoch slot , pparams , ppolicy , enactState , certSt , dom (RewardsOf certSt) ⟧

      utxoΓ-valid : LedgerState → TopLevelTx → CertState → CertState → UTxOEnv
      utxoΓ-valid s tx certSt₁ certSt₂ =
        ⟦ slot , pparams , treasury , UTxOOf s , calculateDepositsChange (CertStateOf s) certSt₁ certSt₂
        , allScriptsOf tx s , RewardsOf (CertStateOf s) ⟧

      utxoΓ-invalid : LedgerState → TopLevelTx → UTxOEnv
      utxoΓ-invalid s tx =
        ⟦ slot , pparams , treasury , UTxOOf s , ⟦ 0ℤ , 0ℤ ⟧ , allScriptsOf tx s , RewardsOf (CertStateOf s) ⟧

```
-->

```agda
    computeProof : (Γ : LedgerEnv) (s : LedgerState) (txTop : TopLevelTx)
      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s')
```

<!--
```agda
    computeProof Γ s txTop = case IsValidFlagOf txTop ≟ true of λ where
      (yes isV) → computeSubledgers (subΓOf Γ s txTop) s (SubTransactionsOf txTop) >>= λ where
        (s₁ , subStep) → computeCerts (certΓOf Γ txTop (GovStateOf s₁)) (CertStateOf s₁) (DCertsOf txTop) >>= λ where
          (certSt₂ , certStep) → computeGov (govΓOf Γ txTop certSt₂) (GovStateOf s₁) (GovProposals+Votes txTop) >>= λ where
            (govSt₂ , govStep) →
              -- UTXOW must run from the post-SUBLEDGERS UTxOState ((UTxOState s₁))
              computeUtxow (utxoΓ-valid Γ s txTop (CertStateOf s₁) certSt₂) (UTxOStateOf s₁) txTop >>= λ where
                (utxoSt₂ , utxoStep) → case ¿ dom (allDirectDeposits txTop) ⊆ dom (RewardsOf certSt₂) ¿ of λ where
                  (yes h) →
                    success ( ⟦ utxoSt₂ , rmOrphanDRepVotes (certStateWithDDeps txTop certSt₂) govSt₂ , certStateWithDDeps txTop certSt₂ ⟧ˡ
                            , LEDGER-V (isV , subStep , certStep , h , govStep , utxoStep) )
                  (no _)  → failure "direct deposit target was deregistered during this batch"

      (no ¬isV) → case computeSubledgers (subΓOf Γ s txTop) s (SubTransactionsOf txTop) of λ where
        (failure e) → failure e
        (success (s₁ , subStep)) → computeUtxow (utxoΓ-invalid Γ s txTop) (UTxOStateOf s) txTop >>= λ where
          (utxoSt₁ , utxoStep) → success ( ⟦ utxoSt₁ , GovStateOf s , CertStateOf s ⟧ˡ
                                         , LEDGER-I ( ¬-not ¬isV
                                                    , subst  (subΓOf Γ s txTop ⊢ s ⇀⦇ SubTransactionsOf txTop ,SUBLEDGERS⦈_)
                                                             (SUBLEDGERS-noop (¬-not ¬isV) subStep)
                                                             subStep
                                                    , utxoStep
                                                    )
                                          )
```
-->

```agda
    completeness : (Γ : LedgerEnv) (s : LedgerState) (txTop : TopLevelTx) (s' : LedgerState)
      → Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s' → (proj₁ <$> computeProof Γ s txTop) ≡ success s'
```

<!--
```agda
    completeness Γ s txTop s'
      (LEDGER-V {certState₁ = certSt₁} {certSt₂} {utxoState₁ = utxoSt₁} {govSt₁} {govSt₂} {utxoSt₂}
        (isV , subStep , certStep , h , govStep , utxoStep))
      with IsValidFlagOf txTop ≟ true
    ... | no ¬isV = contradiction isV ¬isV
    ... | yes refl
      with computeSubledgers (subΓOf Γ s txTop) s (SubTransactionsOf txTop)
         | complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}
             (subΓOf Γ s txTop) s (SubTransactionsOf txTop)
             (⟦ utxoSt₁ , govSt₁ , certSt₁ ⟧ˡ) subStep
    ... | success (⟦ utxoSt₁ , govSt₁ , certSt₁ ⟧ˡ , _) | refl
      with computeCerts (certΓOf Γ txTop govSt₁) certSt₁ (DCertsOf txTop)
         | complete {STS = _⊢_⇀⦇_,CERTS⦈_}
             (certΓOf Γ txTop govSt₁) certSt₁ (DCertsOf txTop) certSt₂ certStep
    ... | success (certSt₂ , _) | refl
      with computeGov (govΓOf Γ txTop certSt₂) govSt₁ (GovProposals+Votes txTop)
         | complete {STS = _⊢_⇀⦇_,GOVS⦈_}
             (govΓOf Γ txTop certSt₂) govSt₁ (GovProposals+Votes txTop) govSt₂ govStep
    ... | success (govSt₂ , _) | refl
      with computeUtxow (utxoΓ-valid Γ s txTop certSt₁ certSt₂) utxoSt₁ txTop
         | complete {STS = _⊢_⇀⦇_,UTXOW⦈_}
             (utxoΓ-valid Γ s txTop certSt₁ certSt₂) utxoSt₁ txTop utxoSt₂ utxoStep
    ... | success (utxoSt₂ , _) | refl
      with ¿ dom (allDirectDeposits txTop) ⊆ dom (RewardsOf certSt₂) ¿
    ... | yes _  = refl
    ... | no ¬h  = ⊥-elim (¬h h)


    completeness Γ s txTop s' (LEDGER-I {utxoState₁ = utxoSt₁} (isI , subStep , utxoStep))
      with IsValidFlagOf txTop ≟ true
    ... | yes isV = case trans (sym isV) isI of λ ()
    ... | no ¬isV
      with computeSubledgers (subΓOf Γ s txTop) s (SubTransactionsOf txTop)
         | complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}
             (subΓOf Γ s txTop) s (SubTransactionsOf txTop) s subStep
    ... | success _ | refl
      with computeUtxow (utxoΓ-invalid Γ s txTop) (UTxOStateOf s) txTop
         | complete {STS = _⊢_⇀⦇_,UTXOW⦈_}
             (utxoΓ-invalid Γ s txTop) (UTxOStateOf s) txTop utxoSt₁ utxoStep
    ... | success _ | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it
```
-->
