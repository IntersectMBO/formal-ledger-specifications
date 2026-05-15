---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger.lagda.md
---

# Ledger {#sec:ledger}

This module defines the ledger transition system where valid transactions
transform the ledger state.

<!--
```agda
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)

module Ledger.Dijkstra.Specification.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Certs govStructure

open EnactState using (cc)
```
-->

## <span class="AgdaDatatype">LEDGER</span> Transition System Types

```agda
record SubLedgerEnv : Type where
  field
    slot             : Slot
    ppolicy          : Maybe ScriptHash
    pparams          : PParams
    enactState       : EnactState
    treasury         : Treasury
    utxo₀            : UTxO
    isTopLevelValid  : Bool
    allScripts       : ℙ Script
    accountBalances  : Rewards

record LedgerEnv : Type where
  field
    slot        : Slot
    ppolicy     : Maybe ScriptHash
    pparams     : PParams
    enactState  : EnactState
    treasury    : Treasury
```
<!--
```agda
instance
  unquoteDecl HasCast-LedgerEnv HasCast-SubLedgerEnv = derive-HasCast
    ((quote LedgerEnv , HasCast-LedgerEnv) ∷ (quote SubLedgerEnv , HasCast-SubLedgerEnv) ∷ [])

  HasPParams-LedgerEnv : HasPParams LedgerEnv
  HasPParams-LedgerEnv .PParamsOf = LedgerEnv.pparams

  HasEnactState-LedgerEnv : HasEnactState LedgerEnv
  HasEnactState-LedgerEnv .EnactStateOf = LedgerEnv.enactState

  HasPParams-SubLedgerEnv : HasPParams SubLedgerEnv
  HasPParams-SubLedgerEnv .PParamsOf = SubLedgerEnv.pparams

  HasEnactState-SubLedgerEnv : HasEnactState SubLedgerEnv
  HasEnactState-SubLedgerEnv .EnactStateOf = SubLedgerEnv.enactState

  HasUTxO-SubLedgerEnv : HasUTxO SubLedgerEnv
  HasUTxO-SubLedgerEnv .UTxOOf = SubLedgerEnv.utxo₀

  HasTreasury-SubLedgerEnv : HasTreasury SubLedgerEnv
  HasTreasury-SubLedgerEnv .TreasuryOf = SubLedgerEnv.treasury

  HasAccountBalances-SubLedgerEnv : HasAccountBalances SubLedgerEnv
  HasAccountBalances-SubLedgerEnv .AccountBalancesOf = SubLedgerEnv.accountBalances

```
-->
```agda
record LedgerState : Type where
```
<!--
```agda
  constructor ⟦_,_,_⟧ˡ
```
-->
```agda
  field
    utxoSt     : UTxOState
    govSt      : GovState
    certState  : CertState
```
<!--
```agda
record HasLedgerState {a} (A : Type a) : Type a where
  field LedgerStateOf : A → LedgerState
open HasLedgerState ⦃...⦄ public

instance
  HasUTxOState-LedgerState : HasUTxOState LedgerState
  HasUTxOState-LedgerState .UTxOStateOf = LedgerState.utxoSt

  HasUTxO-LedgerState : HasUTxO LedgerState
  HasUTxO-LedgerState .UTxOOf = UTxOOf ∘ UTxOStateOf

  HasGovState-LedgerState : HasGovState LedgerState
  HasGovState-LedgerState .GovStateOf = LedgerState.govSt

  HasCertState-LedgerState : HasCertState LedgerState
  HasCertState-LedgerState .CertStateOf = LedgerState.certState

  HasPools-LedgerState : HasPools LedgerState
  HasPools-LedgerState .PoolsOf = PoolsOf ∘ CertStateOf

  HasGState-LedgerState : HasGState LedgerState
  HasGState-LedgerState .GStateOf = GStateOf ∘ CertStateOf

  HasDState-LedgerState : HasDState LedgerState
  HasDState-LedgerState .DStateOf = DStateOf ∘ CertStateOf

  HasPState-LedgerState : HasPState LedgerState
  HasPState-LedgerState .PStateOf = PStateOf ∘ CertStateOf

  HasVoteDelegs-LedgerState : HasVoteDelegs LedgerState
  HasVoteDelegs-LedgerState .VoteDelegsOf = VoteDelegsOf ∘ DStateOf ∘ CertStateOf

  HasDonations-LedgerState : HasDonations LedgerState
  HasDonations-LedgerState .DonationsOf = DonationsOf ∘ UTxOStateOf

  HasFees-LedgerState : HasFees LedgerState
  HasFees-LedgerState .FeesOf = FeesOf ∘ UTxOStateOf

  HasCCHotKeys-LedgerState : HasCCHotKeys LedgerState
  HasCCHotKeys-LedgerState .CCHotKeysOf = CCHotKeysOf ∘ GStateOf

  HasDReps-LedgerState : HasDReps LedgerState
  HasDReps-LedgerState .DRepsOf = DRepsOf ∘ CertStateOf

  unquoteDecl HasCast-LedgerState = derive-HasCast
    ((quote LedgerState , HasCast-LedgerState) ∷ [])
```
-->


