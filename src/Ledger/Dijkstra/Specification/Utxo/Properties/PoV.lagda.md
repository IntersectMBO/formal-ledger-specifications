---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/PoV.lagda.md
---

# UTXO Properties: Preservation of Value {#sec:utxo-pov}

This module proves the coin equations for Dijkstra UTxO steps and projects the
batch balance premise to coin.  `LEDGER-pov`{.AgdaFunction} combines those
equations with the accounting for withdrawals and deposits.

## Why the proof splits in two

The per-step equations use the **running UTxO**.  A valid step accounts for the
inputs it spends and the outputs, fees, and donations it adds.  An invalid
top-level step preserves `getCoin`{.AgdaField} by moving collateral into fees.

The batch balance uses the **pre-batch snapshot** carried in the environment.
Its coin projection combines the projections for individual transactions and
the sums over sub-transactions.  Certificate refunds and new deposits use the
pre-batch pool set.

`BatchUTxO`{.AgdaRecord} connects these equations.  It keeps pending transaction
ids fresh and records agreement on the keys shared by the two UTxOs.  The rule
premises place the spend inputs in both domains, so the spent balance agrees
with its value in the snapshot.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract    using (AbstractFunctions)
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude; open Properties using (∪-⊆ˡ)

open import Data.List.Properties        using (map-cong; map-cong-local)
import Data.List.Relation.Unary.All as All
open import Data.Nat.Base               using () renaming (_+_ to infixl 6 _+ᴺ_)
open import Data.Nat.Properties         using (+-identityʳ)
open import Data.Nat.Tactic.RingSolver  using (solve-∀)
import Data.List.Relation.Unary.AllPairs as AllPairs
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.Base txs abs

open ≡-Reasoning

private variable
  ℓ : TxLevel
```
-->

## Arithmetic helpers

The rearrangement lemmas in this module are discharged by the reflective ring
solver (`Data.Nat.Tactic.RingSolver`), with the solver-facing statements written
over the raw natural-number addition `_+ᴺ_`.

```agda
private
  swap-right : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ c +ᴺ b
  swap-right = solve-∀
```

## No minting in sub-transactions

`coin (MintedValueOf stx) ≡ 0` for each sub-transaction `stx` is a premise of the
`SUBUTXO`{.AgdaDatatype} rule, but the `UTXO`{.AgdaDatatype} rule (which carries
the batch balance premise) does not quantify over the `SUBUTXO`{.AgdaDatatype}
steps.  The batch-balance lemmas below therefore take the following
per-transaction fact as a hypothesis; the `LEDGER`{.AgdaDatatype}-level consumer
discharges it from the `SUBLEDGERS`{.AgdaDatatype} derivation.

```agda
noMintingSubTxs : TopLevelTx → Type
noMintingSubTxs tx = ∀ stx → stx ∈ˡ SubTransactionsOf tx → coin (MintedValueOf stx) ≡ 0
```

The premise itself, read off a `SUBUTXO`{.AgdaDatatype} step:

```agda
subutxo-noMint : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
  → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁ → coin (MintedValueOf stx) ≡ 0
