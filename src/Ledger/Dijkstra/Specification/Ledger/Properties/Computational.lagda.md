---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/Computational.lagda.md
---

# Ledger: Computational {#sec:ledger-computational}

This module proves that the `SUBLEDGER`{.AgdaDatatype} and `LEDGER`{.AgdaDatatype}
transition rules are computational.


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

-- Subledger: Computational {#sec:subledger-computational}

  Computational-SUBLEDGER : Computational _⊢_⇀⦇_,SUBLEDGER⦈_ String
  Computational-SUBLEDGER = MkComputational computeProof completeness
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)

    computeSubutxow = comp {STS = _⊢_⇀⦇_,SUBUTXOW⦈_}
    computeCerts    = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov      = comp {STS = _⊢_⇀⦇_,GOVS⦈_}

    computeProof : (Γ : SubLedgerEnv) (s : LedgerState) (stx : SubLevelTx)
      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s')

    computeProof Γ s stx with SubLedgerEnv.isTopLevelValid Γ ≟ true
    ... | yes isV =
      let open SubLedgerEnv Γ
          open LedgerState s
          subUtxoΓ : SubUTxOEnv
          subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧
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
      let open SubLedgerEnv Γ
          open LedgerState s
          subUtxoΓ : SubUTxOEnv
          subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧
          isI : isTopLevelValid ≡ false
          isI = ¬-not ¬isV
      in
      computeSubutxow subUtxoΓ utxoSt stx >>= λ where
        (utxoSt' , utxoStep) →
          -- SUBLEDGER-I requires the SUBUTXOW step to be a no-op on UTxOState.
          case ¿ utxoSt' ≡ utxoSt ¿ of λ where
            (no _)     → failure "SUBLEDGER-I: SUBUTXOW changed state"
            (yes refl) → success ( ⟦ utxoSt , govSt , certState ⟧ˡ
                                 , SUBLEDGER-I (isI , utxoStep))


    completeness : (Γ : SubLedgerEnv) (s : LedgerState) (stx : SubLevelTx) (s' : LedgerState)
      → Γ ⊢ s ⇀⦇ stx ,SUBLEDGER⦈ s' → (proj₁ <$> computeProof Γ s stx) ≡ success s'

    completeness Γ s stx s' (SUBLEDGER-V (isV , utxoStep , certStep , govStep))
      with SubLedgerEnv.isTopLevelValid Γ ≟ true
    ... | no ¬isV = contradiction isV ¬isV
    ... | yes refl =
      let open SubLedgerEnv Γ
          open LedgerState s
          subUtxoΓ : SubUTxOEnv
          subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧
          certΓ : CertEnv
          certΓ = ⟦ epoch slot , pparams , ListOfGovVotesOf stx , WithdrawalsOf stx
                  , allColdCreds govSt enactState ⟧
      in
      case ( computeSubutxow subUtxoΓ utxoSt stx
           , complete {STS = _⊢_⇀⦇_,SUBUTXOW⦈_} subUtxoΓ utxoSt stx _ utxoStep ) of λ where
        (success (utxoSt' , _) , refl) →
          case ( computeCerts certΓ certState (DCertsOf stx)
               , complete {STS = _⊢_⇀⦇_,CERTS⦈_} certΓ certState (DCertsOf stx) _ certStep) of λ where
            (success (certSt' , _) , refl) →
              let govΓ : GovEnv
                  govΓ = ⟦ TxIdOf stx , epoch slot , pparams , ppolicy , enactState
                        , certSt' , dom (RewardsOf certSt') ⟧
              in case ( computeGov govΓ govSt (GovProposals+Votes stx)
                      , complete {STS = _⊢_⇀⦇_,GOVS⦈_} govΓ govSt (GovProposals+Votes stx) _ govStep ) of λ where
                  (success (_ , _) , refl) → refl

    completeness Γ s stx s' (SUBLEDGER-I (isI , utxoStep))
      with SubLedgerEnv.isTopLevelValid Γ ≟ true
    ... | yes isV = case trans (sym isV) isI of λ ()
    ... | no ¬isV =
      let open SubLedgerEnv Γ
          open LedgerState s
          subUtxoΓ : SubUTxOEnv
          subUtxoΓ = ⟦ slot , pparams , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧
      in
      case ( computeSubutxow subUtxoΓ utxoSt stx
           , complete {STS = _⊢_⇀⦇_,SUBUTXOW⦈_} subUtxoΓ utxoSt stx _ utxoStep ) of λ where
        (success (utxoSt' , _) , refl) → refl
        -- The computeProof branch checks utxoSt' ≡ utxoSt, and here utxoStep already forces that.

Computational-SUBLEDGERS : Computational _⊢_⇀⦇_,SUBLEDGERS⦈_ String
Computational-SUBLEDGERS = it

instance

  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_ String
  Computational-LEDGER = MkComputational computeProof completeness
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    computeSubledgers = comp {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_}
    computeCerts      = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov        = comp {STS = _⊢_⇀⦇_,GOVS⦈_}
    computeUtxow      = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}

    computeProof : (Γ : LedgerEnv) (s : LedgerState) (txTop : TopLevelTx)
      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s')
    computeProof Γ s txTop =
      let open LedgerEnv Γ
          open LedgerState s
          utxo₀ : UTxO
          utxo₀ = UTxOOf utxoSt
          allScripts : ℙ Script
          allScripts = getAllScripts txTop utxo₀
          allData : DataHash ⇀ Datum
          allData = setToMap (mapˢ < hash , id > (getAllData txTop utxo₀))
          subΓ : SubLedgerEnv
          subΓ = ⟦ slot , ppolicy , pparams , enactState , treasury
                , utxo₀ , IsValidFlagOf txTop , allScripts , allData ⟧
      in
      case IsValidFlagOf txTop ≟ true of λ where
        (yes isV) →
          computeSubledgers subΓ s (SubTransactionsOf txTop) >>= λ where
            (s₁ , subStep) →
              let open LedgerState s₁
                  certΓ : CertEnv
                  certΓ = ⟦ epoch slot , pparams , ListOfGovVotesOf txTop , WithdrawalsOf txTop
                          , allColdCreds govSt enactState ⟧
              in
              computeCerts certΓ certState (DCertsOf txTop) >>= λ where
                (certSt₂ , certStep) →
                  let govΓ : GovEnv
                      govΓ = ⟦ TxIdOf txTop , epoch slot , pparams , ppolicy , enactState
                            , certSt₂ , dom (RewardsOf certSt₂) ⟧
                  in
                  computeGov govΓ govSt (GovProposals+Votes txTop) >>= λ where
                    (govSt₂ , govStep) →
                      let certState₀ : CertState
                          certState₀ = CertStateOf s
                          depositsChange : DepositsChange
                          depositsChange = calculateDepositsChange certState₀ certState certSt₂
                          utxoΓ : UTxOEnv
                          utxoΓ = ⟦ slot , pparams , treasury , utxo₀ , depositsChange , allScripts , allData ⟧
                      in
                      -- NOTE: if you thread legacy into LEDGER, replace `false` here with that value.
                      computeUtxow (utxoΓ , false) utxoSt txTop >>= λ where
                        (utxoSt₂ , utxoStep) →
                          let finalGov = rmOrphanDRepVotes certSt₂ govSt₂
                          in
                          success ( ⟦ utxoSt₂ , finalGov , certSt₂ ⟧ˡ
                                  , LEDGER-V (isV , subStep , certStep , govStep , utxoStep))

        (no ¬isV) →
          computeSubledgers subΓ s (SubTransactionsOf txTop) >>= λ where
            (s₁ , subStep) →
              -- LEDGER-I requires SUBLEDGERS to be a no-op on the full LedgerState.
              case ¿ s₁ ≡ s ¿ of λ where
                (no _) → failure "LEDGER-I: SUBLEDGERS changed state"
                (yes refl) →
                  let dc0 : DepositsChange
                      dc0 = ⟦ 0ℤ , 0ℤ ⟧
                      utxoΓ : UTxOEnv
                      utxoΓ = ⟦ slot , pparams , treasury , utxo₀ , dc0 , allScripts , allData ⟧
                      isI : IsValidFlagOf txTop ≡ false
                      isI = ¬-not ¬isV
                  in
                  computeUtxow (utxoΓ , false) utxoSt txTop >>= λ where
                    (utxoSt₁ , utxoStep) →
                      success ( ⟦ utxoSt₁ , govSt , certState ⟧ˡ
                              , LEDGER-I (isI , subStep , utxoStep))

    completeness : (Γ : LedgerEnv) (s : LedgerState) (txTop : TopLevelTx) (s' : LedgerState)
      → Γ ⊢ s ⇀⦇ txTop ,LEDGER⦈ s' → (proj₁ <$> computeProof Γ s txTop) ≡ success s'
    completeness Γ s txTop s' (LEDGER-V (isV , subStep , certStep , govStep , utxoStep))
      with IsValidFlagOf txTop ≟ true
    ... | no ¬isV = contradiction isV ¬isV
    ... | yes refl =
      let open LedgerEnv Γ
          open LedgerState s
          utxo₀ : UTxO
          utxo₀ = UTxOOf utxoSt
          allScripts : ℙ Script
          allScripts = getAllScripts txTop utxo₀
          allData : DataHash ⇀ Datum
          allData = setToMap (mapˢ < hash , id > (getAllData txTop utxo₀))
          subΓ : SubLedgerEnv
          subΓ = ⟦ slot , ppolicy , pparams , enactState , treasury
                , utxo₀ , IsValidFlagOf txTop , allScripts , allData ⟧
      in
      case ( computeSubledgers subΓ s (SubTransactionsOf txTop)
           , complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_} subΓ s (SubTransactionsOf txTop) _ subStep ) of λ where
        (success (s₁ , _) , refl) →
          let open LedgerState s₁
              certΓ : CertEnv
              certΓ = ⟦ epoch slot , pparams , ListOfGovVotesOf txTop , WithdrawalsOf txTop
                      , allColdCreds govSt enactState ⟧
          in
          case ( computeCerts certΓ certState (DCertsOf txTop)
               , complete {STS = _⊢_⇀⦇_,CERTS⦈_} certΓ certState (DCertsOf txTop) _ certStep ) of λ where
            (success (certSt₂ , _) , refl) →
              let govΓ : GovEnv
                  govΓ = ⟦ TxIdOf txTop , epoch slot , pparams , ppolicy , enactState
                        , certSt₂ , dom (RewardsOf certSt₂) ⟧
              in case ( computeGov govΓ govSt (GovProposals+Votes txTop)
                      , complete {STS = _⊢_⇀⦇_,GOVS⦈_} govΓ govSt (GovProposals+Votes txTop) _ govStep ) of λ where
                  (success (govSt₂ , _) , refl) →
                    let depositsChange : DepositsChange
                        depositsChange = calculateDepositsChange (CertStateOf s) certState certSt₂
                        utxoΓ : UTxOEnv
                        utxoΓ = ⟦ slot , pparams , treasury , utxo₀ , depositsChange , allScripts , allData ⟧
                    in case ( computeUtxow (utxoΓ , false) utxoSt txTop
                            , complete {STS = _⊢_⇀⦇_,UTXOW⦈_} (utxoΓ , false) utxoSt txTop _ utxoStep ) of λ where
                        (success (_ , _) , refl) → refl

    completeness Γ s txTop s' (LEDGER-I (isI , subStep , utxoStep))
      with IsValidFlagOf txTop ≟ true
    ... | yes isV = case trans (sym isV) isI of λ ()
    ... | no ¬isV =
      let open LedgerEnv Γ
          open LedgerState s
          utxo₀ : UTxO
          utxo₀ = UTxOOf utxoSt
          allScripts : ℙ Script
          allScripts = getAllScripts txTop utxo₀
          allData : DataHash ⇀ Datum
          allData = setToMap (mapˢ < hash , id > (getAllData txTop utxo₀))
          subΓ : SubLedgerEnv
          subΓ = ⟦ slot , ppolicy , pparams , enactState , treasury
                , utxo₀ , IsValidFlagOf txTop , allScripts , allData ⟧
      in
      case ( computeSubledgers subΓ s (SubTransactionsOf txTop)
           , complete {STS = _⊢_⇀⦇_,SUBLEDGERS⦈_} subΓ s (SubTransactionsOf txTop) _ subStep ) of λ where
        (success (s₁ , _) , refl) →
          -- ComputeProof checks s₁ ≡ s; here subStep already forces that.
          case ( computeUtxow (⟦ slot , pparams , treasury , utxo₀ , ⟦ 0ℤ , 0ℤ ⟧ , allScripts , allData ⟧ , false) utxoSt txTop
               , complete {STS = _⊢_⇀⦇_,UTXOW⦈_}
                   (⟦ slot , pparams , treasury , utxo₀ , ⟦ 0ℤ , 0ℤ ⟧ , allScripts , allData ⟧ , false)
                   utxoSt txTop _ utxoStep ) of λ where
            (success (_ , _) , refl) → refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it
```
