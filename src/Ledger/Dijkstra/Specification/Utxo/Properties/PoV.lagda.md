---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/PoV.lagda.md
---

# UTXO Properties: Preservation of Value {#sec:utxo-pov}

This module proves the `UTXO`{.AgdaDatatype}-level preservation-of-value facts
consumed by the `LEDGER`{.AgdaDatatype} PoV proof
(`Ledger.Properties.PoV`{.AgdaModule}): the mechanical
`getCoin`{.AgdaField} state-change equations for the valid and invalid cases, and
the coin projection of the batch balance premise
`consumedBatch ≡ producedBatch`{.AgdaFunction}.

## Key differences from Conway

1.  `UTxOState`{.AgdaRecord} has 3 fields (`utxo`, `fees`, `donations`) — deposits
    live in `CertState`{.AgdaRecord}, not `UTxOState`{.AgdaRecord}.  So

        getCoin utxoSt = cbalance utxo + fees + donations

2.  **The balance equation is batch-wide** (`consumedBatch ≡ producedBatch`,
    premise 8 of the `UTXO`{.AgdaDatatype} rule) rather than per-transaction:
    withdrawals are consumed and outputs/donations/direct deposits are produced
    by *every* transaction in the batch (top + each sub-tx).  Individual
    `SUBUTXO`{.AgdaDatatype} steps carry no balance equation of their own.

3.  **Cert deposits appear in closed form**: the consumed side carries
    `refundCertDeposits`{.AgdaFunction} and the produced side
    `newCertDeposits`{.AgdaFunction}, both computed from the batch certificate
    list `allDCerts tx` — the latter against the *pre-batch* registered-pool
    set `pools₀` carried by `UTxOEnv`{.AgdaRecord}.  No cert *state* appears, so
    the whole equation is a pure UTxO fact.

4.  **Governance-action deposits appear on the produced side**, one
    `govProposalsDeposits`{.AgdaFunction} summand per transaction in the batch.

## Proof architecture

The `UTXO`{.AgdaDatatype} PoV facts split into two orthogonal pieces.

+   **Mechanical state change** (`UTXO-pov-invalid`{.AgdaFunction},
    `UTXO-V-mechanical`{.AgdaFunction}, `subutxo-step-coin`{.AgdaFunction}): how
    `getCoin s₀` relates to `getCoin s₁` purely in terms of the state
    transition, via the balance algebra of
    `Utxo.Properties.Base`{.AgdaModule} (`split-balance`{.AgdaFunction},
    `balance-∪`{.AgdaFunction}, `outs-disjoint`{.AgdaFunction}).

+   **Batch coin balance** (`UTXO-batch-balance-coin`{.AgdaFunction}): the coin
    projection of the batch balance premise, proved in three layers —
    per-transaction (`coin-consumedTx`{.AgdaFunction},
    `coin-producedTx`{.AgdaFunction}), sums over sub-transactions
    (`coin-∑-consumedTx-sub`{.AgdaFunction},
    `coin-∑-producedTx-sub`{.AgdaFunction}), and batch level
    (`coin-consumedBatch`{.AgdaFunction}, `coin-producedBatch`{.AgdaFunction}).
    The minted values drop out: the top-level term by premise 7 of the
    `UTXO`{.AgdaDatatype} rule, the sub-level terms by the
    `noMintSubTx`{.AgdaBound} module parameter (a per-sub-transaction fact
    established by the `SUBUTXO`{.AgdaDatatype} premises, which the
    `UTXO`{.AgdaDatatype} rule does not expose — it is discharged at the
    `LEDGER`{.AgdaDatatype} level, where the `SUBLEDGERS`{.AgdaDatatype} steps
    are in scope).

Unlike Conway, no *standalone* `getCoin s₀ ≡ getCoin s₁` theorem holds at the
`UTXO`{.AgdaDatatype} level for the valid case: the state `s₀` passed to the
`UTXO`{.AgdaDatatype} rule at the `LEDGER`{.AgdaDatatype} level is the
*post-`SUBLEDGERS`* state while the batch balance speaks about the *pre-batch*
snapshot `UTxOOf Γ`, so combining the two pieces requires batch-threading
information available only to `LEDGER-pov`{.AgdaFunction}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract    using (AbstractFunctions)
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude

