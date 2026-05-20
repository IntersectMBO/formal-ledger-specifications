---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entities.lagda.md
---

# Entities {#sec:entities}

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Entities
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude renaming (filterˢ to filter)
open import Ledger.Prelude.Numeric.UnitInterval
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Dijkstra.Specification.Account gs
open import Ledger.Dijkstra.Specification.Certs gs
open RewardAddress
open PParams
```
-->

# Auxiliary Functions

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

In Dijkstra, the `ENTITIES`{.AgdaDatatype} rule replaces pre-Dijkstra
`CERTS`{.AgdaDatatype} rule. This rule processes withdrawals,
certificates and direct deposits.

## Withdrawal Processing

The `ENTITIES`{.AgdaDatatype} rule applies withdrawals, via
`applyWithdrawals`{.AgdaFunction} before certificate evaluation.  In
the Dijkstra era, CIP-159 extends the withdrawal semantics from an
"all-or-nothing" model (where the withdrawn amount must equal the full
account balance) to a "partial withdrawal" model (where any amount up
to the full balance may be withdrawn).

Premise (1) ensures that each withdrawal targets a registered
account and that the withdrawal amount does not exceed the account's
current balance.

The phantom-asset prohibition of CIP-159 — that withdrawals in one
sub-transaction may not draw from deposits made by an earlier
sub-transaction in the same batch — is enforced separately in the
`Utxo`{.AgdaModule} (see [Phantom Asset
Prevention](Ledger.Dijkstra.Specification.Utxo.md#subsubsec:phantom-asset-prevention)).

## Direct Deposit Application (CIP-159)

The `ENTITIES`{.AgdaDatatype} rule applies CIP-159 direct deposits to the
`CertState`{.AgdaRecord} after all individual `CERT`{.AgdaDatatype} steps
for the transaction have run, alongside its existing `voteDelegs`{.AgdaField}
filtering. Specifically:

+  `voteDelegs`{.AgdaField} is restricted to credentials that delegate to a
   currently-registered `DRep`{.AgdaInductiveConstructor} (or to the abstain /
   no-confidence pseudo-DReps).
+  `rewards`{.AgdaField} is augmented by `directDeposits`{.AgdaField} via
   `∪⁺`{.AgdaFunction} (union with addition) — equivalently,
   `applyDirectDeposits directDeposits` is applied to the threaded
   `DState`{.AgdaRecord}.

Premise (2) ensures that `applyDirectDeposits`{.AgdaFunction} does not
silently re-introduce a credential into `rewards`{.AgdaField} that was
deregistered earlier in the same transaction's `CERT`{.AgdaDatatype}
steps (and is therefore no longer present in `voteDelegs`{.AgdaField},
`stakeDelegs`{.AgdaField}, or `deposits`{.AgdaField}), which would
produce an inconsistent `DState`{.AgdaRecord}.

<!--
```agda
open GovVote using (voter)

private variable
  rewards₀ rewards₁ : Rewards
  dReps : DReps
  stakeDelegs stakeDelegs₀ stakeDelegs₁ : StakeDelegs
  ccHotKeys : CCHotKeys
  voteDelegs₀ voteDelegs₁ : VoteDelegs
  wdrls : Withdrawals
  dd : DirectDeposits
  depositsᵍ depositsᵈ₀ depositsᵈ₁ : Credential ⇀ Coin

  dCerts : List DCert
  e : Epoch
  vs : List GovVote
  pp : PParams
  cc : ℙ Credential

  gState₁ : GState
  pState₀ pState₁ : PState
```
-->

```agda
data _⊢_⇀⦇_,ENTITIES⦈_ : CertEnv → CertState → List DCert → CertState → Type where

  ENTITIES :
    let refresh         = mapPartial (isGovVoterDRep ∘ voter) (fromList vs)
        refreshedDReps  = mapValueRestricted (const (e + pp .drepActivity)) dReps refresh
        wdrlCreds       = mapˢ stake (dom wdrls)
        ddCreds         = mapˢ stake (dom dd)
        activeVDelegs   = mapˢ vDelegCredential (dom (DRepsOf gState₁))
                               ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])
    in
    ∙ filter isKeyHash wdrlCreds ⊆ dom voteDelegs₀
    ∙ wdrlCreds ⊆ dom rewards₀
    ∙ ∀[ (addr , amt) ∈ wdrls ˢ ] amt ≤ maybe id 0 (lookupᵐ? rewards₀ (stake addr)) -- (1)
    ∙ ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ ⟦ voteDelegs₀ , stakeDelegs₀ , applyWithdrawals wdrls rewards₀ , depositsᵈ₀ ⟧ , pState₀ , ⟦ refreshedDReps , ccHotKeys , depositsᵍ ⟧ ⟧ ⇀⦇ dCerts  ,CERTS⦈ ⟦ ⟦ voteDelegs₁ , stakeDelegs₁ , rewards₁ , depositsᵈ₁ ⟧ , pState₁ , gState₁ ⟧
    ∙ ddCreds ⊆ dom rewards₁ -- (2)
      ────────────────────────────────
      ⟦ e , pp , vs , wdrls , cc , dd ⟧ ⊢ ⟦ ⟦ voteDelegs₀ , stakeDelegs₀ , rewards₀ , depositsᵈ₀ ⟧ , pState₀ , ⟦ dReps , ccHotKeys , depositsᵍ ⟧ ⟧ ⇀⦇ dCerts ,ENTITIES⦈ ⟦ ⟦ voteDelegs₁ ∣^ activeVDelegs , stakeDelegs₁ , applyDirectDeposits dd rewards₁ , depositsᵈ₁ ⟧ , pState₁ , gState₁ ⟧
```
