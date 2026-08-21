---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/Insertion.lagda.md
---

# Insertion of a transaction into a validated queue {#sec:ledgers-insertion}

The [reordering theorem](Ledger.Conway.Specification.Ledger.Properties.Reorder.md)
takes *both* executions as given.  This module proves the companion
**reachability** statement for mempool insertion: a new transaction `tx` that
has been validated **twice** against a validated queue `txs1 ++ txs2` — once
at the insertion point (the state after `txs1`) and once at the end of the
queue — can be inserted in the middle, `txs1 ++ tx ∷ txs2`, **without
revalidating any queued transaction**.

Each validation of `tx` eliminates one failure mode, and together they replace
every pairwise input condition:

* the **middle** validation pins `tx`'s reads at the insertion point and (with
  output freshness) rules out `tx` depending on an output *created by* `txs2`;
* the **end** validation certifies that `tx`'s reads *survived* `txs2` — no
  queued transaction consumed them (a spent input never resurrects).

What the given runs cannot certify is reads that are **not consumptions**: a
suffix transaction that merely *reads* something `tx` spends (a reference
input, detached collateral, or the unconsumed inputs of a phase-2-invalid
transaction) is invalidated by the insertion with both given runs intact.
Hence the two syntactic classes below: the *inserted* transaction must have a
trivial certificate/governance component (`SimpleTx`), and each *suffix*
transaction must read the UTxO only at what it consumes (`SpendOnly`).  The
prefix `txs1` needs no conditions at all.  The proof reduces to two
single-step obligations (`LEDGER-defer`, `LEDGER-cong`), stated as postulates.

<!--
```agda
{-# OPTIONS --with-K #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Specification.Ledger.Properties.Insertion
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Reorder txs abs
  using (Indep; Indep-sym; GovDomStable; LEDGERS-reorder)

open import Data.List.Properties using (++-identityʳ)
import Data.List.Relation.Unary.All as Allᴸ
import Data.List.Relation.Unary.All.Properties as AllPropᴸ
import Data.List.Relation.Unary.AllPairs.Properties as APPropᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; prep; swap; ↭-reflexive)
  renaming (refl to ↭-rfl; trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
  using (shift)

private variable
  Γ : LEnv
  s s₀ s₁ s₂ s₃ s′ s″ : LState
  tx t : Tx
  txs1 txs2 l : List Tx
```
-->

## The two transaction classes

```agda
private
  ins collIns : Tx → ℙ TxIn
  ins     t = t .Tx.body .TxBody.txIns
  collIns t = t .Tx.body .TxBody.collateralInputs

-- The inserted transaction: trivial certificate and governance components.
record SimpleTx (t : Tx) : Type where
  field
    noCerts    : t .Tx.body .TxBody.txCerts ≡ []
    noWdrls    : t .Tx.body .TxBody.txWithdrawals ˢ ≡ᵉ ∅
    noGovProps : t .Tx.body .TxBody.txGovProposals ≡ []
    noGovVotes : t .Tx.body .TxBody.txGovVotes ≡ []

-- A suffix transaction: reads the UTxO exactly at what it consumes.
record SpendOnly (t : Tx) : Type where
  field
    valid   : t .Tx.isValid ≡ true
    noRefs  : t .Tx.body .TxBody.refInputs ≡ᵉ ∅
    collSub : collIns t ⊆ ins t
```

Why these and nothing more:

* `SimpleTx` — with no certificates and no withdrawals, `tx`'s `CERTS`
  component is `PRE-CERT`/`POST-CERT` only: `PRE-CERT`'s two premises are
  trivial at empty withdrawals and `POST-CERT` has no premises, so the
  component fires at *any* `CertState` and the suffix's certificate writes are
  irrelevant.  With no proposals and no votes its `GOVS` component is the
  trivial base step (`GovDomStable` is derived below), and its `Indep`
  write-footprint is empty, so `Indep tx t` holds *vacuously* for every `t`.
  Note the UTxO side of `tx` is **unconstrained**: reference inputs, detached
  collateral, even phase-2 invalidity are fine, because `tx` re-fires exactly
  where it was validated.
* `SpendOnly` — the suffix transactions are the ones being *crossed*: each
  re-fires after `tx`'s consumption.  The end validation certifies only that
  their **consumption** avoided `tx`'s reads, so everything they read must be
  something they consume: phase-2 valid (an invalid transaction reads all its
  inputs but consumes only collateral), no reference inputs, collateral
  inside the spending inputs.