subutxo-noMint (SUBUTXO (_ , _ , _ , _ , _ , noMint , _)) = noMint
```

## Coin projections of <span class="AgdaFunction">consumedBatch</span> and <span class="AgdaFunction">producedBatch</span>

The batch balance premise is an equation between `Values`{.AgdaField};
`LEDGER-pov`{.AgdaFunction} consumes its `coin`{.AgdaField} projection, with each
side expanded into its closed-form `Coin`{.AgdaFunction} summands.  The projection
proceeds in three layers, mirroring the shape of
`consumedBatch`{.AgdaFunction}/`producedBatch`{.AgdaFunction}: single
transactions, sums over sub-transactions, and the batch level.

### Layer 1: single-transaction coin equations

Unfold `consumedTx`{.AgdaFunction}/`producedTx`{.AgdaFunction} and peel
`coin`{.AgdaField} through each `+ inject _` layer with
`coin-inject-lemma`{.AgdaFunction} and `∙-homo-Coin`{.AgdaFunction}.  The
consumed version uses `coin (MintedValueOf t) ≡ 0` to cancel the mint term.

```agda
module _ (pp : PParams) where

  coin-consumedTx : (t : Tx ℓ) (u : UTxO) → coin (MintedValueOf t) ≡ 0
    → coin (consumedTx pp t u) ≡  cbalance (u ∣ SpendInputsOf t)
                                  + getCoin (WithdrawalsOf t)

  coin-consumedTx t u noMint =
    begin
    coin (bs + MintedValueOf t + inject wdrls)  ≡⟨ coin-inject-lemma ⟩
    coin (bs + MintedValueOf t) + wdrls         ≡⟨ cong (_+ wdrls) (∙-homo-Coin _ _) ⟩
    cbs + coin (MintedValueOf t) + wdrls        ≡⟨ cong (λ z → cbs + z + wdrls) noMint ⟩
    cbs + 0 + wdrls                             ≡⟨ cong (_+ wdrls) (+-identityʳ _) ⟩
    cbs + wdrls                                 ∎
    where
    bs : Value
    bs = balance (u ∣ SpendInputsOf t)

    cbs wdrls : Coin
    cbs = cbalance (u ∣ SpendInputsOf t)
    wdrls = getCoin (WithdrawalsOf t)

  coin-producedTx : (t : Tx ℓ)
    → coin (producedTx pp t) ≡  cbalance (outs t) + DonationsOf t
                                + getCoin (DirectDepositsOf t)
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
    dd gov : Coin
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
  coin-∑-consumedTx-sub : (tx : TopLevelTx) (u : UTxO) → noMintingSubTxs tx
    →  coin (∑ˡ[ stx ← SubTransactionsOf tx ] consumedTx pp stx u)
       ≡ sum (map  (λ stx →  cbalance (u ∣ SpendInputsOf stx)
                             + getCoin (WithdrawalsOf stx))
                   (SubTransactionsOf tx))

  coin-∑-consumedTx-sub tx u noMintSub = begin
    coin (∑ˡ[ stx ← SubTransactionsOf tx ] consumedTx pp stx u)
      ≡⟨ coin-∑ˡ (λ stx → consumedTx pp stx u) (SubTransactionsOf tx) ⟩
    sum (map (coin ∘ (λ stx → consumedTx pp stx u)) (SubTransactionsOf tx))
      ≡⟨ cong sum (map-cong-local  (All.tabulate λ {stx} stx∈ →
                                   coin-consumedTx stx u (noMintSub stx stx∈))) ⟩
    sum (map  (λ stx → cbalance (u ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
              (SubTransactionsOf tx))
      ∎

  coin-∑-producedTx-sub : (tx : TopLevelTx)
    →  coin (∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
       ≡ sum (map  (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)
                            + govProposalsDeposits pp (ListOfGovProposalsOf stx))
                   (SubTransactionsOf tx))
  coin-∑-producedTx-sub tx = begin
    coin (∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
      ≡⟨ coin-∑ˡ (producedTx pp) (SubTransactionsOf tx) ⟩
    sum (map (coin ∘ producedTx pp) (SubTransactionsOf tx))
      ≡⟨ cong sum (map-cong (coin-producedTx {ℓ = TxLevelSub}) (SubTransactionsOf tx)) ⟩
    sum (map  (λ stx →  cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)
                        + govProposalsDeposits pp (ListOfGovProposalsOf stx))
              (SubTransactionsOf tx))
      ∎
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
  coin-consumedBatch : (tx : TopLevelTx) (u : UTxO)
    → coin (MintedValueOf tx) ≡ 0
    → noMintingSubTxs tx
    → coin (consumedBatch pp tx u) ≡  cbalance (u ∣ SpendInputsOf tx)
                                      + getCoin (WithdrawalsOf tx)
                                      + sum (map  (λ stx →  cbalance (u ∣ SpendInputsOf stx)
                                                            + getCoin (WithdrawalsOf stx))
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
    subSum : Coin
    subSum = sum (map  (λ stx →  cbalance (u ∣ SpendInputsOf stx)
                                 + getCoin (WithdrawalsOf stx))
                       (SubTransactionsOf tx))

    consumed-top :
      coin (consumed pp tx u) ≡  cbalance (u ∣ SpendInputsOf tx)
                                 + getCoin (WithdrawalsOf tx)
                                 + refundCertDeposits pp (allDCerts tx)
    consumed-top = begin
      coin (consumedTx pp tx u + inject refdeps)
        ≡⟨ coin-inject-lemma ⟩
      coin (consumedTx pp tx u) + refdeps
        ≡⟨ cong  (_+ refdeps) (coin-consumedTx tx u noMintTop) ⟩
      cbalance (u ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx) + refdeps
        ∎
      where
      refdeps : Coin
      refdeps = refundCertDeposits pp (allDCerts tx)

  coin-producedBatch : (pools : Pools) (tx : TopLevelTx)
    →  coin (producedBatch pp pools tx)
       ≡  cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
          + sum (map  (λ stx →  cbalance (outs stx) + DonationsOf stx
                                + getCoin (DirectDepositsOf stx))
                      (SubTransactionsOf tx))
          + newCertDeposits pp (dom pools) (allDCerts tx)
          + ( govProposalsDeposits pp (ListOfGovProposalsOf tx)
              + sum (map  (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx))
                          (SubTransactionsOf tx)) )

  coin-producedBatch pools tx = begin
    coin (produced pp pools tx + ∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
      ≡⟨ ∙-homo-Coin _ _ ⟩
    coin (produced pp pools tx) + coin (∑ˡ[ stx ← SubTransactionsOf tx ] producedTx pp stx)
      ≡⟨ cong₂ _+_ produced-top (coin-∑-producedTx-sub tx) ⟩
    cprefix + subSum₄
      ≡⟨ cong (cprefix +_) subSum+govSub ⟩
    cprefix + (subSum₃ + govSub)
      ≡⟨ produced-shuffle  (cbalance (outs tx)) (DonationsOf tx) (getCoin (DirectDepositsOf tx))
                           govTop (TxFeesOf tx) newDeps subSum₃ govSub ⟩
    cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
      + subSum₃ + newDeps + (govTop + govSub)
      ∎
    where
    govTop govSub newDeps subSum₃ subSum₄ : Coin
    govTop  = govProposalsDeposits pp (ListOfGovProposalsOf tx)
    govSub  = sum (map (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx))
                       (SubTransactionsOf tx))
    newDeps = newCertDeposits pp (dom pools) (allDCerts tx)
    subSum₃ = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                       (SubTransactionsOf tx))
    subSum₄ = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx)
                                + govProposalsDeposits pp (ListOfGovProposalsOf stx))
                       (SubTransactionsOf tx))

    cprefix = cbalance (outs tx) + DonationsOf tx + getCoin (DirectDepositsOf tx) + govTop + TxFeesOf tx + newDeps

    subSum+govSub : subSum₄ ≡ subSum₃ + govSub
    subSum+govSub =
      sum-map-+  (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                 (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx))
                 (SubTransactionsOf tx)


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

