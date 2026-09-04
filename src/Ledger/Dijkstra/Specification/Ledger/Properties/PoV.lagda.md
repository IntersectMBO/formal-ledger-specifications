---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/PoV.lagda.md
---

# Properties of <span class="AgdaDatatype">LEDGER</span>: Preservation of Value {#thm:LEDGER-PoV}

This module proves the top-level preservation-of-value theorem for the Dijkstra
`LEDGER`{.AgdaDatatype} rule.  If

+  `Γ` is a ledger environment,
+  `tx` is a top-level transaction,
+  `s` and `s'` are ledger states related by `LEDGER`{.AgdaDatatype}, and
+  `s` satisfies `PoolDepositsRegistered`{.AgdaFunction} (see `Certs`{.AgdaModule}),

then `getCoin s ≡ getCoin s'`.

Recall from the `Ledger`{.AgdaModule} module that `getCoin (LedgerState)` is

    getCoin (UTxOStateOf s)
    + coinFromRewards (CertStateOf s)
    + coinFromDeposits (CertStateOf s)
    + coinFromGovDeposit (GovStateOf s)

The summands are the following:

+  **UTxO coin** (`getCoin (UTxOStateOf s)`);
+  **Rewards** (`coinFromRewards`{.AgdaFunction}): the `CertState`{.AgdaRecord} rewards balance;
+  **Cert deposits** (`coinFromDeposits`{.AgdaFunction}): deposits from `DState`{.AgdaRecord},
   `PState`{.AgdaRecord}, and `GState`{.AgdaRecord};
+  **Gov deposits** (`coinFromGovDeposit`{.AgdaFunction}): the governance-action deposits.

The two middle summands are exactly `getCoin (CertStateOf s)`.

The `LEDGER-V`{.AgdaInductiveConstructor} chain accounts for all four summands.
The cert deposits cancel via direct deposit cancellation (as explained in the
Proof Strategy section below), and the gov deposit growth `G' − G₀` is matched
against the produced-side `totGov`{.AgdaFunction} (by the gov deposit accounting
lemma, `gov-acc`).

The `PoolDepositsRegistered`{.AgdaFunction} hypothesis is necessary, not an artifact
of the proof.  Indeed, the batch balance charges `newCertDeposits`{.AgdaFunction}
against the set of registered pools, while `POOL-reg`{.AgdaInductiveConstructor}'s
left-biased update silently keeps a stale entry for an unregistered pool; at a
state with such an entry, a pool registration destroys the charged deposit and the
theorem is false.  On-chain states satisfy the hypothesis by construction.

## Proof Strategy

The Dijkstra `LEDGER-pov`{.AgdaFunction} does not decompose into independent
`SUBLEDGERS-pov`{.AgdaFunction} and `UTXOW-pov`{.AgdaFunction} pieces.  Individual
`SUBUTXO`{.AgdaDatatype} rules have no balance equation.  A balance equation is
only available at the batch level: `consumedBatch ≡ producedBatch`.
Subtransactions may individually transfer value between UTxO and
`CertState`{.AgdaRecord} without local balancing.

The `LEDGER-V`{.AgdaInductiveConstructor} proof is a single equational chain at
the `LedgerState`{.AgdaRecord} level.  Direct deposits appear on both the UTxO
side (via `producedBatch`{.AgdaFunction}) and on the `CertState`{.AgdaRecord} side
(via `applyDirectDeposits`{.AgdaFunction} inside `ENTITIES`{.AgdaDatatype}), and
cancel each other out.

Concretely, the proof composes four inductions over the `SUBLEDGERS`{.AgdaDatatype}
reflexive-transitive closure, plus one arithmetic identity.

+  `SUBLEDGERS-utxo-coin`{.AgdaFunction} inducts over the subtransaction list,
   applying the per-`SUBUTXOW`{.AgdaDatatype} coin equation
   (`subutxow-step-coin`{.AgdaFunction}) at each step.
+  `SUBLEDGERS-rewards-pov`{.AgdaFunction} composes per-sub-transaction
   `SUBENTITIES-pov`{.AgdaFunction} invocations (the rewards flow).
+  `SUBLEDGERS-deposits`{.AgdaFunction} (with `SUBLEDGERS-registered`{.AgdaFunction})
   telescopes the per-step closed-form deposit accounting into the batch-wide
   equation consumed by `bat'`{.AgdaFunction}.
+  `SUBLEDGERS-gov-coin`{.AgdaFunction} accumulates the per-`GOVS` gov-deposit growth.
+  `posNeg-deposits`{.AgdaFunction} relates the pre-/post-batch deposit totals to
   the `posPart`/`negPart` of `calculateDepositsChange`.

The `LEDGER-I`{.AgdaInductiveConstructor} case is straightforward; `certState` and
`govSt` are unchanged, `SUBLEDGERS`{.AgdaDatatype} is a no-op, and only the
`UTXOW`{.AgdaDatatype} step affects `getCoin`{.AgdaFunction}, which it preserves
via `utxow-pov-invalid`{.AgdaFunction}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.Nat.Base using () renaming (_+_ to infixl 6 _+ᴺ_)
open import Data.Nat.Properties
  using (+-comm; +-assoc; +-0-monoid; +-identityʳ; +-cancelʳ-≡)
open import Data.Nat.Tactic.RingSolver using (solve-∀; solve)
open import Data.Integer using (ℤ; _⊖_)
open import Data.Integer.Properties using ([1+m]⊖[1+n]≡m⊖n)
open import Data.List.Properties using (++-assoc)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Gov.Actions govStructure hiding (yes; no)
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs

open import Ledger.Dijkstra.Specification.Entities.Properties.PoV txs

open import Interface.STS

open RewardAddress
open ≡-Reasoning

instance
  _ = +-0-monoid

noMintingSubTxs : TopLevelTx → Type
noMintingSubTxs tx = ∀ stx → stx ∈ˡ SubTransactionsOf tx → coin (MintedValueOf stx) ≡ 0

-- proposalsOf is useful for extracting proposals from a mixed `GOVS` (`GovVote ⊎
-- GovProposal`) input list for the `GOVS-coinFromGovDeposit` gov-deposit accounting.
proposalsOf : {A B : Type} → List (A ⊎ B) → List B
proposalsOf []            = []
proposalsOf (inj₁ _ ∷ xs) = proposalsOf xs
proposalsOf (inj₂ p ∷ xs) = p ∷ proposalsOf xs