```agda
private
  All-[] : ∀ {A : Type} {P : A → Type} {xs : List A} → xs ≡ [] → Allᴸ.All P xs
  All-[] refl = Allᴸ.[]

  disj-mapMaybe-[] : {A B : Type} {f : A → Maybe B} {xs : List A} {Y : ℙ B}
    → xs ≡ [] → disjoint (fromList (mapMaybe f xs)) Y
  disj-mapMaybe-[] refl a∈ _ with Equivalence.from ∈-fromList a∈
  ... | ()

  disj-map-[] : {A B : Type} {f : A → B} {xs : List A} {Y : ℙ B}
    → xs ≡ [] → disjoint (fromList (map f xs)) Y
  disj-map-[] refl a∈ _ with Equivalence.from ∈-fromList a∈
  ... | ()

Simple⇒GovDomStable : SimpleTx tx → GovDomStable tx
Simple⇒GovDomStable sx = sx .SimpleTx.noGovProps , All-[] (sx .SimpleTx.noCerts)

Simple⇒Indep : SimpleTx tx → ∀ t → Indep tx t
Simple⇒Indep sx t = record
  { disjCertCreds = disj-mapMaybe-[] (sx .SimpleTx.noCerts)
  ; disjDeposits  = disj-mapMaybe-[] (sx .SimpleTx.noCerts)
  ; disjVotes     = disj-map-[]      (sx .SimpleTx.noGovVotes)
  }
```

## The two single-step obligations

```agda
postulate
  -- Crossing a `SimpleTx` over a `SpendOnly` queue transaction, in both
  -- directions — sound without any pairwise hypothesis, because the needed
  -- disjointness is derivable from the step hypotheses:
  --   * `tx` past `t` (first conclusion): `tx`'s reads are present at `s`
  --     (its own containment premise) and again after the whole suffix (the
  --     end validation), and a spent input never resurrects (replay
  --     protection), so `t` removed none of them; created outputs are fresh,
  --     so the window `utxo ∣ reads tx` is untouched.  A `SimpleTx`'s
  --     certificate component fires at any `CertState` and its `GOVS`
  --     component is the trivial base step, so `t`'s cert writes don't
  --     matter.  No condition on `t` is needed for this direction.
  --   * `t` past `tx` (second conclusion): a `SpendOnly` `t` reads only
  --     `ins t`.  If `tx` consumed some `j ∈ ins t`, then `j ∈ reads tx`;
  --     but `t` consumed `j` in the given suffix run, so `j` is absent at
  --     the end of the suffix and cannot resurrect — contradicting the end
  --     validation's containment premise.  So `tx`'s consumption avoids
  --     `t`'s window.  (For `t`'s certificate premises: `tx`'s cert
  --     component is the identity on `POST-CERT`-normalized states, and
  --     every reachable `certState` is one — each cert-changing step ends
  --     with `POST-CERT`, and `tx` changes neither `dreps` nor votes — so
  --     `tx` leaves everything `t`'s `CERTS` premises read unchanged.)
  -- Discharging this is the window-form (restriction-equality) transport of
  -- the `UTXOW`-congruence stack of the reordering development.
  LEDGER-defer :
      SimpleTx tx → SpendOnly t
    → Γ ⊢ s  ⇀⦇ tx ,LEDGER⦈ s′    -- tx validated at s (the insertion point)
    → Γ ⊢ s  ⇀⦇ t ,LEDGER⦈ s″     -- head of the suffix, without tx
    → Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s₁    -- the rest of the suffix
    → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂    -- tx validated again at the end
    → (∃[ s₃ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s₃))   -- tx also fires right after t …
    × (∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t  ,LEDGER⦈ s₃))   -- … and t re-fires after tx

  -- `LEDGER` is well-defined on the `_≈ˡ_` quotient.  The UTxO component is
  -- discharged by `UTXOW-cong` in the reordering development; the certificate
  -- and governance components are the `LEDGERS-cert≈` frontier.
  LEDGER-cong :
      Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → s ≈ˡ s″
    → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s‴ × s′ ≈ˡ s‴)

-- Congruence lifts to traces by induction.
LEDGERS-cong :
    Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → s ≈ˡ s″
  → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s‴ × s′ ≈ˡ s‴)
LEDGERS-cong (BS-base Id-nop) s≈ = -, BS-base Id-nop , s≈
LEDGERS-cong (BS-ind st rest) s≈ =
  let (_ , st′   , m≈) = LEDGER-cong st s≈
      (_ , rest′ , r≈) = LEDGERS-cong rest m≈
  in  -, BS-ind st′ rest′ , r≈

-- Two runs concatenate.
LEDGERS-++ :
    Γ ⊢ s ⇀⦇ txs1 ,LEDGERS⦈ s′ → Γ ⊢ s′ ⇀⦇ txs2 ,LEDGERS⦈ s″
  → Γ ⊢ s ⇀⦇ txs1 ++ txs2 ,LEDGERS⦈ s″
LEDGERS-++ (BS-base Id-nop) r = r
LEDGERS-++ (BS-ind st rest) r = BS-ind st (LEDGERS-++ rest r)
```

