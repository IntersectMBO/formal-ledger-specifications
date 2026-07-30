---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/Insertion.lagda.md
---

# Deferred insertion of a transaction {#sec:ledgers-insertion}

The [reordering theorem](Ledger.Conway.Specification.Ledger.Properties.Reorder.md)
takes *both* executions as given.  This module proves the companion
**reachability** statement needed for revalidation-free mempool insertion:
if `txs1 ++ txs2` executes from `s` and so does `tx ∷ txs1 ++ txs2`, then
`txs1 ++ tx ∷ txs2` also executes from `s` — the new transaction `tx`,
validated at the *front*, may be **deferred past `txs1`**.

For a **simple** `tx` — no certificates, no withdrawals, no reference
inputs, no governance, collateral inside its spending inputs, phase-2 valid
— *no pairwise read/write hypotheses are needed at all*.  Every
cross-transaction fact is already certified by the two given runs: a simple
`tx` reads the UTxO exactly at what it consumes, each `t ∈ txs1`
demonstrably fires *after* `tx` in the given `tx ∷ txs1 ++ txs2` run, and
created outputs are replay-protected — so nothing `t` spends can be
something `tx` needs.  The proof reduces to two clearly-isolated
single-step obligations (`LEDGER-defer`, `LEDGER-cong`), stated as
postulates whose hypotheses are per-transaction and syntactic.

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
  using (Indep; NoGov; LEDGERS-reorder)

import Data.List.Relation.Unary.All as Allᴸ
import Data.List.Relation.Unary.All.Properties as AllPropᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; prep; swap)
  renaming (refl to ↭-rfl; trans to ↭-trans; ↭-sym to ↭-sym)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
  using (shift)

private variable
  Γ : LEnv
  s s₁ s₂ s₃ s′ s″ s‴ : LState
  tx t : Tx
  txs1 txs2 : List Tx
```
-->

## The simple transaction class

```agda
private
  ins collIns : Tx → ℙ TxIn
  ins     t = t .Tx.body .TxBody.txIns
  collIns t = t .Tx.body .TxBody.collateralInputs

record SimpleTx (t : Tx) : Type where
  field
    noCerts : t .Tx.body .TxBody.txCerts ≡ []
    noWdrls : t .Tx.body .TxBody.txWithdrawals ˢ ≡ᵉ ∅
    noRefs  : t .Tx.body .TxBody.refInputs ≡ᵉ ∅
    noGovVotes : t .Tx.body .TxBody.txGovVotes ≡ []
    collSub : collIns t ⊆ ins t
    valid   : t .Tx.isValid ≡ true
```

Each field removes one class of reads that the given runs do *not* certify
the persistence of:

* `noCerts`/`noWdrls` — `tx`'s `CERTS` component is then `PRE-CERT` and
  `POST-CERT` only; `PRE-CERT`'s two premises are trivial at empty
  withdrawals and `POST-CERT` has no premises, so the certificate component
  fires at *any* `CertState` and `t`'s certificate writes are irrelevant.
* `noRefs`/`collSub`/`valid` — a valid `tx` then reads the UTxO exactly at
  `ins tx`, which is also exactly what it consumes.  Reference inputs and
  detached collateral are read-only: the given `tx ∷ …` run stays valid
  even if some `t` later spends them, and deferred insertion genuinely
  fails — they are counterexamples, not proof debt.
* `noGovVotes` — `tx`'s governance write-targets are empty, so together with
  `noCerts` all three `Indep` fields hold vacuously:

```agda
private
  disj-mapMaybe-[] : {A B : Type} {f : A → Maybe B} {l : List A} {Y : ℙ B}
    → l ≡ [] → disjoint (fromList (mapMaybe f l)) Y
  disj-mapMaybe-[] refl a∈ _ with Equivalence.from ∈-fromList a∈
  ... | ()

  disj-map-[] : {A B : Type} {f : A → B} {l : List A} {Y : ℙ B}
    → l ≡ [] → disjoint (fromList (map f l)) Y
  disj-map-[] refl a∈ _ with Equivalence.from ∈-fromList a∈
  ... | ()

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
  -- Premise stability for a *simple* `tx` — sound without any pairwise
  -- hypothesis, because the disjointness it needs is derivable from its own
  -- step hypotheses: `t` fires after `tx` in the given run, so `t`'s
  -- containment premise certifies its reads are present *after* `tx`
  -- consumed `ins tx`; created outputs are fresh (replay protection), so
  -- `t`'s reads avoid `ins tx` altogether.  A simple `tx` reads the UTxO
  -- only at `ins tx` (`noRefs`, `collSub`, `valid`), its `CERTS` component
  -- fires at any `CertState` (`noCerts`, `noWdrls`), and its `GOVS`
  -- component is the trivial base step.  Discharging this is the
  -- window-form (restriction-equality) transport of the `UTXOW`-congruence
  -- stack of the reordering module.
  LEDGER-defer :
      SimpleTx tx → NoGov tx → NoGov t
    → Γ ⊢ s  ⇀⦇ tx ,LEDGER⦈ s′   -- tx fires first        (given run)
    → Γ ⊢ s′ ⇀⦇ t ,LEDGER⦈ s″    -- t fires after tx      (given run)
    → Γ ⊢ s  ⇀⦇ t ,LEDGER⦈ s‴    -- t fires without tx    (other run)
    → ∃[ s₄ ] (Γ ⊢ s‴ ⇀⦇ tx ,LEDGER⦈ s₄)

  -- `LEDGER` is well-defined on the `_≈ˡ_` quotient.  The UTxO component is
  -- discharged by `UTXOW-cong` in the reordering module; the certificate and
  -- governance components are the `LEDGERS-cert≈` frontier.
  LEDGER-cong :
      Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → s ≈ˡ s″
    → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s‴ × s′ ≈ˡ s‴)

