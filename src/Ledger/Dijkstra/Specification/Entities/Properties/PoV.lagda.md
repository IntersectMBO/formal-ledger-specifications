---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entities/Properties/PoV.lagda.md
---

## Properties of `ENTITIES`: Preservation of Value {#thm:ENTITIES-PoV}

This module proves preservation of value for the `ENTITIES`{.AgdaDatatype} and
`SUBENTITIES`{.AgdaDatatype} rules.

In the Dijkstra era, `ENTITIES`{.AgdaDatatype} (resp. `SUBENTITIES`{.AgdaDatatype})
wraps the inner `CERTS`{.AgdaDatatype} step with the withdrawal and direct-deposit
handling of the top-level (resp. sub-level) transaction given as the signal.
Withdrawals and deposits are applied to the rewards balance before and after
`CERTS`{.AgdaDatatype}, respectively.  The "value-flow" equation proved below captures
the net effect of all three components on the cert-state rewards balance
(`coinFromRewards`{.AgdaFunction}; the deposit pots are accounted separately).

Both lemmas take an explicit *no-truncation* hypothesis `amts≤`{.AgdaBound}: each
withdrawal amount is bounded by the account's balance in the rule's *input* state.
Since `applyWithdrawals`{.AgdaFunction} uses truncating subtraction (`_∸_`), without
this bound a withdrawal could claim more coin than actually leaves the rewards pot and
the value-flow equation would fail.  The spec's own premises bound withdrawals against
the *pre-batch* snapshot `rewards₀`{.AgdaField} (exactly, per account, in legacy mode),
which does not by itself bound them against the input state of a later step in the
batch; see the discussion of the phantom-withdrawal gap in the review of #1256.  The
hypothesis is discharged at the call site (`Ledger.Properties.PoV`) by dedicated
module parameters.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)

module Ledger.Dijkstra.Specification.Entities.Properties.PoV
  (txs : TransactionStructure) (open TransactionStructure txs) where

open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Nat.Properties using (+-comm; +-assoc)

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Entities.Properties.ApplyToRewardsPoV txs
  using (module ApplyToRewards-PoV)

open RewardAddress
open ≡-Reasoning

private variable
  txTop : TopLevelTx
  txSub : SubLevelTx