## <span class="AgdaFunction">subutxo-step-coin</span>: the per-step <span class="AgdaDatatype">SUBUTXO</span> coin equation

For a valid batch, a `SUBUTXO`{.AgdaDatatype} step moves the spend inputs out of the
running UTxO and adds the sub-transaction's outputs and donation.  Stated against the
running UTxO, as it is here, that accounting needs exactly one fact the
`SUBUTXO`{.AgdaDatatype} premises do not provide: *freshness*, that `TxIdOf stx` does
not occur in the running UTxO, which is what lets `balance-∪`{.AgdaFunction} split
`outs stx` off again.  It is a hypothesis here; the batch invariant of the next
section supplies it.

The `LEDGER`{.AgdaDatatype}-level consumer wants the spent balance resolved against
the *pre-batch snapshot* `UTxOOf Γ` instead.  The conversion is
`subutxo-spend-agree`{.AgdaFunction} below, and the two are combined in
`Utxow.Properties.PoV`{.AgdaModule}.

```agda
subutxo-step-coin :
  {Γ      : SubUTxOEnv}
  {s₀ s₁  : UTxOState}
  {stx    : SubLevelTx}
  → IsTopLevelValidFlagOf Γ ≡ true
  → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
  → TxIdOf stx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
  →  getCoin s₀ + cbalance (outs stx) + DonationsOf stx
     ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf stx)
subutxo-step-coin {s₀ = ⟦ u , f , d ⟧ᵘ} {stx = stx} isV (SUBUTXO _) fresh
  rewrite isV = begin
    cbalance u + f + d + co + DonationsOf stx
      ≡⟨ cong  (λ z → z + f + d + co + DonationsOf stx)
               (split-balance u (SpendInputsOf stx)) ⟩
    cbalance u|stxᶜ + cs + f + d + co + DonationsOf stx
      ≡⟨ shuffle (cbalance u|stxᶜ) cs f d co (DonationsOf stx) ⟩
    cbalance u|stxᶜ + co + f + (d + DonationsOf stx) + cs
      ≡˘⟨ cong  (λ z → z + f + (d + DonationsOf stx) + cs)
                (balance-∪ u|stxᶜ (outs stx) (outs-disjoint stx {u} fresh)) ⟩
    cbalance (u|stxᶜ ∪ˡ outs stx) + f + (d + DonationsOf stx) + cs
      ∎
  where
  cs co : Coin
  cs = cbalance (u ∣ SpendInputsOf stx)
  co = cbalance (outs stx)
  u|stxᶜ : TxIn ⇀ TxOut
  u|stxᶜ = (u ∣ SpendInputsOf stx ᶜ)
  shuffle : ∀ a c f d o w → a +ᴺ c +ᴺ f +ᴺ d +ᴺ o +ᴺ w ≡ a +ᴺ o +ᴺ f +ᴺ (d +ᴺ w) +ᴺ c
  shuffle = solve-∀
```