## Helper Functions

```agda
txgov : ∀ {ℓ} → TxBody ℓ → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txGovProposals ++ map inj₁ txGovVotes
  where open TxBody txb

GovProposals+Votes : ∀ {ℓ} → Tx ℓ → List (GovVote ⊎ GovProposal)
GovProposals+Votes tx = map inj₂ (ListOfGovProposalsOf tx) ++ map inj₁ (ListOfGovVotesOf tx)

rmOrphanDRepVotes : CertState → GovState → GovState
rmOrphanDRepVotes cs govSt = L.map (map₂ go) govSt
  where
   ifDRepRegistered : Credential → Type
   ifDRepRegistered c = c ∈ dom (DRepsOf cs)

   go : GovActionState → GovActionState
   go gas = record gas { votes = record (GovVotesOf gas) { gvDRep = filterKeys ifDRepRegistered (GovVotes.gvDRep (GovVotesOf gas)) } }

allColdCreds : GovState → EnactState → ℙ Credential
allColdCreds govSt es =
  ccCreds (es .cc) ∪ concatMapˢ (λ (_ , st) → proposedCC (GovActionOf st)) (fromList govSt)

calculateDepositsChange : CertState → CertState → CertState → DepositsChange
calculateDepositsChange certState₀ certState₁ certState₂
  = ⟦ coinChangeTop , coinChangeSub ⟧
  where
    coinFromDeposit : CertState → Coin
    coinFromDeposit certState =
      getCoin (DepositsOf (DStateOf certState))
      + getCoin (DepositsOf (PStateOf certState))
      + getCoin (DepositsOf (GStateOf certState))

    coin₀ : Coin
    coin₀ = coinFromDeposit certState₀

    coin₁ : Coin
    coin₁ = coinFromDeposit certState₁

    coin₂ : Coin
    coin₂ = coinFromDeposit certState₂

    coinChangeSub : ℤ
    coinChangeSub = coin₁ - coin₀

    coinChangeTop : ℤ
    coinChangeTop = coin₂ - coin₁
```

## <span class="AgdaDatatype">LEDGER</span> Transition System

<!--
```agda
private variable
  utxo₀                             : UTxO
  utxoState₀ utxoState₁ utxoState₂  : UTxOState
  certState₀ certState₁ certState₂  : CertState
  govState₀  govState₁  govState₂   : GovState
  tx                                : TopLevelTx
  stx                               : SubLevelTx
  slot                              : Slot
  ppolicy                           : Maybe ScriptHash
  pp                                : PParams
  enactState                        : EnactState
  treasury                          : Treasury
  isTopLevelValid                   : Bool
  allScripts                        : ℙ Script
  accountBalances                   : Rewards
```
-->

