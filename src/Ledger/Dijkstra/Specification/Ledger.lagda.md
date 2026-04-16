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

  HasTreasury-LedgerEnv : HasTreasury LedgerEnv
  HasTreasury-LedgerEnv .TreasuryOf = LedgerEnv.treasury

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

coinFromDeposits : CertState → Coin
coinFromDeposits certState =
  getCoin (DepositsOf (DStateOf certState))
  + getCoin (DepositsOf (PStateOf certState))
  + getCoin (DepositsOf (GStateOf certState))

calculateDepositsChange : CertState → CertState → CertState → DepositsChange
calculateDepositsChange certState₀ certState₁ certState₂
  = ⟦ coinChangeTop , coinChangeSub ⟧
  where
    coin₀ : Coin
    coin₀ = coinFromDeposits certState₀

    coin₁ : Coin
    coin₁ = coinFromDeposits certState₁

    coin₂ : Coin
    coin₂ = coinFromDeposits certState₂

    coinChangeSub : ℤ
    coinChangeSub = coin₁ - coin₀

    coinChangeTop : ℤ
    coinChangeTop = coin₂ - coin₁
```

<!--
```agda
instance
  HasCoin-LedgerState : HasCoin LedgerState
  HasCoin-LedgerState .getCoin s =
    getCoin (UTxOStateOf s)             -- cbalance + fees + donations
    + getCoin (CertStateOf s)           -- rewards
    + coinFromDeposits (CertStateOf s)  -- deposits
