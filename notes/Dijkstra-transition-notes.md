<!-- File: notes/Dijkstra-transition-notes.md -->

# Dijkstra Era Notes

## A. Conway modules

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

## B. Dijkstra modules

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

**Proposal: CIP-based split**

+  **Guards (CIP-0112)** exist at **both levels** (`guards` field in both bodies).
+  **RequiredTopLevelGuards (CIP-0118)** exist only in **subTx bodies**, and they are enforced by a phase-1 check that top-level `guards` includes them.

**Addendum:** CIP-0112 "guards" are **credentials**, not key hashes, so `txRequiredGuards : ℙ KeyHash` should probably be something like a (nonempty?) container of `Credential`, i.e. `KeyHashObj _` *or* `ScriptObj _`.


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

+  **Update 2**.

   Per-subTx "collection" refers to **building the list of phase-2 script evaluations and their contexts**, and/or **computing a tentative (uncommitted) batch post-state** as an internal decomposition. The ledger **does not commit** any subTx effects until after a **single batch-wide phase-2 evaluation** succeeds; if any script fails, the tentative post-state is discarded and only collateral is collected.

   That keeps Alexey's "we process subTxs" compatible with "phase-2 runs once at end."

   What CIP-0118 forces (for mempool safety) is:

   +  **Phase-2 execution happens once, last, for the whole batch** (top-level + all subTxs).
   +  But we can still **compute** the *prospective* ledger update by iterating through subTxs (and the top-level tx) *before* phase-2; we just must **not commit it** unless phase-2 succeeds.

   So there are really *three* distinct notions that are sometimes conflated:

   1.  **Collect scripts / build script inputs**

       Purely assembling the list of `(script, purpose, redeemer, datum(s), exunits, costmodel, context)` to feed into phase-2 evaluation. (This should **not** mean "commit state.")

   2.  **Process subTxs to compute the prospective post-state**

       We may need this to:

       + compute aggregate `produced/consumed` for POV,
       + accumulate deposits / withdrawals / governance effects,
       + build the final UTxO delta (remove all spent inputs, add all outputs),
       + compute sizes, etc.

       This processing can be done as a fold over subTxs, **but** the result is a *tentative state*.

   3.  **Commit the state**

       This happens *only if* phase-2 succeeds for the whole batch; otherwise we discard the tentative state and apply the collateral-collection branch.


   **Where tension remains**.

   CIP-0118 simultaneously says:

   +  "All inputs … must be contained in the UTxO set before any … are applied," **and**
   +  referenced scripts/datums may come from "outputs of preceding transactions in the batch."

   These two statements are reconcilable only if "inputs" **does not include reference inputs**, or if there's an intended exception.  This should be resolved since it affects whether script contexts can consult an "evolving" UTxO view for reference-script lookup.


+  **Update 1**.

   The apparent tension below is only partly resolved by noting that, per CIP-0118, *phase-2 evaluation is performed once at the end for the full batch; per-subTx collection is only an internal decomposition*.  However, I initially thought subtransactions would not modify ledger state, and only at the very end, when processing the top-level transaction is complete, would the state be modified *once* (accounting for the impact of all subtransactions on the state at that point).  Alexey corrected me on this point; so, apparently, "per-subTx collection is only an internal decomposition" is a bit misleading if ledger state will be modified during this "collection."

   Note that **Phase-2 validation runs last and for the full batch** (mempool safety).

   We need to implement:

   +  Phase-1 checks for the full top-level tx (including subTxs),
   +  a single batch-wide `evalP2Scripts` at the end,
   +  build `ScriptInputs` for:

      + all subTx scripts (contexts built from subTx),
      + all top-level scripts,
      + all top-level guard scripts (contexts include `txInfoSubTxs`),
   +  and evaluate **once** at the end.

   **Still, it is not clear to me whether ledger state will change during Phase-1 checks or "collection" of subTx scripts.**


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

* the *starting* utxo (point (5): all inputs exist beforehand), or
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