open import Data.List.Relation.Unary.Any using (here; there)
open import Data.Nat.Base using () renaming (_+_ to infixl 6 _+ᴺ_)
open import Data.Nat.Properties using (+-identityʳ)
open import Data.Nat.Tactic.RingSolver using (solve-∀)

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.Base txs abs

open ≡-Reasoning

private variable
  ℓ : TxLevel
```
-->

## Arithmetic helpers

The pure `+`-rearrangement lemmas in this module are discharged by the
reflective ring solver (`Data.Nat.Tactic.RingSolver`), with the solver-facing
statements written over the raw natural-number addition `_+ᴺ_`; see
`Ledger.Properties.PoV`{.AgdaModule} for the solver conventions and the reason
the overloaded `_+_` cannot appear in solver-facing statements.

```agda
private
  swap-right : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ c +ᴺ b
  swap-right = solve-∀
```

## No minting in sub-transactions

`coin (MintedValueOf stx) ≡ 0` for each sub-transaction `stx` is a premise of
the `SUBUTXO`{.AgdaDatatype} rule, but the `UTXO`{.AgdaDatatype} rule (which
carries the batch balance premise) does not quantify over the
`SUBUTXO`{.AgdaDatatype} steps.  The batch-balance lemmas below therefore take
the following per-transaction fact as a hypothesis; the
`LEDGER`{.AgdaDatatype}-level consumer discharges it from the
`SUBLEDGERS`{.AgdaDatatype} derivation.

```agda
noMintingSubTxs : TopLevelTx → Type
noMintingSubTxs tx = ∀ stx → stx ∈ˡ SubTransactionsOf tx → coin (MintedValueOf stx) ≡ 0
```

## Coin projections of `consumedBatch` and `producedBatch`

The batch balance premise is an equation between `Value`{.AgdaField}s;
`LEDGER-pov`{.AgdaFunction} consumes its `coin`{.AgdaField} projection, with each
side expanded into its closed-form `Coin`{.AgdaFunction} summands.  The
projection proceeds in three layers, mirroring the shape of
`consumedBatch`{.AgdaFunction}/`producedBatch`{.AgdaFunction}: single
transactions, sums over sub-transactions, and the batch level.

### Layer 1: single-transaction coin equations

Unfold `consumedTx`{.AgdaFunction}/`producedTx`{.AgdaFunction} and peel
`coin`{.AgdaField} through each `+ inject _` layer with
`coin-inject-lemma`{.AgdaFunction} and `∙-homo-Coin`{.AgdaFunction}.  The
consumed version uses `coin (MintedValueOf t) ≡ 0` to cancel the mint term.

```agda
module _ (pp : PParams) where

  coin-consumedTx : ∀ (t : Tx ℓ) (u : UTxO)
    → coin (MintedValueOf t) ≡ 0
    → coin (consumedTx pp t u)
      ≡ cbalance (u ∣ SpendInputsOf t) + getCoin (WithdrawalsOf t)
  coin-consumedTx t u noMint = begin
    coin (balance (u ∣ SpendInputsOf t) + MintedValueOf t + inject wdrls)
      ≡⟨ coin-inject-lemma ⟩
    coin (balance (u ∣ SpendInputsOf t) + MintedValueOf t) + wdrls
      ≡⟨ cong (_+ wdrls) (∙-homo-Coin _ _) ⟩
    cbalance (u ∣ SpendInputsOf t) + coin (MintedValueOf t) + wdrls
      ≡⟨ cong (λ z → cbalance (u ∣ SpendInputsOf t) + z + wdrls) noMint ⟩
    cbalance (u ∣ SpendInputsOf t) + 0 + wdrls
      ≡⟨ cong (_+ wdrls) (+-identityʳ _) ⟩
    cbalance (u ∣ SpendInputsOf t) + wdrls
      ∎
    where wdrls = getCoin (WithdrawalsOf t)

  coin-producedTx : ∀ (t : Tx ℓ)
    → coin (producedTx pp t)
      ≡ cbalance (outs t) + DonationsOf t + getCoin (DirectDepositsOf t)
        + govProposalsDeposits pp (ListOfGovProposalsOf t)
  coin-producedTx t = begin
    coin (balance (outs t) + inject (DonationsOf t) + inject dd + inject gov)
      ≡⟨ coin-inject-lemma ⟩
    coin (balance (outs t) + inject (DonationsOf t) + inject dd) + gov
      ≡⟨ cong (_+ gov) coin-inject-lemma ⟩
    coin (balance (outs t) + inject (DonationsOf t)) + dd + gov
      ≡⟨ cong (λ z → z + dd + gov) coin-inject-lemma ⟩
    cbalance (outs t) + DonationsOf t + dd + gov
      ∎
    where
    dd  = getCoin (DirectDepositsOf t)
    gov = govProposalsDeposits pp (ListOfGovProposalsOf t)
