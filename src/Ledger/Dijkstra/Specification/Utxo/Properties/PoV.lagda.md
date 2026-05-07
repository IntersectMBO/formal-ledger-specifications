---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/PoV.lagda.md
---

# UTXO: Preservation of Value {#sec:utxo-pov}

This module states the preservation-of-value property for the Dijkstra
`UTXO`{.AgdaDatatype} rule, updated for CIP-159 (direct deposits and
partial withdrawals).

## Key Differences from Conway

1.  `UTxOState`{.AgdaRecord} has 3 fields (`utxo`, `fees`, `donations`) in Dijkstra — deposits
    live in `CertState`, not `UTxOState`.  So

    `getCoin utxoSt = cbalance utxo + fees + donations` (no `getCoin deposits` term).

2.  **Balance equation is batch-wide** (`consumedBatch ≡ producedBatch`) rather
    than per-transaction.  It is a *conjunct* in `UTXO-Premises` (premise `p₇`),
    not a standalone `newBal` premise.

3.  **Withdrawals appear on the consumed side** (as in Conway) *for every
    transaction in the batch* (top + each sub-tx), not just the top-level tx.
    CIP-159 allows partial withdrawals; the withdrawn amount is the value
    specified in the transaction (≤ pre-batch balance, by phantom asset
    prevention).

4.  **Direct deposits appear on the produced side** (new to CIP-159), both at
    the top level and in sub-transactions.  These represent value leaving the
    UTxO world and entering account balances.  They *cancel* in the full
    LEDGER-pov equation against the `applyDirectDeposits` step applied to
    `CertState`.

5.  `UTXOS`{.AgdaDatatype} is trivial (`⊤ → ⊤`): only checks script evaluation, does not
    modify state.  All state updates happen in `UTXO-V`/`UTXO-I` directly.

## Proof Architecture

The Dijkstra `UTXO-pov`{.AgdaFunction} is split into two orthogonal pieces:

+   **Mechanical state change** (`UTXO-I-getCoin`{.AgdaFunction},
    `UTXO-V-mechanical`{.AgdaFunction}): How `getCoin s₀` relates to
    `getCoin s₁` purely in terms of the `UTxOState` state transition,
    without using the batch balance equation.

+   **Batch coin balance** (`batch-balance-coin`{.AgdaFunction}): The coin
    projection of the batch balance equation `consumedBatch ≡ producedBatch`.
    This is a *pure* equation about `tx`, the pre-batch UTxO snapshot
    `utxo₀ = UTxOOf Γ`, and the `DepositsChange` — it does not mention
    `s₀` or `s₁`.

The combined `UTXO-pov`{.AgdaFunction} theorem uses both pieces to express the
value preservation equation that the `LEDGER-pov`{.AgdaFunction} proof needs.

Note that, unlike in Conway, the mechanical state change alone (for the valid
case) does not suffice to prove a local "before/after" equation, because

+   `utxoSt₀` passed to the `UTXO`{.AgdaDatatype} rule at the `LEDGER` level is
    the *post-SUBLEDGERS* state, not the pre-batch state, so, in general,

    `UTxOOf utxoSt₀ ≢ UTxOOf Γ`

+   the batch balance equation relates `UTxOOf Γ` (the pre-batch snapshot) to
    quantities summed over the *entire batch*, not just the top-level tx.

Consequently, deriving a full value-preservation statement for the UTXO rule
alone requires threading through information about the preceding SUBLEDGERS
step — work that is done in `LEDGER-pov`{.AgdaFunction}, not here.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)
open import Ledger.Dijkstra.Specification.Abstract   using (AbstractFunctions)

module Ledger.Dijkstra.Specification.Utxo.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Axiom.Set.Properties th

-- Only import the pieces that actually compile in Base for now.
-- `balance-∪` and `split-balance` remain module parameters below, to be
-- supplied by callers, pending a Dijkstra-specific port of Conway Base's
-- balance arithmetic.
open import Ledger.Dijkstra.Specification.Utxo.Properties.Base txs abs
  using (∙-homo-Coin; outs-disjoint; coin-∑ˡ)

open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Relation.Binary.PropositionalEquality
open import Ledger.Dijkstra.Specification.Transaction
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.Nat.Properties
  using (+-0-monoid; +-identityʳ; +-identityˡ; +-comm; +-assoc; *-zeroʳ; *-identityʳ)

instance
  _ = +-0-monoid

private variable
  ℓ : TxLevel
