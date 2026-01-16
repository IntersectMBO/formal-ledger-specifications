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

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Certs govStructure

open Tx
open GState
open GovActionState
open EnactState using (cc)
--
```
-->

## <span class="AgdaDatatype">LEDGER</span> Transition System Types

```agda
record SubLedgerEnv : Type where
  field
    slot        : Slot
    ppolicy     : Maybe ScriptHash
    pparams     : PParams
    enactState  : EnactState
    treasury    : Treasury
    utxo₀            : UTxO
    isTopLevelValid  : Bool
    allScripts    : ℙ P1Script × ℙ P2Script
    allData       : DataHash ⇀ Datum

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

-- rmOrphanDRepVotes : CertState → GovState → GovState
-- rmOrphanDRepVotes cs govSt = L.map (map₂ go) govSt
--   where
--    ifDRepRegistered : Credential → Type
--    ifDRepRegistered c = c ∈ dom (DRepsOf cs)

--    go : GovActionState → GovActionState
--    go gas = record gas { votes = record (gas .votes) { gvDRep = filterKeys ifDRepRegistered (gas .votes .gvDRep) } }

allColdCreds : GovState → EnactState → ℙ Credential
allColdCreds govSt es =
  ccCreds (es .cc) ∪ concatMapˢ (λ (_ , st) → proposedCC (GovActionOf st)) (fromList govSt)
```

-- ## <span class="AgdaDatatype">LEDGER</span> Transition System

<!--
```agda
private variable
  Γ                     : LedgerEnv
  s s' s''              : LState
  utxoState utxoState'  : UTxOState
  utxo₀                 : UTxO
  govState govState'    : GovState
  certState certState'  : CertState
  stx                   : SubLevelTx
  slot                  : Slot
  ppolicy               : Maybe ScriptHash
  pp                    : PParams
  enactState            : EnactState
  treasury              : Treasury
  isTopLevelValid       : Bool
  allScripts         : ℙ P1Script × ℙ P2Script
  allData            : DataHash ⇀ Datum
```
-->

```agda
data _⊢_⇀⦇_,SUBLEDGER⦈_ : SubLedgerEnv → LState → SubLevelTx → LState → Type where
  SUBLEDGER-V :
    let txb = stx .txBody

```
<!--
```agda
        open TxBody txb
```
-->
```agda
    in
      ∙ isTopLevelValid ≡ true
      ∙ ⟦ slot , pp , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧  ⊢ utxoState ⇀⦇ stx ,SUBUTXOW⦈ utxoState'
      ∙ ⟦ epoch slot , pp , txGovVotes , txWithdrawals , allColdCreds govState enactState ⟧ ⊢ certState ⇀⦇ txCerts ,CERTS⦈ certState'
      ∙ ⟦ txId , epoch slot , pp , ppolicy , enactState , certState' , dom (RewardsOf certState) ⟧ ⊢ {- rmOrphanDRepVotes certState' -} govState ⇀⦇ txgov txb ,GOVS⦈ govState'
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧ ⊢ ⟦ utxoState , govState , certState ⟧ ⇀⦇ stx ,SUBLEDGER⦈ ⟦ utxoState' , govState' , certState' ⟧

  SUBLEDGER-I :
      ∙ isTopLevelValid ≡ false
      ∙ ⟦ slot , pp , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧ ⊢ utxoState ⇀⦇ stx ,SUBUTXOW⦈ utxoState
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isTopLevelValid , allScripts , allData ⟧ ⊢ ⟦ utxoState , govState , certState ⟧ ⇀⦇ stx ,SUBLEDGER⦈ ⟦ utxoState , govState , certState ⟧

_⊢_⇀⦇_,SUBLEDGERS⦈_ : SubLedgerEnv → LState → List SubLevelTx → LState → Type
_⊢_⇀⦇_,SUBLEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,SUBLEDGER⦈_}
```

<!--
```agda
private variable
  utxoState'' : UTxOState
  govState''  : GovState
  certState'' : CertState
  tx          : TopLevelTx
```
-->

```agda
data _⊢_⇀⦇_,LEDGER⦈_ : LedgerEnv → LState → TopLevelTx → LState → Type where
  LEDGER-V :
    let  txb = tx .txBody
```
<!--
```agda
         open TxBody txb
```
-->
```agda
         utxo₀ = UTxOOf utxoState

         allScripts : ℙ P1Script × ℙ P2Script
         allScripts = getAllScripts tx utxo₀

         allData : DataHash ⇀ Datum
         allData = setToMap (mapˢ < hash , id > (getAllData tx utxo₀))
    in
      ∙ isValid tx ≡ true
      ∙ ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isValid tx , allScripts , allData ⟧ ⊢ ⟦ utxoState , govState , certState ⟧ ⇀⦇ txSubTransactions ,SUBLEDGERS⦈ ⟦ utxoState' , govState' , certState' ⟧
      ∙ ⟦ slot , pp , treasury , utxo₀ , isValid tx , allScripts , allData ⟧  ⊢ utxoState' ⇀⦇ tx ,UTXOW⦈ utxoState''
      ∙ ⟦ epoch slot , pp , txGovVotes , txWithdrawals , allColdCreds govState enactState ⟧ ⊢ certState' ⇀⦇ txCerts ,CERTS⦈ certState''
      ∙ ⟦ txId , epoch slot , pp , ppolicy , enactState , certState' , dom (RewardsOf certState) ⟧ ⊢ {- rmOrphanDRepVotes certState' -} govState ⇀⦇ txgov txb ,GOVS⦈ govState'
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoState , govState , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoState'' , govState'' , certState'' ⟧

  LEDGER-I :
    let  txb = tx .txBody
```
<!--
```agda
         open TxBody txb
```
-->
```agda
         utxo₀ = UTxOOf utxoState

         allScripts : ℙ P1Script × ℙ P2Script
         allScripts = getAllScripts tx utxo₀

         allData : DataHash ⇀ Datum
         allData = setToMap (mapˢ < hash , id > (getAllData tx utxo₀))
    in
      ∙ isValid tx ≡ false
      ∙ ⟦ slot , ppolicy , pp , enactState , treasury , utxo₀ , isValid tx , allScripts , allData ⟧ ⊢ ⟦ utxoState , govState , certState ⟧ ⇀⦇ txSubTransactions  ,SUBLEDGERS⦈ ⟦ utxoState , govState , certState ⟧
      ∙ ⟦ slot , pp , treasury , utxo₀ , isValid tx , allScripts , allData ⟧ ⊢ utxoState ⇀⦇ tx ,UTXOW⦈ utxoState'
      ────────────────────────────────
      ⟦ slot , ppolicy , pp , enactState , treasury ⟧ ⊢ ⟦ utxoState , govState , certState ⟧ ⇀⦇ tx ,LEDGER⦈ ⟦ utxoState' , govState , certState ⟧
```

-- <!--
-- ```agda
-- pattern LEDGER-V⋯ w x y z = LEDGER-V (w , x , y , z)
-- pattern LEDGER-I⋯ y z     = LEDGER-I (y , z)
-- ```
-- -->

-- ## <span class="AgdaDatatype">LEDGERS</span> Transition System

-- ```agda
-- _⊢_⇀⦇_,LEDGERS⦈_ : LEnv → LState → List Tx → LState → Type
-- _⊢_⇀⦇_,LEDGERS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,LEDGER⦈_}
-- ```