```

### Layer 2: sums over sub-transactions

Push `coin`{.AgdaField} through the `∑ˡ`-indexed sum with
`coin-∑ˡ`{.AgdaFunction}, then rewrite each summand pointwise with the Layer-1
equations.  The consumed version threads the `noMintingSubTxs`{.AgdaFunction}
hypothesis through the list induction (the membership argument `mem` lets each
element's no-mint fact be looked up).

```agda
  coin-∑-consumedTx-sub : ∀ (tx : TopLevelTx) (u : UTxO)
    → noMintingSubTxs tx
    → coin (∑ˡ[ stx ← SubTransactionsOf tx ] consumedTx pp stx u)
      ≡ sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                 (SubTransactionsOf tx))
  coin-∑-consumedTx-sub tx u noMintSub = begin
    coin (∑ˡ[ stx ← SubTransactionsOf tx ] consumedTx pp stx u)
      ≡⟨ coin-∑ˡ (λ stx → consumedTx pp stx u) (SubTransactionsOf tx) ⟩
    sum (map (coin ∘ (λ stx → consumedTx pp stx u)) (SubTransactionsOf tx))
      ≡⟨ go (SubTransactionsOf tx) (λ _ → id) ⟩
    sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
             (SubTransactionsOf tx))
      ∎
    where
    go : (xs : List SubLevelTx)
       → (∀ stx → stx ∈ˡ xs → stx ∈ˡ SubTransactionsOf tx)
       → sum (map (coin ∘ (λ stx → consumedTx pp stx u)) xs)
         ≡ sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx)) xs)
    go []         _   = refl
    go (stx ∷ xs) mem =
      cong₂ _+_ (coin-consumedTx stx u (noMintSub stx (mem stx (here refl))))
                (go xs (λ stx' stx'∈ → mem stx' (there stx'∈)))

  coin-∑-producedTx-sub : ∀ (tx : TopLevelTx)
    → coin (∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
      ≡ sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)
                          + govProposalsDeposits pp (ListOfGovProposalsOf stx))
                 (SubTransactionsOf tx))
  coin-∑-producedTx-sub tx = begin
    coin (∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
      ≡⟨ coin-∑ˡ (producedTx pp) (SubTransactionsOf tx) ⟩
    sum (map (coin ∘ producedTx pp) (SubTransactionsOf tx))
      ≡⟨ go (SubTransactionsOf tx) ⟩
    sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)
                      + govProposalsDeposits pp (ListOfGovProposalsOf stx))
             (SubTransactionsOf tx))
      ∎
    where
    go : (xs : List SubLevelTx)
       → sum (map (coin ∘ producedTx pp) xs)
         ≡ sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)
                             + govProposalsDeposits pp (ListOfGovProposalsOf stx)) xs)
    go []         = refl
    go (stx ∷ xs) = cong₂ _+_ (coin-producedTx stx) (go xs)