## Batch threading

A valid `SUBUTXO`{.AgdaDatatype} step preserves
`BatchUTxO`{.AgdaRecord} when its transaction id is fresh in the initial UTxO
and distinct from the remaining ids.  The ledger proof threads the invariant
through the `SUBLEDGERS`{.AgdaDatatype} derivation.

The ids of a batch, listed in the order in which their outputs enter the UTxO:

```agda
batchTxIds : TopLevelTx → List TxId
batchTxIds tx = map TxIdOf (SubTransactionsOf tx) ++ [ TxIdOf tx ]
```

`FreshTxIds`{.AgdaRecord} requires distinct ids absent from the initial UTxO.
This suffices to keep newly added outputs disjoint from retained entries.
The transition rules leave freshness as an explicit hypothesis of
`LEDGER-pov`{.AgdaFunction}.

```agda
record FreshTxIds (utxo : UTxO) (ids : List TxId) : Type where
  field
    distinct : Unique ids
    fresh    : ∀ {tid} → tid ∈ˡ ids → tid ∉ mapˢ proj₁ (dom utxo)

FreshTxIds-tail : {utxo : UTxO} {tid : TxId} {ids : List TxId}
  → FreshTxIds utxo (tid ∷ ids) → FreshTxIds utxo ids
FreshTxIds-tail f = record { distinct = AllPairs.tail distinct ; fresh = fresh ∘ there }
  where open FreshTxIds f
```

The invariant is stated relative to the snapshot `u₀` and the ids `ids` of the
transactions still to be applied: the running UTxO `u` is a *batch UTxO* when no
pending id occurs in it and it agrees with the snapshot on the snapshot's keys
(`_AgreesWith_`{.AgdaFunction}, from `Utxo.Properties.Base`{.AgdaModule}).  The
snapshot is a batch UTxO over itself whenever the pending ids are fresh for it.