```
-->

## Preliminaries

We record the `HasCoin`{.AgdaRecord} instance for `UTxOState`{.AgdaRecord} for
easy reference.  Note, in Dijkstra `UTxOState`{.AgdaRecord} has only three fields.
Also, for `s : UTxOState`,

`getCoin s = cbalance (UTxOOf s) + FeesOf s + DonationsOf s`

We introduce module-level parameters encapsulating the UTxO arithmetic lemmas that
are used in Conway's analogous proofs.  They need to be ported to the Dijkstra era (they live in
`Ledger.Conway.Specification.Utxo.Properties.Base`{.AgdaModule}) but are
orthogonal to the CIP-159 content of this issue, so we take them as assumptions
here.

```agda
-- =============================================================================
-- Coin projections of consumedBatch and producedBatch.
-- =============================================================================
--
-- These proofs live inside the parameterised `module _ (tx : TopLevelTx) ...`
-- block of `Utxo/Properties/PoV.lagda.md`, alongside the existing
-- `UTXO-I-getCoin` / `UTXO-V-mechanical` / `batch-balance-coin` definitions.
--
-- They replace the `coin-of-consumedBatch` and `coin-of-producedBatch` module
-- parameters.
--
-- The presentation assumes `coin-∑ˡ` is available from `Utxo.Properties.Base`;
-- `coin-producedTx` is as William has already proved it.
--
-- Imports needed (add to the main `open import` block at the top of the file):
--
--   open import Ledger.Dijkstra.Specification.Utxo.Properties.Base txs abs
--     using (∙-homo-Coin; outs-disjoint; coin-∑ˡ)
--
-- =============================================================================


-- -----------------------------------------------------------------------------
-- Layer 1: single-transaction coin equations.
-- -----------------------------------------------------------------------------
coin-producedTx : (tx : Tx ℓ) → coin (producedTx tx) ≡ cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx)
coin-producedTx tx = begin
  coin (producedTx tx)
    ≡⟨ refl ⟩
  coin(balance (outs tx) + inject (DonationsOf tx) + inject (getCoin (DirectDepositsOf tx)))
    ≡⟨ ∙-homo-Coin (balance (outs tx) + inject (DonationsOf tx)) (inject (getCoin (DirectDepositsOf tx))) ⟩
  coin(balance (outs tx) + inject (DonationsOf tx)) + coin(inject (getCoin (DirectDepositsOf tx)))
    ≡⟨ cong (coin(balance (outs tx) + inject (DonationsOf tx)) +_) (coin∘inject≗id (getCoin (DirectDepositsOf tx))) ⟩
  coin(balance (outs tx) + inject (DonationsOf tx)) + getCoin (DirectDepositsOf tx)
    ≡⟨ cong (_+ getCoin (DirectDepositsOf tx)) (∙-homo-Coin (balance (outs tx)) (inject (DonationsOf tx))) ⟩
  coin(balance (outs tx)) + coin(inject (DonationsOf tx)) + getCoin (DirectDepositsOf tx)
    ≡⟨ cong (λ x → coin(balance (outs tx)) + x + getCoin (DirectDepositsOf tx)) (coin∘inject≗id (DonationsOf tx)) ⟩
  cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx)
    ∎
  where open ≡-Reasoning


