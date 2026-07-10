---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entities.lagda.md
---

# Entities {#sec:entities}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)

module Ledger.Dijkstra.Specification.Entities
  (txs : TransactionStructure) (open TransactionStructure txs) where

open import Ledger.Prelude renaming (filterˢ to filter)
open import Ledger.Prelude.Numeric.UnitInterval
open import Ledger.Dijkstra.Specification.Certs govStructure
open RewardAddress
open PParams
```
-->

# Auxiliary Types and Functions

```agda
record EntitiesEnv : Type where
  field
    epoch                   : Epoch
    pp                      : PParams
    coldCredentials         : ℙ Credential
    legacyMode              : Bool
    rewards₀                : Rewards

record SubEntitiesEnv : Type where
  field
    epoch                   : Epoch
    pp                      : PParams
    coldCredentials         : ℙ Credential
    rewards₀                : Rewards
```

<!--
```agda
unquoteDecl HasCast-EntitiesEnv HasCast-SubEntitiesEnv = derive-HasCast
  ( (quote SubEntitiesEnv , HasCast-SubEntitiesEnv) ∷
  [ (quote EntitiesEnv , HasCast-EntitiesEnv) ])

instance
  EntitiesEnv-HasEpoch : HasEpoch EntitiesEnv
  EntitiesEnv-HasEpoch .EpochOf = EntitiesEnv.epoch

  EntitiesEnv-HasColdCredentials : HasColdCredentials EntitiesEnv
  EntitiesEnv-HasColdCredentials .ColdCredentialsOf = EntitiesEnv.coldCredentials

  EntitiesEnv-HasPParams : HasPParams EntitiesEnv
  EntitiesEnv-HasPParams .PParamsOf = EntitiesEnv.pp
```
-->

Since it underpins both `applyDirectDeposits`{.AgdaFunction} and
`applyWithdrawals`{.AgdaFunction}, the `applyToRewards`{.AgdaFunction} function
bears explaining.  Given three arguments —
a binary function `f` (e.g., addition or subtraction),
a map `m` from `RewardAddress`{.AgdaDatatype} to `Coin`{.AgdaDatatype} (e.g.,
direct deposits or withdrawals), and
a `Rewards` map (of account balances) — for each `(addr , amt)`, the
`applyToRewards`{.AgdaFunction} function does the following:

1.  Look up `stake addr` in the accumulator.
2.  If found with current balance `bal`, replace the entry with `(stake addr, f bal amt)`.
    *Note*. since `∪ˡ` is left-biased, the fresh singleton wins at `stake addr` and all
    other entries of `acc` are preserved; no explicit complement restriction is needed.
3.  If not found (defensive; the caller's precondition will rule this out), return `acc`
    unchanged; this keeps `applyToRewards` total.

```agda
applyToRewards : (Coin → Coin → Coin) → (RewardAddress ⇀ Coin) → Rewards → Rewards
applyToRewards f m rwds =
  foldl (λ acc (addr , amt) → maybe (λ bal → ❴ stake addr , f bal amt ❵ ∪ˡ acc) acc (lookupᵐ? acc (stake addr)))
        rwds
        (setToList (m ˢ))

applyDirectDeposits : DirectDeposits → Rewards → Rewards
applyDirectDeposits = applyToRewards _+_

applyWithdrawals : Withdrawals → Rewards → Rewards
applyWithdrawals = applyToRewards _∸_
```

# `ENTITIES`{.AgdaDatatype} Transition System

In Dijkstra, the new `ENTITIES`{.AgdaDatatype} rule subsumes the
pre-Dijkstra `CERTS`{.AgdaDatatype} rule. This rule in addition to
processing certificates via `CERTS`{.AgdaDatatype}, processes
withdrawals, direct deposits, and account balance intervals.

CIP-159 introduces two new fields to transactions: `directDeposits`
and `balanceIntervals`. Direct deposits represent value that flows
from the transaction into account addresses. Balance intervals enable
transactions to assert predicates about account balances.

## Withdrawals 

The `ENTITIES`{.AgdaDatatype} rule applies withdrawals, via
`applyWithdrawals`{.AgdaFunction} before certificate evaluation.  In
the Dijkstra era, withdrawals can be partial, unless in legacy mode.

## Direct Deposits

The `ENTITIES`{.AgdaDatatype} rule applies direct deposits to the
`CertState`{.AgdaRecord} after  `CERTS`{.AgdaDatatype}.

<!--
```agda
open GovVote using (voter)

private variable
  txTop : TopLevelTx
  txSub : SubLevelTx
  rewards rewards' : Rewards
  dReps : DReps
  stakeDelegs stakeDelegs' : StakeDelegs
  ccHotKeys : CCHotKeys
  voteDelegs voteDelegs' : VoteDelegs
  rewards₀ : Rewards
  depositsᵍ depositsᵈ depositsᵈ' : Credential ⇀ Coin
  legacyMode : Bool

  e : Epoch
  pp : PParams
  cc : ℙ Credential

  gState' : GState
  pState pState' : PState