```agda
record BatchUTxO (u₀ : UTxO) (ids : List TxId) (u : UTxO) : Type where
  field
    pending-fresh : ∀ {tid} → tid ∈ˡ ids → tid ∉ mapˢ proj₁ (dom u)
    agrees        : u AgreesWith u₀

BatchUTxO-init : {u₀ : UTxO} {ids : List TxId} → FreshTxIds u₀ ids → BatchUTxO u₀ ids u₀
BatchUTxO-init {u₀} f = record { pending-fresh = FreshTxIds.fresh f ; agrees = agrees-refl u₀ }
```

At a step, the first pending id is the stepping transaction's, so the invariant
gives its freshness in the running UTxO directly.  The step preserves the
invariant by `agrees-step`{.AgdaFunction} and `fresh-step`{.AgdaFunction} of
`Utxo.Properties.Base`{.AgdaModule}, which need the stepping id fresh in the
snapshot and different from the ids that remain pending; both come from
`FreshTxIds`{.AgdaRecord}.

```agda
module _ {u₀ : UTxO} {ids : List TxId} where

  BatchUTxO-fresh : {tid : TxId} {u : UTxO}
    → BatchUTxO u₀ (tid ∷ ids) u → tid ∉ mapˢ proj₁ (dom u)
  BatchUTxO-fresh inv = BatchUTxO.pending-fresh inv (here refl)

  BatchUTxO-step : (t : Tx ℓ) (u : UTxO) (S : ℙ TxIn)
    → FreshTxIds u₀ (TxIdOf t ∷ ids)
    → BatchUTxO u₀ (TxIdOf t ∷ ids) u
    → BatchUTxO u₀ ids ((u ∣ S ᶜ) ∪ˡ outs t)
  BatchUTxO-step t u S f inv = record
    { pending-fresh = λ tid∈ids →
        fresh-step t u S (pending-fresh (there tid∈ids))
                         (λ eq → All.lookup (AllPairs.head distinct) tid∈ids (sym eq))
    ; agrees = agrees-step t u S u₀ (fresh (here refl)) agrees }
    where open BatchUTxO inv; open FreshTxIds f
```

For a `SUBUTXO`{.AgdaDatatype} step the key set spent is `SpendInputsOf stx`, and
premises 2 and 3 of the rule place it in both the snapshot's and the running
UTxO's domain, which is what agreement needs to equate the two spent balances.

```agda
module _ {Γ : SubUTxOEnv} {stx : SubLevelTx} where

  subutxo-spend-agree : {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → UTxOOf s₀ AgreesWith UTxOOf Γ
    → cbalance (UTxOOf s₀ ∣ SpendInputsOf stx) ≡ cbalance (UTxOOf Γ ∣ SpendInputsOf stx)
  subutxo-spend-agree {s₀} (SUBUTXO (_ , spend⊆snapshot , _ , spend⊆running , _)) agree =
    agrees-cbalance (UTxOOf Γ) (UTxOOf s₀) agree spend⊆snapshot spend⊆running

  subutxo-batch-step : {s₀ s₁ : UTxOState} {ids : List TxId}
    → IsTopLevelValidFlagOf Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → FreshTxIds (UTxOOf Γ) (TxIdOf stx ∷ ids)
    → BatchUTxO (UTxOOf Γ) (TxIdOf stx ∷ ids) (UTxOOf s₀)
    → BatchUTxO (UTxOOf Γ) ids (UTxOOf s₁)
  subutxo-batch-step {s₀} isV (SUBUTXO _) fresh inv rewrite isV =
    BatchUTxO-step stx (UTxOOf s₀) (SpendInputsOf stx) fresh inv
```

## The <span class="AgdaModule">UTXO-PoV</span> module

The remaining lemmas are stated for a fixed top-level transaction.

```agda
module UTXO-PoV
  (tx : TopLevelTx)
  {Γ : UTxOEnv}
  where
```

### <span class="AgdaFunction">UTXO-pov-invalid</span>: collateral collection preserves `getCoin`