## New in Dijkstra

In Dijkstra we compute the set of "global" scripts and data once at the
top-level in the `LEDGER`{.AgdaDatatype} rule. This is threaded through
`SUBLEDGER`{.AgdaDatatype} to `UTXOW`{.AgdaDatatype}/`SUBUTXOW`{.AgdaDatatype} via
`UTxOEnv`{.AgdaDatatype}/`SubUTxOEnv`{.AgdaDatatype}.

  -  allScripts : ℙ Script is the union of all scripts relevant to the entire
    batch: scripts referenced/witnessed by the top-level transaction plus
    scripts referenced/witnessed by every subtransaction (computed by
    `getAllScripts`).

### Design Rationale for Ledger Rule Premises

+  **Batch-scoped phase-2 context**.

   We compute `allScripts` once, from the *pre-batch* UTxO snapshot
   and the full batch (top-level transaction and all subtransactions). This ensures a
   shared, batch-scoped pool of scripts for phase-2 validation.

+  **Subtransactions are conditional on top-level validity**.

   + If `IsValidFlagOf txTop ≡ true`, then each subtransaction parametrizes its own
     `UTXOW`{.AgdaDatatype}/`CERTS`{.AgdaDatatype}/`GOVS`{.AgdaDatatype} relation
     and the resulting (codomain) states are carried forward (via `SUBLEDGERS`{.AgdaDatatype}).
   + If `IsValidFlagOf txTop ≡ false`, then `SUBLEDGERS`{.AgdaDatatype} is the
     identity relation (no subtransaction effects are applied).

+  **Connecting top-level CERTS and GOVS relations relative to UTXOW**.

   We check top-level `CERTS`{.AgdaDatatype} and `GOVS`{.AgdaDatatype} relations *before*
   top-level `UTXOW`{.AgdaDatatype} because:

   +  `CERTS`{.AgdaDatatype} tracks deposit updates (now included in `CertState`{.AgdaRecord}),
   +  `UTXO`{.AgdaDatatype} accounting needs the *net deposit change* of the whole
      batch in the `UTxOEnv`{.AgdaRecord} (used in
      `newDepositsBatch`{.AgdaFunction} / `depositRefundsBatch`{.AgdaFunction}
      in the `Utxo.Accounting`{.AgdaModule} module).

+  **CertState and GovState Dependencies**.

   +  Top-level `CERTS`{.AgdaDatatype} relates the post-`SUBLEDGERS`{.AgdaDatatype}
      `CertState`{.AgdaRecord} (which reflects subtransaction certificates) to the final
      `CertState`{.AgdaRecord}.
   +  Top-level `GOVS`{.AgdaDatatype} relates the post-`SUBLEDGERS`{.AgdaDatatype}
      `GovState`{.AgdaRecord} (which relfects proposals/votes of subtransactions)
      to the final `GovState`{.AgdaRecord}, and is parameterized by the final
      `CertState`{.AgdaRecord} (so it sees the final registered DRep set after certificates).
   +  Orphan DRep votes are removed using the final (post-`CERTS`{.AgdaDatatype})
      `CertState`{.AgdaRecord}.

+  **`allColdCreds` uses the final `GovState`{.AgdaRecord}**

   The `CertEnv` assumed in the `CERTS`{.AgdaDatatype} relation includes
   `allColdCreds govState₁ enactState` to so that CC hot key registration can account
   for both enacted CC credentials and any newly proposed CC actions that appear in
   the final (post-subtransaction processing) `GovState`{.AgdaRecord}.

