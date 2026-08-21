---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/Reorder.lagda.md
---

# <span class="AgdaDatatype">LEDGERS</span>: Reordering Determinism {#sec:ledgers-reorder}

This module proves a *restricted commutativity* property for the
`LEDGERS`{.AgdaOperator} transition system: if two transaction lists `l₁` and
`l₂` are permutations of one another, every pair of transactions in them is
**independent** (`Indep`{.AgdaRecord}), no transaction touches governance
(`GovDomStable`{.AgdaFunction}), and both lists take the initial state to *some*
final state, then the two final states are extensionally equal (`_≈ˡ_`).

The theorem is in **net-effect form** (Vinogradova & Sorokin, LSFA'24,
Thm 5.2.1): both executions are taken as *given* (so all validity information
is available on both sides), and the final states are compared **field by
field**, with **no assumption on the phase-2 `isValid` tags** — every
per-transaction update is keyed on the tag (`LEDGER-I` steps consume
collateral and touch nothing else).  Each field of `LState`{.AgdaRecord} is
shown to be a function of the *set* of transactions rather than their order;
the field-by-field arguments are summarized in one section per field below.

This file is the **trust base**: it declares the postulates (each at its
narrative point), instantiates the proof layer with them, and assembles the
main theorem.  All proofs — including `LEDGERS-deterministic`{.AgdaFunction}
and the shared vocabulary (`Indep`, `GovDomStable`, `Ins#Outs`, `_≈ᶜ_`) — live in
[ReorderLemmas](Ledger.Conway.Specification.Ledger.Properties.ReorderLemmas.md),
a module with **no postulates** whose `Assuming` sub-module takes the facts
assumed here as parameters.

<!--
```agda
{-# OPTIONS --with-K #-}
-- NOTE: this module is intentionally *not* `--safe`: the remaining
-- obligations are isolated as `postulate`s, which `--safe` forbids.
-- The final theorem `LEDGERS-reorder` rests on exactly four of them:
-- `replay-outs-disjoint`, `replay-outs-fresh`, `Ins#Outs-exec` (replay
-- protection, LSFA'24 Cor 5.1.2), and `LEDGERS-cert≈` (the one open field
-- obligation).
-- The other postulates (`collectP2Scripts-eval-cong`, `Value-≈⇒≡`,
-- `refScriptsSize-reorder`, `lookupScriptHash-reorder`,
-- `hashScriptIntegrity-reorder`) support only the proven-but-not-yet-consumed
-- `UTXOW`-congruence stack, kept as the UTxO component of a future full
-- `LEDGER` congruence.  Everything else is fully proven.

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Specification.Ledger.Properties.Reorder
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Conway.Specification.Utxo txs abs
  using ( outs; UTxOState; ⟦_,_,_,_⟧ᵘ; UTxOEnv; cbalance; balance; updateCertDeposits; updateProposalDeposits
        ; updateDeposits; certDeposit; certRefund; ValidCertDeposits
        ; minfee; collateralCheck; consumed; produced; refScriptsSize; depositsChange; isAdaOnly
        ; _⊢_⇀⦇_,UTXOS⦈_; Scripts-Yes; Scripts-No
        ; _⊢_⇀⦇_,UTXO⦈_; UTXO-inductive; UTXO-inductive⋯
        ; delegate; regpool; regdrep; reg; dereg; deregdrep; ccreghot; retirepool )
  renaming ([] to ⟨⟩ᵛ)
open import Ledger.Conway.Specification.Script.Validation txs abs
  using (collectP2ScriptsWithContext; evalP2Scripts; credsNeeded; credentialToP2Script; txOutToP2Script
        ; txOutToDataHash; rdptr)
open import Ledger.Conway.Specification.Utxow txs abs
  using ( TxOutSpendable-PlutusV1; TxOutSpendable-PlutusV2; languages; allowedLanguages; hashScriptIntegrity
        ; HasInlineDatum; Dec-HasInlineDatum; UsesV3Features; Dec-UsesV3Features
        ; _⊢_⇀⦇_,UTXOW⦈_; UTXOW-inductive; UTXOW⇒UTXO )
import Data.Maybe.Relation.Unary.All as Maybe
open import Ledger.Conway.Specification.Fees using (scriptsCost)
open import Ledger.Conway.Specification.Utxo.Properties.Base txs abs using (balance-cong-coin; balance-cong)
open import Ledger.Conway.Specification.Ledger.Properties.StateEquiv txs abs
open import Interface.ComputationalRelation
open import abstract-set-theory.Axiom.Set.Map.Extra using (∪⁺-cong-l; ∪⁺-cong-r; restrict-cong)
open import Ledger.Conway.Specification.Ledger.Properties.MapCommutativity
  using (LocalOp; local-comm; ∪⁺-sing-local; ∪ˡ-sing-local; resᶜ-sing-local)
