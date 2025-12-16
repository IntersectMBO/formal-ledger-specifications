# Notes on the Dijkstra Era Migration

## A. Conway module annotations

The following are notes on what (from the Conway era) we'll need to touch, and what can likely remain unchanged, as we transition to the Dijkstra era and support nested transactions.

### 1) `Ledger.Conway.Specification.Transaction` (TransactionStructure)

#### Level-independent

+  **Core derived types**.

   + `TxIn = TxId × Ix`;
   + `TxOut = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe Script`;
   + `UTxO = TxIn ⇀ TxOut`.

+  **Witness structure conceptually**: sig map, scripts, datums, redeemers.

+  **`UTxO` helpers used downstream**: `outs`, `balance`, `txInsVKey`, `txInsScript`, script lookup / ref-scripts logic


#### Level-dependent

+  **Top-level-specific assumptions in Conway**.

   +  `TxBody.txFee : Fees` (single fee per `Tx`);
   +  `Tx.isValid : Bool` (single validity bit per `Tx`; used by `UTXOS`);
   +  `collateralInputs` (lives directly in body; `UTXOS` consumes collateral on failure).


+  **Dijkstra impact points**.

   Broadly speaking, nested transactions impacts anything that assumes "the transaction is the whole unit of validation."

   + `Tx.isValid`;
   + redeemer pointer design: Conway has `RdmrPtr = Tag × Ix` (not level-indexed);
   + script-collection interfaces that implicitly assume one `Tx`.

---

### 2) `Ledger.Conway.Specification.Utxo` (UTXO + UTXOS)

#### Level-independent

+  `UTxOEnv` shape (slot/pparams/treasury) is still plausible in Dijkstra.
+  `UTxOState` shape: `(utxo, fees, deposits, donations)` still plausible, *but* absense of fees in subTx may have an impact here.
+  **Helpers**

   + `outs`, `balance`, `minfee` *conceptually*;
   + deposit tracking (`updateDeposits`, `depositsChange`, etc.) is structurally reusable (even if Dijkstra tweaks what counts per-level).


#### Level-dependent

+  **Top-level-specific semantics in Conway**.

   +  `UTXOS` branches on `isValid` and either:

      + applies Tx outputs and fees and deposits and donations (Scripts-Yes)
      + **or** collects collateral and leaves deposits/donations unchanged (Scripts-No)

   +  `UTXO` checks are all per-Tx:

      + per-Tx minfee (`minfee pp utxo tx ≤ txFee`);
      + per-Tx preservation-of-value (`consumed == produced`);
      + collateralCheck depends on `collateralInputs` existing in Tx;
      + per-Tx size limits, ref script size limits, per-output min-ada checks, etc.


+  **Dijkstra impact points**.

   These are places where Dijkstra will need per-subTx vs aggregated treatment:

   +  **Script validation hook**

      Conway does `p2Scripts = collectP2ScriptsWithContext pp tx utxo` once, whereas Dijkstra needs: collect/validate scripts **per subtx** but with shared script set and potentially shared datums/utxo view.

   +  **Fee and balancing logic**

      In Dijkstra transaction batch must be balanced on aggregate and top-level fee covers fees for itself and all its subtransactions, so `minfee` check is only at top level.

   +  **UTxO availability semantics**

      Dijkstra point (5): all inputs must already be in the starting UTxO (no consuming outputs produced earlier in the batch).
      This drastically affects whether subtransactions are applied sequentially "for real" vs simulated vs deferred.

   +  **Collateral on failure**

      If any script fails, none apply; collateral collected. In Dijkstra, we need a top-level success/failure gate---not a per-subTx gate.

---

## B. Dijkstra module annotations