```agda
data _⊢_⇀⦇_,SUBLEDGER⦈_ : SubLedgerEnv → LedgerState → SubLevelTx → LedgerState → Type where

  SUBLEDGER-V :
      ∙ isTopLevelValid ≡ true
      ∙ ⟦ slot , pp , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧ ⊢ utxoState₀ ⇀⦇ stx ,SUBUTXOW⦈ utxoState₁
      ∙ ⟦ epoch slot , pp , ListOfGovVotesOf stx , WithdrawalsOf stx , allColdCreds govState₀ enactState , DirectDepositsOf stx ⟧ ⊢ certState₀ ⇀⦇ DCertsOf stx ,CERTS⦈ certState₁
      ∙ ⟦ TxIdOf stx , epoch slot , pp , ppolicy , enactState , certState₁ , dom (RewardsOf certState₁) ⟧ ⊢ govState₀ ⇀⦇ GovProposals+Votes stx ,GOVS⦈ govState₁
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ stx ,SUBLEDGER⦈ ⟦ utxoState₁ , govState₁ , certState₁ ⟧

  SUBLEDGER-I :
      ∙ isTopLevelValid ≡ false
      ∙ ⟦ slot , pp , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧ ⊢ utxoState₀ ⇀⦇ stx ,SUBUTXOW⦈ utxoState₀
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ stx ,SUBLEDGER⦈ ⟦ utxoState₀ , govState₀ , certState₀ ⟧

_⊢_⇀⦇_,SUBLEDGERS⦈_ : SubLedgerEnv → LedgerState → List SubLevelTx → LedgerState → Type
_⊢_⇀⦇_,SUBLEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,SUBLEDGER⦈_}


data _⊢_⇀⦇_,LEDGER⦈_ : LedgerEnv → LedgerState → TopLevelTx → LedgerState → Type where

  LEDGER-V :
    let  utxo₀ : UTxO
         utxo₀ = UTxOOf utxoState₀

         allScripts : ℙ Script
         allScripts = getAllScripts tx utxo₀

         depositsChange : DepositsChange
         depositsChange = calculateDepositsChange certState₀ certState₁ certState₂
    in
      ∙ IsValidFlagOf tx ≡ true
      ∙ ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , IsValidFlagOf tx , allScripts , RewardsOf certState₀ ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoState₁ , govState₁ , certState₁ ⟧
      ∙ ⟦ epoch slot , pp , ListOfGovVotesOf tx , WithdrawalsOf tx , allColdCreds govState₁ enactState , DirectDepositsOf tx ⟧ ⊢ certState₁ ⇀⦇ DCertsOf tx ,CERTS⦈ certState₂
      ∙ ⟦ TxIdOf tx , epoch slot , pp , ppolicy , enactState , certState₂ , dom (RewardsOf certState₂) ⟧ ⊢ govState₁ ⇀⦇ GovProposals+Votes tx ,GOVS⦈ govState₂
      ∙ ⟦ slot , pp , treasury , utxo₀ , depositsChange , allScripts , RewardsOf certState₀ ⟧ ⊢ utxoState₁ ⇀⦇ tx ,UTXOW⦈ utxoState₂
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoState₂ , rmOrphanDRepVotes certState₂ govState₂ , certState₂ ⟧

  LEDGER-I :
    let  utxo₀ : UTxO
         utxo₀ = UTxOOf utxoState₀

         allScripts : ℙ Script
         allScripts = getAllScripts tx utxo₀
    in
      ∙ IsValidFlagOf tx ≡ false
      ∙ ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , IsValidFlagOf tx , allScripts , RewardsOf certState₀ ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoState₀ , govState₀ , certState₀ ⟧
      ∙ ⟦ slot , pp , treasury , utxo₀ , ⟦ 0ℤ , 0ℤ ⟧ , allScripts , RewardsOf certState₀ ⟧ ⊢ utxoState₀ ⇀⦇ tx ,UTXOW⦈ utxoState₁
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoState₁ , govState₀ , certState₀ ⟧

_⊢_⇀⦇_,LEDGERS⦈_ : LedgerEnv → LedgerState → List TopLevelTx → LedgerState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,LEDGER⦈_}
```