```
-->

```agda
data _⊢_⇀⦇_,SUBENTITIES⦈_ : SubEntitiesEnv → CertState → SubLevelTx → CertState → Type where

  SUBENTITIES :
    let refresh         = mapPartial (isGovVoterDRep ∘ voter) (fromList (ListOfGovVotesOf txSub))
        refreshedDReps  = mapValueRestricted (const (e + pp .drepActivity)) dReps refresh
        activeVDelegs   = mapˢ vDelegCredential (dom (DRepsOf gState'))
                               ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])

        withdrawals               = WithdrawalsOf txSub
        withdrawalsCredentials    = mapˢ stake (dom withdrawals)
        accountBalanceIntervals   = BalanceIntervalsOf txSub
        directDeposits            = DirectDepositsOf txSub
        directDepositsCredentials = mapˢ stake (dom directDeposits)
    in
    ∙ ∀[ a ∈ dom withdrawals ] NetworkIdOf a ≡ NetworkId
    ∙ withdrawalsCredentials ⊆ dom rewards₀
    ∙ withdrawalsCredentials ⊆ dom rewards

    ∙ dom accountBalanceIntervals ⊆ dom rewards
    ∙ ∀[ (c , interval) ∈ accountBalanceIntervals ˢ ]
        (InBalanceInterval (maybe id 0 (lookupᵐ? rewards c)) interval)

    ∙ ⟦ e , pp , cc ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , applyWithdrawals withdrawals rewards , depositsᵈ ⟧ , pState , ⟦ refreshedDReps , ccHotKeys , depositsᵍ ⟧ ⟧ ⇀⦇ DCertsOf txSub  ,CERTS⦈ ⟦ ⟦ voteDelegs' , stakeDelegs' , rewards' , depositsᵈ' ⟧ , pState' , gState' ⟧

    ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId
    ∙ directDepositsCredentials ⊆ dom rewards'
      ────────────────────────────────
      ⟦ e , pp , cc , rewards₀ ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards , depositsᵈ ⟧ , pState , ⟦ dReps , ccHotKeys , depositsᵍ ⟧ ⟧ ⇀⦇ txSub ,SUBENTITIES⦈ ⟦ ⟦ voteDelegs' ∣^ activeVDelegs , stakeDelegs' , applyDirectDeposits directDeposits rewards' , depositsᵈ' ⟧ , pState' , gState' ⟧
```

```agda
data _⊢_⇀⦇_,ENTITIES⦈_ : EntitiesEnv → CertState → TopLevelTx → CertState → Type where

  ENTITIES :
    let refresh         = mapPartial (isGovVoterDRep ∘ voter) (fromList (ListOfGovVotesOf txTop))
        refreshedDReps  = mapValueRestricted (const (e + pp .drepActivity)) dReps refresh
        activeVDelegs   = mapˢ vDelegCredential (dom (DRepsOf gState'))
                               ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])

        withdrawalsSubTxs          = foldl (λ acc txSub → acc ∪⁺ WithdrawalsOf txSub) ∅ (SubTransactionsOf txTop)
        withdrawals                = WithdrawalsOf txTop
        withdrawalsCredentials     = mapˢ stake (dom withdrawals)
        accountBalanceIntervals    = BalanceIntervalsOf txTop
        directDeposits             = DirectDepositsOf txTop
        directDepositsCredentials  = mapˢ stake (dom directDeposits)
    in

    ∙ ∀[ a ∈ dom withdrawals ] NetworkIdOf a ≡ NetworkId
    ∙ withdrawalsCredentials ⊆ dom rewards

    ∙ (legacyMode ≡ true →
        ∙ ∀[ (addr , amt) ∈ withdrawals ˢ ] amt ≡ maybe id 0 (lookupᵐ? rewards (stake addr))
        ∙ ∀[ (addr , amt) ∈ withdrawalsSubTxs ˢ ] amt ≤ maybe id 0 (lookupᵐ? rewards₀ (stake addr)))

    ∙ (legacyMode ≡ false →
        ∙ withdrawalsCredentials ⊆ dom rewards₀
        ∙ ∀[ (addr , amt) ∈ (withdrawalsSubTxs ∪⁺ withdrawals) ˢ ] amt ≤ maybe id 0 (lookupᵐ? rewards₀ (stake addr)))

    ∙ dom accountBalanceIntervals ⊆ dom rewards
    ∙ ∀[ (c , interval) ∈ accountBalanceIntervals ˢ ]
        (InBalanceInterval (maybe id 0 (lookupᵐ? rewards c)) interval)

    ∙ ⟦ e , pp , cc ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , applyWithdrawals withdrawals rewards , depositsᵈ ⟧ , pState , ⟦ refreshedDReps , ccHotKeys , depositsᵍ ⟧ ⟧ ⇀⦇ DCertsOf txTop  ,CERTS⦈ ⟦ ⟦ voteDelegs' , stakeDelegs' , rewards' , depositsᵈ' ⟧ , pState' , gState' ⟧

    ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId
    ∙ directDepositsCredentials ⊆ dom rewards'
      ────────────────────────────────
      ⟦ e , pp , cc , legacyMode , rewards₀ ⟧ ⊢ ⟦ ⟦ voteDelegs , stakeDelegs , rewards , depositsᵈ ⟧ , pState , ⟦ dReps , ccHotKeys , depositsᵍ ⟧ ⟧ ⇀⦇ txTop ,ENTITIES⦈ ⟦ ⟦ voteDelegs' ∣^ activeVDelegs , stakeDelegs' , applyDirectDeposits directDeposits rewards' , depositsᵈ' ⟧ , pState' , gState' ⟧
```
