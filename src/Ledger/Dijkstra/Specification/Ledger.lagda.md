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
    allData          : DataHash ⇀ Datum

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

  HasPParams-SubLedgerEnv : HasPParams LedgerEnv
  HasPParams-SubLedgerEnv .PParamsOf = LedgerEnv.pparams
```
-->
```agda
record LState : Type where
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
record HasLState {a} (A : Type a) : Type a where
  field LStateOf : A → LState
open HasLState ⦃...⦄ public

-- instance
--   HasUTxOState-LState : HasUTxOState LState
--   HasUTxOState-LState .UTxOStateOf = LState.utxoSt

--   HasUTxO-LState : HasUTxO LState
--   HasUTxO-LState .UTxOOf = UTxOOf ∘ UTxOStateOf

--   HasGovState-LState : HasGovState LState
--   HasGovState-LState .GovStateOf = LState.govSt

--   HasCertState-LState : HasCertState LState
--   HasCertState-LState .CertStateOf = LState.certState

--   HasDeposits-LState : HasDeposits LState
--   HasDeposits-LState .DepositsOf = DepositsOf ∘ UTxOStateOf

--   HasPools-LState : HasPools LState
--   HasPools-LState .PoolsOf = PoolsOf ∘ CertStateOf

--   HasGState-LState : HasGState LState
--   HasGState-LState .GStateOf = GStateOf ∘ CertStateOf

--   HasDState-LState : HasDState LState
--   HasDState-LState .DStateOf = DStateOf ∘ CertStateOf

--   HasPState-LState : HasPState LState
--   HasPState-LState .PStateOf = PStateOf ∘ CertStateOf

--   HasVoteDelegs-LState : HasVoteDelegs LState
--   HasVoteDelegs-LState .VoteDelegsOf = VoteDelegsOf ∘ DStateOf ∘ CertStateOf

--   HasDonations-LState : HasDonations LState
--   HasDonations-LState .DonationsOf = DonationsOf ∘ UTxOStateOf

--   HasFees-LState : HasFees LState
--   HasFees-LState .FeesOf = FeesOf ∘ UTxOStateOf

--   HasCCHotKeys-LState : HasCCHotKeys LState
--   HasCCHotKeys-LState .CCHotKeysOf = CCHotKeysOf ∘ GStateOf

--   HasDReps-LState : HasDReps LState
--   HasDReps-LState .DRepsOf = DRepsOf ∘ CertStateOf

-- open CertState
-- open DState
-- open GovVotes

instance
  unquoteDecl HasCast-LState = derive-HasCast
    ((quote LState , HasCast-LState) ∷ [])
```
-->


-- ## Helper Functions

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

calculateDepositsChange : CertState → CertState → ℤ
calculateDepositsChange certState certState' = finalCoin - initialCoin
  where
    initialCoin : ℕ
    initialCoin = getCoin (DepositsOf (DStateOf certState))
                  + getCoin (DepositsOf (PStateOf certState))
                  + getCoin (DepositsOf (GStateOf certState))

    finalCoin : ℕ
    finalCoin = getCoin (DepositsOf (DStateOf certState'))
                + getCoin (DepositsOf (PStateOf certState'))
                + getCoin (DepositsOf (GStateOf certState'))

```

-- ## <span class="AgdaDatatype">LEDGER</span> Transition System

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
  allData                           : DataHash ⇀ Datum
