---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/PoV.lagda.md
---

# Properties of `LEDGER`: Preservation of Value {#thm:LEDGER-PoV}

This module proves the top-level preservation-of-value theorem for the Dijkstra
`LEDGER`{.AgdaDatatype} rule.  For any environment `Γ`{.AgdaBound}, top-level
transaction `tx`{.AgdaBound}, and `LedgerState`{.AgdaRecord} pair `s`{.AgdaBound},
`s'`{.AgdaBound} related by `LEDGER`{.AgdaDatatype}: `getCoin s ≡ getCoin s'`.

Recall (from `Ledger.lagda.md`) that `getCoin (LedgerState)` is

    getCoin (UTxOStateOf s)
    + rewardsBalance (DStateOf (CertStateOf s))
    + coinFromDeposit (CertStateOf s)

that is, UTxO coin, rewards balance, and deposits across `DState`{.AgdaRecord},
`PState`{.AgdaRecord}, and `GState`{.AgdaRecord}.

## Proof Strategy

The Dijkstra `LEDGER-pov`{.AgdaFunction} does not decompose into independent
`SUBLEDGERS-pov`{.AgdaFunction} and `UTXOW-pov`{.AgdaFunction} pieces: individual
`SUBUTXO`{.AgdaDatatype} rules have no balance equation (only the *batch-level*
`consumedBatch ≡ producedBatch` equation constrains the total), and sub-transactions
may individually transfer value between UTxO and CertState without local balancing.

Instead, the `LEDGER-V` proof is a single equational chain at the
`LedgerState`{.AgdaRecord} level, with the cancellation of total direct deposits as
the central trick — direct-deposit value appears both on the UTxO side (via
`producedBatch`) and on the CertState side (via `applyDirectDeposits` inside
`ENTITIES`) and cancels in the total.

Concretely, the proof uses three helper lemmas:

+  `SUBLEDGERS-utxo-coin`{.AgdaFunction}: induct over the `SUBLEDGERS`{.AgdaDatatype}
   reflexive-transitive closure, threading the per-`SUBUTXOW` coin equation
   (`subutxow-step-coin`).
+  `SUBLEDGERS-certs-pov`{.AgdaFunction}: parallel induction over
   `SUBLEDGERS`{.AgdaDatatype}, composing per-sub-transaction
   `ENTITIES-pov`{.AgdaFunction} invocations.
+  `posNeg-deposits`{.AgdaFunction}: equationally relates the pre-/post-batch deposit
   totals to the `posPart`/`negPart` of `calculateDepositsChange`.

The `LEDGER-I` case is straightforward: `certState` and `govSt` are unchanged,
`SUBLEDGERS` is a no-op, and only the `UTXOW` step affects `getCoin`, which it
preserves via `utxow-pov-invalid`.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Entities govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Gov.Actions govStructure hiding (yes; no)
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Ledger txs abs

open import Ledger.Dijkstra.Specification.Entities.Properties.PoV govStructure
-- open import Ledger.Dijkstra.Specification.Utxo.Properties.PoV txs abs
-- open import Ledger.Dijkstra.Specification.Utxow.Properties.PoV txs abs

open import Interface.STS
open import Data.Nat.Properties
  using (+-comm; +-assoc; +-0-monoid; +-identityʳ; +-cancelʳ-≡)
open import Data.Integer using (ℤ; 0ℤ; _-_)
open import Data.Integer.Properties using () renaming (+-comm to +ℤ-comm)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)

open RewardAddress
open ≡-Reasoning

instance
  _ = +-0-monoid
```
-->

## The `LEDGER-PoV` module

`LEDGER-pov`{.AgdaFunction} threads through three groups of module
parameters:

+  the three set/map identities from `ApplyToRewards-PoV`{.AgdaModule}
   (`∪ˡ-lookup-preserve`, `sum-map-proj₂≡getCoin`, `setToList-Unique`),
+  the four UTxO arithmetic / freshness assumptions of `UTXOW-PoV`{.AgdaModule}
   (`balance-∪`, `split-balance`, `noMintTx`, `noMintSubTx`, `outs-disjoint`), and
+  the three Dijkstra-specific batch-wide invariants (`subutxow-step-coin`,
   `utxo₁-tx-spend-eq`, `fresh-top-tx-id`) that describe how the post-`SUBLEDGERS`
   state relates to the pre-batch snapshot.

All are stated with detailed proof sketches in comments and are to be discharged in
follow-up work.

```agda
noMintingSubTxs : TopLevelTx → Type
noMintingSubTxs tx = ∀ stx → stx ∈ˡ SubTransactionsOf tx → coin (MintedValueOf stx) ≡ 0