-- Congruence lifts to traces by induction.
LEDGERS-cong :
    Γ ⊢ s ⇀⦇ txs1 ,LEDGERS⦈ s′ → s ≈ˡ s″
  → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ txs1 ,LEDGERS⦈ s‴ × s′ ≈ˡ s‴)
LEDGERS-cong (BS-base Id-nop) s≈ = -, BS-base Id-nop , s≈
LEDGERS-cong (BS-ind st rest) s≈ =
  let (_ , st′   , m≈) = LEDGER-cong st s≈
      (_ , rest′ , r≈) = LEDGERS-cong rest m≈
  in  -, BS-ind st′ rest′ , r≈
```

## The insertion theorem

By induction on `txs1`.  In the step case for `t ∷ txs1`: `t` fires at `s`
(head of the `txs1 ++ txs2` run) and also after `tx` (the given
`tx ∷ t ∷ …` run), so `tx` still fires after it (`LEDGER-defer` — all
three step hypotheses are at hand, no side conditions), the two-element
prefixes `[tx , t]` and `[t , tx]` reach `≈ˡ`-equal states (**the main
reordering theorem**, with `Indep tx t` supplied by `Simple⇒Indep`), so
the remainder of the given run transports across (`LEDGERS-cong`) and the
induction hypothesis applies.

```agda
insert-after :
    SimpleTx tx
  → NoGov tx
  → Allᴸ.All NoGov txs1
  → Γ ⊢ s ⇀⦇ txs1 ++ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ tx ∷ txs1 ++ txs2 ,LEDGERS⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃)
insert-after {txs1 = []} _ _ _ _ h1 = -, h1
insert-after {tx = tx} {txs1 = t ∷ txs1} {txs2 = txs2} sx ngx (ngt Allᴸ.∷ ngs)
             (BS-ind t-step h0′) (BS-ind tx-step (BS-ind t-step₂ h1″)) =
  let (_ , tx-step′) = LEDGER-defer sx ngx ngt tx-step t-step₂ t-step
      it = Simple⇒Indep sx t
      e = LEDGERS-reorder
            (ngx Allᴸ.∷ ngt Allᴸ.∷ Allᴸ.[])
            ((it Allᴸ.∷ Allᴸ.[]) ∷ (Allᴸ.[] ∷ []))
            (swap tx t ↭-rfl)
            (BS-ind tx-step (BS-ind t-step₂ (BS-base Id-nop)))
            (BS-ind t-step (BS-ind tx-step′ (BS-base Id-nop)))
      (_ , h1x , _) = LEDGERS-cong h1″ e
      (s₃ , rest) = insert-after sx ngx ngs h0′ (BS-ind tx-step′ h1x)
  in s₃ , BS-ind t-step rest
```

## Corollary: the deferred run ends `≈ˡ`-equal to the given one

The final whole-list reordering still needs `Indep` *among the mempool
transactions themselves* (that is the reordering theorem's interface); the
pairs involving `tx` are supplied by `Simple⇒Indep`.  Under those
hypotheses, the state reached by the deferred sequence is `≈ˡ`-equal to the
one reached by the given `tx ∷ txs1 ++ txs2` run — insertion changes
nothing observable:

```agda
insert-after-≈ :
    SimpleTx tx
  → Allᴸ.All NoGov (tx ∷ txs1 ++ txs2)
  → AllPairs Indep (txs1 ++ txs2)
  → Γ ⊢ s ⇀⦇ txs1 ++ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ tx ∷ txs1 ++ txs2 ,LEDGERS⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
insert-after-≈ {tx = tx} {txs1 = txs1} {txs2 = txs2} sx (ngx Allᴸ.∷ ngs) ap h0 h1 =
  let (s₃ , run₃) = insert-after sx ngx (AllPropᴸ.++⁻ˡ txs1 ngs) h0 h1
  in s₃ , run₃
       , LEDGERS-reorder (ngx Allᴸ.∷ ngs)
           (Allᴸ.tabulate (λ {t′} _ → Simple⇒Indep sx t′) ∷ ap)
           (↭-sym (shift tx txs1 txs2)) h1 run₃
```