coin-consumedTx : (tx : Tx ℓ) (utxo₀ : UTxO) → coin (MintedValueOf tx) ≡ 0
  → coin (consumedTx tx utxo₀) ≡ cbalance (utxo₀ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
coin-consumedTx tx utxo₀ noMint =
  let b₀ = balance (utxo₀ ∣ SpendInputsOf tx) in
  begin
    coin (consumedTx tx utxo₀)
      ≡⟨ refl ⟩
    coin (b₀ + MintedValueOf tx + inject (getCoin (WithdrawalsOf tx)))
      ≡⟨ ∙-homo-Coin (b₀ + MintedValueOf tx) (inject (getCoin (WithdrawalsOf tx))) ⟩
    coin (b₀ + MintedValueOf tx) + coin (inject (getCoin (WithdrawalsOf tx)))
      ≡⟨ cong (coin (b₀ + MintedValueOf tx) +_) (coin∘inject≗id (getCoin (WithdrawalsOf tx))) ⟩
    coin (b₀ + MintedValueOf tx) + getCoin (WithdrawalsOf tx)
      ≡⟨ cong (_+ getCoin (WithdrawalsOf tx)) (∙-homo-Coin (b₀) (MintedValueOf tx)) ⟩
    coin b₀ + coin (MintedValueOf tx) + getCoin (WithdrawalsOf tx)
      ≡⟨ cong (λ z → cbalance (utxo₀ ∣ SpendInputsOf tx) + z + getCoin (WithdrawalsOf tx)) noMint ⟩
    cbalance (utxo₀ ∣ SpendInputsOf tx) + 0 + getCoin (WithdrawalsOf tx)
      ≡⟨ cong (_+ getCoin (WithdrawalsOf tx)) (+-identityʳ (cbalance (utxo₀ ∣ SpendInputsOf tx))) ⟩
    cbalance (utxo₀ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
      ∎
    where open ≡-Reasoning


-- -----------------------------------------------------------------------------
-- Layer 2: sum-over-sub-transactions coin equations.
-- -----------------------------------------------------------------------------
--
-- We use `coin-∑ˡ` to push `coin` through the indexed sum, then rewrite each
-- summand pointwise using Layer 1.  For the consumed-side version we also
-- thread a per-element `noMintSub` premise.

coin-∑-producedTx-sub : (tx : TopLevelTx) →
    coin (∑ˡ[ stx ← SubTransactionsOf tx ] (producedTx stx))
    ≡ sum ( map  (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                 (SubTransactionsOf tx) )
coin-∑-producedTx-sub tx = begin
  coin (∑ˡ[ stx ← SubTransactionsOf tx ] producedTx stx)
    ≡⟨ coin-∑ˡ producedTx (SubTransactionsOf tx) ⟩
  sum (map (coin ∘ producedTx) (SubTransactionsOf tx))
    ≡⟨ sum-cong-rewrite (SubTransactionsOf tx) ⟩
  sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)) (SubTransactionsOf tx))
    ∎
  where
  open ≡-Reasoning
  -- Pointwise rewrite of the mapped list, by list induction.
  sum-cong-rewrite : (xs : List SubLevelTx)
    → sum (map (coin ∘ producedTx) xs)
    ≡ sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)) xs)
  sum-cong-rewrite [] = refl
  sum-cong-rewrite (stx ∷ xs) = cong₂ _+_ (coin-producedTx stx) (sum-cong-rewrite xs)


noMintingSubTxs : TopLevelTx → Type
noMintingSubTxs tx = ∀ stx → stx ∈ˡ SubTransactionsOf tx → coin (MintedValueOf stx) ≡ 0

coin-∑-consumedTx-sub : (tx : TopLevelTx) (utxo₀ : UTxO)
    → noMintingSubTxs tx
    → coin (∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀))
      ≡ sum (map (λ stx → cbalance (utxo₀ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))
coin-∑-consumedTx-sub tx utxo₀ noMintSub = begin
  coin (∑ˡ[ stx ← SubTransactionsOf tx ] consumedTx stx utxo₀)
    ≡⟨ coin-∑ˡ (λ stx → consumedTx stx utxo₀) (SubTransactionsOf tx) ⟩
  sum (map (coin ∘ λ stx → consumedTx stx utxo₀) (SubTransactionsOf tx))
    ≡⟨ go (SubTransactionsOf tx) (λ _ → id) ⟩
  sum (map (λ stx → cbalance (utxo₀ ∣ SpendInputsOf stx)
                    + getCoin (WithdrawalsOf stx))
            (SubTransactionsOf tx))
    ∎
  where
  open ≡-Reasoning
  -- Pointwise rewrite: the `mem` argument lets each element's
  -- `noMintSub` lookup go through.
  go : (xs : List SubLevelTx)
     → (∀ stx → stx ∈ˡ xs → stx ∈ˡ SubTransactionsOf tx)
     → sum (map (coin ∘ λ stx → consumedTx stx utxo₀) xs)
     ≡ sum (map (λ stx → cbalance (utxo₀ ∣ SpendInputsOf stx)
                         + getCoin (WithdrawalsOf stx)) xs)
  go []         _   = refl
  go (stx ∷ xs) mem =
    cong₂ _+_
      (coin-consumedTx stx utxo₀ (noMintSub stx (mem stx (here refl))))
      (go xs (λ stx' stx'∈ → mem stx' (there stx'∈)))