```
-->

## The <span class="AgdaModule">LEDGER-PoV</span> module

The supporting facts about the auxiliary transition systems are module parameters
which are organized into the following groups:

+  the set/map identities consumed by `ApplyToRewards-PoV`{.AgdaModule}
   (`∪ˡ-lookup-preserve`{.AgdaFunction}, `sum-map-proj₂≡getCoin`{.AgdaFunction},
   `setToList-Unique`{.AgdaFunction});
+  UTxO facts: coin equations for the
   `UTXOW`{.AgdaDatatype}/`SUBUTXOW`{.AgdaDatatype} steps and batch-wide
   freshness/disjointness invariants
   (`balance-∪`{.AgdaFunction}, `split-balance`{.AgdaFunction},
   `noMintTx`{.AgdaFunction}, `noMintSubTx`{.AgdaFunction},
   `outs-disjoint`{.AgdaFunction}, `subutxow-step-coin`{.AgdaFunction},
   `utxo₁-tx-spend-eq`{.AgdaFunction}, `fresh-top-tx-id`{.AgdaFunction},
   `utxow-pov-invalid`{.AgdaFunction}, `UTXOW-V-mechanical`{.AgdaFunction},
   `UTXOW-batch-balance-coin`{.AgdaFunction});
+  Cert facts: value accounting for a single `CERTS`{.AgdaDatatype} run
   (`CERTS-rewards-pov`{.AgdaFunction}, `CERTS-deposits-pov`{.AgdaFunction},
   `CERTS-deposits-registered`{.AgdaFunction}, `CERTS-new-thread`{.AgdaFunction},
   `refundCertDeposits-++`{.AgdaFunction});
+  Gov deposit facts (`rmOrphanDRepVotes-coinFromGovDeposit`{.AgdaFunction},
   `GOVS-coinFromGovDeposit`{.AgdaFunction});
+  no-truncation withdrawal bounds (`ENTITIES-wdrls-bounded`{.AgdaFunction},
   `SUBENTITIES-wdrls-bounded`{.AgdaFunction}); see
   `Entities.Properties.PoV`{.AgdaModule} for why these are not consequences of
   the rules' own premises.

```agda
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
  ( balance-∪ : {u u' : UTxO} → disjoint (dom u) (dom u')
              → cbalance (u ∪ˡ u') ≡ cbalance u + cbalance u' )
  ( split-balance : (u : UTxO) (keys : ℙ TxIn)
                  → cbalance u ≡ cbalance (u ∣ keys ᶜ) + cbalance (u ∣ keys) )
  ( noMintTx : coin (MintedValueOf tx) ≡ 0 )
  ( noMintSubTx : noMintingSubTxs tx )
  ( outs-disjoint : {u : UTxO}
                  → TxIdOf tx ∉ mapˢ proj₁ (dom u)
                  → disjoint (dom (u ∣ SpendInputsOf tx ᶜ)) (dom (outs tx)) )

  -- Per-step SUBUTXOW coin equation.  A local proof would require, in addition to
  -- `balance-∪` and `split-balance`, a batch-wide "spend inputs preserved" invariant
  -- and freshness of each sub-tx's TxId relative to the running UTxO.
  ( subutxow-step-coin : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
      → IsTopLevelValidFlagOf Γ ≡ true
      → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXOW⦈ s₁
      → getCoin s₀ + cbalance (outs stx) + DonationsOf stx
        ≡ getCoin s₁ + cbalance (UTxOOf Γ ∣ SpendInputsOf stx) )

  -- Batch-wide invariants on the post-SUBLEDGERS UTxO state.  Both follow from
  -- batch-wide input disjointness and TxId freshness, which the outer UTXO rule
  -- establishes at batch level, not per-step.
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

  -- Value accounting for a single CERTS run (consumed via `ENTITIES-PoV`):
  -- rewards preservation; closed-form deposit accounting (which needs the
  -- pool-deposit registration invariant, see `PoolDepositsRegistered` in `Certs`);
  -- preservation of that invariant; and the `newCertDeposits` split at a CERTS-run
  -- boundary, against the run's final pool set — what lets per-step accounting
  -- compose across a batch.
  ( CERTS-rewards-pov : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → coinFromRewards s ≡ coinFromRewards s' )

  ( CERTS-deposits-pov : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → PoolDepositsRegistered s
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
      → coinFromDeposits s  + newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) dCerts
      ≡ coinFromDeposits s' + refundCertDeposits (PParamsOf Γ) dCerts )

  ( CERTS-deposits-registered : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → PoolDepositsRegistered s
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
      → PoolDepositsRegistered s' )

  ( CERTS-new-thread : {Γ : CertEnv} {s s' : CertState} {dCerts : List DCert}
      → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s'
      → (ys : List DCert)
      → newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) (dCerts ++ ys)
      ≡ newCertDeposits (PParamsOf Γ) (dom (PoolsOf s)) dCerts
        + newCertDeposits (PParamsOf Γ) (dom (PoolsOf s')) ys )

  -- `refundCertDeposits` is a plain fold over the certificate list; it distributes
  -- over concatenation.
  ( refundCertDeposits-++ : (pp' : PParams) (xs ys : List DCert)
      → refundCertDeposits pp' (xs ++ ys)
      ≡ refundCertDeposits pp' xs + refundCertDeposits pp' ys )

  -- No-truncation withdrawal bounds; see `Entities.Properties.PoV` for why these
  -- are hypotheses rather than consequences of the rules' own premises.
  ( ENTITIES-wdrls-bounded : {Γe : EntitiesEnv} {cs cs' : CertState}
      → Γe ⊢ cs ⇀⦇ tx ,ENTITIES⦈ cs'
      → ∀[ (addr , amt) ∈ (WithdrawalsOf tx) ˢ ]
          amt ≤ maybe id 0 (lookupᵐ? (RewardsOf cs) (stake addr)) )
  ( SUBENTITIES-wdrls-bounded : {Γe : SubEntitiesEnv} {cs cs' : CertState} {stx : SubLevelTx}
      → Γe ⊢ cs ⇀⦇ stx ,SUBENTITIES⦈ cs'
      → ∀[ (addr , amt) ∈ (WithdrawalsOf stx) ˢ ]
          amt ≤ maybe id 0 (lookupᵐ? (RewardsOf cs) (stake addr)) )

  -- Governance-deposit accounting.  `rmOrphanDRepVotes` only rewrites
  -- `votes.gvDRep`, never `GovActionState.deposit`, so it leaves
  -- `coinFromGovDeposit` unchanged.
  ( rmOrphanDRepVotes-coinFromGovDeposit :
      (cs : CertState) (g : GovState)
      → coinFromGovDeposit (rmOrphanDRepVotes cs g) ≡ coinFromGovDeposit g )

  -- Per-`GOVS`-step gov-deposit growth equals `govProposalsDeposits` of step's
  -- proposals.  Used by `SUBLEDGERS-gov-coin` and `gov-acc`.
  ( GOVS-coinFromGovDeposit :
      ∀ {Γ : GovEnv} {govSt govSt′ : GovState} {props}
      → Γ ⊢ govSt ⇀⦇ props ,GOVS⦈ govSt′
      → coinFromGovDeposit govSt′
        ≡ coinFromGovDeposit govSt + govProposalsDeposits (PParamsOf Γ) (proposalsOf props) )

  -- Utxo/Utxow-PoV facts --

  -- Invalid top-level tx: the UTXOW step preserves UTxO coin.
  ( utxow-pov-invalid : {Γ' : UTxOEnv} {s₀ s₁ : UTxOState}
      → Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁ → IsValidFlagOf tx ≡ false → getCoin s₀ ≡ getCoin s₁ )

  -- Valid top-level tx, mechanical single-tx coin equation (spend inputs resolved
  -- against running UTxO; TxId freshness lets `outs tx` split off cleanly).
  ( UTXOW-V-mechanical : {Γ' : UTxOEnv} {s₀ s₁ : UTxOState}
      → Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
      → IsValidFlagOf tx ≡ true
      → TxIdOf tx ∉ mapˢ proj₁ (dom (UTxOOf s₀))
      → getCoin s₀ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
        ≡ getCoin s₁ + cbalance (UTxOOf s₀ ∣ SpendInputsOf tx) )

  -- Closed-form coin projection of the batch balance `consumedBatch ≡ producedBatch`
  -- (the minted terms drop by `noMintTx`/`noMintSubTx`).  The cert deposit summands
  -- are in the spec's *closed form* — `refundCertDeposits`/`newCertDeposits` over
  -- `allDCerts tx`, with the pool set drawn from the environment's pre-batch
  -- `pools₀` — keeping this a pure UTxO obligation.  The governance-deposit summands
  -- sit on the produced side, matching `producedTx`.
  ( UTXOW-batch-balance-coin : {Γ' : UTxOEnv} {s₀ s₁ : UTxOState}
      → Γ' ⊢ s₀ ⇀⦇ tx ,UTXOW⦈ s₁
      → cbalance (UTxOOf Γ' ∣ SpendInputsOf tx) + getCoin (WithdrawalsOf tx)
          + sum (map (λ stx → cbalance (UTxOOf Γ' ∣ SpendInputsOf stx) + getCoin (WithdrawalsOf stx))
                     (SubTransactionsOf tx))
          + refundCertDeposits (PParamsOf Γ') (allDCerts tx)
        ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + getCoin (DirectDepositsOf tx)
          + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx + getCoin (DirectDepositsOf stx))
                     (SubTransactionsOf tx))
          + newCertDeposits (PParamsOf Γ') (dom (PoolsOf Γ')) (allDCerts tx)
          + ( govProposalsDeposits (PParamsOf Γ') (ListOfGovProposalsOf tx)
            + sum (map (λ stx → govProposalsDeposits (PParamsOf Γ') (ListOfGovProposalsOf stx))
                       (SubTransactionsOf tx)) ) )
  where

  open ENTITIES-PoV ∪ˡ-lookup-preserve sum-map-proj₂≡getCoin setToList-Unique
                    CERTS-rewards-pov CERTS-deposits-pov CERTS-deposits-registered
                    CERTS-new-thread
```

## Small arithmetic helpers

The pure `+`-rearrangement lemmas in this module are discharged by the reflective
ring solver over the commutative semiring of naturals (`Data.Nat.Tactic.RingSolver`):
`solve-∀`{.AgdaMacro} proves a closed, universally quantified equation outright, and
the in-context `solve`{.AgdaMacro} (applied to the list of atoms) proves an equation
whose variables are already in scope; this is needed where a lemma's trailing
variables are implicit, since `solve-∀`{.AgdaMacro} only handles visible binders.[^1]

```agda
  swap-right : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ c +ᴺ b
  swap-right = solve-∀

  -- Per-sub-tx withdrawal and direct-deposit totals.
  wdrwl : SubLevelTx → Coin
  wdrwl = getCoin ∘ WithdrawalsOf

  ddwl : SubLevelTx → Coin
  ddwl = getCoin ∘ DirectDepositsOf
```

## Deposit-change interface

The cert deposits change is the integer delta of `coinFromDeposits`{.AgdaFunction}
at the top and sub levels.  The `LEDGER-V`{.AgdaInductiveConstructor} chain tracks
the deposit pots in this two-level `posPart`/`negPart` form; `bat'`{.AgdaFunction}
obtains it from the closed-form `UTXOW-batch-balance-coin`{.AgdaFunction}
parameter via the batch-wide deposit accounting (`bridgeEq`{.AgdaFunction},
composed by `SUBLEDGERS-deposits`{.AgdaFunction}) and
`posNeg-deposits`{.AgdaFunction}.

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
  posPart-negPart-sym : (a b : ℕ) → b + posPart (a ⊖ b) ≡ a + negPart (a ⊖ b)
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

The deposit accounting identity used in the `LEDGER-V`{.AgdaInductiveConstructor} chain.  Both sides express the
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
    coin₀ coin₁ coin₂ psp ns pt nt : Coin
    coin₀ = coinFromDeposits cs₀
    coin₁ = coinFromDeposits cs₁
    coin₂ = coinFromDeposits cs₂
    psp = posPart (coin₁ ⊖ coin₀)   -- DepositsChangeSubOf dc
    ns  = negPart (coin₁ ⊖ coin₀)
    pt  = posPart (coin₂ ⊖ coin₁)   -- DepositsChangeTopOf dc
    nt  = negPart (coin₂ ⊖ coin₁)
```

## `SUBLEDGERS-utxo-coin`

Induct over the `SUBLEDGERS`{.AgdaDatatype} reflexive-transitive closure, applying
the per-`SUBUTXOW`{.AgdaDatatype} coin equation at each step:

```agda
  SUBLEDGERS-utxo-coin :
    {Γ : SubLedgerEnv}
    {s₀ s₁ : LedgerState}
    {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → getCoin (UTxOStateOf s₀)
      + sum (map (λ stx → cbalance (outs stx) + DonationsOf stx) stxs)
      ≡  getCoin (UTxOStateOf s₁)
         + sum (map (λ stx → cbalance (UTxOOf Γ ∣ SpendInputsOf stx)) stxs)

  -- Base case: empty list.  `Id-nop` unifies s₀ ≡ s₁ and both sums are 0.
  SUBLEDGERS-utxo-coin _ (BS-base Id-nop) = refl

  -- SUBLEDGER-I ruled out by isV : isTopLevelValid ≡ true.
  SUBLEDGERS-utxo-coin isV (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())

  -- Inductive step: combine the per-step SUBUTXOW balance with the IH.
  SUBLEDGERS-utxo-coin {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , _ , _)) rest) =
    begin
      U₀ + (p-stx + p-sum)    ≡˘⟨ +-assoc U₀ p-stx p-sum ⟩
      U₀ + p-stx + p-sum      ≡⟨ cong (_+ p-sum) step-P-C ⟩
      U₁ + c-stx + p-sum      ≡⟨ +-assoc U₁ c-stx p-sum ⟩
      U₁ + (c-stx + p-sum)    ≡⟨ cong (U₁ +_) (+-comm c-stx p-sum) ⟩
      U₁ + (p-sum + c-stx)    ≡˘⟨ +-assoc U₁ p-sum c-stx ⟩
      U₁ + p-sum + c-stx      ≡⟨ cong (_+ c-stx) ih ⟩
      Uₙ + c-sum + c-stx      ≡⟨ +-assoc Uₙ c-sum c-stx ⟩
      Uₙ + (c-sum + c-stx)    ≡⟨ cong (Uₙ +_) (+-comm c-sum c-stx) ⟩
      Uₙ + (c-stx + c-sum)    ∎
    where
    U₀ U₁ Uₙ p-stx c-stx p-sum c-sum : Coin
    U₀ = getCoin (UTxOStateOf s₀)
    U₁ = getCoin (UTxOStateOf s₁)
    Uₙ = getCoin (UTxOStateOf sₙ)
    p-stx = cbalance (outs stx) + DonationsOf stx
    c-stx = cbalance (UTxOOf Γ ∣ SpendInputsOf stx)
    p-sum = sum (map (λ stx → cbalance (outs stx) + DonationsOf stx) sigs)
    c-sum = sum (map (λ stx → cbalance (UTxOOf Γ ∣ SpendInputsOf stx)) sigs)

    -- Single-step coin equation from the SUBUTXOW step assumption.
    step-eq : U₀ + cbalance (outs stx) + DonationsOf stx ≡ U₁ + c-stx
    step-eq = subutxow-step-coin isV' subutxowStep

    step-P-C : U₀ + p-stx ≡ U₁ + c-stx
    step-P-C = trans (sym (+-assoc U₀ (cbalance (outs stx)) (DonationsOf stx))) step-eq

    ih : U₁ + p-sum ≡ Uₙ + c-sum
    ih = SUBLEDGERS-utxo-coin isV rest
```

## <span class="AgdaFunction">SUBLEDGERS-rewards-pov</span>

Parallel induction over `SUBLEDGERS`, composing per-sub-transaction `SUBENTITIES-pov`
invocations.  The `NetworkId` witnesses and domain conditions are premises of the
`SUBENTITIES` rule itself; only the no-truncation bound is external, supplied by the
`SUBENTITIES-wdrls-bounded` module parameter.

```agda
  open SubLedgerEnv

  SUBLEDGERS-rewards-pov :
    {Γ : SubLedgerEnv}
    {s₀ s₁ : LedgerState}
    {stxs : List SubLevelTx}
    → Γ .isTopLevelValid ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    →  coinFromRewards (CertStateOf s₀) + sum (map ddwl stxs)
       ≡ coinFromRewards (CertStateOf s₁) + sum (map wdrwl stxs)

  SUBLEDGERS-rewards-pov _ (BS-base Id-nop) = refl

  SUBLEDGERS-rewards-pov isV (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())

  SUBLEDGERS-rewards-pov {Γ} isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (_ , _ , entitiesStep , _)) rest) =
    begin
      coinFromRewards (CertStateOf s₀) + (getCoin (DirectDepositsOf stx) + sum (map ddwl sigs))
        ≡˘⟨ +-assoc (coinFromRewards (CertStateOf s₀)) (getCoin (DirectDepositsOf stx)) _ ⟩
      coinFromRewards (CertStateOf s₀) + getCoin (DirectDepositsOf stx) + sum (map ddwl sigs)
        ≡⟨ cong  (_+ sum (map ddwl sigs))
                 (SUBENTITIES-pov (SUBENTITIES-wdrls-bounded entitiesStep) entitiesStep) ⟩
      coinFromRewards (CertStateOf s₁) + getCoin (WithdrawalsOf stx) + sum (map ddwl sigs)
        ≡⟨ swap-right (coinFromRewards (CertStateOf s₁)) (getCoin (WithdrawalsOf stx)) _ ⟩
      coinFromRewards (CertStateOf s₁) + sum (map ddwl sigs) + getCoin (WithdrawalsOf stx)
        ≡⟨ cong (_+ getCoin (WithdrawalsOf stx)) ih ⟩
      coinFromRewards (CertStateOf sₙ) + sum (map wdrwl sigs) + getCoin (WithdrawalsOf stx)
        ≡⟨ swap-right (coinFromRewards (CertStateOf sₙ)) (sum (map wdrwl sigs)) _ ⟩
      (coinFromRewards (CertStateOf sₙ) + getCoin (WithdrawalsOf stx)) + sum (map wdrwl sigs)
        ≡⟨ +-assoc (coinFromRewards (CertStateOf sₙ)) (getCoin (WithdrawalsOf stx)) _ ⟩
      coinFromRewards (CertStateOf sₙ) + (getCoin (WithdrawalsOf stx) + sum (map wdrwl sigs))
        ∎
    where
    ih : coinFromRewards (CertStateOf s₁) + sum (map ddwl sigs)
         ≡ coinFromRewards (CertStateOf sₙ) + sum (map wdrwl sigs)
    ih = SUBLEDGERS-rewards-pov isV rest
```

## <span class="AgdaFunction">`SUBLEDGERS-deposits`</span>

Composing the per-step deposit accounting across the batch.
`refund-concatMap`{.AgdaFunction} distributes `refundCertDeposits`{.AgdaFunction}
over the batch's certificate lists; `SUBLEDGERS-registered`{.AgdaFunction} threads
the pool-deposit registration invariant; and `SUBLEDGERS-deposits`{.AgdaFunction}
telescopes the per-step closed forms, using
`SUBENTITIES-new-thread`{.AgdaFunction} to split `newCertDeposits`{.AgdaFunction} at
each step boundary; this is necessary because the pool set a `regpool` is charged
against evolves through the batch.  The trailing certificate list `ys`{.AgdaBound}
generalises the statement so the induction goes through; the
`LEDGER-V`{.AgdaInductiveConstructor} proof instantiates it with the top-level
transaction's certificates.

```agda
  refund-concatMap : (pp' : PParams) (stxs : List SubLevelTx)
    → refundCertDeposits pp' (concatMap DCertsOf stxs)
    ≡ sum (map (refundCertDeposits pp' ∘ DCertsOf) stxs)
  refund-concatMap pp' []           = refl
  refund-concatMap pp' (stx ∷ stxs) =
    trans (refundCertDeposits-++ pp' (DCertsOf stx) (concatMap DCertsOf stxs))
          (cong (refundCertDeposits pp' (DCertsOf stx) +_) (refund-concatMap pp' stxs))

  SUBLEDGERS-registered :
    {Γ : SubLedgerEnv}
    {s₀ s₁ : LedgerState}
    {stxs : List SubLevelTx}
    → Γ .isTopLevelValid ≡ true
    → PoolDepositsRegistered (CertStateOf s₀)
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → PoolDepositsRegistered (CertStateOf s₁)

  SUBLEDGERS-registered _ registered (BS-base Id-nop) = registered

  SUBLEDGERS-registered isV _ (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())

  SUBLEDGERS-registered isV registered (BS-ind (SUBLEDGER-V (_ , _ , entitiesStep , _)) rest) =
    SUBLEDGERS-registered isV (SUBENTITIES-deposits-registered registered entitiesStep) rest

  SUBLEDGERS-deposits :
    {Γ : SubLedgerEnv}
    {s₀ s₁ : LedgerState}
    {stxs : List SubLevelTx}
    → Γ .isTopLevelValid ≡ true
    → PoolDepositsRegistered (CertStateOf s₀)
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → (ys : List DCert)
    → coinFromDeposits (CertStateOf s₀)
        + newCertDeposits (Γ .pparams) (dom (PoolsOf (CertStateOf s₀))) (concatMap DCertsOf stxs ++ ys)
    ≡ coinFromDeposits (CertStateOf s₁)
        + sum (map (refundCertDeposits (Γ .pparams) ∘ DCertsOf) stxs)
        + newCertDeposits (Γ .pparams) (dom (PoolsOf (CertStateOf s₁))) ys

  SUBLEDGERS-deposits {Γ} {s₀ = s₀} _ _ (BS-base Id-nop) ys =
    cong (_+ newCertDeposits (Γ .pparams) (dom (PoolsOf (CertStateOf s₀))) ys)
         (sym (+-identityʳ (coinFromDeposits (CertStateOf s₀))))

  SUBLEDGERS-deposits isV _ (BS-ind (SUBLEDGER-I (isI , _)) _) ys =
    ⊥-elim (case trans (sym isV) isI of λ ())

  SUBLEDGERS-deposits {Γ} isV registered (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (_ , _ , entitiesStep , _)) rest) ys =
    begin
      D₀ + new P₀ ((DCertsOf stx ++ concatMap DCertsOf sigs) ++ ys)
        ≡⟨ cong (λ l → D₀ + new P₀ l) (++-assoc (DCertsOf stx) (concatMap DCertsOf sigs) ys) ⟩
      D₀ + new P₀ (DCertsOf stx ++ (concatMap DCertsOf sigs ++ ys))
        ≡⟨ cong (D₀ +_) (SUBENTITIES-new-thread entitiesStep (concatMap DCertsOf sigs ++ ys)) ⟩
      D₀ + (new P₀ (DCertsOf stx) + new P₁ (concatMap DCertsOf sigs ++ ys))
        ≡˘⟨ +-assoc D₀ (new P₀ (DCertsOf stx)) (new P₁ (concatMap DCertsOf sigs ++ ys)) ⟩
      D₀ + new P₀ (DCertsOf stx) + new P₁ (concatMap DCertsOf sigs ++ ys)
        ≡⟨ cong (_+ new P₁ (concatMap DCertsOf sigs ++ ys))
                (SUBENTITIES-deposits-pov registered entitiesStep) ⟩
      D₁ + refund₀ + new P₁ (concatMap DCertsOf sigs ++ ys)
        ≡⟨ swap-right D₁ refund₀ (new P₁ (concatMap DCertsOf sigs ++ ys)) ⟩
      D₁ + new P₁ (concatMap DCertsOf sigs ++ ys) + refund₀
        ≡⟨ cong (_+ refund₀) (SUBLEDGERS-deposits isV registered₁ rest ys) ⟩
      Dₙ + refundSum + new Pₙ ys + refund₀
        ≡⟨ resh Dₙ refundSum (new Pₙ ys) refund₀ ⟩
      Dₙ + (refund₀ + refundSum) + new Pₙ ys
        ∎
    where
    new : ℙ KeyHash → List DCert → Coin
    new = newCertDeposits (Γ .pparams)

    D₀ D₁ Dₙ refund₀ refundSum : Coin
    D₀ = coinFromDeposits (CertStateOf s₀)
    D₁ = coinFromDeposits (CertStateOf s₁)
    Dₙ = coinFromDeposits (CertStateOf sₙ)
    refund₀   = refundCertDeposits (Γ .pparams) (DCertsOf stx)
    refundSum = sum (map (refundCertDeposits (Γ .pparams) ∘ DCertsOf) sigs)

    P₀ P₁ Pₙ : ℙ KeyHash
    P₀ = dom (PoolsOf (CertStateOf s₀))
    P₁ = dom (PoolsOf (CertStateOf s₁))
    Pₙ = dom (PoolsOf (CertStateOf sₙ))

    registered₁ : PoolDepositsRegistered (CertStateOf s₁)
    registered₁ = SUBENTITIES-deposits-registered registered entitiesStep

    resh : ∀ a b c d → a +ᴺ b +ᴺ c +ᴺ d ≡ a +ᴺ (d +ᴺ b) +ᴺ c
    resh = solve-∀
```

## <span class="AgdaFunction">SUBLEDGERS-gov-coin</span>

Induct over `SUBLEDGERS`{.AgdaDatatype}, threading the per-`GOVS` gov-deposit growth: each
`SUBLEDGER-V`{.AgdaInductiveConstructor} step grows `coinFromGovDeposit`{.AgdaFunction} by the
`govProposalsDeposits`{.AgdaFunction} of the sub-transaction's proposals (via the
`GOVS-coinFromGovDeposit`{.AgdaFunction} parameter applied to the step's `GOVS`
premise).  `SUBLEDGER-I`{.AgdaInductiveConstructor} is ruled out by the top-level validity flag.

```agda
  -- `proposalsOf (GovProposals+Votes t)` recovers exactly the proposals of `t`.
  proposalsOf-Proposals+Votes : ∀ {ℓ} (t : Tx ℓ)
    → proposalsOf (GovProposals+Votes t) ≡ ListOfGovProposalsOf t
  proposalsOf-Proposals+Votes t = go (ListOfGovProposalsOf t) (ListOfGovVotesOf t)
    where
    drop-votes : {A B : Type} (vs : List A) → proposalsOf {B = B} (map inj₁ vs) ≡ []
    drop-votes [] = refl
    drop-votes (_ ∷ vs) = drop-votes vs

    go : {A B : Type} (ps : List B) (vs : List A)
      → proposalsOf (map inj₂ ps ++ map inj₁ vs) ≡ ps
    go [] vs = drop-votes vs
    go (p ∷ ps) vs = cong (p ∷_) (go ps vs)

  open SubLedgerEnv

  SUBLEDGERS-gov-coin :
    {Γ : SubLedgerEnv}
    {s₀ s₁ : LedgerState}
    {stxs : List SubLevelTx}
    → Γ .isTopLevelValid ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → coinFromGovDeposit (GovStateOf s₁)
      ≡ coinFromGovDeposit (GovStateOf s₀)
        + sum (map (λ stx → govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf stx)) stxs)

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
    g-stx = govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf stx)
    g-sum = sum (map (λ stx → govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf stx)) sigs)

    step-gov : coinFromGovDeposit (GovStateOf s₁) ≡ coinFromGovDeposit (GovStateOf s₀) + g-stx
    step-gov =
      trans  ( GOVS-coinFromGovDeposit govStep )
             ( cong  ( λ ps →  coinFromGovDeposit (GovStateOf s₀)
                               + govProposalsDeposits (PParamsOf Γ) ps )
                     ( proposalsOf-Proposals+Votes stx ) )

    ih : coinFromGovDeposit (GovStateOf sₙ) ≡ coinFromGovDeposit (GovStateOf s₁) + g-sum
    ih = SUBLEDGERS-gov-coin isV rest
```

## <span class="AgdaFunction">LEDGER-pov</span>

The pool-deposit registration hypothesis concerns the initial state only; it is
threaded through the batch by `SUBLEDGERS-registered`{.AgdaFunction} where needed.

```agda
  LEDGER-pov : {Γ : LedgerEnv} {s s' : LedgerState}
    → PoolDepositsRegistered (CertStateOf s)
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
```

### The <span class="AgdaInductiveConstructor">LEDGER-I</span> case (invalid transaction)

`SUBLEDGERS`{.AgdaDatatype} is a no-op when `IsValidFlagOf tx ≡ false`, so `certState` and `govSt`
are unchanged.  Only the `UTXOW` step affects `getCoin`, and it preserves it via
`utxow-pov-invalid`.

```agda
  LEDGER-pov {Γ} {s} _ (LEDGER-I (invalid , _ , utxoStep)) =
    cong  ( λ u → u  + coinFromRewards (CertStateOf s) + coinFromDeposits (CertStateOf s)
                     + coinFromGovDeposit (GovStateOf s) )
          ( utxow-pov-invalid utxoStep invalid )
```

### The <span class="AgdaInductiveConstructor">LEDGER-V</span> case (valid transaction)

The proof is a single equational chain over `LedgerState`{.AgdaRecord} coin totals.

Setting `U = getCoin (UTxOState)`, `R = coinFromRewards`, `D = coinFromDeposits`,
`G = coinFromGovDeposit`, and `allDirectDeps` / `allWdrls` for the top-level and
sub-level totals of direct deposits and withdrawals respectively, the goal
`getCoin s ≡ getCoin s'` is

    U₀ + R₀ + D₀ + G₀  ≡  U₂ + R₂ + D₂ + G'

where `G₀ = coinFromGovDeposit govState₀` and, since the final
`LEDGER-V`{.AgdaInductiveConstructor} `GovState`{.AgdaRecord}
is `rmOrphanDRepVotes certState₂ govState₂` and `rmOrphanDRepVotes` preserves
`coinFromGovDeposit` (parameter `rmOrphanDRepVotes-coinFromGovDeposit`),
`G' = coinFromGovDeposit govState₂`.

The body assembles the goal from two lemmas:

+  `three-summand`{.AgdaFunction}: `U₀+R₀+D₀ ≡ U₂+R₂+D₂+totGov`, the
   UTxO/rewards/cert-deposits totals with the produced-side gov deposits surfacing
   as `totGov`;
+  `gov-acc`{.AgdaFunction}: `totGov+G₀ ≡ G'`, the gov-deposit accounting.

```agda
  LEDGER-pov {Γ} {s} registered₀
    (LEDGER-V {utxoState₁ = us₁} {govState₁ = govSt₁} {certState₁ = cs₁}
              {certState₂ = cs₂} {govState₂ = govSt₂} {utxoState₂ = us₂}
              (valid , subStep , entitiesStep , govStep , utxoStep)) =
    begin
      U₀ + R₀ + D₀ + G₀             ≡⟨ cong (_+ G₀) three-summand ⟩
      U₂ + R₂ + D₂ + totGov + G₀    ≡⟨ +-assoc (U₂ + R₂ + D₂) totGov G₀ ⟩
      U₂ + R₂ + D₂ + (totGov + G₀)  ≡⟨ cong (U₂ + R₂ + D₂ +_) gov-acc ⟩
      U₂ + R₂ + D₂ + G'             ∎
    where
```

A handful of arithmetic shuffles are required; these are pure
`+`-rearrangements discharged by the ring solver.

```agda
      abcd-to-acdb : ∀ a b c d → a +ᴺ b +ᴺ c +ᴺ d ≡ a +ᴺ c +ᴺ d +ᴺ b
      abcd-to-acdb = solve-∀

      U₀ U₁ U₂ : Coin
      U₀ = getCoin (UTxOStateOf s)
      U₁ = getCoin us₁
      U₂ = getCoin us₂

      D₀ D₂ : Coin
      D₀ = coinFromDeposits (CertStateOf s)
      D₂ = coinFromDeposits cs₂

      R₀ R₂ : Coin
      R₀ = coinFromRewards (CertStateOf s)
      R₂ = coinFromRewards cs₂

      -- Governance-deposit summands of LedgerState totals:
      -- + G₀ is the initial GovState's deposit;
      -- + G' is the final state's (`rmOrphanDRepVotes cs₂ govSt₂`).
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
      topGov : Coin
      topGov = govProposalsDeposits (PParamsOf Γ) (ListOfGovProposalsOf tx)

      subGovSum : Coin
      subGovSum =
        sum (map  ( λ stx → govProposalsDeposits (PParamsOf  Γ) (ListOfGovProposalsOf stx) )
                  ( SubTransactionsOf tx ) )

      totGov : Coin
      totGov = topGov + subGovSum

      -- Pure +-rearrangements for threading the gov summand.
      mid-extract : ∀ a b c d → a +ᴺ (b +ᴺ d) +ᴺ c ≡ a +ᴺ b +ᴺ c +ᴺ d
      mid-extract = solve-∀

      rearr3 : ∀ a b c → a +ᴺ b +ᴺ c ≡ c +ᴺ b +ᴺ a
      rearr3 = solve-∀

      outer-rearr : ∀ u a d g r → u +ᴺ a +ᴺ d +ᴺ g +ᴺ r ≡ u +ᴺ r +ᴺ d +ᴺ g +ᴺ a
      outer-rearr = solve-∀
```

**The combined `ENTITIES-pov`{.AgdaFunction} invocation**.

+  Pre-batch `certState` plus
+  all direct deposits (top + sub) ≡ post-`ENTITIES` `certState` plus
+  all withdrawals (top + sub).

This is the step in which direct deposits on the UTxO and `CertState`{.AgdaRecord}
sides cancel.

(The `NetworkId` and domain conditions are premises of the
`ENTITIES`{.AgdaDatatype} rule itself; the no-truncation bound comes from
`ENTITIES-wdrls-bounded`{.AgdaFunction}.)

```agda
      combined-certs : coinFromRewards (CertStateOf s) + allDirectDeps
                     ≡ coinFromRewards cs₂ + allWdrls
      combined-certs =
        begin
          coinFromRewards (CertStateOf s) + allDirectDeps
            ≡⟨ cong (coinFromRewards (CertStateOf s) +_)
                    (+-comm (getCoin (DirectDepositsOf tx)) subDirectDepsCoin) ⟩
          coinFromRewards (CertStateOf s) + (subDirectDepsCoin + getCoin (DirectDepositsOf tx))
            ≡˘⟨ +-assoc (coinFromRewards (CertStateOf s)) subDirectDepsCoin (getCoin (DirectDepositsOf tx)) ⟩
          coinFromRewards (CertStateOf s) + subDirectDepsCoin + getCoin (DirectDepositsOf tx)
            ≡⟨ cong (_+ getCoin (DirectDepositsOf tx)) (SUBLEDGERS-rewards-pov valid subStep) ⟩
          coinFromRewards cs₁ + subWdrlsCoin + getCoin (DirectDepositsOf tx)
            ≡⟨ swap-right (coinFromRewards cs₁) subWdrlsCoin (getCoin (DirectDepositsOf tx)) ⟩
          coinFromRewards cs₁ + getCoin (DirectDepositsOf tx) + subWdrlsCoin
            ≡⟨ cong (_+ subWdrlsCoin) (ENTITIES-pov (ENTITIES-wdrls-bounded entitiesStep) entitiesStep) ⟩
          coinFromRewards cs₂ + getCoin (WithdrawalsOf tx) + subWdrlsCoin
            ≡⟨ +-assoc (coinFromRewards cs₂) (getCoin (WithdrawalsOf tx)) subWdrlsCoin ⟩
          coinFromRewards cs₂ + (getCoin (WithdrawalsOf tx) + subWdrlsCoin)
            ∎
```

`step-i`: introduce `allDirectDeps`{.AgdaFunction}, then rewrite using
`combined-certs`{.AgdaFunction}.

```agda
      step-i : (U₀ + R₀ + D₀) + allDirectDeps ≡ U₀ + R₂ + allWdrls + D₀
      step-i =
        begin
          U₀ + R₀ + D₀ + allDirectDeps    ≡⟨ swap-right (U₀ + R₀) D₀ allDirectDeps ⟩
          U₀ + R₀ + allDirectDeps + D₀    ≡⟨ cong (_+ D₀) (+-assoc U₀ R₀ allDirectDeps) ⟩
          U₀ + (R₀ + allDirectDeps) + D₀  ≡⟨ cong (λ x → U₀ + x + D₀) combined-certs ⟩
          U₀ + (R₂ + allWdrls) + D₀       ≡˘⟨ cong (_+ D₀) (+-assoc U₀ R₂ allWdrls) ⟩
          U₀ + R₂ + allWdrls + D₀         ∎

      dc : DepositsChange
      dc = calculateDepositsChange (CertStateOf s) cs₁ cs₂

      dct dcs : ℤ
      dct = DepositsChangeTopOf dc
      dcs = DepositsChangeSubOf dc

      posneg : D₀ + posPart dct + posPart dcs ≡ D₂ + negPart dct + negPart dcs
      posneg = posNeg-deposits (CertStateOf s) cs₁ cs₂
```

`UTXOW-V-mechanical`{.AgdaFunction} composed with the batch-wide "spend inputs
preserved" invariant:

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

**The batch balance** rephrased to expose direct deposits and bring withdrawals together.

```agda
      bat' : Ctop + allWdrls + Csub + negPart dct + negPart dcs
           ≡ cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
             + allDirectDeps + Psub + posPart dct + posPart dcs + totGov
      bat' =
        begin
          Ctop + allWdrls + Csub + negPart dct + negPart dcs
            ≡⟨⟩
          Ctop + (Wtop + subWdrlsCoin) + Csub + negPart dct + negPart dcs
            ≡˘⟨ cong (λ x → x + Csub + negPart dct + negPart dcs) (+-assoc Ctop Wtop subWdrlsCoin) ⟩
          Ctop + Wtop + subWdrlsCoin + Csub + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs) (swap-right (Ctop + Wtop) subWdrlsCoin Csub) ⟩
          Ctop + Wtop + Csub + subWdrlsCoin + negPart dct + negPart dcs
            ≡⟨ cong (λ x → x + negPart dct + negPart dcs) (+-assoc (Ctop + Wtop) Csub subWdrlsCoin) ⟩
          Ctop + Wtop + (Csub + subWdrlsCoin) + negPart dct + negPart dcs
            ≡˘⟨ cong (λ x → Ctop + Wtop + x + negPart dct + negPart dcs)
                     (sum-map-+ (λ stx → cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf stx))
                                wdrwl (SubTransactionsOf tx)) ⟩
          Ctop + Wtop + CsubW + negPart dct + negPart dcs
            ≡⟨ convert ⟩
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
        O F DN DDtop Wtop CsubW : Coin

        O     = cbalance (outs tx)
        F     = TxFeesOf tx
        DN    = DonationsOf tx
        DDtop = getCoin (DirectDepositsOf tx)
        Wtop  = getCoin (WithdrawalsOf tx)
        CsubW = sum (map (λ stx → cbalance (UTxOOf (UTxOStateOf s) ∣ SpendInputsOf stx)
                                + getCoin (WithdrawalsOf stx))
                         (SubTransactionsOf tx))

        pp = PParamsOf Γ

        -- Abstract net-conversion: reconcile the closed-form balance (`bal`, with
        -- cert deposits as `PZ`/`NZ`) with the chain's two-level form, using the
        -- batch bridge (`sf`) and the two-level deposit identity (`pn`).  Cancels
        -- the constant `D0 + PZ` on the right.
        net-arith : ∀ (A B G PZ NZ Pt Ps Nt Ns D0 D2 : ℕ)
          → A + NZ ≡ B + PZ + G
          → D0 + PZ ≡ D2 + NZ
          → D0 + Pt + Ps ≡ D2 + Nt + Ns
          → A + Nt + Ns ≡ B + Pt + Ps + G
        net-arith A B G PZ NZ Pt Ps Nt Ns D0 D2 bal sf pn =
          +-cancelʳ-≡ (D0 + PZ) (A + Nt + Ns) (B + Pt + Ps + G) big
          where
          rearr-X : (A +ᴺ Nt +ᴺ Ns) +ᴺ (D2 +ᴺ NZ) ≡ (A +ᴺ NZ) +ᴺ (Nt +ᴺ Ns +ᴺ D2)
          rearr-X = solve (A ∷ Nt ∷ Ns ∷ D2 ∷ NZ ∷ [])
          rearr-Y : Nt +ᴺ Ns +ᴺ D2 ≡ D2 +ᴺ Nt +ᴺ Ns
          rearr-Y = solve (Nt ∷ Ns ∷ D2 ∷ [])
          rearr-Z : (B +ᴺ PZ +ᴺ G) +ᴺ (D0 +ᴺ Pt +ᴺ Ps) ≡ (B +ᴺ Pt +ᴺ Ps +ᴺ G) +ᴺ (D0 +ᴺ PZ)
          rearr-Z = solve (B ∷ PZ ∷ G ∷ D0 ∷ Pt ∷ Ps ∷ [])
          big : (A + Nt + Ns) + (D0 + PZ) ≡ (B + Pt + Ps + G) + (D0 + PZ)
          big = begin
            (A + Nt + Ns) + (D0 + PZ)     ≡⟨ cong (A + Nt + Ns +_) sf ⟩
            (A + Nt + Ns) + (D2 + NZ)     ≡⟨ rearr-X ⟩
            (A + NZ) + (Nt + Ns + D2)     ≡⟨ cong (_+ (Nt + Ns + D2)) bal ⟩
            (B + PZ + G) + (Nt + Ns + D2) ≡⟨ cong ((B + PZ + G) +_) rearr-Y ⟩
            (B + PZ + G) + (D2 + Nt + Ns) ≡˘⟨ cong ((B + PZ + G) +_) pn ⟩
            (B + PZ + G) + (D0 + Pt + Ps) ≡⟨ rearr-Z ⟩
            (B + Pt + Ps + G) + (D0 + PZ) ∎

        -- The closed-form batch balance (cert deposits in the spec's closed form,
        -- over `allDCerts tx` against the pre-batch registered-pool set).
        closedEq : Ctop + Wtop + CsubW + refundCertDeposits pp (allDCerts tx)
                 ≡ O + F + DN + DDtop + PsubDD
                   + newCertDeposits pp (dom (PoolsOf (CertStateOf s))) (allDCerts tx) + totGov
        closedEq = UTXOW-batch-balance-coin utxoStep

        -- Batch-wide cert deposit accounting, in ℕ form: pre-batch deposits + new
        -- deposits ≡ post-batch deposits + refunds.  Composed from the per-step
        -- SUBENTITIES/ENTITIES deposit equations: `SUBLEDGERS-deposits` telescopes
        -- the sub-transactions (leaving the top-level certificates as the trailing
        -- list), `ENTITIES-deposits-pov` accounts for the top-level step, and the
        -- refunds recombine via `refund-concatMap`/`refundCertDeposits-++`.
        bridgeEq : D₀ + newCertDeposits pp (dom (PoolsOf (CertStateOf s))) (allDCerts tx)
                 ≡ D₂ + refundCertDeposits pp (allDCerts tx)
        bridgeEq = begin
          D₀ + newCertDeposits pp (dom (PoolsOf (CertStateOf s))) (allDCerts tx)
            ≡⟨ SUBLEDGERS-deposits valid registered₀ subStep (DCertsOf tx) ⟩
          D₁' + refundSubs + newCertDeposits pp P₁ (DCertsOf tx)
            ≡⟨ swap-right D₁' refundSubs (newCertDeposits pp P₁ (DCertsOf tx)) ⟩
          D₁' + newCertDeposits pp P₁ (DCertsOf tx) + refundSubs
            ≡⟨ cong (_+ refundSubs) (ENTITIES-deposits-pov registered₁ entitiesStep) ⟩
          D₂ + refundCertDeposits pp (DCertsOf tx) + refundSubs
            ≡⟨ swap-right D₂ (refundCertDeposits pp (DCertsOf tx)) refundSubs ⟩
          D₂ + refundSubs + refundCertDeposits pp (DCertsOf tx)
            ≡˘⟨ cong (λ x → D₂ + x + refundCertDeposits pp (DCertsOf tx))
                     (refund-concatMap pp (SubTransactionsOf tx)) ⟩
          D₂ + refundCertDeposits pp (concatMap DCertsOf (SubTransactionsOf tx))
             + refundCertDeposits pp (DCertsOf tx)
            ≡⟨ +-assoc D₂ (refundCertDeposits pp (concatMap DCertsOf (SubTransactionsOf tx)))
                          (refundCertDeposits pp (DCertsOf tx)) ⟩
          D₂ + ( refundCertDeposits pp (concatMap DCertsOf (SubTransactionsOf tx))
               + refundCertDeposits pp (DCertsOf tx) )
            ≡˘⟨ cong (D₂ +_)
                     (refundCertDeposits-++ pp (concatMap DCertsOf (SubTransactionsOf tx)) (DCertsOf tx)) ⟩
          D₂ + refundCertDeposits pp (allDCerts tx)
            ∎
          where
          D₁' refundSubs : Coin
          D₁' = coinFromDeposits cs₁
          refundSubs = sum (map (refundCertDeposits pp ∘ DCertsOf) (SubTransactionsOf tx))

          P₁ : ℙ KeyHash
          P₁ = dom (PoolsOf cs₁)

          registered₁ : PoolDepositsRegistered cs₁
          registered₁ = SUBLEDGERS-registered valid registered₀ subStep

        -- Convert the closed-form balance to the chain's two-level posPart/negPart
        -- form, via `net-arith` fed the bridge (`bridgeEq`) and the two-level
        -- deposit identity (`posneg`).
        convert : Ctop + Wtop + CsubW + negPart dct + negPart dcs
                ≡ O + F + DN + DDtop + posPart dct + PsubDD + posPart dcs + totGov
        convert = begin
          Ctop + Wtop + CsubW + negPart dct + negPart dcs
            ≡⟨ net-arith (Ctop + Wtop + CsubW) (O + F + DN + DDtop + PsubDD) totGov
                         (newCertDeposits pp (dom (PoolsOf (CertStateOf s))) (allDCerts tx))
                         (refundCertDeposits pp (allDCerts tx))
                         (posPart dct) (posPart dcs) (negPart dct) (negPart dcs) D₀ D₂
                         closedEq bridgeEq posneg ⟩
          O + F + DN + DDtop + PsubDD + posPart dct + posPart dcs + totGov
            ≡⟨ cong (λ w → w + posPart dcs + totGov)
                    (swap-right (O + F + DN + DDtop) PsubDD (posPart dct)) ⟩
          O + F + DN + DDtop + posPart dct + PsubDD + posPart dcs + totGov
            ∎

        reshuffle-to-DD :
            O + F + DN + DDtop + posPart dct + (Psub + subDirectDepsCoin) + posPart dcs
          ≡ O + F + DN + (DDtop + subDirectDepsCoin) + Psub + posPart dct + posPart dcs
        reshuffle-to-DD =
          go O F DN DDtop (posPart dct) Psub subDirectDepsCoin (posPart dcs)
          where
          -- `solve` matches its atoms syntactically, which the `where`-bound
          -- abbreviations above defeat; generalise to a closed ∀-goal instead.
          go : ∀ o f dn dd pt psub sdd pcs
             → o +ᴺ f +ᴺ dn +ᴺ dd +ᴺ pt +ᴺ (psub +ᴺ sdd) +ᴺ pcs
             ≡ o +ᴺ f +ᴺ dn +ᴺ (dd +ᴺ sdd) +ᴺ psub +ᴺ pt +ᴺ pcs
          go = solve-∀
```

**The main inner chain**, showing `LHS + E ≡ RHS + E`.

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
          ≡⟨ cong  (λ x → x + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop)
                           (SUBLEDGERS-utxo-coin valid subStep) ⟩
        U₁ + Csub + allWdrls + (D₀ + posPart dct + posPart dcs) + Ctop
          ≡⟨ cong (λ x → (U₁ + Csub) + allWdrls + x + Ctop) posneg ⟩
        U₁ + Csub + allWdrls + (D₂ + negPart dct + negPart dcs) + Ctop
          ≡⟨ arithmetic-3 U₁ Csub allWdrls ⟩
        U₁ + (Ctop + allWdrls + Csub + negPart dct + negPart dcs) + D₂
          ≡⟨ cong (λ x → U₁ + x + D₂) bat' ⟩
        U₁ + (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps
           + Psub + posPart dct + posPart dcs + totGov) + D₂
          ≡⟨ mid-extract U₁ (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx
             + allDirectDeps + Psub + posPart dct + posPart dcs) D₂ totGov ⟩
        U₁ + (cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps
           + Psub + posPart dct + posPart dcs) + D₂ + totGov
          ≡⟨ cong (_+ totGov) (arithmetic-4 U₁ (cbalance (outs tx)) (TxFeesOf tx)) ⟩
        U₁ + cbalance (outs tx) + TxFeesOf tx + DonationsOf tx + allDirectDeps + Psub
           + posPart dct + posPart dcs + D₂ + totGov
          ≡⟨ cong  ( _+ totGov )
                   ( cong  (λ x → x + allDirectDeps + Psub + posPart dct + posPart dcs + D₂)
                           mech ) ⟩
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

The five `arithmetic-N` helpers are pure `+`-rearrangements.  Their trailing
variables are implicit (each is determined by the goal at the call site), so they are
discharged by the in-context `solve`{.AgdaMacro} rather than `solve-∀`{.AgdaMacro}:

```agda
        arithmetic-1 : ∀ a b c {d}{e}{f}{g}
          → a +ᴺ b +ᴺ c +ᴺ (d +ᴺ e +ᴺ f +ᴺ g) ≡ a +ᴺ b +ᴺ c +ᴺ d +ᴺ e +ᴺ f +ᴺ g
        arithmetic-1 a b c {d}{e}{f}{g} = solve (a ∷ b ∷ c ∷ d ∷ e ∷ f ∷ g ∷ [])

        arithmetic-2 : ∀ a b c {d}{e}{f}{g}
          → a +ᴺ b +ᴺ c +ᴺ d +ᴺ e +ᴺ f +ᴺ g ≡ a +ᴺ e +ᴺ b +ᴺ (c +ᴺ f +ᴺ g) +ᴺ d
        arithmetic-2 a b c {d}{e}{f}{g} = solve (a ∷ b ∷ c ∷ d ∷ e ∷ f ∷ g ∷ [])

        arithmetic-3 : ∀ a b c {d}{e}{f}{g}
          → a +ᴺ b +ᴺ c +ᴺ (d +ᴺ e +ᴺ f) +ᴺ g ≡ a +ᴺ (g +ᴺ c +ᴺ b +ᴺ e +ᴺ f) +ᴺ d
        arithmetic-3 a b c {d}{e}{f}{g} = solve (a ∷ b ∷ c ∷ d ∷ e ∷ f ∷ g ∷ [])

        arithmetic-4 : ∀ a b c {d}{e}{f}{g}{h}{i}
          → a +ᴺ (b +ᴺ c +ᴺ d +ᴺ e +ᴺ f +ᴺ g +ᴺ h) +ᴺ i
          ≡ a +ᴺ b +ᴺ c +ᴺ d +ᴺ e +ᴺ f +ᴺ g +ᴺ h +ᴺ i
        arithmetic-4 a b c {d}{e}{f}{g}{h}{i} =
          solve (a ∷ b ∷ c ∷ d ∷ e ∷ f ∷ g ∷ h ∷ i ∷ [])

        arithmetic-5 : ∀ a b c {d}{e}{f}{g}
          → a +ᴺ b +ᴺ c +ᴺ d +ᴺ e +ᴺ f +ᴺ g ≡ a +ᴺ c +ᴺ g +ᴺ b +ᴺ d +ᴺ e +ᴺ f
        arithmetic-5 a b c {d}{e}{f}{g} = solve (a ∷ b ∷ c ∷ d ∷ e ∷ f ∷ g ∷ [])
```

Finally, `step-ii` extracts the actual equation from `LHS+E≡RHS+E` by cancelling `E`
on both sides.

```agda
      step-ii : U₀ + allWdrls + D₀ + R₂ ≡ U₂ + allDirectDeps + D₂ + totGov + R₂
      step-ii = cong  ( _+ R₂ )
                      ( +-cancelʳ-≡  E (U₀ + allWdrls + D₀) (U₂ + allDirectDeps + D₂ + totGov)
                                     LHS+E≡RHS+E )

      -- The three LedgerState totals (UTxO + rewards + cert deposits): the batch's
      -- gov deposits surface as `+ totGov` on the produced side.
      three-summand : U₀ + R₀ + D₀ ≡ U₂ + R₂ + D₂ + totGov
      three-summand = +-cancelʳ-≡ allDirectDeps (U₀ + R₀ + D₀) (U₂ + R₂ + D₂ + totGov)
        $ begin
          U₀ + R₀ + D₀ + allDirectDeps           ≡⟨ step-i ⟩
          U₀ + R₂ + allWdrls + D₀                ≡⟨ abcd-to-acdb U₀ R₂ allWdrls D₀ ⟩
          U₀ + allWdrls + D₀ + R₂                ≡⟨ step-ii ⟩
          U₂ + allDirectDeps + D₂ + totGov + R₂  ≡⟨ outer-rearr U₂ allDirectDeps D₂ totGov R₂ ⟩
          U₂ + R₂ + D₂ + totGov + allDirectDeps  ∎

      -- Gov-deposit accounting: the batch's total gov deposits exactly account for
      -- the growth from the initial gov state's deposit (G₀) to the final one (G').
      gov-acc : totGov + G₀ ≡ G'
      gov-acc = begin
        totGov + G₀                          ≡⟨ rearr3 topGov subGovSum G₀ ⟩
        G₀ + subGovSum + topGov              ≡˘⟨ cong (_+ topGov) (SUBLEDGERS-gov-coin valid subStep) ⟩
        coinFromGovDeposit govSt₁ + topGov   ≡˘⟨ govStep-eq ⟩
        coinFromGovDeposit govSt₂            ≡˘⟨ rmOrphanDRepVotes-coinFromGovDeposit cs₂ govSt₂ ⟩
        G'                                   ∎
        where
        govStep-eq : coinFromGovDeposit govSt₂ ≡ coinFromGovDeposit govSt₁ + topGov
        govStep-eq = trans  (GOVS-coinFromGovDeposit govStep)
                            (cong (λ ps  → coinFromGovDeposit govSt₁
                                         + govProposalsDeposits (PParamsOf Γ) ps)
                                  (proposalsOf-Proposals+Votes tx))
```

[^1]: One wrinkle: the solver recognises the ring's operations *syntactically*, so
      the `Ledger.Prelude` overloaded `_+_` (a `HasAdd`{.AgdaRecord} method, which merely
      *reduces* to `Data.Nat._+_`) defeats it.  The solver-facing statements are therefore
      written with the raw natural-number addition, imported as `_+ᴺ_` — definitionally
      equal to `_+_` at `Coin`, so the lemmas discharge `_+_` goals unchanged.