open import Ledger.Conway.Specification.Ledger.Properties.GeneralLemmas
open import Ledger.Conway.Specification.Ledger.Properties.ReorderLemmas txs abs public
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.Nat.Properties using (+-isCommutativeSemigroup; +-assoc; +-comm; +-identityʳ)

import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; prep; swap)
  renaming (refl to ↭-rfl; trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
  using (All-resp-↭)

private variable
  Γ : LEnv
  s s′ s″ s₁ s₂ : LState
  t t₁ t₂ tx : Tx
  l l₁ l₂ : List Tx
```
-->

## The hypotheses

The theorem rests on **three separate** hypotheses, deliberately kept apart
(cf. the assumption structure of Vinogradova & Sorokin, *Properties of UTxO
Ledgers…*, LSFA'24, §5.2):

1.  **`Indep`** — the *only* per-pair condition, containing exactly the
    operations that genuinely fail to commute even when both orders are
    valid: the *overwriting* certificate map-updates whose written value
    varies per transaction, captured by disjoint `cwitness`{.AgdaFunction}
    targets (`disjCertCreds`); the deposit-map updates, whose keys
    `cwitness` does *not* capture exactly (`reg c 0` has
    `cwitness ≡ nothing` yet still writes `CredentialDeposit c`), captured by
    disjoint `certDepositKey` targets (`disjDeposits`); and governance votes,
    captured by disjoint *(action, voter)* targets (`disjVotes`).
2.  **`GovDomStable`** (a *global* `All`, not part of `Indep`) — no proposals and no
    DRep (de)registration; votes are permitted.  DRep certs change
    `dom dreps`, which feeds `rmOrphanDRepVotes`{.AgdaFunction}
    (re-filtering *all* pre-existing votes each step) and the `POST-CERT`
    `activeVDelegs` restriction; *disjoint* DRep targets do not save this —
    only a constant `dom dreps` does.
3.  **Both executions succeed** (the two `LEDGERS` premises; individual
    transactions may be phase-2 *invalid*).  This is what lets all the
    UTxO-level pairwise conditions of a swap-based argument (`distinctTxId`,
    `disjInputs`, `noCrossSpend`, `disjWdrls`) be *dropped*: for example, a
    withdrawal forces `rewards[c] → 0` while its validity premise pins
    `rewards[c] = amount`, so two same-credential withdrawals cannot both
    validate in both orders.

State equality is the extensional `_≈ˡ_` of
[StateEquiv](Ledger.Conway.Specification.Ledger.Properties.StateEquiv.md)
(propositional `_≡_` is too strong — the `List`-backed model makes reordered
states `_≡ᵉ_`-equal but not `_≡_`); its restrictions to `UTxOState` and
`CertState` are `_≈ᵘ_` and `_≈ᶜ_` in the proof layer.

## Trust base I: replay protection

Replay protection is the one genuinely-assumed *ledger* fact.  Following
Vinogradova & Sorokin (LSFA'24, Thm 5.1.1 / Cor 5.1.2), along any valid
`LEDGERS`{.AgdaOperator} execution from a well-founded initial `UTxO`, the
transaction-created output sets are pairwise disjoint and disjoint from the
initial state — a consequence of injectivity of the transaction hash together
with well-foundedness of `UTxO₀`.  We assume those two consequences, plus the
combined removed-vs-later-added disjointness `Ins#Outs`: each transaction's
*removed* keys (inputs if phase-2 valid, collateral inputs if invalid) are
disjoint from its own and all later transactions' *added* maps.  For inputs
this is Cor 5.1.2 (inputs pre-exist while outputs are freshly `txId`-keyed);
for collateral inputs the justification is the same, since the `UTXO` rule
requires them to exist at fire time (`collateralInputs ⊆ dom utxo`).

```agda
postulate
  -- Replay protection (LSFA'24 Cor 5.1.2): created outputs are pairwise disjoint …
  replay-outs-disjoint :
      Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → AllPairs (λ t t′ → disjoint (dom (outs (t .Tx.body) ˢ)) (dom (outs (t′ .Tx.body) ˢ))) l
  -- … and disjoint from the initial UTxO,
  replay-outs-fresh :
      Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → Allᴸ.All (λ t → disjoint (dom (LState.utxoSt s .UTxOState.utxo ˢ)) (dom (outs (t .Tx.body) ˢ))) l
  -- … and each transaction's removed keys avoid all later-added maps.
  Ins#Outs-exec : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → Ins#Outs l
```

## Trust base II: set-flattening congruences

The abstract set interface leaves one class of operations under-determined:
those that *flatten* a set into a scalar — by enumerating it
(`setToList`{.AgdaFunction}), hashing it, or summing over it.  In the
concrete `List`-backed model every one of them is order-blind (enumerated
sets are duplicate-free, hashes don't collide, sums commute), but none of
that is derivable abstractly.  The five flattening points reachable from a
`LEDGER` step are isolated as the following assumptions, used **only** by the
`UTXOW`-congruence stack (the UTxO half of a `LEDGER` congruence, consumed by
the [Insertion](Ledger.Conway.Specification.Ledger.Properties.Insertion.md)
development) — the final theorem itself never touches them:

* `collectP2Scripts-eval-cong` — the **one irreducible assumption** of the
  whole development: the collected Plutus scripts' `valContext` embeds
  `txInfo`'s `realizedInputs = utxo ∣ txIns`, serialised to `Data` and handed
  to the abstract `validP2Script`; nothing forces that serialisation to be
  canonical, so we assume Plutus validation cannot observe the ordering of
  its realized-input set.
* `Value-≈⇒≡` — `Value`{.AgdaDatatype} is an abstract commutative monoid, so
  `balance`{.AgdaFunction} is preserved under reordering only up to the
  monoid setoid `_≈_`; the `UTXO` rule states value preservation with
  propositional `_≡_`.  The bridge — setoid equality is propositional — holds
  in every concrete `TokenAlgebra`{.AgdaRecord}.
* `refScriptsSize-reorder` — sums `scriptSize` over
  `setToList (refScripts tx utxo)`; `minfee`{.AgdaFunction} inherits
  order-invariance from it.
* `lookupScriptHash-reorder` — looks a hash up in
  `setToMap (mapˢ ⟨ hash , id ⟩ (txscripts tx utxo))`; which of two
  hash-colliding scripts survives `setToMap` depends on enumeration order,
  and hashes don't collide only concretely.
* `hashScriptIntegrity-reorder` — hashes a *set* of language views, i.e.
  serialises it.

```agda
postulate
  collectP2Scripts-eval-cong : ∀ {pp tx} {u u′ : UTxO} → u ˢ ≡ᵉ u′ ˢ
    → evalP2Scripts (collectP2ScriptsWithContext pp tx u)
    ≡ evalP2Scripts (collectP2ScriptsWithContext pp tx u′)

  Value-≈⇒≡ : ∀ {a b : Value} → a ≈ b → a ≡ b

  refScriptsSize-reorder : ∀ {tx} {u u′ : UTxO} → u ˢ ≡ᵉ u′ ˢ
    → refScriptsSize u tx ≡ refScriptsSize u′ tx

  lookupScriptHash-reorder : ∀ {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → ∀ tx sh
    → lookupScriptHash sh tx u ≡ lookupScriptHash sh tx u″

  hashScriptIntegrity-reorder : ∀ {pp} {langs langs′ : ℙ Language} {rdrms} {dats}
    → langs ≡ᵉ langs′
    → hashScriptIntegrity pp langs rdrms dats ≡ hashScriptIntegrity pp langs′ rdrms dats
```

With these, every `UTXOW`/`UTXO`/`UTXOS` premise and state update respects
`_≈ᵘ_`: the witnessing premises compare sets built by membership-only
operations (transported by the congruence bricks of the proof layer and
`GeneralLemmas`), `allowedLanguages`{.AgdaFunction} decides its guards
identically because it reads the `UTxO` only through existentials over
`range (outs txb) ∪ range (utxo ∣ (txIns ∪ refInputs))`, and the flattening
points are the assumptions above.  The result is
`UTXOW-cong`{.AgdaFunction} in the proof layer.

## The per-field arguments

Each `LState` field is handled by its own argument in the proof layer; this
section summarizes them, one per field.

### `utxo`

A `LEDGER` step updates the `utxo` field by a per-transaction operation keyed
on the validity tag: a valid transaction applies `(_ ∣ txIns ᶜ) ∪ˡ outs`, an
invalid one merely consumes its collateral (`_∣ collateralInputs ᶜ`).
Iterating this extraction over a trace and applying replay protection
collapses the fold to the closed form `(u₀ ∪ ⋃added) ∖ ⋃removed`
(`utxoᶠ-net`{.AgdaFunction} — the paper's Thm 5.2.1, at mixed validity),
which reads the list only through two permutation-invariant folds
(`netU-↭`{.AgdaFunction}, using `replay-outs-disjoint` for the left-biased
union of added maps).  Chaining extraction, closed form, and `netU-↭` gives
`LEDGERS-utxo≈`{.AgdaFunction} — with no per-pair condition and no validity
assumption.  (The proof layer also retains the local pairwise swap
`utxo-comm`{.AgdaFunction}, the heart of the same argument, though the final
theorem goes through the closed form.)

### `fees` and `donations`

Each sums a per-transaction quantity, so the sum is permutation-invariant by
commutativity of `_+_` (`LEDGERS-fees≈`{.AgdaFunction},
`LEDGERS-don≈`{.AgdaFunction}).  The one subtlety is the fee delta of an
invalid transaction: it reads the *current* UTxO through `_∣ collIns t`.
With the `collateralInputs ⊆ dom utxo` premise of the `UTXO` rule, that
restriction is *determined* by any left-unique extension of the current UTxO
— in particular by the global valuation `u₀ ∪ˡ outsAll l`, well-defined by
replay protection.  So the delta is order-free, with **no** per-pair
collateral condition.

### `deposits`

`updateDeposits`{.AgdaFunction} is a left fold of single-certificate updates,
each *local at one deposit key* (`certDepositKey`) in the sense of
`MapCommutativity`: an aggregating insert (`reg`/`delegate`/`regdrep`), a
first-wins insert (`regpool`), a deletion (`dereg`/`deregdrep`), or the
identity.  Key-local operations at distinct keys commute regardless of shape
(`local-comm`), `disjDeposits` supplies the key-distinctness across `Indep`
transactions, under `GovDomStable` the proposal-deposit fold is the identity, and
invalid transactions leave deposits untouched.  The generic Mazurkiewicz-style
engine `foldl-↭`{.AgdaFunction} (commutation on `Indep` pairs + congruence in
the accumulator ⇒ fold invariant under `AllPairs Indep` permutations) then
discharges the field: `LEDGERS-deposits≈`{.AgdaFunction} — **proven**.

### `govSt`

With proposals excluded but votes allowed, a phase-2-valid transaction's
governance effect is a fold of `addVote`{.AgdaFunction} updates over its
votes, behind the per-step orphan-vote filter `rmOrphanDRepVotes` (an invalid
transaction leaves `govSt` untouched).  Three facts normalize the folds:
registered votes pass through the filter; the filter reads the certificate
state only through `dom dreps`, which is *constant* along `GovDomStable` steps (the
`PRE-CERT` refresh is dom-preserving, `DELEG`/`POOL` never touch `GState`,
DRep certs are excluded); and two votes with distinct *(action, voter)*
targets commute (`disjVotes`).  The same `foldl-↭` engine then discharges the
field: `LEDGERS-govSt≈`{.AgdaFunction} — **proven** for the votes-only
fragment.

### Certificate state

The per-certificate updates are `insertIfJust`-style single-key operations,
and the proof layer establishes all the pairwise bricks (`delegate`, `reg`,
`dereg` and mixed pairs commute at distinct credentials; the
`PRE-CERT`/`CERT`-fold/`POST-CERT` pipeline respects `_≈ᶜ_`).  What is *not*
yet done is the field-level net-effect argument: a pure per-pair `certOp`
swap is falsified by `reg`-then-`dereg`-style counterexamples that only
both-sequence validity excludes, so — unlike `deposits` — the field needs a
validity-aware argument.  It is isolated as the one open field obligation:

```agda
postulate
  LEDGERS-cert≈ :
      Allᴸ.All GovDomStable l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
    → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
    → LState.certState s₁ ≈ᶜ LState.certState s₂
```

## The reordering theorem

**Trust base.** `LEDGERS-reorder`{.AgdaFunction} depends on exactly four
postulates: the three replay-protection facts and `LEDGERS-cert≈`.  The five
set-flattening assumptions feed only the congruence stack, not the theorem.

```agda
open Assuming
  replay-outs-disjoint replay-outs-fresh collectP2Scripts-eval-cong
  Value-≈⇒≡ refScriptsSize-reorder
  (λ {u} {u″} eq tx sh → lookupScriptHash-reorder {u} {u″} eq tx sh)
  hashScriptIntegrity-reorder Ins#Outs-exec
  public

LEDGERS-reorder :
    Allᴸ.All GovDomStable l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → s₁ ≈ˡ s₂
LEDGERS-reorder ng ap p st₁ st₂ = record
  { utxo≈      = LEDGERS-utxo≈ p st₁ st₂
  ; fees≈      = LEDGERS-fees≈ p st₁ st₂
  ; deposits≈  = LEDGERS-deposits≈ ng ap p st₁ st₂
  ; donations≈ = LEDGERS-don≈ p st₁ st₂
  ; govSt≈     = LEDGERS-govSt≈ ng ap p st₁ st₂
  ; vDelegs≈ = cert .vd≈ ; sDelegs≈ = cert .sd≈ ; rewards≈ = cert .rw≈
  ; pools≈   = cert .pl≈ ; fPools≈  = cert .fp≈ ; retiring≈ = cert .rt≈
  ; dreps≈   = cert .dr≈ ; ccKeys≈  = cert .cck≈ }
  where open _≈ᶜ_
        cert = LEDGERS-cert≈ ng ap p st₁ st₂
```
