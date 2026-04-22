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
  using (∙-homo-Coin; outs-disjoint)


open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Relation.Binary.PropositionalEquality
open import Data.Nat.Properties
  using (+-0-monoid; +-identityʳ; +-identityˡ; +-comm; +-assoc; *-zeroʳ; *-identityʳ)

instance
  _ = +-0-monoid
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
module _
  (tx : TopLevelTx) (let open Tx tx; open TxBody txBody)

  -- (A) Standard Value/Coin arithmetic (ported from Conway's Utxo.Properties.Base).
  ( balance-∪ : ∀ {u u' : UTxO} → disjoint (dom u) (dom u')
              → cbalance (u ∪ˡ u') ≡ cbalance u + cbalance u' )

  ( split-balance : ∀ (u : UTxO) (keys : ℙ TxIn)
                  → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys) )

  -- (B) Batch coin-balance projection: this is the coin version of the
  -- `consumedBatch ≡ producedBatch` premise, obtained by applying `coin` to
  -- both sides, using `coin∘inject≗id` and `∙-homo-Coin` repeatedly, and using
  -- `coin (MintedValueOf t) ≡ 0` for every transaction in the batch
  -- (top-level from UTXO premise p₆, sub-level from each SUBUTXO premise).
  ( coin-of-consumedBatch :
      ∀ (dc : DepositsChange) (utxo₀ : UTxO)
      → let open DepositsChange dc in
        coin (consumedBatch dc tx utxo₀)
        ≡ cbalance (utxo₀ ∣ SpendInputsOf tx)
        + getCoin (WithdrawalsOf tx)
        + negPart depositsChangeTop
        + sum (map (λ (stx : SubLevelTx) →
                      cbalance (utxo₀ ∣ SpendInputsOf stx)
                      + getCoin (WithdrawalsOf stx))
                   (SubTransactionsOf tx))
        + negPart depositsChangeSub )

  ( coin-of-producedBatch :
      ∀ (dc : DepositsChange)
      → let open DepositsChange dc in
        coin (producedBatch dc tx)
        ≡ cbalance (outs tx)
        + TxFeesOf tx
        + DonationsOf tx
        + getCoin (DirectDepositsOf tx)
        + posPart depositsChangeTop
        + sum (map (λ (stx : SubLevelTx) →
                      cbalance (outs stx)
                      + DonationsOf stx
                      + getCoin (DirectDepositsOf stx))
                   (SubTransactionsOf tx))
        + posPart depositsChangeSub )
  where
```

<!--
```agda
  private variable
    Γ : UTxOEnv
    legacyMode : Bool
    s s' s₀ s₁ : UTxOState

  open ≡-Reasoning
```
-->

## `UTXO-I`: collateral collection preserves `getCoin`

The invalid case does not use the batch balance equation: it only collects
collateral from the top-level transaction and leaves `donations` unchanged.

```agda
{--
  UTXO-I-getCoin :
    (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → IsValidFlagOf tx ≡ false
    → getCoin s₀ ≡ getCoin s₁
--}
```

<!--
```agda
{--
  UTXO-I-getCoin {s₀ = ⟦ u , f , d ⟧ᵘ} (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) refl =
    begin
      getCoin ⟦ u , f , d ⟧ᵘ
        ≡⟨ refl ⟩
      cbalance u + f + d
        ≡⟨ cong (λ x → x + f + d) (split-balance u (CollateralInputsOf tx)) ⟩
      cbalance (u ∣ CollateralInputsOf tx ᶜ) + cbalance (u ∣ CollateralInputsOf tx) + f + d
        ≡⟨ rearrange ⟩
      cbalance (u ∣ CollateralInputsOf tx ᶜ) + (f + cbalance (u ∣ CollateralInputsOf tx)) + d
        ≡⟨ refl ⟩
      getCoin ⟦ (u ∣ CollateralInputsOf tx ᶜ) , f + cbalance (u ∣ CollateralInputsOf tx) , d ⟧ᵘ
        ∎
    where
    rearrange :
      ∀ {a b c e : Coin}
      → a + b + c + e ≡ a + (c + b) + e
    rearrange {a} {b} {c} {e} = begin
      a + b + c + e      ≡⟨ cong (_+ e) (+-assoc a b c) ⟩
      a + (b + c) + e    ≡⟨ cong (λ x → a + x + e) (+-comm b c) ⟩
      a + (c + b) + e    ∎
--}
```
-->

## `UTXO-V`: mechanical rearrangement

```agda
  UTXO-V-mechanical : (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → IsValidFlagOf tx ≡ true → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
    → getCoin s₀ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
      ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf tx)
```

<!--
```agda
  UTXO-V-mechanical {s₀ = ⟦ u , f , d ⟧ᵘ} {s₁ = ⟦ u' , f' , d' ⟧ᵘ} (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) refl freshId = Goal
    where
      -- Helper: a + b + c ≡ a + c + b
      -- (i.e., swap the rightmost pair, modulo re-associating).
      swap-right : ∀ a b c → a + b + c ≡ a + c + b
      swap-right a b c =
        trans (+-assoc a b c)
              (trans (cong (a +_) (+-comm b c))
                     (sym (+-assoc a c b)))

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

      Goal : getCoin ⟦ u , f , d ⟧ᵘ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
             ≡ getCoin ⟦ u' , f' , d' ⟧ᵘ + cbalance (UTxOOf ⟦ u , f , d ⟧ᵘ ∣ SpendInputsOf tx)
      Goal = begin
        getCoin ⟦ u , f , d ⟧ᵘ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
          ≡⟨ refl ⟩
        cbalance u + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
          ≡⟨ cong (λ x → x + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx) (split-balance u (SpendInputsOf tx)) ⟩
        cbalance (u ∣ SpendInputsOf tx ᶜ) + cbalance (u ∣ SpendInputsOf tx) + f + d + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
          ≡⟨ rearrange {cbalance (u ∣ SpendInputsOf tx ᶜ)} ⟩
        cbalance (u ∣ SpendInputsOf tx ᶜ) + cbalance (outs tx) + (f + TxFeesOf tx) + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx)
          ≡˘⟨ cong (λ x → x + (f + TxFeesOf tx) + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx))
              (balance-∪ {u = (u ∣ SpendInputsOf tx ᶜ)}{u' = (outs tx)} (outs-disjoint tx {utxo = u} freshId)) ⟩
        cbalance ((u ∣ SpendInputsOf tx ᶜ) ∪ˡ outs tx) + (f + TxFeesOf tx) + (d + DonationsOf tx) + cbalance (u ∣ SpendInputsOf tx)
          ≡⟨ refl ⟩
        getCoin ⟦ u' , f' , d' ⟧ᵘ + cbalance (UTxOOf ⟦ u , f , d ⟧ᵘ ∣ SpendInputsOf tx)
          ∎
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
  batch-balance-coin :
    (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → let dc = DepositsChangeOf Γ
          utxo₀ = UTxOOf Γ
          open DepositsChange dc
      in  cbalance (utxo₀ ∣ SpendInputsOf tx)
        + getCoin (WithdrawalsOf tx)
        + negPart depositsChangeTop
        + sum (map (λ (stx : SubLevelTx) →
                       cbalance (utxo₀ ∣ SpendInputsOf stx)
                       + getCoin (WithdrawalsOf stx))
                    (SubTransactionsOf tx))
        + negPart depositsChangeSub
        ≡ cbalance (outs tx)
        + TxFeesOf tx
        + DonationsOf tx
        + getCoin (DirectDepositsOf tx)
        + posPart depositsChangeTop
        + sum (map (λ (stx : SubLevelTx) →
                       cbalance (outs stx)
                       + DonationsOf stx
                       + getCoin (DirectDepositsOf stx))
                    (SubTransactionsOf tx))
        + posPart depositsChangeSub
```

```agda
  batch-balance-coin {Γ = Γ} step = begin
    cbalance (UTxOOf Γ ∣ SpendInputsOf tx)
      + getCoin (WithdrawalsOf tx)
      + negPart (DepositsChange.depositsChangeTop (DepositsChangeOf Γ))
      + _ + _
      ≡˘⟨ coin-of-consumedBatch (DepositsChangeOf Γ) (UTxOOf Γ) ⟩
    coin (consumedBatch (DepositsChangeOf Γ) tx (UTxOOf Γ))
      ≡⟨ cong coin (extract-batch-balance step) ⟩
    coin (producedBatch (DepositsChangeOf Γ) tx)
      ≡⟨ coin-of-producedBatch (DepositsChangeOf Γ) ⟩
    _ ∎
    where
    extract-batch-balance :
      (Γ , legacyMode) ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
      → consumedBatch (DepositsChangeOf Γ) tx (UTxOOf Γ)
        ≡ producedBatch (DepositsChangeOf Γ) tx
    extract-batch-balance
      (UTXO-⋯ _ _ _ _ _ _ _ batchBal _ _ _ _ _ _ _ _ _ _ _ _ _ _ _)
      = batchBal
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
  UTXO-pov :
    ∀ {Γ : UTxOEnv} {legacyMode : Bool} {s₀ s₁ : UTxOState}
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