```

### Layer 3: batch-level coin equations

Peel the remaining `+ inject _` layers of
`consumed`{.AgdaFunction}/`produced`{.AgdaFunction} (cert-deposit refunds on the
consumed side; the top-level fee and new cert deposits on the produced side),
substitute Layers 1 and 2, and finish with a `+`-shuffle.  On the produced side
the per-sub-transaction `govProposalsDeposits`{.AgdaFunction} summands are split
off the sub-transaction sum (`sum-map-+`{.AgdaFunction}) and collected, together
with the top-level one, into the trailing gov-deposit group expected by
`LEDGER-pov`{.AgdaFunction}.

```agda
  coin-consumedBatch : ∀ (tx : TopLevelTx) (u : UTxO)
    → coin (MintedValueOf tx) ≡ 0
    → noMintingSubTxs tx
    → coin (consumedBatch pp tx u)
      ≡ cbalance (u ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
        + sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                   (SubTransactionsOf tx))
        + refundCertDeposits pp (allDCerts tx)
  coin-consumedBatch tx u noMintTop noMintSub = begin
    coin (consumed pp tx u + ∑ˡ[ stx ← SubTransactionsOf tx ] consumedTx pp stx u)
      ≡⟨ ∙-homo-Coin _ _ ⟩
    coin (consumed pp tx u) + coin (∑ˡ[ stx ← SubTransactionsOf tx ] consumedTx pp stx u)
      ≡⟨ cong₂ _+_ consumed-top (coin-∑-consumedTx-sub tx u noMintSub) ⟩
    cbalance (u ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
      + refundCertDeposits pp (allDCerts tx) + subSum
      ≡⟨ swap-right _ (refundCertDeposits pp (allDCerts tx)) subSum ⟩
    cbalance (u ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
      + subSum + refundCertDeposits pp (allDCerts tx)
      ∎
    where
    subSum = sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                      (SubTransactionsOf tx))

    consumed-top : coin (consumed pp tx u)
                 ≡ cbalance (u ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
                   + refundCertDeposits pp (allDCerts tx)
    consumed-top = begin
      coin (consumedTx pp tx u + inject (refundCertDeposits pp (allDCerts tx)))
        ≡⟨ coin-inject-lemma ⟩
      coin (consumedTx pp tx u) + refundCertDeposits pp (allDCerts tx)
        ≡⟨ cong (_+ refundCertDeposits pp (allDCerts tx)) (coin-consumedTx tx u noMintTop) ⟩
      cbalance (u ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
        + refundCertDeposits pp (allDCerts tx)
        ∎

  coin-producedBatch : ∀ (pools : Pools) (tx : TopLevelTx)
    → coin (producedBatch pp pools tx)
      ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
        + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                   (SubTransactionsOf tx))
        + newCertDeposits pp (dom pools) (allDCerts tx)
        + ( govProposalsDeposits pp (ListOfGovProposalsOf tx)
          + sum (map (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx))
                     (SubTransactionsOf tx)) )
  coin-producedBatch pools tx = begin
    coin (produced pp pools tx + ∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
      ≡⟨ ∙-homo-Coin _ _ ⟩
    coin (produced pp pools tx) + coin (∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
      ≡⟨ cong₂ _+_ produced-top (coin-∑-producedTx-sub tx) ⟩
    cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + govTop
      + TxFeesOf tx + newDeps + subSum₄
      ≡⟨ cong (cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + govTop
               + TxFeesOf tx + newDeps +_)
              (sum-map-+ (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                         (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx))
                         (SubTransactionsOf tx)) ⟩
    cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + govTop
      + TxFeesOf tx + newDeps + (subSum₃ + govSub)
      ≡⟨ produced-shuffle (cbalance (outs tx)) (DonationsOf tx) (getCoin (DirectDepositsOf tx))
                          govTop (TxFeesOf tx) newDeps subSum₃ govSub ⟩
    cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
      + subSum₃ + newDeps + (govTop + govSub)
      ∎
    where
    govTop  = govProposalsDeposits pp (ListOfGovProposalsOf tx)
    govSub  = sum (map (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx))
                       (SubTransactionsOf tx))
    newDeps = newCertDeposits pp (dom pools) (allDCerts tx)
    subSum₃ = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                       (SubTransactionsOf tx))
    subSum₄ = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)
                                + govProposalsDeposits pp (ListOfGovProposalsOf stx))
                       (SubTransactionsOf tx))

    produced-shuffle : ∀ o don dd g f n s₃ sg
      → o +ᴺ don +ᴺ dd +ᴺ g +ᴺ f +ᴺ n +ᴺ (s₃ +ᴺ sg)
        ≡ o +ᴺ f +ᴺ don +ᴺ dd +ᴺ s₃ +ᴺ n +ᴺ (g +ᴺ sg)
    produced-shuffle = solve-∀

    produced-top : coin (produced pp pools tx)
                 ≡ cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + govTop
                   + TxFeesOf tx + newDeps
    produced-top = begin
      coin (producedTx pp tx + inject (TxFeesOf tx) + inject newDeps)
        ≡⟨ coin-inject-lemma ⟩
      coin (producedTx pp tx + inject (TxFeesOf tx)) + newDeps
        ≡⟨ cong (_+ newDeps) coin-inject-lemma ⟩
      coin (producedTx pp tx) + TxFeesOf tx + newDeps
        ≡⟨ cong (λ z → z + TxFeesOf tx + newDeps) (coin-producedTx tx) ⟩
      cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + govTop
        + TxFeesOf tx + newDeps
        ∎