The invalid case does not use the batch balance equation: the rule moves the
collateral balance from the UTxO to the fee pot and leaves donations unchanged,
so `getCoin`{.AgdaField} is preserved exactly, by
`split-balance`{.AgdaFunction} at the collateral inputs.

```agda
  UTXO-pov-invalid : {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁ → IsValidFlagOf tx ≡ false
    → getCoin s₀ ≡ getCoin s₁

  UTXO-pov-invalid {s₀ = ⟦ u , f , d ⟧ᵘ} (UTXO _) invalid rewrite invalid =
    begin
    cbalance u + f + d  ≡⟨ cong  (λ z → z + f + d)
                                 (split-balance u (CollateralInputsOf tx)) ⟩
    csᶜ + cs + f + d    ≡⟨ shuffle csᶜ cs f d ⟩
    csᶜ + (f + cs) + d  ∎
    where
    cs csᶜ : Coin
    cs = cbalance (u ∣ CollateralInputsOf tx)
    csᶜ = cbalance (u ∣ CollateralInputsOf tx ᶜ)
    shuffle : ∀ a b f d → a +ᴺ b +ᴺ f +ᴺ d ≡ a +ᴺ (f +ᴺ b) +ᴺ d
    shuffle = solve-∀
```

### <span class="AgdaFunction">UTXO-V-mechanical</span>: the valid-case state change

For a valid transaction the rule spends `SpendInputsOf tx` from the running
UTxO `u` and adds `outs tx`, the transaction fee, and the donation.  Given
freshness of `TxIdOf tx` in `u` (so that `outs tx` splits off cleanly via
`balance-∪`{.AgdaFunction}), `getCoin`{.AgdaField} changes by exactly the
spent balance on one side and the outputs/fee/donation on the other.  Note
that the spent balance is `cbalance (UTxOOf s₀ ∣ SpendInputsOf tx)`, the
*running*-state resolution of piece 1; `UTXO-spend-agree`{.AgdaFunction} below
equates it with the snapshot resolution appearing in
`UTXO-batch-balance-coin`{.AgdaFunction}.

```agda
  UTXO-V-mechanical : {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁ → IsValidFlagOf tx ≡ true
    → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
    →  getCoin s₀ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
       ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf tx)
  UTXO-V-mechanical {s₀ = ⟦ u , f , d ⟧ᵘ} (UTXO _) valid fresh rewrite valid =
    begin
    cbalance u + f + d + co + TxFeesOf tx + DonationsOf tx
      ≡⟨ cong (λ z → z + f + d + co + TxFeesOf tx + DonationsOf tx)
              (split-balance u (SpendInputsOf tx)) ⟩
    csᶜ + cs + f + d + co + TxFeesOf tx + DonationsOf tx
      ≡⟨ shuffle csᶜ cs f d co (TxFeesOf tx) (DonationsOf tx) ⟩
    csᶜ + co + (f + TxFeesOf tx) + (d + DonationsOf tx) + cs
      ≡˘⟨ cong  (λ z → z + (f + TxFeesOf tx) + (d + DonationsOf tx) + cs)
          (balance-∪ (u ∣ SpendInputsOf tx ᶜ) (outs tx) (outs-disjoint tx {u} fresh)) ⟩
    cbalance ((u ∣ SpendInputsOf tx ᶜ) ∪ˡ outs tx)  + (f + TxFeesOf tx)
                                                    + (d + DonationsOf tx) + cs
      ∎
    where
    cs csᶜ co : Coin
    cs = cbalance (u ∣ SpendInputsOf tx )
    csᶜ = cbalance (u ∣ SpendInputsOf tx ᶜ)
    co = cbalance (outs tx)
    shuffle : ∀ a b f d o tf td
      → a +ᴺ b +ᴺ f +ᴺ d +ᴺ o +ᴺ tf +ᴺ td ≡ a +ᴺ o +ᴺ (f +ᴺ tf) +ᴺ (d +ᴺ td) +ᴺ b
    shuffle = solve-∀
```

### <span class="AgdaFunction">UTXO-spend-agree</span>: the top-level spent balance against the snapshot

