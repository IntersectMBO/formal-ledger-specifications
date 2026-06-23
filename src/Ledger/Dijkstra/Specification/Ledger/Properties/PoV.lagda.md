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
    + coinFromDeposits (CertStateOf s)
    + coinFromGovDeposit (GovStateOf s)

that is, UTxO coin, rewards balance, the `DState`/`PState`/`GState` deposit pots
(`coinFromDeposits`{.AgdaFunction}), and the governance-action deposits
(`coinFromGovDeposit`{.AgdaFunction}).

> **🔖 Status (2026-06-23) — top-down stubbing done; deep chain deferred to #1189.**
> This session made #1203 faithful to the top-down plan and applied the unambiguous,
> additive corrections; the deep batch-balance arithmetic is **deliberately deferred**
> (it depends on the `Utxo`/`Utxow`-PoV interface that lives in #1189, not on this
> branch).  Concretely:
>
> **Done.**
> - Certs-PoV provider modules removed; `CERTS-pov` is now a module parameter of both
>   `ENTITIES-PoV` and `LEDGER-PoV` (discharged later by #1210), alongside the new
>   `CERTS-coinFromDeposits-updateCertDeposits` parameter.
> - `coinFromDeposit` → `coinFromDeposits` throughout (the spec renamed it).
> - The governance-deposit parameters `rmOrphanDRepVotes-coinFromGovDeposit` and
>   `GOVS-coinFromGovDeposit` are declared, and the fourth `getCoin` summand
>   `coinFromGovDeposit` is threaded into the `LedgerState`-level totals (`LEDGER-I`
>   and the `LEDGER-V` `where`-definitions `G₀`, `G'`).
>
> **Deferred (this file does not yet typecheck — it is a WIP draft, not on the build
> path).** The `LEDGER-V` equational chain still references the #1189 `Utxo`/`Utxow`-PoV
> interface that is **not defined on this branch**: `calculateDepositsChange`,
> `DepositsChange`, `DepositsChangeTopOf`/`DepositsChangeSubOf`, `UTXOW-batch-balance-coin`,
> `UTXOW-V-mechanical`, and `utxow-pov-invalid`.  Completing the chain additionally needs
> the gov-deposit re-derivation: restate `UTXOW-batch-balance-coin` with
> `govProposalsDeposits` on the **produced** side (post-Finding-A) and add a
> `SUBLEDGERS-gov-coin` induction threading `coinFromGovDeposit` through `SUBLEDGERS`,
> so the gov-deposit growth cancels the produced-side `govProposalsDeposits`.  Do that
> once #1189 provides the real interface (or parameterize over it explicitly).
>
> The two detailed notes below are retained for the technical interface description.

> **🔖 Status (2026-06-16) — chain re-derivation needed after the PoV soundness fixes.**
> The equational chain below predates two corrections to the spec and does **not** yet
> typecheck against current master:
>
> 1. **`getCoin` gained a fourth summand** `coinFromGovDeposit (GovStateOf s)`
>    (post-#1214 gov-action deposits live in `GovActionState.deposit`, not
>    `GState.deposits`).  The chain still models the old three-summand total and uses
>    the now-renamed `coinFromDeposit` (→ `coinFromDeposits`).  Every
>    `LedgerState`-level total in `LEDGER-pov` (both `LEDGER-I` and `LEDGER-V`) must
>    thread the new gov summand `G`, with `G₀ = coinFromGovDeposit govState₀` and
>    `G' = coinFromGovDeposit (rmOrphanDRepVotes certState₂ govState₂)`.
> 2. **Deposit sides were swapped** in `Utxo` to match Conway: `newCertDeposits` and
>    `govProposalsDeposits` are now on **produced**, `refundCertDeposits` on
>    **consumed**.  The batch-balance projection consumed by the chain (and the
>    `UTXOW-batch-balance-coin` parameter) must be updated to the new sides.
>
> This adds two module parameters — to be discharged by a future `Gov.Properties.PoV`,
> alongside the existing ApplyToRewards / UTXOW / batch-invariant groups:
>
> - `rmOrphanDRepVotes-coinFromGovDeposit :`
>     `∀ cs g → coinFromGovDeposit (rmOrphanDRepVotes cs g) ≡ coinFromGovDeposit g`
>     (`rmOrphanDRepVotes` only rewrites `votes.gvDRep`, never `deposit`).
> - `GOVS-coinFromGovDeposit :` a top-level **and** per-sub-tx GOVS accounting fact,
>     `coinFromGovDeposit govSt′ ≡ coinFromGovDeposit govSt + govProposalsDeposits pp props`,
>     relating gov-deposit growth to the `govProposalsDeposits` now charged on the
>     produced side (`GOV-Propose` stores `deposit = pp .govActionDeposit`; no `GOV-Vote`
>     or epoch-boundary removal changes a deposit within `LEDGER`).
>
> `posNeg-deposits` (below) is a pure `posPart`/`negPart` cancellation, unaffected by
> both fixes; it stands as proved.

> **🔖 Resume here — make this PR faithful to the top-down plan (remove the provider lemmas).**
> Goal: this PR should prove only `LEDGER-pov`, with the Certs-PoV and Utxo/Utxow-PoV
> facts left as **module parameters (stubs)**, discharged later by #1210 and #1189.
> Do this in a fresh session **with the Agda toolchain available** (merge this branch's
> tooling onto the working branch first so the SessionStart hook runs; then verify every
> edit with `/agda-typecheck`, i.e. `nix develop --command agda <file>`).
>
> Dependency chain today: `Ledger.Properties.PoV` → `Entities.Properties.PoV` →
> `Certs.Properties.PoV` → `Certs.Properties.PoVLemmas`.
>
> 1. **Capture exact signatures first** (before deleting): copy the types of `CERTS-pov`
>    and `CERTS-coinFromDeposits-updateCertDeposits` from
>    `Certs/Properties/PoV.lagda.md` — they become the parameter types below.
> 2. **Delete** the Certs-PoV provider modules (this is #1210's work):
>    `Certs/Properties/PoV.lagda.md` and `Certs/Properties/PoVLemmas.lagda.md`.
> 3. **`Certs/Properties.lagda.md`**: drop the two `open import … Certs.Properties.PoVLemmas`
>    / `… Certs.Properties.PoV` lines.
> 4. **`Entities/Properties/PoV.lagda.md`**: remove `open import … Certs.Properties.PoV gs`;
>    add `CERTS-pov` (the per-`CERTS`-step preservation fact, used at the `CERTS-pov certsStep`
>    call) as a parameter of the `ENTITIES-PoV` module. Keep the `ApplyToRewardsPoV` import
>    and everything else — `ENTITIES-pov` itself stays and is still consumed by `LEDGER-pov`.
> 5. **`Ledger/Properties/PoV.lagda.md`** (this file): give the `LEDGER-PoV` module a
>    `CERTS-pov` parameter (Certs-PoV stub, discharged by #1210) and thread it into the
>    `open ENTITIES-PoV …` instantiation. When the `LEDGER-V` chain is finished, also add
>    `CERTS-coinFromDeposits-updateCertDeposits` as a parameter (the closed-form coin
>    equation #1210 provides).
> 6. **Utxo/Utxow-PoV**: nothing to remove — those modules are not on this branch (they
>    live in #1189). The skeleton already parameterizes the UTxO facts (`balance-∪`,
>    `split-balance`, `subutxow-step-coin`, `utxo₁-tx-spend-eq`, `fresh-top-tx-id`, …) and
>    keeps the `Utxo/Utxow.Properties.PoV` imports commented out. Leave as is.
> 7. **Conway-side touches** in this PR (`Conway/Conformance/Properties.lagda.md`, the
>    Conway `Certs`/`Ledger` PoV files, `Conway/…/Utxo/Properties/GenMinSpend.lagda.md`):
>    check whether they were only needed to support the now-removed Dijkstra Certs-PoV
>    modules; if so, revert them. Confirm with a typecheck.
> 8. Don't forget the **separate** re-derivation work noted above (thread the
>    `coinFromGovDeposit` summand and the new gov-deposit parameters
>    `rmOrphanDRepVotes-coinFromGovDeposit` / `GOVS-coinFromGovDeposit`); the two efforts
>    touch the same module parameter block, so it's natural to do them together.

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
open import Data.Integer using (ℤ; 0ℤ; _-_; _⊖_)
open import Data.Integer.Properties using ([1+m]⊖[1+n]≡m⊖n) renaming (+-comm to +ℤ-comm)
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

-- The right injections of a list of sums.  Used (at `GovVote ⊎ GovProposal`) to
-- extract the proposals from a mixed `GOVS` input list for the
-- `GOVS-coinFromGovDeposit` gov-deposit accounting parameter below.  Stated generically
-- to avoid the doubly-imported `GovVote`/`GovProposal` names.
proposalsOf : ∀ {A B : Type} → List (A ⊎ B) → List B
proposalsOf []            = []
proposalsOf (inj₁ _ ∷ xs) = proposalsOf xs
proposalsOf (inj₂ p ∷ xs) = p ∷ proposalsOf xs


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

  -- Certs-PoV stubs (discharged later by #1210).  These were the `Certs.Properties.PoV`
  -- provider lemmas; under the top-down plan they are module parameters here.
  ( CERTS-pov : ∀ {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → getCoin s ≡ getCoin s' )
  -- Closed-form cert-deposit coin equation: the post-`CERTS` `CertState` has the same
  -- `coinFromDeposits` as the closed-form `updateCertDeposits` applied to the initial
  -- state and the cert list.  (#1210 discharges this using the ledger-level
  -- pool-deposit alignment invariant; stated premise-free for the LEDGER-pov consumer.)
  ( CERTS-coinFromDeposits-updateCertDeposits :
      ∀ {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
      → coinFromDeposits s' ≡ coinFromDeposits (updateCertDeposits (PParamsOf Γ) s dCerts) )

  -- Governance-deposit accounting (to be discharged by a future `Gov.Properties.PoV`).
  -- `rmOrphanDRepVotes` only rewrites `votes.gvDRep`, never `GovActionState.deposit`,
  -- so it leaves `coinFromGovDeposit` unchanged.
  ( rmOrphanDRepVotes-coinFromGovDeposit :
      ∀ (cs : CertState) (g : GovState)
      → coinFromGovDeposit (rmOrphanDRepVotes cs g) ≡ coinFromGovDeposit g )
  -- Per-`GOVS`-step gov-deposit growth equals the produced-side `govProposalsDeposits`
  -- of the step's proposals (`GOV-Propose` stores `deposit = pp .govActionDeposit`; no
  -- `GOV-Vote` changes a deposit).  Provisional signature — to be finalized against the
  -- batch-balance interface during the deferred deep re-derivation.
  ( GOVS-coinFromGovDeposit :
      ∀ {Γ : GovEnv} {govSt govSt′ : GovState} {props}
      → Γ ⊢ govSt ⇀⦇ props ,GOVS⦈ govSt′
      → coinFromGovDeposit govSt′
        ≡ coinFromGovDeposit govSt + govProposalsDeposits (PParamsOf Γ) (proposalsOf props) )

  -- Utxo/Utxow-PoV facts (discharged later by #1186; module-parameter stubs).
  -- Invalid top-level tx: the UTXOW step preserves UTxO coin.
  ( utxow-pov-invalid : ∀ {Γ' : UTxOEnv} {s₀ s₁ : UTxOState}
      → Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
      → IsValidFlagOf tx ≡ false
      → getCoin s₀ ≡ getCoin s₁ )
  -- Valid top-level tx, mechanical single-tx coin equation (spend inputs resolved
  -- against the running UTxO; TxId freshness lets `outs tx` split off cleanly).
  ( UTXOW-V-mechanical : ∀ {Γ' : UTxOEnv} {s₀ s₁ : UTxOState}
      → Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
      → IsValidFlagOf tx ≡ true
      → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
      → getCoin s₀ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
        ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf tx) )
  -- The batch balance `consumedBatch ≡ producedBatch`, coin-projected, with the
  -- minted term dropped (no ADA minting) and the cert-deposit change rephrased to
  -- the chain's top/sub two-level `posPart`/`negPart` form.  #1186 discharges this
  -- from the spec premise at the actual post-SUBLEDGERS/ENTITIES cert states `cs₁`,
  -- `cs₂` (via `posNeg-deposits` + `CERTS-coinFromDeposits-updateCertDeposits`).  The
  -- governance-deposit summands (`govProposalsDeposits`, top and per-sub) sit on the
  -- produced side, matching `producedTx`.
  ( UTXOW-batch-balance-coin : ∀ {Γ' : UTxOEnv} {s₀ s₁ : UTxOState} {cs₁ cs₂ : CertState}
      → Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
      → cbalance (UTxOOf Γ' ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
          + negPart (coinFromDeposits cs₂ ⊖ coinFromDeposits cs₁)
          + sum (map (λ stx → cbalance (UTxOOf Γ' ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                     (SubTransactionsOf tx))
          + negPart (coinFromDeposits cs₁ ⊖ coinFromDeposits (CertStateOf Γ'))
        ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
          + posPart (coinFromDeposits cs₂ ⊖ coinFromDeposits cs₁)
          + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                     (SubTransactionsOf tx))
          + posPart (coinFromDeposits cs₁ ⊖ coinFromDeposits (CertStateOf Γ'))
          + ( govProposalsDeposits (PParamsOf Γ') (ListOfGovProposalsOf tx)
            + sum (map (λ stx → govProposalsDeposits (PParamsOf Γ') (ListOfGovProposalsOf stx))
                       (SubTransactionsOf tx)) ) )
  where

  open ENTITIES-PoV ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique CERTS-pov
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

## Deposit-change interface

The cert-deposit change is the integer delta of `coinFromDeposits`{.AgdaFunction} at
the top and sub levels.  The #1185/#1186 batch-balance machinery exposes these; here
the `LEDGER-V` chain only needs the `coinFromDeposits`-difference form (against which
the `UTXOW-batch-balance-coin`{.AgdaFunction} parameter is phrased), so we define it
directly.

```agda
  DepositsChange : Type
  DepositsChange = ℤ × ℤ            -- (top-level Δ , sub-level Δ)

  DepositsChangeTopOf : DepositsChange → ℤ
  DepositsChangeTopOf = proj₁

  DepositsChangeSubOf : DepositsChange → ℤ
  DepositsChangeSubOf = proj₂

  calculateDepositsChange : CertState → CertState → CertState → DepositsChange
  calculateDepositsChange cs₀ cs₁ cs₂ =
      (coinFromDeposits cs₂ ⊖ coinFromDeposits cs₁)
    , (coinFromDeposits cs₁ ⊖ coinFromDeposits cs₀)

  -- ℕ-level posPart/negPart cancellation: `b + posPart (a ⊖ b)` and
  -- `a + negPart (a ⊖ b)` both equal `a ⊔ b`.
  posPart-negPart-sym : ∀ (a b : ℕ) → b + posPart (a ⊖ b) ≡ a + negPart (a ⊖ b)
  posPart-negPart-sym a       zero    = sym (+-identityʳ a)
  posPart-negPart-sym zero    (suc b) = +-identityʳ (suc b)
  posPart-negPart-sym (suc a) (suc b) = begin
      suc b + posPart (suc a ⊖ suc b)  ≡⟨ cong (λ z → suc b + posPart z) ([1+m]⊖[1+n]≡m⊖n a b) ⟩
      suc b + posPart (a ⊖ b)          ≡⟨ cong suc (posPart-negPart-sym a b) ⟩
      suc a + negPart (a ⊖ b)          ≡˘⟨ cong (λ z → suc a + negPart z) ([1+m]⊖[1+n]≡m⊖n a b) ⟩
      suc a + negPart (suc a ⊖ suc b)  ∎
    where open ≡-Reasoning
```

## `posNeg-deposits`

The deposit accounting identity used in the `LEDGER-V` chain.  Both sides express the
same quantity (the sum of deposits across the batch), just rephrased to expose
`posPart` vs `negPart` of the top-level and sub-level deposit changes.

```agda
  posNeg-deposits : (cs₀ cs₁ cs₂ : CertState)
    → let dc = calculateDepositsChange cs₀ cs₁ cs₂ in
      coinFromDeposits cs₀ + posPart (DepositsChangeTopOf dc) + posPart (DepositsChangeSubOf dc)
      ≡ coinFromDeposits cs₂ + negPart (DepositsChangeTopOf dc) + negPart (DepositsChangeSubOf dc)
  posNeg-deposits cs₀ cs₁ cs₂ = begin
      coin₀ + pt + psp   ≡⟨ swap-right coin₀ pt psp ⟩
      coin₀ + psp + pt   ≡⟨ cong (_+ pt) (posPart-negPart-sym coin₁ coin₀) ⟩
      coin₁ + ns  + pt   ≡⟨ swap-right coin₁ ns pt ⟩
      coin₁ + pt  + ns   ≡⟨ cong (_+ ns) (posPart-negPart-sym coin₂ coin₁) ⟩
      coin₂ + nt  + ns   ∎
    where
    coin₀ = coinFromDeposits cs₀
    coin₁ = coinFromDeposits cs₁
    coin₂ = coinFromDeposits cs₂
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
    netIds : (∀[ a ∈ dom (WithdrawalsOf stx)    ] NetworkIdOf a ≡ NetworkId)
           × (∀[ a ∈ dom (DirectDepositsOf stx) ] NetworkIdOf a ≡ NetworkId)
    netIds = extract-netId subutxowStep
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

    wd-netId = proj₁ netIds
    dd-netId = proj₂ netIds

    ih : getCoin (CertStateOf s₁) + sum (map ddwl sigs)
         ≡ getCoin (CertStateOf sₙ) + sum (map wdrwl sigs)
    ih = SUBLEDGERS-certs-pov isV rest
```

## `SUBLEDGERS-gov-coin`

Induct over `SUBLEDGERS`, threading the per-`GOVS` gov-deposit growth: each
`SUBLEDGER-V` step grows `coinFromGovDeposit`{.AgdaFunction} by the
`govProposalsDeposits`{.AgdaFunction} of the sub-transaction's proposals (via the
`GOVS-coinFromGovDeposit`{.AgdaFunction} parameter applied to the step's `GOVS`
premise).  `SUBLEDGER-I` is ruled out by the top-level validity flag.

```agda
  -- `proposalsOf (GovProposals+Votes t)` recovers exactly the proposals of `t`.
  proposalsOf-Proposals+Votes : ∀ {ℓ} (t : Tx ℓ)
    → proposalsOf (GovProposals+Votes t) ≡ ListOfGovProposalsOf t
  proposalsOf-Proposals+Votes t = go (ListOfGovProposalsOf t) (ListOfGovVotesOf t)
    where
    drop-votes : ∀ {A B : Type} (vs : List A)
      → proposalsOf {A = A} {B = B} (map inj₁ vs) ≡ []
    drop-votes []       = refl
    drop-votes (_ ∷ vs) = drop-votes vs
    go : ∀ {A B : Type} (ps : List B) (vs : List A)
       → proposalsOf (map inj₂ ps ++ map inj₁ vs) ≡ ps
    go []       vs = drop-votes vs
    go (p ∷ ps) vs = cong (p ∷_) (go ps vs)

  SUBLEDGERS-gov-coin : ∀ {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → coinFromGovDeposit (GovStateOf s₁)
      ≡ coinFromGovDeposit (GovStateOf s₀)
        + sum (map (λ stx → govProposalsDeposits (SubLedgerEnv.pparams Γ) (ListOfGovProposalsOf stx)) stxs)

  SUBLEDGERS-gov-coin _ (BS-base Id-nop) = sym (+-identityʳ _)

  SUBLEDGERS-gov-coin isV (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())

  SUBLEDGERS-gov-coin {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (_ , _ , _ , govStep)) rest) =
    begin
      coinFromGovDeposit (GovStateOf sₙ)
        ≡⟨ ih ⟩
      coinFromGovDeposit (GovStateOf s₁) + g-sum
        ≡⟨ cong (_+ g-sum) step-gov ⟩
      coinFromGovDeposit (GovStateOf s₀) + g-stx + g-sum
        ≡⟨ +-assoc (coinFromGovDeposit (GovStateOf s₀)) g-stx g-sum ⟩
      coinFromGovDeposit (GovStateOf s₀) + (g-stx + g-sum)
        ∎
    where
    pp = SubLedgerEnv.pparams Γ
    g-stx = govProposalsDeposits pp (ListOfGovProposalsOf stx)
    g-sum = sum (map (λ stx → govProposalsDeposits pp (ListOfGovProposalsOf stx)) sigs)

    step-gov : coinFromGovDeposit (GovStateOf s₁) ≡ coinFromGovDeposit (GovStateOf s₀) + g-stx
    step-gov = trans (GOVS-coinFromGovDeposit govStep)
                     (cong (λ ps → coinFromGovDeposit (GovStateOf s₀) + govProposalsDeposits pp ps)
                           (proposalsOf-Proposals+Votes stx))

    ih : coinFromGovDeposit (GovStateOf sₙ) ≡ coinFromGovDeposit (GovStateOf s₁) + g-sum
    ih = SUBLEDGERS-gov-coin isV rest
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
    cong (λ u → u + getCoin (CertStateOf s) + coinFromDeposits (CertStateOf s)
                  + coinFromGovDeposit (GovStateOf s))
         (utxow-pov-invalid utxoStep invalid)
```

### `LEDGER-V` case (valid transaction)

The proof is a single equational chain over `LedgerState` coin totals.  Setting
`U = getCoin (UTxOState)`, `R = rewardsBalance`, `D = coinFromDeposits`,
`G = coinFromGovDeposit`, and `allDirectDeps` / `allWdrls` for the top-level and
sub-level totals of direct deposits and withdrawals respectively, the goal
`getCoin s ≡ getCoin s'` is

    U₀ + R₀ + D₀ + G₀  ≡  U₂ + R₂ + D₂ + G'

where `G₀ = coinFromGovDeposit govState₀` and — since the final `LEDGER-V` `GovState`
is `rmOrphanDRepVotes certState₂ govState₂` and `rmOrphanDRepVotes` preserves
`coinFromGovDeposit` (parameter `rmOrphanDRepVotes-coinFromGovDeposit`) —
`G' = coinFromGovDeposit govState₂`.

> **WIP (deferred to #1189).** The equational body below is the pre-gov-summand draft:
> it cancels `allDirectDeps` to deliver the *three-summand* `U₀+R₀+D₀ ≡ U₂+R₂+D₂`, and
> it references the `Utxo`/`Utxow`-PoV interface (`calculateDepositsChange`,
> `DepositsChange`, `UTXOW-batch-balance-coin`, `UTXOW-V-mechanical`,
> `utxow-pov-invalid`) that is **not on this branch**.  Finishing the proof means
> extending the chain with the `G`-summand accounting: `GOVS-coinFromGovDeposit` ties
> `G' − G₀` to the produced-side `govProposalsDeposits`, balanced through a
> `SUBLEDGERS-gov-coin` induction and a restated `UTXOW-batch-balance-coin`.  See the
> top-of-file status note.

```agda
  LEDGER-pov {Γ} {s}
    (LEDGER-V {utxoState₁ = us₁} {govState₁ = govSt₁} {certState₁ = cs₁}
              {certState₂ = cs₂} {govState₂ = govSt₂} {utxoState₂ = us₂}
              (valid , subStep , entitiesStep , govStep , utxoStep)) =
    begin
      U₀ + R₀ + D₀ + G₀
        ≡⟨ cong (_+ G₀) three-summand ⟩
      U₂ + R₂ + D₂ + totGov + G₀
        ≡⟨ +-assoc (U₂ + R₂ + D₂) totGov G₀ ⟩
      U₂ + R₂ + D₂ + (totGov + G₀)
        ≡⟨ cong (U₂ + R₂ + D₂ +_) gov-acc ⟩
      U₂ + R₂ + D₂ + G'
        ∎
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
      D₀ = coinFromDeposits (CertStateOf s)
      D₂ = coinFromDeposits cs₂

      R₀ R₂ : Coin
      R₀ = rewardsBalance (DStateOf (CertStateOf s))
      R₂ = rewardsBalance (DStateOf cs₂)

      -- Governance-deposit summands of the LedgerState totals.  G₀ is the initial
      -- GovState's deposit; G' is the final state's (`rmOrphanDRepVotes cs₂ govSt₂`),
      -- which `rmOrphanDRepVotes-coinFromGovDeposit` collapses to `coinFromGovDeposit
      -- govSt₂`.  (Consumed by the deferred G-summand re-derivation; see status note.)
      G₀ G' : Coin
      G₀ = coinFromGovDeposit (GovStateOf s)
      G' = coinFromGovDeposit (rmOrphanDRepVotes cs₂ govSt₂)

      subDirectDepsCoin : Coin
      subDirectDepsCoin = sum (map ddwl (SubTransactionsOf tx))

      allDirectDeps : Coin
      allDirectDeps = getCoin (DirectDepositsOf tx) + subDirectDepsCoin

      subWdrlsCoin : Coin
      subWdrlsCoin = sum (map wdrwl (SubTransactionsOf tx))

      allWdrls : Coin
      allWdrls = getCoin (WithdrawalsOf tx) + subWdrlsCoin

      -- Total governance-action deposits introduced by the batch (top + per-sub),
      -- matching the `govProposalsDeposits` summands on the produced side of the
      -- batch balance and the gov-deposit growth `G' − G₀`.
      topGov subGovSum totGov : Coin
      topGov    = govProposalsDeposits (LedgerEnv.pparams Γ) (ListOfGovProposalsOf tx)
      subGovSum = sum (map (λ stx → govProposalsDeposits (LedgerEnv.pparams Γ) (ListOfGovProposalsOf stx))
                           (SubTransactionsOf tx))
      totGov    = topGov + subGovSum

      -- Pure +-monoid rearrangements for threading the gov summand.
      mid-extract : ∀ a b c d → a + (b + d) + c ≡ a + b + c + d
      mid-extract a b c d = trans (cong (_+ c) (sym (+-assoc a b d)))
                                  (swap-right (a + b) d c)

      rearr3 : ∀ a b c → a + b + c ≡ c + b + a
      rearr3 a b c = begin
        a + b + c   ≡⟨ swap-right a b c ⟩
        a + c + b   ≡⟨ cong (_+ b) (+-comm a c) ⟩
        c + a + b   ≡⟨ swap-right c a b ⟩
        c + b + a   ∎

      outer-rearr : ∀ u a d g r → u + a + d + g + r ≡ u + r + d + g + a
      outer-rearr u a d g r = begin
        u + a + d + g + r   ≡⟨ swap-right (u + a + d) g r ⟩
        u + a + d + r + g   ≡⟨ cong (_+ g) (swap-right (u + a) d r) ⟩
        u + a + r + d + g   ≡⟨ cong (λ x → x + d + g) (swap-right u a r) ⟩
        u + r + a + d + g   ≡⟨ cong (_+ g) (swap-right (u + r) a d) ⟩
        u + r + d + a + g   ≡⟨ swap-right (u + r + d) a g ⟩
        u + r + d + g + a   ∎
```

Extract the two top-level `NetworkId` witnesses from the `UTXOW` step:

```agda
      extract-utxo-netId : ∀ {Γ' s₀' s₁'} → Γ' ⊢ s₀' ⇀⦇ tx ,UTXOW⦈ s₁'
        → (∀[ a ∈ dom (WithdrawalsOf tx)    ] NetworkIdOf a ≡ NetworkId)
        × (∀[ a ∈ dom (DirectDepositsOf tx) ] NetworkIdOf a ≡ NetworkId)
      extract-utxo-netId
        (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , wd-netId , dd-netId , _))) =
          wd-netId , dd-netId
      extract-utxo-netId
        (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _
          (UTXO (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , wd-netId , dd-netId , _))) =
          wd-netId , dd-netId

      top-netIds : (∀[ a ∈ dom (WithdrawalsOf tx)    ] NetworkIdOf a ≡ NetworkId)
                 × (∀[ a ∈ dom (DirectDepositsOf tx) ] NetworkIdOf a ≡ NetworkId)
      top-netIds = extract-utxo-netId utxoStep

      top-wd-netId = proj₁ top-netIds
      top-dd-netId = proj₂ top-netIds
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
             + allDirectDeps + Psub + posPart dct + posPart dcs + totGov
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
            ≡⟨ UTXOW-batch-balance-coin {cs₁ = cs₁} {cs₂ = cs₂} utxoStep ⟩
          O + F + DN + DDtop + posPart dct + PsubDD + posPart dcs + totGov
            ≡⟨ cong (λ x → O + F + DN + DDtop + posPart dct + x + posPart dcs + totGov)
                    (sum-map-+ (λ stx → cbalance (outs stx) + DonationsOf stx)
                               (λ stx → getCoin (DirectDepositsOf stx))
                               (SubTransactionsOf tx)) ⟩
          O + F + DN + DDtop + posPart dct + (Psub + subDirectDepsCoin) + posPart dcs + totGov
            ≡⟨ cong (_+ totGov) reshuffle-to-DD ⟩
          O + F + DN + allDirectDeps + Psub + posPart dct + posPart dcs + totGov
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
      LHS+E≡RHS+E : U₀ + allWdrls + D₀ + E ≡ U₂ + allDirectDeps + D₂ + totGov + E
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
        U₁ + (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs + totGov) + D₂
          ≡⟨ mid-extract U₁ (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs) D₂ totGov ⟩
        U₁ + (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs) + D₂ + totGov
          ≡⟨ cong (_+ totGov) (arithmetic-4 U₁ (cbalance (outs tx)) (TxFeesOf tx)) ⟩
        U₁ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub + posPart dct + posPart dcs + D₂ + totGov
          ≡⟨ cong (_+ totGov) (cong (λ x → x + allDirectDeps + Psub + posPart dct + posPart dcs + D₂) mech) ⟩
        U₂ + Ctop + allDirectDeps + Psub + posPart dct + posPart dcs + D₂ + totGov
          ≡⟨ cong (_+ totGov) (arithmetic-5 U₂ Ctop allDirectDeps) ⟩
        U₂ + allDirectDeps + D₂ + Ctop + Psub + posPart dct + posPart dcs + totGov
          ≡˘⟨ cong (_+ totGov) (arithmetic-1 U₂ allDirectDeps D₂) ⟩
        U₂ + allDirectDeps + D₂ + E + totGov
          ≡⟨ swap-right (U₂ + allDirectDeps + D₂) E totGov ⟩
        U₂ + allDirectDeps + D₂ + totGov + E
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
      step-ii : U₀ + allWdrls + D₀ + R₂ ≡ U₂ + allDirectDeps + D₂ + totGov + R₂
      step-ii = cong (_+ R₂)
                     (+-cancelʳ-≡ E (U₀ + allWdrls + D₀) (U₂ + allDirectDeps + D₂ + totGov)
                                  LHS+E≡RHS+E)

      -- The three LedgerState totals (UTxO + rewards + cert-deposits): the batch's
      -- gov deposits surface as `+ totGov` on the produced side.
      three-summand : U₀ + R₀ + D₀ ≡ U₂ + R₂ + D₂ + totGov
      three-summand =
        +-cancelʳ-≡ allDirectDeps (U₀ + R₀ + D₀) (U₂ + R₂ + D₂ + totGov)
          (begin
            U₀ + R₀ + D₀ + allDirectDeps           ≡⟨ step-i ⟩
            U₀ + R₂ + allWdrls + D₀                ≡⟨ abcd-to-acdb U₀ R₂ allWdrls D₀ ⟩
            U₀ + allWdrls + D₀ + R₂                ≡⟨ step-ii ⟩
            U₂ + allDirectDeps + D₂ + totGov + R₂  ≡⟨ outer-rearr U₂ allDirectDeps D₂ totGov R₂ ⟩
            U₂ + R₂ + D₂ + totGov + allDirectDeps  ∎)

      -- Gov-deposit accounting: the batch's total gov deposits exactly account for
      -- the growth from the initial gov state's deposit (G₀) to the final one (G').
      gov-acc : totGov + G₀ ≡ G'
      gov-acc =
        begin
          totGov + G₀                          ≡⟨ rearr3 topGov subGovSum G₀ ⟩
          G₀ + subGovSum + topGov              ≡˘⟨ cong (_+ topGov) (SUBLEDGERS-gov-coin valid subStep) ⟩
          coinFromGovDeposit govSt₁ + topGov   ≡˘⟨ govStep-eq ⟩
          coinFromGovDeposit govSt₂            ≡˘⟨ rmOrphanDRepVotes-coinFromGovDeposit cs₂ govSt₂ ⟩
          G'                                   ∎
        where
        govStep-eq : coinFromGovDeposit govSt₂ ≡ coinFromGovDeposit govSt₁ + topGov
        govStep-eq = trans (GOVS-coinFromGovDeposit govStep)
                           (cong (λ ps → coinFromGovDeposit govSt₁
                                       + govProposalsDeposits (LedgerEnv.pparams Γ) ps)
                                 (proposalsOf-Proposals+Votes tx))
```