```

## `subutxo-step-coin`: the per-step SUBUTXO coin equation

For a valid batch, a `SUBUTXO`{.AgdaDatatype} step moves the spend inputs out of
the running UTxO and adds the sub-transaction's outputs and donation.  The
resulting coin equation resolves the spent balance against the *pre-batch
snapshot* `UTxOOf Γ`, so it holds only given two batch-threading facts that the
`SUBUTXO`{.AgdaDatatype} premises do not provide:

+  *freshness* — `TxIdOf stx` does not occur in the running UTxO (needed for
   `balance-∪`{.AgdaFunction} to split off `outs stx`), and
+  *spend-input agreement* — the running UTxO and the snapshot assign the same
   balance to `SpendInputsOf stx` (the premises put the spend inputs in *both
   domains*, but say nothing about the values).

Both facts follow from batch-wide input disjointness and TxId freshness, which
the outer `UTXO`{.AgdaDatatype} rule establishes at the batch level but does not
expose per step; they are taken as hypotheses here and threaded to module
parameters of `Utxow.Properties.PoV`{.AgdaModule}, in the same batch-threading
family as the `utxo₁-tx-spend-eq` and `fresh-top-tx-id` parameters of
`Ledger.Properties.PoV`{.AgdaModule}.

```agda
subutxo-step-coin : ∀ {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
  → IsTopLevelValidFlagOf Γ ≡ true
  → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
  → TxIdOf stx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
  → cbalance (UTxOOf s₀ ∣ SpendInputsOf stx) ≡ cbalance (UTxOOf Γ ∣ SpendInputsOf stx)
  → getCoin s₀ + cbalance (outs stx) + DonationsOf stx
    ≡ getCoin s₁ + cbalance (UTxOOf Γ ∣ SpendInputsOf stx)
subutxo-step-coin {Γ} {s₀ = ⟦ u , f , d ⟧ᵘ} {stx = stx} isV (SUBUTXO _) fresh spendEq
  rewrite isV = begin
    cbalance u + f + d + cbalance (outs stx) + DonationsOf stx
      ≡⟨ cong (λ z → z + f + d + cbalance (outs stx) + DonationsOf stx)
              (split-balance u (SpendInputsOf stx)) ⟩
    cbalance (u ∣ SpendInputsOf stx ᶜ) + cbalance (u ∣ SpendInputsOf stx)
      + f + d + cbalance (outs stx) + DonationsOf stx
      ≡⟨ cong (λ z → cbalance (u ∣ SpendInputsOf stx ᶜ) + z
                     + f + d + cbalance (outs stx) + DonationsOf stx) spendEq ⟩
    cbalance (u ∣ SpendInputsOf stx ᶜ) + cΓ + f + d + cbalance (outs stx) + DonationsOf stx
      ≡⟨ shuffle (cbalance (u ∣ SpendInputsOf stx ᶜ)) cΓ f d (cbalance (outs stx)) (DonationsOf stx) ⟩
    cbalance (u ∣ SpendInputsOf stx ᶜ) + cbalance (outs stx) + f + (d + DonationsOf stx) + cΓ
      ≡˘⟨ cong (λ z → z + f + (d + DonationsOf stx) + cΓ)
               (balance-∪ {u ∣ SpendInputsOf stx ᶜ} {outs stx} (outs-disjoint stx {u} fresh)) ⟩
    cbalance ((u ∣ SpendInputsOf stx ᶜ) ∪ˡ outs stx) + f + (d + DonationsOf stx) + cΓ
      ∎
  where
  cΓ = cbalance (UTxOOf Γ ∣ SpendInputsOf stx)

  shuffle : ∀ a c f d o w → a +ᴺ c +ᴺ f +ᴺ d +ᴺ o +ᴺ w ≡ a +ᴺ o +ᴺ f +ᴺ (d +ᴺ w) +ᴺ c
  shuffle = solve-∀
```

## The `UTXO-PoV` module

The remaining lemmas are stated for a fixed top-level transaction `tx`,
mirroring the parameterisation of the `LEDGER-PoV`{.AgdaModule} consumer, with
the `noMintingSubTxs`{.AgdaFunction} fact as the only assumption.

```agda
module UTXO-PoV
  (tx : TopLevelTx)
  (noMintSubTx : noMintingSubTxs tx)
  where
```

### `UTXO-pov-invalid`: collateral collection preserves `getCoin`

The invalid case does not use the batch balance equation: the rule moves the
collateral balance from the UTxO to the fee pot and leaves donations unchanged,
so `getCoin`{.AgdaField} is preserved exactly, by
`split-balance`{.AgdaFunction} at the collateral inputs.

```agda
  UTXO-pov-invalid : ∀ {Γ : UTxOEnv} {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → IsValidFlagOf tx ≡ false
    → getCoin s₀ ≡ getCoin s₁
  UTXO-pov-invalid {s₀ = ⟦ u , f , d ⟧ᵘ} (UTXO _) invalid rewrite invalid = begin
    cbalance u + f + d
      ≡⟨ cong (λ z → z + f + d) (split-balance u (CollateralInputsOf tx)) ⟩
    cbalance (u ∣ CollateralInputsOf tx ᶜ) + cbalance (u ∣ CollateralInputsOf tx) + f + d
      ≡⟨ shuffle (cbalance (u ∣ CollateralInputsOf tx ᶜ)) (cbalance (u ∣ CollateralInputsOf tx)) f d ⟩
    cbalance (u ∣ CollateralInputsOf tx ᶜ) + (f + cbalance (u ∣ CollateralInputsOf tx)) + d
      ∎
    where
    shuffle : ∀ a b f d → a +ᴺ b +ᴺ f +ᴺ d ≡ a +ᴺ (f +ᴺ b) +ᴺ d
    shuffle = solve-∀
```

### `UTXO-V-mechanical`: the valid-case state change

For a valid transaction the rule spends `SpendInputsOf tx` from the running
UTxO `u` and adds `outs tx`, the transaction fee, and the donation.  Given
freshness of `TxIdOf tx` in `u` (so that `outs tx` splits off cleanly via
`balance-∪`{.AgdaFunction}), `getCoin`{.AgdaField} changes by exactly the
spent balance on one side and the outputs/fee/donation on the other:

```agda
  UTXO-V-mechanical : ∀ {Γ : UTxOEnv} {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → IsValidFlagOf tx ≡ true
    → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
    → getCoin s₀ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
      ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf tx)
  UTXO-V-mechanical {s₀ = ⟦ u , f , d ⟧ᵘ} (UTXO _) valid fresh rewrite valid = begin
    cbalance u + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
      ≡⟨ cong (λ z → z + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx)
              (split-balance u (SpendInputsOf tx)) ⟩
    cbalance (u ∣ SpendInputsOf tx ᶜ) + cbalance (u ∣ SpendInputsOf tx)
      + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
      ≡⟨ shuffle (cbalance (u ∣ SpendInputsOf tx ᶜ)) (cbalance (u ∣ SpendInputsOf tx))
                 f d (cbalance (outs tx)) (TxFeesOf tx) (DonationsOf tx) ⟩
    cbalance (u ∣ SpendInputsOf tx ᶜ) + cbalance (outs tx)
      + (f + TxFeesOf tx) + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx)
      ≡˘⟨ cong (λ z → z + (f + TxFeesOf tx) + (d + DonationsOf tx)
                      + cbalance (u ∣ SpendInputsOf tx))
               (balance-∪ {u ∣ SpendInputsOf tx ᶜ} {outs tx} (outs-disjoint tx {u} fresh)) ⟩
    cbalance ((u ∣ SpendInputsOf tx ᶜ) ∪ˡ outs tx)
      + (f + TxFeesOf tx) + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx)
      ∎
    where
    shuffle : ∀ a b f d o tf td
      → a +ᴺ b +ᴺ f +ᴺ d +ᴺ o +ᴺ tf +ᴺ td ≡ a +ᴺ o +ᴺ (f +ᴺ tf) +ᴺ (d +ᴺ td) +ᴺ b
    shuffle = solve-∀
