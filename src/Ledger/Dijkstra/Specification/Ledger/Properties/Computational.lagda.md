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
  SUBUTXOW-noop isI (SUBUTXOW (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , SUBUTXO _)) rewrite isI = refl
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
    subUtxoΓ : SubLedgerEnv → SubUTxOEnv
    subUtxoΓ Γ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , allData , accountBalances ⟧
      where open SubLedgerEnv Γ

    certΓ : SubLedgerEnv → LedgerState → SubLevelTx → CertEnv
    certΓ Γ s stx = ⟦ epoch slot , pparams , ListOfGovVotesOf stx , WithdrawalsOf stx , allColdCreds (LedgerState.govSt s) enactState ⟧
      where open SubLedgerEnv Γ

    govΓ : SubLedgerEnv → SubLevelTx → CertState → GovEnv
    govΓ Γ stx certSt = ⟦ TxIdOf stx , epoch slot , pparams , ppolicy , enactState , certSt , dom (RewardsOf certSt) ⟧
      where open SubLedgerEnv Γ
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
      let open SubLedgerEnv Γ
          open LedgerState s
          subUtxoΓ : SubUTxOEnv
          subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , allData , accountBalances ⟧
          certΓ : CertEnv
          certΓ = ⟦ epoch slot , pparams , ListOfGovVotesOf stx , WithdrawalsOf stx
                  , allColdCreds govSt enactState ⟧
      in
      computeSubutxow subUtxoΓ utxoSt stx >>= λ where
        (utxoSt' , utxoStep) →
          computeCerts certΓ certState (DCertsOf stx) >>= λ where
            (certSt' , certStep) →
              let govΓ : GovEnv
                  govΓ = ⟦ TxIdOf stx , epoch slot , pparams , ppolicy , enactState
                        , certSt' , dom (RewardsOf certSt') ⟧
              in
              computeGov govΓ govSt (GovProposals+Votes stx) >>= λ where
                (govSt' , govStep) →
                  success ( ⟦ utxoSt' , govSt' , certSt' ⟧ˡ
                          , SUBLEDGER-V (isV , utxoStep , certStep , govStep))

    ... | no ¬isV =
      let open SubLedgerEnv Γ; open LedgerState s
          isI : isTopLevelValid ≡ false
          isI = ¬-not ¬isV
          subUtxoΓ : SubUTxOEnv
          subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , allData , accountBalances ⟧
      in case computeSubutxow subUtxoΓ utxoSt stx of λ where
        (failure e) → failure e
        (success (utxoSt' , utxoStep)) →
          success ( ⟦ utxoSt , govSt , certState ⟧ˡ
                  , SUBLEDGER-I ( isI , subst (subUtxoΓ ⊢ utxoSt ⇀⦇ stx ,SUBUTXOW⦈_) (SUBUTXOW-noop isI utxoStep) utxoStep ))

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
      with computeSubutxow (subUtxoΓ Γ) (LedgerState.utxoSt s) stx
         | complete {STS = _⊢_⇀⦇_,SUBUTXOW⦈_}
             (subUtxoΓ Γ) (LedgerState.utxoSt s) stx utxoSt₁ utxoStep
    ... | success (utxoSt₁ , _) | refl
      with computeCerts (certΓ Γ s stx) (LedgerState.certState s) (DCertsOf stx)
         | complete {STS = _⊢_⇀⦇_,CERTS⦈_}
             (certΓ Γ s stx) (LedgerState.certState s) (DCertsOf stx) certSt₁ certStep
    ... | success (certSt₁ , _) | refl
      with computeGov (govΓ Γ stx certSt₁) (LedgerState.govSt s) (GovProposals+Votes stx)
         | complete {STS = _⊢_⇀⦇_,GOVS⦈_}
             (govΓ Γ stx certSt₁) (LedgerState.govSt s) (GovProposals+Votes stx) govSt₁ govStep
    ... | success (govSt₁ , _) | refl = refl

    completeness Γ s stx s' (SUBLEDGER-I (isI , utxoStep))
      with SubLedgerEnv.isTopLevelValid Γ ≟ true
    ... | yes isV = case trans (sym isV) isI of λ ()
    ... | no ¬isV
      with computeSubutxow (subUtxoΓ Γ) (LedgerState.utxoSt s) stx
         | complete {STS = _⊢_⇀⦇_,SUBUTXOW⦈_}
             (subUtxoΓ Γ) (LedgerState.utxoSt s) stx (LedgerState.utxoSt s) utxoStep
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
    utxo₀Of : LedgerState → UTxO
    utxo₀Of s = UTxOOf (LedgerState.utxoSt s)

    allScriptsOf : TopLevelTx → LedgerState → ℙ Script
    allScriptsOf tx s = getAllScripts tx (utxo₀Of s)

    allDataOf : TopLevelTx → LedgerState → DataHash ⇀ Datum
    allDataOf tx s = setToMap (mapˢ < hash , id > (getAllData tx))

    subΓOf : LedgerEnv → LedgerState → TopLevelTx → SubLedgerEnv
    subΓOf Γ s tx =
      ⟦ LedgerEnv.slot Γ
      , LedgerEnv.ppolicy Γ
      , LedgerEnv.pparams Γ
      , LedgerEnv.enactState Γ
      , LedgerEnv.treasury Γ
      , utxo₀Of s
      , IsValidFlagOf tx
      , allScriptsOf tx s
      , allDataOf tx s
      , RewardsOf (CertStateOf s)
      ⟧

    certΓOf : LedgerEnv → TopLevelTx → GovState → CertEnv
    certΓOf Γ tx govSt =
      ⟦ epoch (LedgerEnv.slot Γ)
      , LedgerEnv.pparams Γ
      , ListOfGovVotesOf tx
      , WithdrawalsOf tx
      , allColdCreds govSt (LedgerEnv.enactState Γ)
      ⟧

    govΓOf : LedgerEnv → TopLevelTx → CertState → GovEnv
    govΓOf Γ tx certSt =
      ⟦ TxIdOf tx
      , epoch (LedgerEnv.slot Γ)
      , LedgerEnv.pparams Γ
      , LedgerEnv.ppolicy Γ
      , LedgerEnv.enactState Γ
      , certSt
      , dom (RewardsOf certSt)
      ⟧

    utxoΓ-valid : LedgerEnv → LedgerState → TopLevelTx → CertState → CertState → UTxOEnv
    utxoΓ-valid Γ s tx certSt₁ certSt₂ =
      let depositsChange = calculateDepositsChange (LedgerState.certState s) certSt₁ certSt₂
      in ⟦ LedgerEnv.slot Γ
         , LedgerEnv.pparams Γ
         , LedgerEnv.treasury Γ
         , utxo₀Of s
         , depositsChange
         , allScriptsOf tx s
         , allDataOf tx s
         , RewardsOf (CertStateOf s)
         ⟧

    utxoΓ-invalid : LedgerEnv → LedgerState → TopLevelTx → UTxOEnv
    utxoΓ-invalid Γ s tx =
      ⟦ LedgerEnv.slot Γ
      , LedgerEnv.pparams Γ
      , LedgerEnv.treasury Γ
      , utxo₀Of s
      , ⟦ 0ℤ , 0ℤ ⟧
      , allScriptsOf tx s
      , allDataOf tx s
      , RewardsOf (CertStateOf s)
      ⟧
```
-->

```agda
    computeProof : (Γ : LedgerEnv) (s : LedgerState) (txTop : TopLevelTx)
      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s')
```

<!--
```agda
    computeProof Γ s txTop =
      let open LedgerEnv Γ
          open LedgerState s
          utxo₀ : UTxO
          utxo₀ = UTxOOf utxoSt
          allScripts : ℙ Script
          allScripts = getAllScripts txTop utxo₀
          allData : DataHash ⇀ Datum
          allData = setToMap (mapˢ < hash , id > (getAllData txTop))
          subΓ : SubLedgerEnv
          subΓ = ⟦ slot , ppolicy , pparams , enactState , treasury
                 , utxo₀ , IsValidFlagOf txTop , allScripts , allData
                 , RewardsOf certState ⟧
      in
      case IsValidFlagOf txTop ≟ true of λ where
        (yes isV) →
          computeSubledgers subΓ s (SubTransactionsOf txTop) >>= λ where
            (s₁ , subStep) →
              let open LedgerState s₁
                    renaming ( utxoSt    to utxoSt₁
                             ; govSt     to govSt₁
                             ; certState to certState₁ )
                  certΓ : CertEnv
                  certΓ = ⟦ epoch slot , pparams , ListOfGovVotesOf txTop , WithdrawalsOf txTop
                          , allColdCreds govSt₁ enactState ⟧
              in
              computeCerts certΓ certState₁ (DCertsOf txTop) >>= λ where
                (certSt₂ , certStep) →
                  let govΓ : GovEnv
                      govΓ = ⟦ TxIdOf txTop , epoch slot , pparams , ppolicy , enactState
                            , certSt₂ , dom (RewardsOf certSt₂) ⟧
                  in
                  computeGov govΓ govSt₁ (GovProposals+Votes txTop) >>= λ where
                    (govSt₂ , govStep) →
                      let certState₀ : CertState
                          certState₀ = CertStateOf s
                          depositsChange : DepositsChange
                          depositsChange = calculateDepositsChange certState₀ certState₁ certSt₂
                          utxoΓ : UTxOEnv
                          utxoΓ = ⟦ slot , pparams , treasury , utxo₀ , depositsChange , allScripts , allData , RewardsOf certState ⟧
                      in
                      -- UTXOW must run from the post-SUBLEDGERS UTxOState (utxoSt₁)
                      computeUtxow utxoΓ utxoSt₁ txTop >>= λ where
                        (utxoSt₂ , utxoStep) →
                          let finalGov = rmOrphanDRepVotes certSt₂ govSt₂
                          in
                          success ( ⟦ utxoSt₂ , finalGov , certSt₂ ⟧ˡ
                                  , LEDGER-V (isV , subStep , certStep , govStep , utxoStep))

        (no ¬isV) →
          let isI : IsValidFlagOf txTop ≡ false
              isI = ¬-not ¬isV
          in case computeSubledgers (subΓOf Γ s txTop) s (SubTransactionsOf txTop) of λ where
            (failure e) → failure e
            (success (s₁ , subStep)) →
              computeUtxow (utxoΓ-invalid Γ s txTop) (LedgerState.utxoSt s) txTop >>= λ where
                (utxoSt₁ , utxoStep) →
                  success ( ⟦ utxoSt₁ , LedgerState.govSt s , LedgerState.certState s ⟧ˡ
                          , LEDGER-I
                              ( isI
                              , subst (subΓOf Γ s txTop ⊢ s ⇀⦇ SubTransactionsOf txTop ,SUBLEDGERS⦈_)
                                  (SUBLEDGERS-noop isI subStep)
                                  subStep
                              , utxoStep
                              ))
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
        (isV , subStep , certStep , govStep , utxoStep))
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
    ... | success (utxoSt₂ , _) | refl = refl

    completeness Γ s txTop s' (LEDGER-I {utxoState₁ = utxoSt₁} (isI , subStep , utxoStep))
      with IsValidFlagOf txTop ≟ true
    ... | yes isV = case trans (sym isV) isI of λ ()
    ... | no ¬isV
      with computeSubledgers (subΓOf Γ s txTop) s (SubTransactionsOf txTop)
         | complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}
             (subΓOf Γ s txTop) s (SubTransactionsOf txTop) s subStep
    ... | success _ | refl
      with computeUtxow (utxoΓ-invalid Γ s txTop) (LedgerState.utxoSt s) txTop
         | complete {STS = _⊢_⇀⦇_,UTXOW⦈_}
             (utxoΓ-invalid Γ s txTop) (LedgerState.utxoSt s) txTop utxoSt₁ utxoStep
    ... | success _ | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it
```
-->