The top-level analogue of `subutxo-spend-agree`{.AgdaFunction}: premises 2 and 3
of the `UTXO`{.AgdaDatatype} rule place the spend inputs in both domains, so a
running UTxO that agrees with the snapshot assigns them the same balance.

```agda
  UTXO-spend-agree : {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁ → UTxOOf s₀ AgreesWith UTxOOf Γ
    → cbalance (UTxOOf s₀ ∣ SpendInputsOf tx) ≡ cbalance (UTxOOf Γ ∣ SpendInputsOf tx)
  UTXO-spend-agree {s₀} (UTXO (_ , spend∪coll⊆snapshot , _ , spend⊆running , _)) agree =
    agrees-cbalance (UTxOOf Γ) (UTxOOf s₀) agree (spend∪coll⊆snapshot ∘ ∪-⊆ˡ) spend⊆running
```

### `UTXO-batch-balance-coin`

The coin projection of the batch balance premise (premise 8 of the
`UTXO`{.AgdaDatatype} rule), in the closed form consumed by
`LEDGER-pov`{.AgdaFunction}.  As laid out in *Why the proof splits in two*, the
step hypothesis serves only to extract premises 7 (top-level no-mint) and 8
(the balance): neither `s₀` nor `s₁` occurs in the conclusion, whose two sides
are sums computed from the environment's pre-batch snapshot and the transaction
alone.  Given the premises, the proof is pure substitution: apply
`cong coin` to premise 8 and rewrite each side with the Layer-3 equations
(the sub-level no-mint facts are the `noMintingSubTxs`{.AgdaFunction} hypothesis).

```agda
  UTXO-batch-balance-coin : {s₀ s₁ : UTxOState}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → noMintingSubTxs tx
    →  cbalance (UTxOOf Γ ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
       + sum (map  (λ stx →  cbalance (UTxOOf Γ ∣ SpendInputsOf stx)
                             + getCoin (WithdrawalsOf stx))
                   (SubTransactionsOf tx))
       + refundCertDeposits (PParamsOf Γ) (allDCerts tx)
       ≡  cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
          + getCoin (DirectDepositsOf tx)
          + sum (map  (λ stx →  cbalance (outs stx) + DonationsOf stx
                                + getCoin (DirectDepositsOf stx))
                      (SubTransactionsOf tx))
          + newCertDeposits (PParamsOf Γ) (dom (PoolsOf (PStateOf Γ))) (allDCerts tx)
          + (  govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf tx)
               + sum (map  (λ stx → govProposalsDeposits  (PParamsOf Γ)
                                                          (ListOfGovProposalsOf stx))
                           (SubTransactionsOf tx)) )
  UTXO-batch-balance-coin
    (UTXO (_ , _ , _ , _ , _ , _ , noMintTop , batchBal , _)) noMintSubTx = begin
    cbalance (u ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
      + sum (map  (λ stx → cbalance (u ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                  (SubTransactionsOf tx))
      + refundCertDeposits pp (allDCerts tx)
      ≡˘⟨ coin-consumedBatch pp tx u noMintTop noMintSubTx ⟩
    coin (consumedBatch pp tx u)
      ≡⟨ cong coin batchBal ⟩
    coin (producedBatch pp (PoolsOf (PStateOf Γ)) tx)
      ≡⟨ coin-producedBatch pp (PoolsOf (PStateOf Γ)) tx ⟩
    cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
      + sum (map  (λ stx →  cbalance (outs stx) + DonationsOf stx
                            + getCoin (DirectDepositsOf stx))
                  (SubTransactionsOf tx))
      + newCertDeposits pp (dom (PoolsOf (PStateOf Γ))) (allDCerts tx)
      + ( govProposalsDeposits pp (ListOfGovProposalsOf tx)
        + sum (map  (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx))
                    (SubTransactionsOf tx)) )
      ∎
      where
      pp : PParams
      pp = PParamsOf Γ
      u : UTxO
      u = UTxOOf Γ
```