```

### `UTXO-batch-balance-coin`

The coin projection of the batch balance premise (premise 8 of the
`UTXO`{.AgdaDatatype} rule), in the closed form consumed by
`LEDGER-pov`{.AgdaFunction}.  The top-level no-mint fact is premise 7 of the
same rule; the sub-level ones are the module parameter.

```agda
  UTXO-batch-balance-coin : ∀ {Γ : UTxOEnv} {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → cbalance (UTxOOf Γ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
        + sum (map (λ stx → cbalance (UTxOOf Γ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                   (SubTransactionsOf tx))
        + refundCertDeposits (PParamsOf Γ) (allDCerts tx)
      ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
        + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                   (SubTransactionsOf tx))
        + newCertDeposits (PParamsOf Γ) (dom (PoolsOf Γ)) (allDCerts tx)
        + ( govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf tx)
          + sum (map (λ stx → govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf stx))
                     (SubTransactionsOf tx)) )
  UTXO-batch-balance-coin {Γ}
    (UTXO-⋯ _ _ _ _ _ _ noMintTop batchBal _ _ _ _ _ _ _ _ _ _ _) = begin
    cbalance (UTxOOf Γ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
      + sum (map (λ stx → cbalance (UTxOOf Γ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                 (SubTransactionsOf tx))
      + refundCertDeposits (PParamsOf Γ) (allDCerts tx)
      ≡˘⟨ coin-consumedBatch (PParamsOf Γ) tx (UTxOOf Γ) noMintTop noMintSubTx ⟩
    coin (consumedBatch (PParamsOf Γ) tx (UTxOOf Γ))
      ≡⟨ cong coin batchBal ⟩
    coin (producedBatch (PParamsOf Γ) (PoolsOf Γ) tx)
      ≡⟨ coin-producedBatch (PParamsOf Γ) (PoolsOf Γ) tx ⟩
    cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
      + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                 (SubTransactionsOf tx))
      + newCertDeposits (PParamsOf Γ) (dom (PoolsOf Γ)) (allDCerts tx)
      + ( govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf tx)
        + sum (map (λ stx → govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf stx))
                   (SubTransactionsOf tx)) )
      ∎
```