module LEDGER-PoV
  (tx : TopLevelTx) (let open Tx tx; open TxBody txBody)

  -- ApplyToRewards-PoV parameters
  ( ∪ˡ-lookup-preserve :
      (m : Rewards) (c : Credential) (v : Coin) (c' : Credential)
      → c' ≢ c → lookupᵐ? (❴ c , v ❵ ∪ˡ m) c' ≡ lookupᵐ? m c' )

  ( sum-map-proj₂≡getCoin :
      (m : RewardAddress ⇀ Coin)
      → sum (map proj₂ (setToList (m ˢ))) ≡ getCoin m )

  ( setToList-Unique :
      (m : RewardAddress ⇀ Coin)
      → ∀[ a ∈ dom (m ˢ) ] NetworkIdOf a ≡ NetworkId
      → Unique (map (stake ∘ proj₁) (setToList (m ˢ))) )

  -- UTXOW-PoV parameters
  ( balance-∪ : ∀ {u u' : UTxO} → disjoint (dom u) (dom u')
              → cbalance (u ∪ˡ u') ≡ cbalance u + cbalance u' )
  ( split-balance : ∀ (u : UTxO) (keys : ℙ TxIn)
                  → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys) )
  ( noMintTx : coin (MintedValueOf tx) ≡ 0 )
  ( noMintSubTx : noMintingSubTxs tx )
  ( outs-disjoint : ∀ {u : UTxO}
                  → TxIdOf tx ∉ mapˢ proj₁ (dom u)
                  → disjoint (dom (u ∣ SpendInputsOf tx ᶜ)) (dom (outs tx)) )

  -- Per-step SUBUTXOW coin equation.  A local proof would require, in
  -- addition to `balance-∪` and `split-balance`, a batch-wide
  -- "spend inputs preserved" invariant (the running UTxO agrees with
  -- the snapshot on every sub-tx's spend inputs) and freshness of each
  -- sub-tx's TxId relative to the running UTxO.
  ( subutxow-step-coin : ∀ {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
      → IsTopLevelValidFlagOf Γ ≡ true
      → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
      → getCoin s₀ + cbalance (outs stx) + DonationsOf stx
        ≡ getCoin s₁ + cbalance (UTxOOf Γ ∣ SpendInputsOf stx) )

  -- Batch-wide invariants on the post-SUBLEDGERS UTxO state.  Both
  -- follow from batch-wide input disjointness and TxId freshness,
  -- which the outer UTXO rule establishes at the batch level but
  -- doesn't expose per-step.
  ( utxo₁-tx-spend-eq : {subΓ : SubLedgerEnv} {s : LedgerState}
        {utxoSt₁ : UTxOState} {govSt₁ : GovState} {certState₁ : CertState}
      → SubLedgerEnv.isTopLevelValid subΓ ≡ true
      → SubLedgerEnv.utxo₀ subΓ ≡ UTxOOf (UTxOStateOf s)
      → subΓ ⊢ s ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoSt₁ , govSt₁ , certState₁ ⟧ˡ
      → cbalance (UTxOOf utxoSt₁ ∣ SpendInputsOf tx)
        ≡ cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf tx) )
  ( fresh-top-tx-id : {subΓ : SubLedgerEnv} {s : LedgerState}
        {utxoSt₁ : UTxOState} {govSt₁ : GovState} {certState₁ : CertState}
      → SubLedgerEnv.isTopLevelValid subΓ ≡ true
      → subΓ ⊢ s ⇀⦇ SubTransactionsOf tx ,SUBLEDGERS⦈ ⟦ utxoSt₁ , govSt₁ , certState₁ ⟧ˡ
      → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf utxoSt₁)) )
  where

  open ENTITIES-PoV ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique
  -- open UTXOW-PoV tx (λ {u} {u'} → balance-∪ {u} {u'}) split-balance noMintTx noMintSubTx
  --   (λ {u} → outs-disjoint {u})
```

The `λ {u}{u'} → balance-∪ {u}{u'}` and `λ {u} → outs-disjoint {u}` η-wrappers are
needed because passing the assumptions directly triggers Agda to eta-expand the `{u
u' : UTxO}` implicits through `UTxO`'s `Σ _ left-unique` record structure, leaving
the `left-unique` field as an unresolved meta.

## Small arithmetic helpers

```agda
  swap-right : ∀ a b c → a + b + c ≡ a + c + b
  swap-right a b c = trans (+-assoc a b c)
                           (trans (cong (a +_) (+-comm b c)) (sym (+-assoc a c b)))

  -- Per-sub-tx withdrawal and direct-deposit totals.
  wdrwl : SubLevelTx → Coin
  wdrwl = getCoin ∘ WithdrawalsOf

  ddwl : SubLevelTx → Coin
  ddwl = getCoin ∘ DirectDepositsOf
```

## `posNeg-deposits`

The deposit accounting identity used in the `LEDGER-V` chain.  Both sides express the
same quantity (the sum of deposits across the batch), just rephrased to expose
`posPart` vs `negPart` of the top-level and sub-level deposit changes.

```agda
  posNeg-deposits : (cs₀ cs₁ cs₂ : CertState)
    → let dc = calculateDepositsChange cs₀ cs₁ cs₂ in
      coinFromDeposit cs₀ + posPart (DepositsChangeTopOf dc) + posPart (DepositsChangeSubOf dc)
      ≡ coinFromDeposit cs₂ + negPart (DepositsChangeTopOf dc) + negPart (DepositsChangeSubOf dc)
  posNeg-deposits cs₀ cs₁ cs₂ = begin
      coin₀ + pt + psp   ≡⟨ swap-right coin₀ pt psp ⟩
      coin₀ + psp + pt   ≡⟨ cong (_+ pt) (posPart-negPart-sym coin₁ coin₀) ⟩
      coin₁ + ns  + pt   ≡⟨ swap-right coin₁ ns pt ⟩
      coin₁ + pt  + ns   ≡⟨ cong (_+ ns) (posPart-negPart-sym coin₂ coin₁) ⟩
      coin₂ + nt  + ns   ∎
    where
    coin₀ = coinFromDeposit cs₀
    coin₁ = coinFromDeposit cs₁
    coin₂ = coinFromDeposit cs₂
    psp = posPart (coin₁ ⊖ coin₀)   -- DepositsChangeSubOf dc
    ns  = negPart (coin₁ ⊖ coin₀)
    pt  = posPart (coin₂ ⊖ coin₁)   -- DepositsChangeTopOf dc
    nt  = negPart (coin₂ ⊖ coin₁)
```

## `SUBLEDGERS-utxo-coin`

Induct over the `SUBLEDGERS` reflexive-transitive closure, threading the
per-`SUBUTXOW` coin equation:

```agda
  SUBLEDGERS-utxo-coin : ∀ {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → getCoin (UTxOStateOf s₀) + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx) stxs)
      ≡ getCoin (UTxOStateOf s₁) + sum (map (λ stx → cbalance (SubLedgerEnv.utxo₀ Γ ∣ SpendInputsOf stx)) stxs)

  -- Base case: empty list.  `Id-nop` unifies s₀ ≡ s₁ and both sums are 0.
  SUBLEDGERS-utxo-coin _ (BS-base Id-nop) = refl

  -- SUBLEDGER-I ruled out by isV : isTopLevelValid ≡ true.
  SUBLEDGERS-utxo-coin isV (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())

  -- Inductive step: combine the per-step SUBUTXOW balance with the IH.
  SUBLEDGERS-utxo-coin {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , _ , _)) rest) =
    begin
      U₀ + (p-stx + p-sum)    ≡⟨ sym (+-assoc U₀ p-stx p-sum) ⟩
      U₀ + p-stx + p-sum      ≡⟨ cong (_+ p-sum) step-P-C ⟩
      U₁ + c-stx + p-sum      ≡⟨ +-assoc U₁ c-stx p-sum ⟩
      U₁ + (c-stx + p-sum)    ≡⟨ cong (U₁ +_) (+-comm c-stx p-sum) ⟩
      U₁ + (p-sum + c-stx)    ≡⟨ sym (+-assoc U₁ p-sum c-stx) ⟩
      U₁ + p-sum + c-stx      ≡⟨ cong (_+ c-stx) ih ⟩
      Uₙ + c-sum + c-stx      ≡⟨ +-assoc Uₙ c-sum c-stx ⟩
      Uₙ + (c-sum + c-stx)    ≡⟨ cong (Uₙ +_) (+-comm c-sum c-stx) ⟩
      Uₙ + (c-stx + c-sum)    ∎
    where
    U₀ = getCoin (UTxOStateOf s₀)
    U₁ = getCoin (UTxOStateOf s₁)
    Uₙ = getCoin (UTxOStateOf sₙ)

    p-stx = cbalance (outs stx) + DonationsOf stx
    c-stx = cbalance (SubLedgerEnv.utxo₀ Γ ∣ SpendInputsOf stx)
    p-sum = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx) sigs)
    c-sum = sum (map (λ stx → cbalance (SubLedgerEnv.utxo₀ Γ ∣ SpendInputsOf stx)) sigs)

    -- Single-step coin equation from the SUBUTXOW step assumption.
    step-eq : U₀ + cbalance (outs stx) + DonationsOf stx ≡ U₁ + c-stx
    step-eq = subutxow-step-coin isV' subutxowStep

    step-P-C : U₀ + p-stx ≡ U₁ + c-stx
    step-P-C = trans (sym (+-assoc U₀ (cbalance (outs stx)) (DonationsOf stx))) step-eq

    ih : U₁ + p-sum ≡ Uₙ + c-sum
    ih = SUBLEDGERS-utxo-coin isV rest
```

## `SUBLEDGERS-certs-pov`

Parallel induction over `SUBLEDGERS`, composing per-sub-transaction `ENTITIES-pov`
invocations.  Each `SUBLEDGER-V` step provides a  `SUBUTXOW` derivation from which we
extract the per-batch `NetworkId` witnesses for the sub-tx's withdrawals and direct
deposits.

```agda
  SUBLEDGERS-certs-pov : ∀ {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → getCoin (CertStateOf s₀) + sum (map ddwl stxs)
      ≡ getCoin (CertStateOf s₁) + sum (map wdrwl stxs)

  SUBLEDGERS-certs-pov _ (BS-base Id-nop) = refl

  SUBLEDGERS-certs-pov isV (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())

  SUBLEDGERS-certs-pov {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , entitiesStep , _)) rest) =
    begin
      getCoin (CertStateOf s₀) + (getCoin (DirectDepositsOf stx) + sum (map ddwl sigs))
        ≡⟨ sym (+-assoc (getCoin (CertStateOf s₀))
                        (getCoin (DirectDepositsOf stx))
                        (sum (map ddwl sigs))) ⟩
      (getCoin (CertStateOf s₀) + getCoin (DirectDepositsOf stx)) + sum (map ddwl sigs)
        ≡⟨ cong (_+ sum (map ddwl sigs))
                (ENTITIES-pov wd-netId dd-netId entitiesStep) ⟩
      (getCoin (CertStateOf s₁) + getCoin (WithdrawalsOf stx)) + sum (map ddwl sigs)
        ≡⟨ swap-right (getCoin (CertStateOf s₁))
                      (getCoin (WithdrawalsOf stx))
                      (sum (map ddwl sigs)) ⟩
      (getCoin (CertStateOf s₁) + sum (map ddwl sigs)) + getCoin (WithdrawalsOf stx)
        ≡⟨ cong (_+ getCoin (WithdrawalsOf stx)) ih ⟩
      (getCoin (CertStateOf sₙ) + sum (map wdrwl sigs)) + getCoin (WithdrawalsOf stx)
        ≡⟨ swap-right (getCoin (CertStateOf sₙ))
                      (sum (map wdrwl sigs))
                      (getCoin (WithdrawalsOf stx)) ⟩
      (getCoin (CertStateOf sₙ) + getCoin (WithdrawalsOf stx)) + sum (map wdrwl sigs)
        ≡⟨ +-assoc (getCoin (CertStateOf sₙ))
                   (getCoin (WithdrawalsOf stx))
                   (sum (map wdrwl sigs)) ⟩
      getCoin (CertStateOf sₙ) + (getCoin (WithdrawalsOf stx) + sum (map wdrwl sigs))
        ∎
    where
    -- The two NetworkId witnesses, extracted from the SUBUTXOW step.
    -- (Adjust the constructor arity to match the current SUBUTXO premise
    -- shape; this mirrors `extract-netId` from the old #1190.)
    wd-netId : ∀[ a ∈ dom (WithdrawalsOf stx)    ] NetworkIdOf a ≡ NetworkId
    dd-netId : ∀[ a ∈ dom (DirectDepositsOf stx) ] NetworkIdOf a ≡ NetworkId
    wd-netId , dd-netId = extract-netId subutxowStep
      where
      extract-netId : ∀ {Γ' s₀' s₁'}
        → Γ' ⊢ s₀' ⇀⦇ stx ,SUBUTXOW⦈ s₁'
        → (∀[ a ∈ dom (WithdrawalsOf stx)    ] NetworkIdOf a ≡ NetworkId)
        × (∀[ a ∈ dom (DirectDepositsOf stx) ] NetworkIdOf a ≡ NetworkId)
      extract-netId
        (SUBUTXOW ( _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _
                  , SUBUTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _
                            , wd-netId' , dd-netId' , _))) =
          wd-netId' , dd-netId'

    ih : getCoin (CertStateOf s₁) + sum (map ddwl sigs)
         ≡ getCoin (CertStateOf sₙ) + sum (map wdrwl sigs)
    ih = SUBLEDGERS-certs-pov isV rest
```

## `LEDGER-pov`

```agda
  LEDGER-pov : {Γ : LedgerEnv} {s s' : LedgerState}
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
```

### `LEDGER-I` case (invalid transaction)

`SUBLEDGERS` is a no-op when `IsValidFlagOf tx ≡ false`, so `certState` and `govSt`
are unchanged.  Only the `UTXOW` step affects `getCoin`, and it preserves it via
`utxow-pov-invalid`.

```agda
  LEDGER-pov {Γ} {s} (LEDGER-I (invalid , _ , utxoStep)) =
    cong (λ u → u + getCoin (CertStateOf s) + coinFromDeposit (CertStateOf s))
         (utxow-pov-invalid utxoStep invalid)
```

### `LEDGER-V` case (valid transaction)

The proof is a single equational chain over `LedgerState` coin totals.  Setting
`U = getCoin (UTxOState)`, `R = rewardsBalance`, `D = coinFromDeposit`, and
`allDirectDeps` / `allWdrls` for the top-level and sub-level totals of direct
deposits and withdrawals respectively, the chain shows

    U₀ + R₀ + D₀ + allDirectDeps  ≡  U₂ + R₂ + D₂ + allDirectDeps

with `allDirectDeps` appearing on both sides — the "deposits added on the rewards
side equal deposits added on the UTxO side, modulo accounting" cancellation that's at
the heart of the proof.  `+-cancelʳ-≡` removes the common summand to deliver
`getCoin s ≡ getCoin s'`.

```agda
  LEDGER-pov {Γ} {s}
    (LEDGER-V {certState₁ = cs₁} {cs₂} {govSt₁ = govSt₁} {govSt₂}
              {utxoState₁ = us₁} {utxoState₂ = us₂}
              (valid , subStep , entitiesStep , _ , utxoStep)) =
    +-cancelʳ-≡ _ _ _
      (begin
        U₀ + R₀ + D₀ + allDirectDeps       ≡⟨ step-i ⟩
        U₀ + R₂ + allWdrls + D₀            ≡⟨ abcd-to-acdb U₀ R₂ allWdrls D₀ ⟩
        U₀ + allWdrls + D₀ + R₂            ≡⟨ step-ii ⟩
        U₂ + allDirectDeps + D₂ + R₂       ≡⟨ abcd-to-adcb U₂ allDirectDeps D₂ R₂ ⟩
        U₂ + R₂ + D₂ + allDirectDeps       ∎)
    where
```

The proof uses a handful of arithmetic shuffles — `abcd-to-acdb`, `abcd-to-adcb`, and
five `arithmetic-N` helpers — all of which are pure `+`-monoid rearrangements.  They
could in principle be discharged by `solve-macro` for the `+-0`-monoid; for now they
are stated explicitly to keep the chain readable.

```agda
      abcd-to-acdb : ∀ a b c d → a + b + c + d ≡ a + c + d + b
      abcd-to-acdb a b c d = begin
        a + b + c + d     ≡⟨ cong (_+ d) (+-assoc a b c) ⟩
        a + (b + c) + d   ≡⟨ cong (λ x → a + x + d) (+-comm b c) ⟩
        a + (c + b) + d   ≡⟨ cong (_+ d) (sym (+-assoc a c b)) ⟩
        a + c + b + d     ≡⟨ +-assoc (a + c) b d ⟩
        a + c + (b + d)   ≡⟨ cong ((a + c) +_) (+-comm b d) ⟩
        a + c + (d + b)   ≡⟨ sym (+-assoc (a + c) d b) ⟩
        a + c + d + b     ∎

      abcd-to-adcb : ∀ a b c d → a + b + c + d ≡ a + d + c + b
      abcd-to-adcb a b c d =
        trans (swap-right (a + b) c d)
              (trans (cong (_+ c) (swap-right a b d))
                     (swap-right (a + d) b c))

      U₀ U₁ U₂ : Coin
      U₀ = getCoin (UTxOStateOf s)
      U₁ = getCoin us₁
      U₂ = getCoin us₂

      D₀ D₂ : Coin
      D₀ = coinFromDeposit (CertStateOf s)
      D₂ = coinFromDeposit cs₂

      R₀ R₂ : Coin
      R₀ = rewardsBalance (DStateOf (CertStateOf s))
      R₂ = rewardsBalance (DStateOf cs₂)

      subDirectDepsCoin : Coin
      subDirectDepsCoin = sum (map ddwl (SubTransactionsOf tx))

      allDirectDeps : Coin
      allDirectDeps = getCoin (DirectDepositsOf tx) + subDirectDepsCoin

      subWdrlsCoin : Coin
      subWdrlsCoin = sum (map wdrwl (SubTransactionsOf tx))

      allWdrls : Coin
      allWdrls = getCoin (WithdrawalsOf tx) + subWdrlsCoin
```

Extract the two top-level `NetworkId` witnesses from the `UTXOW` step:

```agda
      extract-utxo-netId : ∀ {Γ' s₀' s₁'} → Γ' ⊢ s₀' ⇀⦇ tx ,UTXOW⦈ s₁'
        → (∀[ a ∈ dom (WithdrawalsOf tx)    ] NetworkIdOf a ≡ NetworkId)
        × (∀[ a ∈ dom (DirectDepositsOf tx) ] NetworkIdOf a ≡ NetworkId)
      extract-utxo-netId
        (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , wd-netId , dd-netId , _))) =
          wd-netId , dd-netId
      extract-utxo-netId
        (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , wd-netId , dd-netId , _))) =
          wd-netId , dd-netId

      top-wd-netId : ∀[ a ∈ dom (WithdrawalsOf tx) ] NetworkIdOf a ≡ NetworkId
      top-dd-netId : ∀[ a ∈ dom (DirectDepositsOf tx) ] NetworkIdOf a ≡ NetworkId
      top-wd-netId , top-dd-netId = extract-utxo-netId utxoStep
```

The "combined" `ENTITIES-pov` invocation: pre-batch `certState` + all direct deposits
(top + sub) ≡ post-`ENTITIES` `certState` + all withdrawals (top + sub).  This is the
key step where direct deposits cancel between the UTxO and CertState sides of the ledger.

```agda
      combined-certs : getCoin (CertStateOf s) + allDirectDeps
                     ≡ getCoin cs₂ + allWdrls
      combined-certs =
        begin
          getCoin (CertStateOf s) + allDirectDeps
            ≡⟨ cong (getCoin (CertStateOf s) +_)
                    (+-comm (getCoin (DirectDepositsOf tx)) subDirectDepsCoin) ⟩
          getCoin (CertStateOf s) + (subDirectDepsCoin + getCoin (DirectDepositsOf tx))
            ≡⟨ sym (+-assoc (getCoin (CertStateOf s))
                            subDirectDepsCoin
                            (getCoin (DirectDepositsOf tx))) ⟩
          getCoin (CertStateOf s) + subDirectDepsCoin + getCoin (DirectDepositsOf tx)
            ≡⟨ cong (_+ getCoin (DirectDepositsOf tx))
                    (SUBLEDGERS-certs-pov valid subStep) ⟩
          getCoin cs₁ + subWdrlsCoin + getCoin (DirectDepositsOf tx)
            ≡⟨ swap-right (getCoin cs₁) subWdrlsCoin (getCoin (DirectDepositsOf tx)) ⟩
          getCoin cs₁ + getCoin (DirectDepositsOf tx) + subWdrlsCoin
            ≡⟨ cong (_+ subWdrlsCoin) (ENTITIES-pov top-wd-netId top-dd-netId entitiesStep) ⟩
          getCoin cs₂ + getCoin (WithdrawalsOf tx) + subWdrlsCoin
            ≡⟨ +-assoc (getCoin cs₂) (getCoin (WithdrawalsOf tx)) subWdrlsCoin ⟩
          getCoin cs₂ + (getCoin (WithdrawalsOf tx) + subWdrlsCoin)
            ∎
```

`step-i`: introduce `allDirectDeps`, then rewrite using `combined-certs`.

```agda
      step-i : (U₀ + R₀ + D₀) + allDirectDeps ≡ U₀ + R₂ + allWdrls + D₀
      step-i =
        begin
          U₀ + R₀ + D₀ + allDirectDeps    ≡⟨ swap-right (U₀ + R₀) D₀ allDirectDeps ⟩
          U₀ + R₀ + allDirectDeps + D₀    ≡⟨ cong (_+ D₀) (+-assoc U₀ R₀ allDirectDeps) ⟩
          U₀ + (R₀ + allDirectDeps) + D₀  ≡⟨ cong (λ x → U₀ + x + D₀) combined-certs ⟩
          U₀ + (R₂ + allWdrls) + D₀       ≡⟨ cong (_+ D₀) (sym (+-assoc U₀ R₂ allWdrls)) ⟩
          U₀ + R₂ + allWdrls + D₀         ∎

      dc : DepositsChange
      dc = calculateDepositsChange (CertStateOf s) cs₁ cs₂

      dct dcs : ℤ
      dct = DepositsChangeTopOf dc
      dcs = DepositsChangeSubOf dc

      posneg : D₀ + posPart dct + posPart dcs ≡ D₂ + negPart dct + negPart dcs
      posneg = posNeg-deposits (CertStateOf s) cs₁ cs₂
```

`UTXOW-V-mechanical` composed with the batch-wide "spend inputs preserved" invariant:

```agda
      mech : U₁ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
           ≡ U₂ + cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf tx)
      mech = trans (UTXOW-V-mechanical utxoStep valid (fresh-top-tx-id valid subStep))
                   (cong (U₂ +_) (utxo₁-tx-spend-eq valid refl subStep))

      Ctop Csub : Coin
      Ctop = cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf tx)
      Csub = sum (map (λ stx → cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf stx))
                      (SubTransactionsOf tx))

      Psub PsubDD : Coin
      Psub = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx)
                      (SubTransactionsOf tx))
      PsubDD = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                        (SubTransactionsOf tx))

      -- The additive constant on both sides of the inner chain.
      E : Coin
      E = Ctop + Psub + posPart dct + posPart dcs
```

The batch balance, rephrased to expose direct deposits and bring withdrawals together:

```agda
      bat' : Ctop + allWdrls + Csub + negPart dct + negPart dcs
           ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
             + allDirectDeps + Psub + posPart dct + posPart dcs
      bat' =
        begin
          Ctop + allWdrls + Csub + negPart dct + negPart dcs
            ≡⟨⟩
          Ctop + (Wtop + subWdrlsCoin) + Csub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + Csub + negPart dct + negPart dcs)
                    (sym (+-assoc Ctop Wtop subWdrlsCoin)) ⟩
          Ctop + Wtop + subWdrlsCoin + Csub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs)
                    (swap-right (Ctop + Wtop) subWdrlsCoin Csub) ⟩
          Ctop + Wtop + Csub + subWdrlsCoin + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs)
                    (+-assoc (Ctop + Wtop) Csub subWdrlsCoin) ⟩
          Ctop + Wtop + (Csub + subWdrlsCoin) + negPart dct + negPart dcs
            ≡˘⟨ cong (λ x → Ctop + Wtop + x + negPart dct + negPart dcs)
                     (sum-map-+ (λ stx → cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf stx))
                                wdrwl (SubTransactionsOf tx)) ⟩
          Ctop + Wtop + CsubW + negPart dct + negPart dcs
            ≡⟨ cong (_+ negPart dcs) (swap-right (Ctop + Wtop) CsubW (negPart dct)) ⟩
          Ctop + Wtop + negPart dct + CsubW + negPart dcs
            ≡⟨ UTXOW-batch-balance-coin utxoStep ⟩
          O + F + DN + DDtop + posPart dct + PsubDD + posPart dcs
            ≡⟨ cong (λ x → O + F + DN + DDtop + posPart dct + x + posPart dcs)
                    (sum-map-+ (λ stx → cbalance (outs stx) + DonationsOf stx)
                               (λ stx → getCoin (DirectDepositsOf stx))
                               (SubTransactionsOf tx)) ⟩
          O + F + DN + DDtop + posPart dct + (Psub + subDirectDepsCoin) + posPart dcs
            ≡⟨ reshuffle-to-DD ⟩
          O + F + DN + allDirectDeps + Psub + posPart dct + posPart dcs
            ∎
        where
        O     = cbalance (outs tx)
        F     = TxFeesOf tx
        DN    = DonationsOf tx
        DDtop = getCoin (DirectDepositsOf tx)
        Wtop  = getCoin (WithdrawalsOf tx)
        CsubW = sum (map (λ stx → cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf stx)
                                + getCoin (WithdrawalsOf stx))
                         (SubTransactionsOf tx))

        reshuffle-to-DD :
            O + F + DN + DDtop + posPart dct + (Psub + subDirectDepsCoin) + posPart dcs
          ≡ O + F + DN + (DDtop + subDirectDepsCoin) + Psub + posPart dct + posPart dcs
        reshuffle-to-DD = begin
          O + F + DN + DDtop + posPart dct + (Psub + subDirectDepsCoin) + posPart dcs
            ≡⟨ cong (_+ posPart dcs) (sym (+-assoc (O + F + DN + DDtop + posPart dct) Psub subDirectDepsCoin)) ⟩
          O + F + DN + DDtop + posPart dct + Psub + subDirectDepsCoin + posPart dcs
            ≡⟨ cong (_+ posPart dcs) (swap-right (O + F + DN + DDtop + posPart dct) Psub subDirectDepsCoin) ⟩
          O + F + DN + DDtop + posPart dct + subDirectDepsCoin + Psub + posPart dcs
            ≡⟨ cong (λ x → x + Psub + posPart dcs) (swap-right (O + F + DN + DDtop) (posPart dct) subDirectDepsCoin) ⟩
          O + F + DN + DDtop + subDirectDepsCoin + posPart dct + Psub + posPart dcs
            ≡⟨ cong (_+ posPart dcs) (swap-right (O + F + DN + DDtop + subDirectDepsCoin) (posPart dct) Psub) ⟩
          O + F + DN + DDtop + subDirectDepsCoin + Psub + posPart dct + posPart dcs
            ≡⟨ cong (λ x → x + Psub + posPart dct + posPart dcs) (+-assoc (O + F + DN) DDtop subDirectDepsCoin) ⟩
          O + F + DN + (DDtop + subDirectDepsCoin) + Psub + posPart dct + posPart dcs
            ∎
```

The main inner chain, showing LHS + E ≡ RHS + E:

```agda
      LHS+E≡RHS+E : U₀ + allWdrls + D₀ + E ≡ U₂ + allDirectDeps + D₂ + E
      LHS+E≡RHS+E = begin
        U₀ + allWdrls + D₀ + E
          ≡⟨⟩
        U₀ + allWdrls + D₀ + (Ctop + Psub + posPart dct + posPart dcs)
          ≡⟨ arithmetic-1 U₀ allWdrls D₀ ⟩
        U₀ + allWdrls + D₀ + Ctop + Psub + posPart dct + posPart dcs
          ≡⟨ arithmetic-2 U₀ allWdrls D₀ ⟩
        U₀ + Psub + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop
          ≡⟨ cong (λ x → x + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop)
                  (subst (λ u →   U₀ + Psub
                              ≡ U₁ + sum (map (λ stx → cbalance (u ∣ SpendInputsOf stx))
                                              (SubTransactionsOf tx)))
                         (refl {x = UTxOOf (UTxOStateOf s)})
                         (SUBLEDGERS-utxo-coin valid subStep)) ⟩
        U₁ + Csub + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop
          ≡⟨ cong (λ x → (U₁ + Csub) + allWdrls + x + Ctop) posneg ⟩
        U₁ + Csub + allWdrls + (D₂ + negPart dct + negPart dcs) + Ctop
          ≡⟨ arithmetic-3 U₁ Csub allWdrls ⟩
        U₁ + (Ctop + allWdrls + Csub + negPart dct + negPart dcs) + D₂
          ≡⟨ cong (λ x → U₁ + x + D₂) bat' ⟩
        U₁ + (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs) + D₂
          ≡⟨ arithmetic-4 U₁ (cbalance (outs tx)) (TxFeesOf tx) ⟩
        U₁ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs + D₂
          ≡⟨ cong (λ x → x + allDirectDeps + Psub + posPart dct + posPart dcs + D₂) mech ⟩
        U₂ + Ctop + allDirectDeps + Psub + posPart dct + posPart dcs + D₂
          ≡⟨ arithmetic-5 U₂ Ctop allDirectDeps ⟩
        U₂ + allDirectDeps + D₂ + Ctop + Psub + posPart dct + posPart dcs
          ≡˘⟨ arithmetic-1 U₂ allDirectDeps D₂ ⟩
        U₂ + allDirectDeps + D₂ + E
          ∎
        where
```

The five `arithmetic-N` helpers are pure `+`-monoid rearrangements, each unfolded
explicitly:

```agda
        arithmetic-1 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + (d + e + f + g) ≡ a + b + c + d + e + f + g
        arithmetic-1 a b c {d}{e}{f}{g} = begin
          a + b + c + (d + e + f + g)  ≡˘⟨ +-assoc (a + b + c) (d + e + f) g ⟩
          a + b + c + (d + e + f) + g  ≡˘⟨ cong (_+ g) (+-assoc (a + b + c) (d + e) f) ⟩
          a + b + c + (d + e) + f + g  ≡˘⟨ cong (λ x → x + f + g) (+-assoc (a + b + c) d e) ⟩
          a + b + c + d + e + f + g    ∎

        arithmetic-2 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + d + e + f + g ≡ a + e + b + (c + f + g) + d
        arithmetic-2 a b c {d}{e}{f}{g} = begin
          a + b + c + d + e + f + g    ≡⟨ cong (λ x → x + f + g) (swap-right (a + b + c) d e) ⟩
          a + b + c + e + d + f + g    ≡⟨ cong (_+ g) (swap-right (a + b + c + e) d f) ⟩
          a + b + c + e + f + d + g    ≡⟨ swap-right (a + b + c + e + f) d g ⟩
          a + b + c + e + f + g + d    ≡⟨ cong (λ x → x + f + g + d) (swap-right (a + b) c e) ⟩
          a + b + e + c + f + g + d    ≡⟨ cong (λ x → x + c + f + g + d) (swap-right a b e) ⟩
          a + e + b + c + f + g + d    ≡⟨ cong (_+ d) reassoc-middle ⟩
          a + e + b + (c + f + g) + d  ∎
          where
          reassoc-middle : a + e + b + c + f + g ≡ a + e + b + (c + f + g)
          reassoc-middle = trans (+-assoc (a + e + b + c) f g)
                                 (trans (+-assoc (a + e + b) c (f + g))
                                        (cong (a + e + b +_) (sym (+-assoc c f g))))

        arithmetic-3 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + (d + e + f) + g ≡ a + (g + c + b + e + f) + d
        arithmetic-3 a b c {d}{e}{f}{g} = begin
          a + b + c + (d + e + f) + g  ≡˘⟨ cong (_+ g) (+-assoc (a + b + c) (d + e) f) ⟩
          a + b + c + (d + e) + f + g  ≡˘⟨ cong (λ x → x + f + g) (+-assoc (a + b + c) d e) ⟩
          a + b + c + d + e + f + g    ≡⟨ swap-right (a + b + c + d + e) f g ⟩
          a + b + c + d + e + g + f    ≡⟨ cong (_+ f) (swap-right (a + b + c + d) e g) ⟩
          a + b + c + d + g + e + f    ≡⟨ cong (λ x → x + e + f) (swap-right (a + b + c) d g) ⟩
          a + b + c + g + d + e + f    ≡⟨ cong (λ x → x + d + e + f) (swap-right (a + b) c g) ⟩
          a + b + g + c + d + e + f    ≡⟨ cong (λ x → x + c + d + e + f) (swap-right a b g) ⟩
          a + g + b + c + d + e + f    ≡⟨ cong (λ x → x + d + e + f) (swap-right (a + g) b c) ⟩
          a + g + c + b + d + e + f    ≡⟨ cong (_+ f) (swap-right (a + g + c + b) d e) ⟩
          a + g + c + b + e + d + f    ≡⟨ swap-right (a + g + c + b + e) d f ⟩
          a + g + c + b + e + f + d    ≡⟨ cong (λ x → x + b + e + f + d) (+-assoc a g c) ⟩
          a + (g + c) + b + e + f + d  ≡⟨ cong (λ x → x + e + f + d) (+-assoc a (g + c) b) ⟩
          a + (g + c + b) + e + f + d  ≡⟨ cong (λ x → x + f + d) (+-assoc a (g + c + b) e) ⟩
          a + (g + c + b + e) + f + d  ≡⟨ cong (_+ d) (+-assoc a (g + c + b + e) f) ⟩
          a + (g + c + b + e + f) + d  ∎

        arithmetic-4 : ∀ a b c {d}{e}{f}{g}{h}{i}
          → a + (b + c + d + e + f + g + h) + i ≡ a + b + c + d + e + f + g + h + i
        arithmetic-4 a b c {d}{e}{f}{g}{h}{i} = cong (_+ i) $
          begin
          a + (b + c + d + e + f + g + h)  ≡˘⟨ +-assoc a _ h ⟩
          a + (b + c + d + e + f + g) + h  ≡˘⟨ cong (_+ h) (+-assoc a _ g) ⟩
          a + (b + c + d + e + f) + g + h  ≡˘⟨ cong (λ x → x + g + h) (+-assoc a _ f) ⟩
          a + (b + c + d + e) + f + g + h  ≡˘⟨ cong (λ x → x + f + g + h) (+-assoc a _ e) ⟩
          a + (b + c + d) + e + f + g + h  ≡˘⟨ cong (λ x → x + e + f + g + h) (+-assoc a _ d) ⟩
          a + (b + c) + d + e + f + g + h  ≡˘⟨ cong (λ x → x + d + e + f + g + h) (+-assoc a b c) ⟩
          a + b + c + d + e + f + g + h    ∎

        arithmetic-5 : ∀ a b c {d}{e}{f}{g}
          → a + b + c + d + e + f + g ≡ a + c + g + b + d + e + f
        arithmetic-5 a b c {d}{e}{f}{g} = begin
          a + b + c + d + e + f + g  ≡⟨ cong (λ x → x + d + e + f + g) (swap-right a b c) ⟩
          a + c + b + d + e + f + g  ≡⟨ swap-right (a + c + b + d + e) f g ⟩
          a + c + b + d + e + g + f  ≡⟨ cong (_+ f) (swap-right (a + c + b + d) e g) ⟩
          a + c + b + d + g + e + f  ≡⟨ cong (λ x → x + e + f) (swap-right (a + c + b) d g) ⟩
          a + c + b + g + d + e + f  ≡⟨ cong (λ x → x + d + e + f) (swap-right (a + c) b g) ⟩
          a + c + g + b + d + e + f  ∎
```

Finally, `step-ii`: extract the actual equation from `LHS+E≡RHS+E` by cancelling `E`
on both sides:

```agda
      step-ii : U₀ + allWdrls + D₀ + R₂ ≡ U₂ + allDirectDeps + D₂ + R₂
      step-ii = cong (_+ R₂)
                     (+-cancelʳ-≡ E (U₀ + allWdrls + D₀) (U₂ + allDirectDeps + D₂)
                                  LHS+E≡RHS+E)
```