-- -----------------------------------------------------------------------------
-- Layer 3: the two batch-level coin equations.
-- -----------------------------------------------------------------------------
--
-- `consumedBatch` and `producedBatch` each wrap their per-tx summands with
-- additional `inject`-ed fields (top-level fees + per-side deposit terms), so
-- we peel those off with `∙-homo-Coin` + `coin∘inject≗id`, then substitute the
-- Layer-1 top-level and Layer-2 sub-level equations.
--
-- Each proof ends with a small `+`-commutative-monoid shuffle to match the
-- field order in the stated theorem.
coin-of-consumedBatch : (tx : TopLevelTx) (dc : DepositsChange) (utxo₀ : UTxO)
  → coin (MintedValueOf tx) ≡ 0 → noMintingSubTxs tx
  → coin (consumedBatch dc tx utxo₀)
    ≡ cbalance (utxo₀ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx) + negPart (DepositsChangeTopOf dc)
      + sum ( map (λ stx → cbalance (utxo₀ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                  (SubTransactionsOf tx) )
      + negPart (DepositsChangeSubOf dc)
coin-of-consumedBatch tx dc utxo₀ noMintTop noMintSub = begin
  -- consumedBatch dc tx utxo₀ = consumed dc tx utxo₀ + ∑ˡ[ stx ← subs ] (consumedTx stx utxo₀) + inject depositRefundsSub
  -- where consumed dc tx utxo₀ = consumedTx tx utxo₀ + inject depositRefundsTop
  coin ( consumedTx tx utxo₀ + inject (negPart (DepositsChangeTopOf dc))
         + ∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀) + inject (negPart (DepositsChangeSubOf dc)) )

    ≡⟨ ∙-homo-Coin _ _ ⟩ -- Peel the outer `+ inject depositRefundsSub`.
  coin ( consumedTx tx utxo₀ + inject (negPart (DepositsChangeTopOf dc))
         + ∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀) )
  + coin (inject (negPart (DepositsChangeSubOf dc)))

    ≡⟨ cong₂ _+_ (∙-homo-Coin _ _) (coin∘inject≗id _) ⟩
  coin (consumedTx tx utxo₀ + inject (negPart (DepositsChangeTopOf dc)))
  + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀)) + negPart (DepositsChangeSubOf dc)

    -- Peel `consumedTx tx utxo₀ + inject depositRefundsTop`.
    ≡⟨ cong (λ z → z + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀))
                   + negPart (DepositsChangeSubOf dc))
            (trans (∙-homo-Coin _ _) (cong (coin (consumedTx tx utxo₀) +_) (coin∘inject≗id _))) ⟩
  coin (consumedTx tx utxo₀) + negPart (DepositsChangeTopOf dc)
  + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀)) + negPart (DepositsChangeSubOf dc)

    -- Substitute Layer-1 top-level.
    ≡⟨ cong (λ z → z + negPart (DepositsChangeTopOf dc)
                   + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀))
                   + negPart (DepositsChangeSubOf dc))
            (coin-consumedTx tx utxo₀ noMintTop) ⟩
  cbalance (utxo₀ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx) + negPart (DepositsChangeTopOf dc)
  + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (consumedTx stx utxo₀)) + negPart (DepositsChangeSubOf dc)

    -- Substitute Layer-2 sub-level.
    ≡⟨ cong (λ z → (cbalance (utxo₀ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx))
                   + negPart (DepositsChangeTopOf dc) + z + negPart (DepositsChangeSubOf dc))
            (coin-∑-consumedTx-sub tx utxo₀ noMintSub) ⟩
  cbalance (utxo₀ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx) + negPart (DepositsChangeTopOf dc)
  + sum (map (λ stx → cbalance (utxo₀ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))
  + negPart (DepositsChangeSubOf dc)

    -- Re-associate the outer `+` to match the stated theorem.
    ≡⟨ cong (λ z → z + negPart (DepositsChangeTopOf dc)
                   + sum ( map (λ stx → cbalance (utxo₀ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                               (SubTransactionsOf tx) )
                   + negPart (DepositsChangeSubOf dc)) refl ⟩
  -- The term now matches the target statement exactly.
  cbalance (utxo₀ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx) + negPart (DepositsChangeTopOf dc)
  + sum (map (λ stx → cbalance (utxo₀ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx)) (SubTransactionsOf tx))
  + negPart (DepositsChangeSubOf dc)
    ∎
  where open ≡-Reasoning


coin-of-producedBatch : (tx : TopLevelTx) (dc : DepositsChange)
  → coin (producedBatch dc tx)
    ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
      + posPart (DepositsChangeTopOf dc)
      + sum ( map  (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                   (SubTransactionsOf tx) )
      + posPart (DepositsChangeSubOf dc)
coin-of-producedBatch tx dc = begin
  -- producedBatch dc tx = produced dc tx + ∑ˡ[ stx ← subs ] (producedTx stx) + inject newDepositsSub
  -- where produced dc tx = producedTx tx + inject txFee + inject newDepositsTop
  coin (producedTx tx + inject (TxFeesOf tx) + inject (posPart (DepositsChangeTopOf dc))
        + ∑ˡ[ stx ← SubTransactionsOf tx ] (producedTx stx) + inject (posPart (DepositsChangeSubOf dc)))

    -- Peel the outer `+ inject newDepositsSub`.
    ≡⟨ ∙-homo-Coin _ _ ⟩
  coin (producedTx tx + inject (TxFeesOf tx) + inject (posPart (DepositsChangeTopOf dc))
        + ∑ˡ[ stx ← SubTransactionsOf tx ] (producedTx stx)) + coin (inject (posPart (DepositsChangeSubOf dc)))
    ≡⟨ cong₂ _+_ (∙-homo-Coin _ _) (coin∘inject≗id _) ⟩
  coin (producedTx tx + inject (TxFeesOf tx) + inject (posPart (DepositsChangeTopOf dc)))
  + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (producedTx stx)) + posPart (DepositsChangeSubOf dc)
    -- Unfold the top-level three layers (outs+donations+directDeps, fee, deposits).
    ≡⟨ cong (λ z → z + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (producedTx stx)) + posPart (DepositsChangeSubOf dc))
            unfold-produced-top ⟩
  cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx)
  + TxFeesOf tx + posPart (DepositsChangeTopOf dc) + coin (∑ˡ[ stx ← SubTransactionsOf tx ] (producedTx stx))
  + posPart (DepositsChangeSubOf dc)
    -- Substitute Layer-2 sub-level.
    ≡⟨ cong (λ z → (cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx))
                   + TxFeesOf tx + posPart (DepositsChangeTopOf dc) + z + posPart (DepositsChangeSubOf dc))
            (coin-∑-producedTx-sub tx) ⟩
  cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx)
  + TxFeesOf tx + posPart (DepositsChangeTopOf dc)
  + sum ( map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
              (SubTransactionsOf tx) )
  + posPart (DepositsChangeSubOf dc)
    -- Reshuffle top-level fields: (outs + Donations + DirectDeps) + TxFees
    --                        → outs + TxFees + Donations + DirectDeps
    ≡⟨ cong (λ z → z + posPart (DepositsChangeTopOf dc)
                   + sum ( map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                               (SubTransactionsOf tx) )
                   + posPart (DepositsChangeSubOf dc)) reshape-top ⟩
  cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx) + posPart (DepositsChangeTopOf dc)
  + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)) (SubTransactionsOf tx))
  + posPart (DepositsChangeSubOf dc)
    ∎
  where
  open ≡-Reasoning

  -- Unfolds `coin (producedTx tx + inject TxFees + inject newDepositsTop)` by
  -- two peels of `∙-homo-Coin` / `coin∘inject≗id` and one application of
  -- `coin-producedTx`.
  unfold-produced-top :
    coin (producedTx tx + inject (TxFeesOf tx) + inject (posPart (DepositsChangeTopOf dc)))
    ≡ (cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx)) + TxFeesOf tx + posPart (DepositsChangeTopOf dc)

  unfold-produced-top = begin
    coin (producedTx tx + inject (TxFeesOf tx) + inject (posPart (DepositsChangeTopOf dc)))
      ≡⟨ ∙-homo-Coin _ _ ⟩
    coin (producedTx tx + inject (TxFeesOf tx)) + coin (inject (posPart (DepositsChangeTopOf dc)))
      ≡⟨ cong₂ _+_ (∙-homo-Coin _ _) (coin∘inject≗id _) ⟩
    coin (producedTx tx) + coin (inject (TxFeesOf tx)) + posPart (DepositsChangeTopOf dc)
      ≡⟨ cong (λ z → coin (producedTx tx) + z + posPart (DepositsChangeTopOf dc)) (coin∘inject≗id _) ⟩
    coin (producedTx tx) + TxFeesOf tx + posPart (DepositsChangeTopOf dc)
      ≡⟨ cong (λ z → z + TxFeesOf tx + posPart (DepositsChangeTopOf dc)) (coin-producedTx tx) ⟩
    cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + TxFeesOf tx + posPart (DepositsChangeTopOf dc)
      ∎

  -- Small rearrangement: move TxFees from rightmost position to second.
  --   (O + D + R) + F  ≡  O + F + D + R
  -- (where O = cbalance (outs tx), D = DonationsOf tx,
  --        R = getCoin (DirectDepositsOf tx), F = TxFeesOf tx).
  -- Proved by the `swap-right` pattern used in `UTXO-V-mechanical`.
  reshape-top : cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + TxFeesOf tx
                ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
  reshape-top =
    let O = cbalance (outs tx)
        D = DonationsOf tx
        R = getCoin (DirectDepositsOf tx)
        F = TxFeesOf tx
    in begin
      (O + D + R) + F  ≡⟨ swap-right (O + D) R F ⟩
      (O + D) + F + R  ≡⟨ cong (_+ R) (swap-right O D F) ⟩
      O + F + D + R    ∎
    where
    -- Same `swap-right` helper as in `UTXO-V-mechanical`.
    swap-right : ∀ a b c → a + b + c ≡ a + c + b
    swap-right a b c = trans (+-assoc a b c) (trans (cong (a +_) (+-comm b c)) (sym (+-assoc a c b)))


