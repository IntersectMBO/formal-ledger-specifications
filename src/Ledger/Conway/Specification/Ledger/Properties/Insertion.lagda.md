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

The three given sequences only ever exercise the orders in which `tx`'s
*reads* happen before `txs1`'s *writes*; the conclusion is the unique order
where they do not.  The extra hypotheses are therefore exactly the read/write
disjointness conditions (`DefersPast`), and the proof reduces to two
clearly-isolated single-step obligations:

1.  `LEDGER-defer` — if `tx` and `t` both fire at `s`, and `t` cannot
    invalidate any premise of `tx` (`Indep` + `DefersPast`), then `tx` still
    fires after `t`.  This is the premise-stability half of the old
    swap-based approach (a per-premise transport across a real state update);
    it is stated as a postulate with the conjectured-sufficient conditions.

2.  `LEDGER-cong` — `LEDGER` is well-defined on the `_≈ˡ_` quotient.  Its
    UTxO component is the fully-proven `UTXOW-cong` stack in the reordering
    module; the certificate/governance component is the same open frontier as
    `LEDGERS-cert≈`.

Given these, the insertion theorem is **proven** below by induction on
`txs1`, invoking the main reordering theorem on two-element prefixes to move
across `≈ˡ`-equal intermediate states.  Note that validity of `tx ∷ txs2`
from `s` is *not* needed as a hypothesis.

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
  s s₁ s₂ s₃ s′ s″ : LState
  tx t : Tx
  txs1 txs2 : List Tx
```
-->

## The deferral conditions

`tx`'s premises read the UTxO exactly at `txIns ∪ refInputs ∪
collateralInputs` (the containment premise of the `UTXO` rule), read the
rewards at its withdrawal credentials with *exact* amounts, and read the
certificate maps at its certificate targets (the latter already covered by
`Indep`).  `DefersPast tx t` says `t` writes none of them.  (`t`'s freshly
created outputs can never shadow `tx`'s reads — those pre-exist by `tx`'s own
validity at `s` and outputs are freshly `txId`-keyed.)

```agda
private
  ins collIns spends reads : Tx → ℙ TxIn
  ins     t = t .Tx.body .TxBody.txIns
  collIns t = t .Tx.body .TxBody.collateralInputs
  spends  t = ins t ∪ collIns t
  reads   t = ins t ∪ t .Tx.body .TxBody.refInputs ∪ collIns t

  wdrlCreds : Tx → ℙ Credential
  wdrlCreds t = mapˢ RewardAddress.stake (dom (t .Tx.body .TxBody.txWithdrawals))

  certCreds : Tx → ℙ Credential
  certCreds t = fromList (mapMaybe cwitness (t .Tx.body .TxBody.txCerts))

record DefersPast (tx t : Tx) : Type where
  field
    disjReads     : disjoint (reads tx) (spends t)
    disjWdrlsW    : disjoint (wdrlCreds tx) (wdrlCreds t)
    disjWdrlsCert : disjoint (wdrlCreds tx) (certCreds t)
```

## The two single-step obligations

```agda
postulate
  -- Premise stability: an independent `t` cannot invalidate `tx`.
  -- Conjectured-sufficient conditions; discharging this is the premise-by-
  -- premise transport of the swap-based approach (each `UTXOW`/`UTXO`/`CERTS`
  -- premise of `tx` survives `t`'s update: the UTxO reads are untouched by
  -- `disjReads` and replay protection, the deposit/certificate reads by
  -- `Indep`, the withdrawal reads by `disjWdrlsW`/`disjWdrlsCert`).
  LEDGER-defer :
      Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
    → Γ ⊢ s ⇀⦇ t ,LEDGER⦈ s″
    → Indep tx t → DefersPast tx t → NoGov tx → NoGov t
    → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s‴)

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
(head of the `txs1 ++ txs2` run), `tx` still fires after it
(`LEDGER-defer`), the two-element prefixes `[tx , t]` and `[t , tx]` reach
`≈ˡ`-equal states (**the main reordering theorem**), so the remainder of the
given `tx ∷ t ∷ …` run transports across (`LEDGERS-cong`) and the induction
hypothesis applies.

```agda
insert-after :
    NoGov tx
  → Allᴸ.All NoGov txs1
  → Allᴸ.All (λ t → Indep tx t × DefersPast tx t) txs1
  → Γ ⊢ s ⇀⦇ txs1 ++ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ tx ∷ txs1 ++ txs2 ,LEDGERS⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃)
insert-after {txs1 = []} _ _ _ _ h1 = -, h1
insert-after {tx = tx} {txs1 = t ∷ txs1} {txs2 = txs2} ngx (ngt Allᴸ.∷ ngs) ((it , dt) Allᴸ.∷ conds)
             (BS-ind t-step h0′) (BS-ind tx-step (BS-ind t-step₂ h1″)) =
  let (x , tx-step′) = LEDGER-defer tx-step t-step it dt ngx ngt
      e = LEDGERS-reorder
            (ngx Allᴸ.∷ ngt Allᴸ.∷ Allᴸ.[])
            ((it Allᴸ.∷ Allᴸ.[]) ∷ (Allᴸ.[] ∷ []))
            (swap tx t ↭-rfl)
            (BS-ind tx-step (BS-ind t-step₂ (BS-base Id-nop)))
            (BS-ind t-step (BS-ind tx-step′ (BS-base Id-nop)))
      (_ , h1x , _) = LEDGERS-cong h1″ e
      (s₃ , rest) = insert-after ngx ngs conds h0′ (BS-ind tx-step′ h1x)
  in s₃ , BS-ind t-step rest
```

## Corollary: the deferred run ends `≈ˡ`-equal to the given one

Under the main theorem's (stronger, whole-list) hypotheses, the state reached
by the deferred sequence is `≈ˡ`-equal to the one reached by the given
`tx ∷ txs1 ++ txs2` run — insertion changes nothing observable:

```agda
insert-after-≈ :
    Allᴸ.All NoGov (tx ∷ txs1 ++ txs2)
  → AllPairs Indep (tx ∷ txs1 ++ txs2)
  → Allᴸ.All (λ t → Indep tx t × DefersPast tx t) txs1
  → Γ ⊢ s ⇀⦇ txs1 ++ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ tx ∷ txs1 ++ txs2 ,LEDGERS⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
insert-after-≈ {tx = tx} {txs1 = txs1} {txs2 = txs2} (ngx Allᴸ.∷ ngs) ap conds h0 h1 =
  let (s₃ , run₃) = insert-after ngx (AllPropᴸ.++⁻ˡ txs1 ngs) conds h0 h1
  in s₃ , run₃
       , LEDGERS-reorder (ngx Allᴸ.∷ ngs) ap
           (↭-sym (shift tx txs1 txs2)) h1 run₃
```
