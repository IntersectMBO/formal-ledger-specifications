---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger.lagda
---

# Ledger {#sec:ledger}

This module defines the ledger transition system where valid transactions
transform the ledger state.

<!--
```agda
{-# OPTIONS --safe #-}

import Data.List as L

open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

module Ledger.Conway.Specification.Ledger
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Utxow txs abs
open import Ledger.Conway.Specification.Certs govStructure

open Tx
open GState
open GovActionState
open EnactState using (cc)
```
-->

## <span class="AgdaDatatype">LEDGER</span> Transition System Types

```agda
record LEnv : Type where
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
  HasPParams-LEnv : HasPParams LEnv
  HasPParams-LEnv .PParamsOf = LEnv.pparams
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

instance
  HasUTxOState-LState : HasUTxOState LState
  HasUTxOState-LState .UTxOStateOf = LState.utxoSt

  HasUTxO-LState : HasUTxO LState
  HasUTxO-LState .UTxOOf = UTxOOf ∘ UTxOStateOf

  HasGovState-LState : HasGovState LState
  HasGovState-LState .GovStateOf = LState.govSt

  HasCertState-LState : HasCertState LState
  HasCertState-LState .CertStateOf = LState.certState

  HasDeposits-LState : HasDeposits LState
  HasDeposits-LState .DepositsOf = DepositsOf ∘ UTxOStateOf

  HasPools-LState : HasPools LState
  HasPools-LState .PoolsOf = PoolsOf ∘ CertStateOf

  HasGState-LState : HasGState LState
  HasGState-LState .GStateOf = GStateOf ∘ CertStateOf

  HasDState-LState : HasDState LState
  HasDState-LState .DStateOf = DStateOf ∘ CertStateOf

  HasPState-LState : HasPState LState
  HasPState-LState .PStateOf = PStateOf ∘ CertStateOf

  HasVoteDelegs-LState : HasVoteDelegs LState
  HasVoteDelegs-LState .VoteDelegsOf = VoteDelegsOf ∘ DStateOf ∘ CertStateOf

  HasDonations-LState : HasDonations LState
  HasDonations-LState .DonationsOf = DonationsOf ∘ UTxOStateOf

  HasFees-LState : HasFees LState
  HasFees-LState .FeesOf = FeesOf ∘ UTxOStateOf

  HasCCHotKeys-LState : HasCCHotKeys LState
  HasCCHotKeys-LState .CCHotKeysOf = CCHotKeysOf ∘ GStateOf

  HasDReps-LState : HasDReps LState
  HasDReps-LState .DRepsOf = DRepsOf ∘ CertStateOf

open CertState
open DState
open GovVotes

instance
  unquoteDecl HasCast-LEnv HasCast-LState = derive-HasCast
    ((quote LEnv , HasCast-LEnv) ∷ (quote LState , HasCast-LState) ∷ [])
```
-->

## Helper Functions

```agda
txgov : TxBody → List (GovVote ⊎ GovProposal)
txgov txb = map inj₂ txGovProposals ++ map inj₁ txGovVotes
  where open TxBody txb

rmOrphanDRepVotes : CertState → GovState → GovState
rmOrphanDRepVotes cs govSt = L.map (map₂ go) govSt
  where
   ifDRepRegistered : Credential → Type
   ifDRepRegistered c = c ∈ dom (DRepsOf cs)

   go : GovActionState → GovActionState
   go gas = record gas { votes = record (gas .votes) { gvDRep = filterKeys ifDRepRegistered (gas .votes .gvDRep) } }

allColdCreds : GovState → EnactState → ℙ Credential
allColdCreds govSt es =
  ccCreds (es .cc) ∪ concatMapˢ (λ (_ , st) → proposedCC (GovActionOf st)) (fromList govSt)
```

## <span class="AgdaDatatype">LEDGER</span> Transition System
 
<!--
```agda
private variable
  Γ                     : LEnv
  s s' s''              : LState
  utxoSt utxoSt'        : UTxOState
  govSt govSt'          : GovState
  certState certState'  : CertState
  tx                    : Tx
  slot                  : Slot
  ppolicy               : Maybe ScriptHash
  pp                    : PParams
  enactState            : EnactState
  treasury              : Treasury
```
-->

```agda
data _⊢_⇀⦇_,LEDGER⦈_ : LEnv → LState → Tx → LState → Type where
  LEDGER-V :
    let  txb = tx .body
```
<!--
```agda
         open TxBody txb
```
-->
```agda
    in
      ∙ isValid tx ≡ true
      ∙ ⟦ slot , pp , treasury ⟧  ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
      ∙ ⟦ epoch slot , pp , txGovVotes , txWithdrawals , allColdCreds govSt enactState ⟧ ⊢ certState ⇀⦇ txCerts ,CERTS⦈ certState'
      ∙ ⟦ txId , epoch slot , pp , ppolicy , enactState , certState' , dom (RewardsOf certState) ⟧ ⊢ rmOrphanDRepVotes certState' govSt ⇀⦇ txgov txb ,GOVS⦈ govSt'
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoSt , govSt , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt' , certState' ⟧

  LEDGER-I :
      ∙ isValid tx ≡ false
      ∙ ⟦ slot , pp , treasury ⟧ ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoSt , govSt , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoSt' , govSt , certState ⟧
```

The rule `LEDGER`{.AgdaDatatype} invokes the `GOVS`{.AgdaDatatype} rule to
process governance action proposals and votes.

??? note

    The governance state used as input to `GOVS`{.AgdaDatatype} is filtered to
    remove votes from `DReps`{.AgdaInductiveConstructor} that are no longer
    registered (see function `rmOrphanDRepVotes`{.AgdaFunction}).

    This mechanism serves to prevent attacks where malicious adversaries could
    submit transactions that

    1.  register a fraudulent `DRep`{.AgdaInductiveConstructor},
    2.  cast numerous votes utilizing that `DRep`{.AgdaInductiveConstructor},
    3.  deregisters the `DRep`{.AgdaInductiveConstructor} thereby recovering the deposit.

<!--
```agda
pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)
```
-->

## <span class="AgdaDatatype">LEDGERS</span> Transition System

```agda
_⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
_⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,LEDGER⦈_}
```