## The insertion theorem

The suffix re-runs after `tx` by induction: for the head `t`, `LEDGER-defer`
yields both crossings, the two-element reordering theorem (`Indep tx t` by
`Simple⇒Indep`) makes the two orders end `≈ˡ`-equal, the induction hypothesis
re-runs the tail after the `[t , tx]` order, and `LEDGERS-cong` transports
that run to the `[tx , t]` side.

```agda
private
  hoist :
      SimpleTx tx
    → Allᴸ.All GovDomStable txs2 → Allᴸ.All SpendOnly txs2
    → Γ ⊢ s ⇀⦇ txs2 ,LEDGERS⦈ s₁      -- the suffix, without tx
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′         -- validation #1: here
    → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂        -- validation #2: at the end
    → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ txs2 ,LEDGERS⦈ s₃)
  hoist _ _ _ (BS-base Id-nop) _ _ = -, BS-base Id-nop
  hoist {tx = tx} {txs2 = t ∷ ts} sx (ngt Allᴸ.∷ ngs) (sot Allᴸ.∷ sos)
        (BS-ind t-step rest) tx-mid tx-end =
    let ((_ , tx-step₂) , (_ , t-step₂)) = LEDGER-defer sx sot tx-mid t-step rest tx-end
        e = LEDGERS-reorder
              (ngt Allᴸ.∷ Simple⇒GovDomStable sx Allᴸ.∷ Allᴸ.[])
              ((Indep-sym (Simple⇒Indep sx t) Allᴸ.∷ Allᴸ.[]) ∷ (Allᴸ.[] ∷ []))
              (swap t tx ↭-rfl)
              (BS-ind t-step (BS-ind tx-step₂ (BS-base Id-nop)))
              (BS-ind tx-mid (BS-ind t-step₂ (BS-base Id-nop)))
        (_ , ts-run)     = hoist sx ngs sos rest tx-step₂ tx-end
        (_ , ts-run′ , _) = LEDGERS-cong ts-run e
    in -, BS-ind t-step₂ ts-run′

insert-after :
    SimpleTx tx
  → Allᴸ.All GovDomStable txs2 → Allᴸ.All SpendOnly txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀      -- the prefix (no conditions)
  → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁      -- the suffix
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′         -- validation #1: at the insertion point
  → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂         -- validation #2: at the end of the queue
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃)
insert-after sx ngs sos pre suf tx-mid tx-end =
  let (_ , suf′) = hoist sx ngs sos suf tx-mid tx-end
  in -, LEDGERS-++ pre (BS-ind tx-mid suf′)
```

## Corollary: insertion changes nothing observable

Reordering the whole suffix (its interface needs `Indep` *among the suffix
transactions*; the pairs involving `tx` come from `Simple⇒Indep`) shows the
inserted run ends `≈ˡ`-equal to simply appending `tx` at the back — the state
`s₂` that validation #2 already reached.  The prefix `txs1` drops out
entirely:

```agda
insert-after-≈ :
    SimpleTx tx
  → Allᴸ.All GovDomStable txs2 → Allᴸ.All SpendOnly txs2
  → AllPairs Indep txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀
  → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′
  → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
insert-after-≈ {tx = tx} {txs2 = txs2} sx ngs sos ap pre suf tx-mid tx-end =
  let (s₃ , suf′) = hoist sx ngs sos suf tx-mid tx-end
      full = BS-ind tx-mid suf′
      cmp  = LEDGERS-++ suf (BS-ind tx-end (BS-base Id-nop))
      e = LEDGERS-reorder
            (AllPropᴸ.++⁺ ngs (Simple⇒GovDomStable sx Allᴸ.∷ Allᴸ.[]))
            (APPropᴸ.++⁺ ap (Allᴸ.[] ∷ [])
              (Allᴸ.tabulate (λ {t} _ → Indep-sym (Simple⇒Indep sx t) Allᴸ.∷ Allᴸ.[])))
            (↭-trans (shift tx txs2 []) (↭-reflexive (cong (tx ∷_) (++-identityʳ txs2))))
            cmp full
  in s₃ , LEDGERS-++ pre full , e
```