```
-->

## New in Dijkstra

In Dijkstra we compute the set of "global" scripts and data once at the
top-level in the LEDGER{.AgdaDatatype} rule. This is threaded through
`SUBLEDGER`{.AgdaDatatype} to UTXOW{.AgdaDatatype}/SUBUTXOW{.AgdaDatatype} via
UTxOEnv{.AgdaDatatype}/SubLedgerEnv{.AgdaDatatype}.

  -  allScripts : ℙ P1Script × ℙ P2Script is the union of all scripts relevant
    to the entire batch: scripts referenced/witnessed by the top-level
    transaction plus scripts referenced/witnessed by every subtransaction
    (computed by `getAllScripts`).

  - allData : DataHash ⇀ Datumis the collection of all data relevant to the
    entire batch: all datums appearing in witnesses and in any (sub)transaction
    context (computer by getAllData).

### Design Rationale for Ledger Rule Premises

+  **Batch-scoped phase-2 context**.

   We compute `allScripts` and `allData` once, from the *pre-batch* UTxO snapshot
   and the full batch (top-level transaction and all subtransactions). This ensures a
   shared, batch-scoped pool of scripts and datums for phase-2 validation.

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
data _⊢_⇀⦇_,SUBLEDGER⦈_ : SubLedgerEnv → LState → SubLevelTx → LState → Type where

  SUBLEDGER-V :
      ∙ isTopLevelValid ≡ true
        -- Subtx UTXOW (phase-1 + phase-2 checks for that subtx, using shared pools):
      ∙ ⟦ slot , pp , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧ ⊢ utxoState₀ ⇀⦇ stx ,SUBUTXOW⦈ utxoState₁
        -- Subtx CERTS (certificate state updates, incl. deposits tracked in CertState):
      ∙ ⟦ epoch slot , pp , ListOfGovVotesOf stx , WithdrawalsOf stx , allColdCreds govState₀ enactState ⟧ ⊢ certState₀ ⇀⦇ DCertsOf stx ,CERTS⦈ certState₁
        -- Subtx GOVS (governance updates, parameterized by the post-subtx CERTS state):
      ∙ ⟦ TxIdOf stx , epoch slot , pp , ppolicy , enactState , certState₁ , dom (RewardsOf certState₁) ⟧ ⊢ rmOrphanDRepVotes certState₁ govState₀ ⇀⦇ GovProposals+Votes stx ,GOVS⦈ govState₁
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ stx ,SUBLEDGER⦈ ⟦ utxoState₁ , govState₁ , certState₁ ⟧

  SUBLEDGER-I :
      ∙ isTopLevelValid ≡ false
      ∙ ⟦ slot , pp , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧ ⊢ utxoState₀ ⇀⦇ stx ,SUBUTXOW⦈ utxoState₀
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ stx ,SUBLEDGER⦈ ⟦ utxoState₀ , govState₀ , certState₀ ⟧

_⊢_⇀⦇_,SUBLEDGERS⦈_ : SubLedgerEnv → LState → List SubLevelTx → LState → Type
_⊢_⇀⦇_,SUBLEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,SUBLEDGER⦈_}


data _⊢_⇀⦇_,LEDGER⦈_ : LedgerEnv → LState → TopLevelTx → LState → Type where

  LEDGER-V :
    let  -- Pre-batch snapshot of UTxO
         utxo₀ : UTxO
         utxo₀ = UTxOOf utxoState₀

         allScripts : ℙ Script
         allScripts = getAllScripts tx utxo₀

         allData : DataHash ⇀ Datum
         allData = setToMap (mapˢ < hash , id > (getAllData tx utxo₀))

         -- Net deposit change for entire batch computed with certStates that are
         -- related by a composition of subtransaction CERTS and top-level CERTS.
         depositsChange : ℤ
         depositsChange = calculateDepositsChange certState₀ certState₂

    in
      ∙ IsValidFlagOf tx ≡ true
      -- Assume SUBLEDGERS relation between initial ledger state and intermediate ledger state:
      ∙ ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , IsValidFlagOf tx , allScripts , allData ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoState₁ , govState₁ , certState₁ ⟧
      -- Assume CERTS relation between intermediate CertState and final CertState:
      ∙ ⟦ epoch slot , pp , ListOfGovVotesOf tx , WithdrawalsOf tx , allColdCreds govState₁ enactState ⟧ ⊢ certState₁ ⇀⦇ DCertsOf tx ,CERTS⦈ certState₂
      -- Assume GOVS relation between intermediate GovState (parameterized by final CertState) and final GovState:
      ∙ ⟦ TxIdOf tx , epoch slot , pp , ppolicy , enactState , certState₂ , dom (RewardsOf certState₂) ⟧ ⊢ rmOrphanDRepVotes certState₂ govState₁ ⇀⦇ GovProposals+Votes tx ,GOVS⦈ govState₂
      -- Assume UTXOW relation between intermediate UTxOState and final UTxOState (with UTxOEnv incl. deposit changes):
      ∙ ⟦ slot , pp , treasury , utxo₀ , depositsChange , allScripts , allData ⟧ ⊢ utxoState₁ ⇀⦇ tx ,UTXOW⦈ utxoState₂
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoState₂ , govState₂ , certState₂ ⟧


  LEDGER-I :
    let  utxo₀ : UTxO
         utxo₀ = UTxOOf utxoState₀

         allScripts : ℙ Script
         allScripts = getAllScripts tx utxo₀

         allData : DataHash ⇀ Datum
         allData = setToMap (mapˢ < hash , id > (getAllData tx utxo₀))
    in
      ∙ IsValidFlagOf tx ≡ false

      -- Even if invalid, we still compute the pools once and run SUBLEDGERS
      -- in identity/no-op mode by SUBLEDGER-I.
      ∙ ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , IsValidFlagOf tx , allScripts , allData ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoState₀ , govState₀ , certState₀ ⟧
      ∙ ⟦ slot , pp , treasury , utxo₀ , 0ℤ , allScripts , allData ⟧ ⊢ utxoState₀ ⇀⦇ tx ,UTXOW⦈ utxoState₁
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoState₁ , govState₀ , certState₀ ⟧

_⊢_⇀⦇_,LEDGERS⦈_ : LedgerEnv → LState → List TopLevelTx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,LEDGER⦈_}
```