module UTxO-PoV
  (tx : TopLevelTx) (let open Tx tx; open TxBody txBody)

  -- ASSUMPTIONS --
  ( balance-∪ : ∀ {u u' : UTxO} → disjoint (dom u) (dom u') → cbalance (u ∪ˡ u') ≡ cbalance u + cbalance u' )
  ( split-balance : ∀ (u : UTxO) (keys : ℙ TxIn) → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys) )
  ( noMintTx : coin (MintedValueOf tx) ≡ 0 )
  ( noMintSubTx : noMintingSubTxs tx )
  where

  private variable
    Γ : UTxOEnv
    legacyMode : Bool
    s s' s₀ s₁ : UTxOState

  open ≡-Reasoning
```


## `UTXO-I`: collateral collection preserves `getCoin`

The invalid case does not use the batch balance equation: it only collects
collateral from the top-level transaction and leaves `donations` unchanged.

```agda
  UTXO-I-getCoin :
    (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁ → IsValidFlagOf tx ≡ false → getCoin s₀ ≡ getCoin s₁

  UTXO-I-getCoin {s₀ = ⟦ u , f , d ⟧ᵘ} (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) refl =
    begin
      cbalance u + f + d
        ≡⟨ cong (λ x → x + f + d) (split-balance u (CollateralInputsOf tx)) ⟩
      cbalance (u ∣ CollateralInputsOf tx ᶜ) + cbalance (u ∣ CollateralInputsOf tx) + f + d
        ≡⟨ cong (_+ d)  (+-assoc (cbalance (u ∣ CollateralInputsOf tx ᶜ))
                        (cbalance (u ∣ CollateralInputsOf tx)) f) ⟩
      cbalance (u ∣ CollateralInputsOf tx ᶜ) + (cbalance (u ∣ CollateralInputsOf tx) + f) + d
        ≡⟨ cong  (λ x → (cbalance (u ∣ CollateralInputsOf tx ᶜ)) + x + d)
                 (+-comm (cbalance (u ∣ CollateralInputsOf tx)) f) ⟩
      cbalance (u ∣ CollateralInputsOf tx ᶜ) + (f + cbalance (u ∣ CollateralInputsOf tx)) + d
        ∎
```


## `UTXO-V`: mechanical rearrangement

```agda
  UTXO-V-mechanical : (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → IsValidFlagOf tx ≡ true → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
    → getCoin s₀ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
      ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf tx)

  UTXO-V-mechanical {s₀ = ⟦ u , f , d ⟧ᵘ} {s₁ = ⟦ u' , f' , d' ⟧ᵘ}
    (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) refl freshId =
    begin
    cbalance u + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx

    ≡⟨ i ⟩ cbalance (u ∣ SpendInputsOf tx ᶜ) + cbalance (u ∣ SpendInputsOf tx) + f + d
           + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx

    ≡⟨ ii ⟩ cbalance (u ∣ SpendInputsOf tx ᶜ) + cbalance (outs tx)
            + (f + TxFeesOf tx) + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx)

    ≡˘⟨ iii ⟩ cbalance ((u ∣ SpendInputsOf tx ᶜ) ∪ˡ outs tx) + (f + TxFeesOf tx)
              + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx)
    ∎
    where
      -- Helper: a + b + c ≡ a + c + b
      -- (i.e., swap the rightmost pair, modulo re-associating).
      swap-right : ∀ a b c → a + b + c ≡ a + c + b
      swap-right a b c = trans (+-assoc a b c) (trans (cong (a +_) (+-comm b c)) (sym (+-assoc a c b)))

      rearrange :
        ∀ {A B F Tf D Td Ot : Coin} → A + B + F + D + Ot + Tf + Td ≡ A + Ot + (F + Tf) + (D + Td) + B
      rearrange {A}{B}{F}{Tf}{D}{Td}{Ot} = begin
        A + B + F + D + Ot + Tf + Td
          ≡⟨ cong (λ x → x + Tf + Td) (+-comm (A + B + F + D) Ot ) ⟩
        Ot + (A + B + F + D) + Tf + Td
          ≡⟨ cong (λ x → x + Tf + Td) (sym (+-assoc Ot ((A + B + F)) D)) ⟩
        Ot + (A + B + F) + D + Tf + Td
          ≡⟨ cong (λ x → x + D + Tf + Td) (sym (+-assoc Ot (A + B) F)) ⟩
        Ot + (A + B) + F + D + Tf + Td
          ≡⟨ cong (λ x → x + F + D + Tf + Td) (sym (+-assoc Ot A B)) ⟩
        Ot + A + B + F + D + Tf + Td
          ≡⟨ cong (λ x → x + B + F + D + Tf + Td) (+-comm Ot A) ⟩
        A + Ot + B + F + D + Tf + Td
          -- Hoist B rightward, one neighbour at a time
          ≡⟨ cong (λ x → x + D + Tf + Td) (swap-right (A + Ot) B F) ⟩
        A + Ot + F + B + D + Tf + Td
          ≡⟨ cong (λ x → x + Tf + Td) (swap-right (A + Ot + F) B D) ⟩
        A + Ot + F + D + B + Tf + Td
          ≡⟨ cong (_+ Td) (swap-right (A + Ot + F + D) B Tf) ⟩
        A + Ot + F + D + Tf + B + Td
          ≡⟨ swap-right (A + Ot + F + D + Tf) B Td ⟩
        A + Ot + F + D + Tf + Td + B
          -- Bring Tf next to F, then group (F + Tf) and (D + Td)
          ≡⟨ cong (λ x → x + Td + B) (swap-right (A + Ot + F) D Tf) ⟩
        A + Ot + F + Tf + D + Td + B
          ≡⟨ cong (λ x → x + D + Td + B) (+-assoc (A + Ot) F Tf) ⟩
        A + Ot + (F + Tf) + D + Td + B
          ≡⟨ cong (_+ B) (+-assoc (A + Ot + (F + Tf)) D Td) ⟩
        A + Ot + (F + Tf) + (D + Td) + B
          ∎

      -- equational reasoning steps --
      i = cong  (λ x → x + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx) (split-balance u (SpendInputsOf tx))
      ii = rearrange {cbalance (u ∣ SpendInputsOf tx ᶜ)}
      iii = cong  (λ x → x + (f + TxFeesOf tx) + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx))
                  (balance-∪ {u = (u ∣ SpendInputsOf tx ᶜ)}{u' = (outs tx)} (outs-disjoint tx {utxo = u} freshId))

```

(The arithmetic `rearrange`{.AgdaFunction} is left as a `postulate`{.AgdaKeyword}
pending a future clean-up — it is purely a `+`/`∸`-free associative-commutative
rearrangement over `ℕ`{.AgdaDatatype}, provable by `solve-macro`{.AgdaFunction}
for the `+-0`-monoid.)

## Batch coin balance

The coin projection of the batch balance equation
`consumedBatch ≡ producedBatch`{.AgdaFunction} is what the `LEDGER-pov`{.AgdaFunction}
proof actually consumes.  We expose it as a separate lemma here.

```agda
  batch-balance-coin : (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → cbalance (UTxOOf Γ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
      + negPart (DepositsChangeTopOf Γ)
      + sum ( map  (λ stx → cbalance (UTxOOf Γ ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                   (SubTransactionsOf tx) )
      + negPart (DepositsChangeSubOf Γ)
      ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
        + posPart (DepositsChangeTopOf Γ)
        + sum ( map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                    (SubTransactionsOf tx))
        + posPart (DepositsChangeSubOf Γ)

  batch-balance-coin {Γ = Γ} (UTXO-⋯ _ _ _ _ _ _ _ batchBal _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) =
    begin
    cbalance (UTxOOf Γ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx) + negPart (DepositsChangeTopOf Γ) + _ + _
      ≡˘⟨ coin-of-consumedBatch tx (DepositsChangeOf Γ) (UTxOOf Γ) noMintTx noMintSubTx ⟩
    coin (consumedBatch (DepositsChangeOf Γ) tx (UTxOOf Γ))
      ≡⟨ cong coin batchBal ⟩
    coin (producedBatch (DepositsChangeOf Γ) tx)
      ≡⟨ coin-of-producedBatch tx (DepositsChangeOf Γ) ⟩
    cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx) + posPart (DepositsChangeTopOf Γ) + _ + _
      ∎
```

## `UTXO-pov`: combined statement

The full statement uses `χ`{.AgdaFunction}, the characteristic function of
`Bool`{.AgdaDatatype}, which returns `0`{.AgdaInductiveConstructor} for
`false`{.AgdaInductiveConstructor} and `1`{.AgdaInductiveConstructor} for
`true`{.AgdaInductiveConstructor}:

```agda
  χ : Bool → ℕ
  χ true  = 1
  χ false = 0
```

The combined `UTXO-pov`{.AgdaFunction} statement packages together the
mechanical change and the value-"withdrawals-in, direct-deposits-out" flow of
the top-level transaction alone.  It is *not* a standalone preservation-of-value
theorem (the full batch equation requires also the sub-transaction data),
but it is the right statement for use in the `LEDGER-pov`{.AgdaFunction} proof
when combined with the `SUBLEDGERS-pov`{.AgdaFunction} lemma.

**Claim.**

```agda
{--
  UTXO-pov : ∀ {Γ : UTxOEnv} {legacyMode : Bool} {s₀ s₁ : UTxOState}
    → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
    → (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → getCoin s₀
      + getCoin (WithdrawalsOf tx) * χ (IsValidFlagOf tx)
      + sum (map (λ (stx : SubLevelTx) →
                      getCoin (WithdrawalsOf stx) * χ (IsValidFlagOf tx))
                  (SubTransactionsOf tx))
      ≡ getCoin s₁
      + getCoin (DirectDepositsOf tx) * χ (IsValidFlagOf tx)
      -- + ... -- (see sketch below)
--}
```

*Proof sketch.*

+   **Invalid case** (`IsValidFlagOf tx ≡ false`):  Both sides simplify via
    `*-zeroʳ`.  The top-level `getCoin s₀ ≡ getCoin s₁` is
    `UTXO-I-getCoin`{.AgdaFunction}.  Sub-transaction sums all disappear
    because each `χ ∘ IsValidFlagOf tx ≡ 0`.

+   **Valid case** (`IsValidFlagOf tx ≡ true`):  Combine
    `UTXO-V-mechanical`{.AgdaFunction} (the mechanical rearrangement) with
    `batch-balance-coin`{.AgdaFunction} (the batch balance) to derive the
    full equation.  The batch equation transfers value between the consumed
    side (inputs + withdrawals) and produced side (outs + fees + donations +
    direct deposits) at the *batch* level, threaded through the tx's local
    state change.

This theorem is stated as a `Claim`{.AgdaFunction} because the exact form
used by `LEDGER-pov`{.AgdaFunction} depends on how the
`SUBLEDGERS-pov`{.AgdaFunction} lemma threads through sub-transaction state
changes.  The two building blocks it relies on —
`UTXO-I-getCoin`{.AgdaFunction}, `UTXO-V-mechanical`{.AgdaFunction}, and
`batch-balance-coin`{.AgdaFunction} — are already proved above (modulo the
parameterized assumptions).

```agda
--  UTXO-pov = {!!}  -- placeholder; the final form is to be fixed in follow-up work.
```

## Summary of proof obligations

+   Port `balance-∪`{.AgdaFunction}, `split-balance`{.AgdaFunction}, and
    `newTxid⇒disj`{.AgdaFunction} from
    `Ledger.Conway.Specification.Utxo.Properties.Base`{.AgdaModule} to the
    Dijkstra equivalent.  These are era-independent; the port should be
    mechanical.

+   Prove `coin-of-consumedBatch`{.AgdaFunction} and
    `coin-of-producedBatch`{.AgdaFunction} from their definitions, by
    repeated application of `∙-homo-Coin`{.AgdaFunction} and
    `coin∘inject≗id`{.AgdaField}, plus the per-transaction `coin (MintedValueOf t) ≡ 0`
    facts (from UTXO's `p₆` premise for top-level, and from each SUBUTXO's
    premise for sub-transactions — the latter requires threading the SUBLEDGERS
    step through).

+   Finalize the exact statement of `UTXO-pov`{.AgdaFunction}, in coordination
    with the `LEDGER-pov`{.AgdaFunction} proof's `BatchUtxoAccounting`{.AgdaFunction}
    requirement.

+   Prove the small arithmetic `rearrange`{.AgdaFunction} `postulate`{.AgdaKeyword}
    in `UTXO-V-mechanical`{.AgdaFunction}, e.g. via `solve-macro`{.AgdaFunction}.
