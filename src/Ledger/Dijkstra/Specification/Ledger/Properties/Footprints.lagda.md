---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/Footprints.lagda.md
---

# Batch footprints of Dijkstra transactions {#sec:dijkstra-footprints}

Read/write sets of a top-level transaction together with its subtransactions,
used by the insertion and independence conditions.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.Footprints
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)
open GovStructure govStructure using (BlsVKey)
open import Ledger.Dijkstra.Specification.Utxo txs abs using (outs)
open import Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas txs abs
  using (subTxs; allVotes)
open import Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas txs abs
  using (batch∪; wdrlCreds; ddCreds) public
open import Ledger.Prelude.Properties.GeneralLemmas using (⋃map)
```
-->

```agda
-- UTxO footprint
spendIns refIns colls reads spends consumed outsDom : TopLevelTx → ℙ TxIn
spendIns t = batch∪ SpendInputsOf t
refIns   t = batch∪ ReferenceInputsOf t
colls    t = CollateralInputsOf t
reads    t = spendIns t ∪ refIns t ∪ colls t
spends   t = spendIns t ∪ colls t
-- what the batch actually removes, by phase-2 outcome
consumed t = if IsValidFlagOf t then spendIns t else colls t
outsDom  t = batch∪ (λ x → dom (outs x ˢ)) t

-- account footprint (outside certificates); starting intervals are checked against the batch-start balances
intervalCreds rwdCreds : TopLevelTx → ℙ Credential
intervalCreds t = batch∪ (λ x → dom (BalanceIntervalsOf x ˢ)) t ∪ dom (StartingBalanceIntervalsOf t ˢ)
rwdCreds      t = wdrlCreds t ∪ ddCreds t ∪ intervalCreds t

-- pools registered, and pools read (delegation targets and SPO voters)
poolRegs poolReads : TopLevelTx → ℙ KeyHash
poolRegs t = fromList (mapMaybe reg (allDCerts t))
  where reg : DCert → Maybe KeyHash
        reg (regpool kh _) = just kh
        reg _              = nothing
poolReads t = fromList (mapMaybe deleg (allDCerts t)) ∪ fromList (mapMaybe spo (allVotes t))
  where deleg : DCert → Maybe KeyHash
        deleg (delegate _ _ (just kh) _) = just kh
        deleg _                          = nothing
        spo : GovVote → Maybe KeyHash
        spo v with GovVote.voter v
        ... | ⟦ SPO , kh ⟧ᵍᵛ = just kh
        ... | _              = nothing

-- VRF and BLS keys of pool registrations (each may belong to at most one pool)
poolVRFs : TopLevelTx → ℙ VRF
poolVRFs t = fromList (mapMaybe vrfOf (allDCerts t))
  where vrfOf : DCert → Maybe VRF
        vrfOf (regpool _ p) = just (StakePoolParams.vrf p)
        vrfOf _             = nothing
poolBLSs : TopLevelTx → ℙ BlsVKey
poolBLSs t = fromList (mapMaybe blsOf (allDCerts t))
  where blsOf : DCert → Maybe BlsVKey
        blsOf (regpool _ p) = proj₁ <$> StakePoolParams.bls p
        blsOf _             = nothing

-- CC hot-key registrations (cold credentials) and CC voters (hot credentials)
ccRegs ccVoters : TopLevelTx → ℙ Credential
ccRegs t = fromList (mapMaybe cc (allDCerts t))
  where cc : DCert → Maybe Credential
        cc (ccreghot c _) = just c
        cc _              = nothing
ccVoters t = fromList (mapMaybe cc (allVotes t))
  where cc : GovVote → Maybe Credential
        cc v with GovVote.voter v
        ... | ⟦ CC , c ⟧ᵍᵛ = just c
        ... | _            = nothing

-- DRep deregistrations, DRep voters, DRep delegatees
dregCreds drepVoters delegateeCreds : TopLevelTx → ℙ Credential
dregCreds t = fromList (mapMaybe dreg (allDCerts t))
  where dreg : DCert → Maybe Credential
        dreg (deregdrep c _) = just c
        dreg _               = nothing
drepVoters t = fromList (mapMaybe drep (allVotes t))
  where drep : GovVote → Maybe Credential
        drep v with GovVote.voter v
        ... | ⟦ DRep , c ⟧ᵍᵛ = just c
        ... | _              = nothing
delegateeCreds t = fromList (mapMaybe deleg (allDCerts t))
  where deleg : DCert → Maybe Credential
        deleg (delegate _ (just (vDelegCredential c)) _ _) = just c
        deleg _                                            = nothing

-- reward accounts a batch's proposals require registered (return and treasury-withdrawal addresses)
propCreds : TopLevelTx → ℙ Credential
propCreds t = batch∪ (λ x → ⋃map ofProp (ListOfGovProposalsOf x)) t
  where ofAction : GovAction → ℙ Credential
        ofAction ⟦ TreasuryWithdrawal , wdrls ⟧ᵍᵃ = mapˢ CredentialOf (dom wdrls)
        ofAction _                                = ∅
        ofProp : GovProposal → ℙ Credential
        ofProp p = ❴ CredentialOf (GovProposal.returnAddr p) ❵ ∪ ofAction (GovProposal.action p)
```