(This section includes concrete fixes for issue #996.)

### 3) `Ledger.Dijkstra.Specification.Transaction`

#### Needs adjustment / decision points

+  `txFee : InTopLevel txLevel Fees` conflicts with our later prose that "all transactions may specify a non-zero fee."

   Prose in point 7 at the bottom of `src/Ledger/Dijkstra/Specification/Transaction.lagda.md` says, "All transactions (sub- and top-level) may specify a non-zero fee."   My understanding is that no fee field should exist in subtransactions; only top-level transactions have (and pay) a fee.

+  `txRequiredTopLevelGuards : InSubLevel txLevel (ScriptHash ⇀ Datum)`

   +  As the name suggests, "top-level guards required by a subtx," which matches our `getSubTxScripts`.
   +  But `ScriptPurpose` in `Script.Validation` currently has only `Guard : (TxId × ScriptHash) → ScriptPurpose` and nothing for a *top-level guard distinct from sub-guard*.  This should be addressed in issue #996.

---

### 4) `Ledger.Dijkstra.Specification.Script.Validation` (issue #996)

We already have the *right shape* in comments: `rdptr`, `credsNeeded`, `collectP2ScriptsWithContext`, etc.

We now need to make it consistent with nested transactions and guards.

#### 4.1 Fix `ScriptPurpose` (guards + top-level guards)

Right now, we have

```agda
Guard : (TxId × ScriptHash) → ScriptPurpose
```

but we need to distinguish at least two cases:

1.  "A guard script that belongs to a particular subTx" (or is required by it), and
2.  "A top-level guard" (global for the batch, or required by the top-level Tx itself).

**Concrete proposal (minimal and matches our current `(TxId × ScriptHash)` design)**

```agda
data GuardScope : Type where
  TopGuard SubGuard : GuardScope

data ScriptPurpose : Type where
  ...
  Guard : GuardScope → (TxId × ScriptHash) → ScriptPurpose
```

+  For a subTx-required top-level guard: `Guard TopGuard (subTxId , sh)`
+  For a subTx-local guard: `Guard SubGuard (subTxId , sh)`
+  If we later decide top-level guards are not keyed by subTxId, then (for `TopGuard`) we could change `(TxId × ScriptHash)` to just `ScriptHash` without touching the rest of the constructors.

**Question**. In the second item, "subTx-local guards" are mentions; do such guards exist?


#### 4.2 Refactor/rename `CredsNeeded` (clarity + guards)

In commented code we have:

+  `credsNeededMinusCollateral` and
+  `credsNeeded : (ℓ : TxLevel) → UTxO → TxBody ℓ → ℙ (ScriptPurpose × Credential)`

We should rename as follows to make "batch vs per-level" obvious:

+  `baseCredsNeeded : TxBody ℓ → ℙ (ScriptPurpose × Credential)`
+  `spendCredsNeeded : (ℓ : TxLevel) → UTxO → TxBody ℓ → ℙ (ScriptPurpose × Credential)`
+  `guardCredsNeeded : (ℓ : TxLevel) → TxBody ℓ → ℙ (ScriptPurpose × Credential)` (new)

Then

```agda
credsNeeded : (ℓ : TxLevel) → UTxO → TxBody ℓ → ℙ (ScriptPurpose × Credential)
credsNeeded ℓ utxo txb = baseCredsNeeded txb ∪ spendCredsNeeded ℓ utxo txb ∪ guardCredsNeeded ℓ txb
```

In `guardCredsNeeded` is where we'll bring in

+  `txRequiredGuards : ℙ KeyHash` (VKey creds)
+  `txRequiredTopLevelGuards : ScriptHash ⇀ Datum` (script creds, via `ScriptObj`)

This addresses #996’s second bullet (rename/refactor + add guards).

#### 4.3 Fix `collectP2ScriptsWithContext` design

We should resolve the conflicting interpretations, but for now we can support both "top-level loops over subTx" and "each subTx collects its own," without committing too much to one or the other, as follows:

**Define a single primitive**

```agda
collectP2ScriptsWithContext
  : (ℓ : TxLevel)
  → PParams → Tx ℓ → UTxO
  → List (P2Script × List Data × ExUnits × CostModel)
```

Then define two derived helpers:

+  For "each subTx collects its own":

   ```agda
   collectBatchP2Scripts : PParams → TopLevelTx → UTxO → List ...
   collectBatchP2Scripts pp topTx utxo =
     concatMap (λ subTx → collectP2ScriptsWithContext TxLevelSub pp subTx utxo)
               (TxBody.txSubTransactions (Tx.txBody topTx))
   ```

+  For "top-level collects once per subTx" it's the same thing; the difference is *where it's called from* and whether `UTxO` evolves.

Now the **real decision** is whether the `utxo` passed to each subTx collection is:

* the *starting* utxo (your point (5): all inputs exist beforehand), or
* a sequentially-updated utxo.

Given the prose (5), the default should be **starting utxo** for script contexts and input lookup; we can still "simulate" updates for later checks, but we shouldn't let script evaluation see a moving target unless CIP-0118 allows it.

This resolves the #996 conflict: we can implement the API so Alexey's preferred evaluation strategy (subtx-local) is natural, while the "top-level iterates" implementation is still trivial.


---

## Potential Conway Refactors

Do these *later* since we agreed we shouldn't touch Conway until after we stand up Dijkstra.

**TODO** (later)

- [ ] Isolate the `TxIn/TxOut/UTxO` helpers into a tiny `Core.UTxO` module.

   - [ ] `outs`
   - [ ] `balance`
   - [ ] `txOutHash`
   - [ ] `refScripts`
   - [ ] `txscripts`
   - [ ] `lookupScriptHash` 