```
-->

## The `ENTITIES-PoV` module

`ENTITIES-PoV`{.AgdaModule} inherits the three module parameters of
`ApplyToRewards-PoV`{.AgdaModule} (which are "obvious" facts which probably ought to
be proved upstream in the `agda-sets` library).

```agda
module ENTITIES-PoV
  ( ∪ˡ-lookup-preserve :
      (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ m) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin :
    (m : RewardAddress ⇀ Coin) → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique :
      (m : RewardAddress ⇀ Coin)
      → ∀[ a ∈ dom (m ˢ) ] NetworkIdOf a ≡ NetworkId
      → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )

  -- Value preservation of the `CERTS` rule to be proved in `Certs.Properties.PoV` (#1210).
  ( CERTS-pov : ∀ {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → coinFromRewards s ≡ coinFromRewards s' )
  where
  open ApplyToRewards-PoV ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique public
```

## The `SUBENTITIES-pov` theorem

**Informally**.  Let `s`{.AgdaBound}, `s'`{.AgdaBound} be `CertStates`{.AgdaRecord}
related by `SUBENTITIES`{.AgdaDatatype} with signal `txSub`{.AgdaBound}, and suppose
each of `txSub`{.AgdaBound}'s withdrawal amounts is bounded by the corresponding
account balance in `s`{.AgdaBound} (the `amts≤`{.AgdaBound} no-truncation hypothesis).
Then,

    coinFromRewards s + getCoin (DirectDepositsOf txSub)
      ≡ coinFromRewards s' + getCoin (WithdrawalsOf txSub)

All other ingredients — the `NetworkId`{.AgdaFunction} witnesses and the two domain
conditions — are premises of the rule itself.

**Formally**.

```agda
  SUBENTITIES-pov : {Γ : SubEntitiesEnv} {s s' : CertState}
    → ∀[ (addr , amt) ∈ (WithdrawalsOf txSub) ˢ ]
        amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s) (stake addr))
    → Γ ⊢ s ⇀⦇ txSub ,SUBENTITIES⦈ s'
    → coinFromRewards s  + getCoin (DirectDepositsOf txSub)
      ≡ coinFromRewards s' + getCoin (WithdrawalsOf txSub)
```

**Proof**.

```agda
  SUBENTITIES-pov {txSub = txSub} {s = ⟦ ⟦ _ , _ , r₀ , _ ⟧ᵈ , _ , _ ⟧ᶜˢ}
    amts≤
    (SUBENTITIES {rewards' = r₁} (wd-netId , _ , wdrls⊆ , _ , _ , certsStep , _ , ddCreds⊆)) =
    begin
      getCoin r₀ + dd
        ≡⟨ cong (_+ dd) (applyWithdrawals-pov (WithdrawalsOf txSub) r₀ wdrls⊆ wd-netId amts≤) ⟩
      getCoin aw + wdrls + dd
        ≡⟨ +-assoc (getCoin aw) wdrls dd ⟩
      getCoin aw + (wdrls + dd)
        ≡⟨ cong (getCoin aw +_) (+-comm wdrls dd) ⟩
      getCoin aw + (dd + wdrls)
        ≡˘⟨ +-assoc (getCoin  aw) dd wdrls ⟩
      getCoin aw + dd + wdrls
        ≡⟨ cong (λ x → (x + dd) + wdrls) (CERTS-pov certsStep) ⟩
      (getCoin r₁ + dd) + wdrls
        ≡˘⟨ cong (_+ wdrls) (applyDirectDeposits-pov (DirectDepositsOf txSub) r₁ ddCreds⊆) ⟩
      getCoin (applyDirectDeposits (DirectDepositsOf txSub) r₁) + wdrls
        ∎
    where
    dd  wdrls : Coin
    dd = getCoin (DirectDepositsOf txSub)
    wdrls = getCoin (WithdrawalsOf txSub)
    aw : Rewards
    aw = applyWithdrawals (WithdrawalsOf txSub) r₀
```

## The `ENTITIES-pov` theorem

The top-level analogue, with signal `txTop`{.AgdaBound}: the same value-flow equation,
by the same argument.  (In legacy mode the rule's own premise forces each top-level
withdrawal to equal the account's current balance, which implies the `amts≤`{.AgdaBound}
hypothesis; in normal mode the rule bounds withdrawals only against the pre-batch
`rewards₀`{.AgdaField}, so the hypothesis is genuinely extra information.)

```agda
  ENTITIES-pov : {Γ : EntitiesEnv} {s s' : CertState}
    → ∀[ (addr , amt) ∈ (WithdrawalsOf txTop) ˢ ]
        amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s) (stake addr))
    → Γ ⊢ s ⇀⦇ txTop ,ENTITIES⦈ s'
    → coinFromRewards s  + getCoin (DirectDepositsOf txTop)
      ≡ coinFromRewards s' + getCoin (WithdrawalsOf txTop)
```

**Proof**.

```agda
  ENTITIES-pov {txTop = txTop} {s = ⟦ ⟦ _ , _ , r₀ , _ ⟧ᵈ , _ , _ ⟧ᶜˢ}
    amts≤
    (ENTITIES {rewards' = r₁} (wd-netId , wdrls⊆ , _ , _ , _ , _ , certsStep , _ , ddCreds⊆)) =
    begin
      getCoin r₀ + dd
        ≡⟨ cong (_+ dd) (applyWithdrawals-pov (WithdrawalsOf txTop) r₀ wdrls⊆ wd-netId amts≤) ⟩
      getCoin aw + wdrls + dd
        ≡⟨ +-assoc (getCoin aw) wdrls dd ⟩
      getCoin aw + (wdrls + dd)
        ≡⟨ cong (getCoin aw +_) (+-comm wdrls dd) ⟩
      getCoin aw + (dd + wdrls)
        ≡˘⟨ +-assoc (getCoin  aw) dd wdrls ⟩
      getCoin aw + dd + wdrls
        ≡⟨ cong (λ x → (x + dd) + wdrls) (CERTS-pov certsStep) ⟩
      (getCoin r₁ + dd) + wdrls
        ≡˘⟨ cong (_+ wdrls) (applyDirectDeposits-pov (DirectDepositsOf txTop) r₁ ddCreds⊆) ⟩
      getCoin (applyDirectDeposits (DirectDepositsOf txTop) r₁) + wdrls
        ∎
    where
    dd  wdrls : Coin
    dd = getCoin (DirectDepositsOf txTop)
    wdrls = getCoin (WithdrawalsOf txTop)
    aw : Rewards
    aw = applyWithdrawals (WithdrawalsOf txTop) r₀
```