```
-->



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
top-level in the LEDGER{.AgdaDatatype} rule. This is threaded through
`SUBLEDGER`{.AgdaDatatype} to UTXOW{.AgdaDatatype}/SUBUTXOW{.AgdaDatatype} via
UTxOEnv{.AgdaDatatype}/SubUTxOEnv{.AgdaDatatype}.

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

### Direct Deposit Application (CIP-159)

Each transaction's direct deposits (`txDirectDeposits`{.AgdaField}) are applied to
the `CertState`{.AgdaRecord} immediately after that transaction's
`CERTS`{.AgdaDatatype} step, before the rule emits its output state.

+  In `SUBLEDGER-V`{.AgdaInductiveConstructor}, after `CERTS`{.AgdaDatatype} produces
   `certState₁`, the deposits in `DirectDepositsOf stx` are credited to the
   `rewards`{.AgdaField} map of `certState₁`'s `dState`{.AgdaField}, yielding the
   `certStateFinal` that appears in the final `LedgerState`{.AgdaRecord} of the
   `SUBLEDGER`{.AgdaDatatype} relation.
+  In `LEDGER-V`{.AgdaInductiveConstructor}, after the top-level
   `CERTS`{.AgdaDatatype} produces `certState₂`, the deposits in
   `DirectDepositsOf tx` are credited the same way, yielding the `certStateFinal`
   that appears in the final `LedgerState`{.AgdaRecord} of the
   `LEDGER`{.AgdaDatatype} relation.

The helper `certStateWithDDeps`{.AgdaFunction} performs the per-transaction update.
It uses `applyDirectDeposits`{.AgdaFunction} (from the `Certs`{.AgdaModule} module),
which adds deposit amounts to the `DState`{.AgdaRecord} `rewards`{.AgdaField} map
via `∪⁺`{.AgdaFunction} (union with addition).

```agda
certStateWithDDeps : ∀ {ℓ} → Tx ℓ → CertState → CertState
certStateWithDDeps tx cs = record cs { dState = applyDirectDeposits (DirectDepositsOf tx) (DStateOf cs) }
```

`certStateWithDDeps`{.AgdaFunction} is invoked once per transaction in the batch
(once per sub-transaction inside `SUBLEDGER-V`{.AgdaInductiveConstructor}, plus
once for the top-level transaction inside `LEDGER-V`{.AgdaInductiveConstructor})
on the *post-`CERTS`{.AgdaDatatype}* `CertState`{.AgdaRecord} for that
transaction.  (Since `applyDirectDeposits`{.AgdaFunction} only modifies
`rewards`{.AgdaField}, and leaves `voteDelegs`{.AgdaField},
`stakeDelegs`{.AgdaField}, `deposits`{.AgdaField}, `pState`{.AgdaField}, and
`gState`{.AgdaField} unchanged, applying it per-transaction is
equivalent to aggregating all direct deposits in the batch via `∪⁺`{.AgdaFunction}
and applying the sum at the end.)

`depositsChange`{.AgdaFunction} is computed from `certState₀`{.AgdaBound},
`certState₁`{.AgdaBound}, and `certState₂`{.AgdaBound} (not from
`certStateFinal`{.AgdaBound}) because it measures *protocol* deposit movements
(registration/deregistration of credentials, DReps, pools), which live in the
`deposits`{.AgdaField} fields of `DState`{.AgdaRecord}/`PState`{.AgdaRecord}/
`GState`{.AgdaRecord} — not in `rewards`{.AgdaField}.  Since
`applyDirectDeposits`{.AgdaFunction} only updates `rewards`{.AgdaField}, the two
notions of "deposit" remain cleanly disjoint.

`rmOrphanDRepVotes`{.AgdaFunction} in `LEDGER-V`{.AgdaInductiveConstructor}
receives `certStateFinal`{.AgdaBound} (rather than `certState₂`{.AgdaBound}) so
that it sees the post-deposit `DRep`{.AgdaInductiveConstructor} state.  In
practice the result is the same either way, since `applyDirectDeposits`{.AgdaFunction}
does not modify `dreps`{.AgdaField}.

#### Direct deposit registration premise

Each rule additionally requires that the credentials targeted by that
transaction's direct deposits are registered in the *post-`CERTS`{.AgdaDatatype}*
`CertState`{.AgdaRecord}.

+  `SUBLEDGER-V`{.AgdaInductiveConstructor} requires
   `dom (DirectDepositsOf stx) ⊆ dom (RewardsOf certState₁)`.
+  `LEDGER-V`{.AgdaInductiveConstructor} requires
   `dom (DirectDepositsOf tx) ⊆ dom (RewardsOf certState₂)`.

Without this premise, `applyDirectDeposits`{.AgdaFunction} could silently
re-introduce a credential into `rewards`{.AgdaField} that had been deregistered
earlier in the same transaction's `CERTS`{.AgdaDatatype} step (and thus is no
longer present in `voteDelegs`{.AgdaField}, `stakeDelegs`{.AgdaField}, or
`deposits`{.AgdaField}), producing an inconsistent `DState`{.AgdaRecord}.  The
domain check rules this out at phase 1.  Note that the check is performed
against the post-`CERTS`{.AgdaDatatype} state of the *same* transaction, so
deregistrations performed by *prior* sub-transactions in the batch are
correctly accounted for; a sub-transaction whose deposit targets a credential
deregistered by an earlier sub-transaction will fail this premise.

### Design Rationale: Per-transaction Direct Deposit Application

Here we justify the choice to apply direct deposits per-transaction, instead of
aggregating and applying them batch-wide at the end of
`LEDGER-V`{.AgdaInductiveConstructor}.

+  **Phantom asset prevention is enforced by `NoPhantomWithdrawals`{.AgdaFunction}**.

   CIP-159 forbids "phantom asset" attacks in which a sub-transaction's direct
   deposit inflates the balance available to a later sub-transaction's withdrawal
   within the same batch.  This restriction is enforced in the `Utxo`{.AgdaModule}
   module by the `NoPhantomWithdrawals`{.AgdaFunction} predicate, which bounds
   *batch-wide* withdrawal totals (per reward address) by the
   `accountBalances`{.AgdaField} field of `UTxOEnv`{.AgdaRecord} and
   `SubUTxOEnv`{.AgdaRecord} — the *pre-batch* snapshot `RewardsOf
   certState₀`{.AgdaBound}.  Because `accountBalances`{.AgdaField} is fixed at the
   pre-batch value and never updated by direct deposit application, the CIP-159
   phantom-asset prohibition holds regardless of whether deposits are applied
   per-transaction or batch-wide.

+  **CIP-118 script context isolation is preserved by `accountBalances`{.AgdaField}**.

   CIP-118 requires that Plutus scripts in one sub-transaction do not see other
   sub-transactions or the top-level transaction in their context.  In the current
   spec, `accountBalances`{.AgdaField} (used for balance-interval checks and any
   future Plutus context derived from this field) is held fixed at
   `RewardsOf certState₀`{.AgdaBound} across the entire batch, so every
   sub-transaction sees the same pre-batch balances regardless of when deposits of
   other sub-transactions are applied.

+  **`depositsChange`{.AgdaFunction} remains orthogonal**.

   `calculateDepositsChange`{.AgdaFunction} reads only the `deposits`{.AgdaField}
   fields of `DState`{.AgdaRecord}/`PState`{.AgdaRecord}/`GState`{.AgdaRecord}, which
   `applyDirectDeposits`{.AgdaFunction} does not touch.  Whether direct deposits are
   applied per-transaction or batch-wide, `depositsChange`{.AgdaFunction} is
   unaffected.

```agda
data _⊢_⇀⦇_,SUBLEDGER⦈_ : SubLedgerEnv → LedgerState → SubLevelTx → LedgerState → Type where

  SUBLEDGER-V :
      ∙ isTopLevelValid ≡ true
      ∙ ⟦ slot , pp , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧ ⊢ utxoState₀ ⇀⦇ stx ,SUBUTXOW⦈ utxoState₁
      ∙ ⟦ epoch slot , pp , ListOfGovVotesOf stx , WithdrawalsOf stx , allColdCreds govState₀ enactState ⟧ ⊢ certState₀ ⇀⦇ DCertsOf stx ,CERTS⦈ certState₁
      ∙ dom (DirectDepositsOf stx) ⊆ dom (RewardsOf certState₁)
      ∙ ⟦ TxIdOf stx , epoch slot , pp , ppolicy , enactState , certState₁ , dom (RewardsOf certState₁) ⟧ ⊢ govState₀ ⇀⦇ GovProposals+Votes stx ,GOVS⦈ govState₁
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isTopLevelValid , allScripts , accountBalances ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ stx ,SUBLEDGER⦈ ⟦ utxoState₁ , govState₁ , certStateWithDDeps stx certState₁ ⟧
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

         certStateFinal : CertState
         certStateFinal = certStateWithDDeps tx certState₂
    in
      ∙ IsValidFlagOf tx ≡ true
      ∙ ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , IsValidFlagOf tx , allScripts , RewardsOf certState₀ ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoState₁ , govState₁ , certState₁ ⟧
      ∙ ⟦ epoch slot , pp , ListOfGovVotesOf tx , WithdrawalsOf tx , allColdCreds govState₁ enactState ⟧ ⊢ certState₁ ⇀⦇ DCertsOf tx ,CERTS⦈ certState₂
      ∙ dom (DirectDepositsOf tx) ⊆ dom (RewardsOf certState₂)
      ∙ ⟦ TxIdOf tx , epoch slot , pp , ppolicy , enactState , certState₂ , dom (RewardsOf certState₂) ⟧ ⊢ govState₁ ⇀⦇ GovProposals+Votes tx ,GOVS⦈ govState₂
      ∙ ⟦ slot , pp , treasury , utxo₀ , depositsChange , allScripts , RewardsOf certState₀ ⟧ ⊢ utxoState₁ ⇀⦇ tx ,UTXOW⦈ utxoState₂
        ────────────────────────────────
        ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoState₀ , govState₀ , certState₀ ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoState₂ , rmOrphanDRepVotes certStateFinal govState₂ , certStateFinal ⟧

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
