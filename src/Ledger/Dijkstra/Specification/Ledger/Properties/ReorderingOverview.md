# Dijkstra transaction reordering: results and postulates

Overview of the reordering, insertion and independence development for the Dijkstra era.
Module names below are short for `Ledger.Dijkstra.Specification.Ledger.Properties.<Name>`,
except those marked *(shared)*, which are `Ledger.Prelude.Properties.<Name>` and are era-agnostic.

Throughout:

- a *run* is a `LEDGERS` derivation;
- `≈ˡ` (`StateEquiv`) compares ledger states componentwise: the UTxO and the certificate-state
  maps up to `≡ᵉ`, fees and donations by `≡`, and the governance state as the same list of
  actions whose vote maps agree up to `≡ᵉ`;
- `GovDomStable t` means no transaction in `t`'s batch makes a governance proposal or a DRep
  (de)registration;
- `Indep t₁ t₂` (`ReorderLemmas`) means the batches' certificates have disjoint witnesses, their
  votes have disjoint (action, voter) targets, and neither batch direct-deposits into an account
  the other withdraws from or has a certificate for;
- `FullIndep` (`Independence`) and `QueueCompat` (`CheckedInsertion`) strengthen `Indep` with
  conditions on the batches' footprints (`Footprints`). Both require disjoint account footprints,
  and that one side registers no CC hot keys or the other casts no CC votes. `FullIndep` also
  requires the UTxO entries one reads to be neither spent nor created by the other, pool
  registrations disjoint from the other's pool reads, and distinct pool VRF and BLS keys.
  `QueueCompat tx t` (directional) also requires that `tx` deregisters no DRep that `t` votes as
  or delegates to, that `t`'s certificates avoid `tx`'s proposal accounts, and that every UTxO
  entry `tx` spends and `t` reads is one `t` itself consumes;
- `Normalized s` (`CheckedInsertion`) means the governance state of `s` has no votes by
  unregistered DReps.

## Postulates

| Postulate | Stated in | Used in | Statement |
|---|---|---|---|
| `txIds-unique` | Reorder | Reorder (the three replay facts, `LEDGERS-utxo≈`, `LEDGERS-fees≈`, hence `LEDGERS-reorder`; the other `Assuming` results, such as `LEDGERS-don≈`, `LEDGERS-govSt≈` and `rmO-idem`, receive it only as an unused module argument); through these also Insertion, Independence and CheckedInsertion | Along any run, the ids of the applied transactions (the top-level one, plus its subtransactions when it is valid) are pairwise distinct and are not the id of any input already in the initial UTxO. |
| `LEDGER-defer` | Insertion | Insertion (`insert-after`, `insert-after-≈`) | If a simple transaction is valid at a state and again after a spend-only transaction followed by more transactions, then it is valid right after that spend-only transaction, and that transaction is valid right after it. |
| `LEDGER-cong` | Insertion | Insertion, Independence, CheckedInsertion | If a transaction is valid at a state, it is valid at every `≈ˡ`-equivalent state, with equivalent results. |
| `LEDGER-frame` | Independence | Independence (`LEDGER-comm`, `LEDGERS-permute`, `LEDGER-defers-run`, `insert-indep`, `insert-indep-≈`) | A step of a `GovDomStable` transaction neither enables nor disables a fully independent `GovDomStable` transaction. |
| `LEDGER-defer-checked` | CheckedInsertion | CheckedInsertion (`insert-checked`, `insert-checked-≈`, `reorder-urgent-≈`) | Like `LEDGER-defer`, for any transaction crossing a `GovDomStable` transaction it is `QueueCompat` with. |
| `shift-govSt≈` | CheckedInsertion | CheckedInsertion (`LEDGERS-shift-≈`, and through it `insert-checked`, `insert-checked-≈`, `reorder-urgent-≈`) | From a `Normalized` state, moving a transaction from the back to the front of a `GovDomStable` queue it is `QueueCompat` with gives equivalent governance states. |

### Exact statements

```agda
-- Reorder
txIds-unique : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → UniqueIds (utxoOf s) l

-- Insertion
LEDGER-defer :
    SimpleTx tx → SpendOnly t
  → Γ ⊢ s  ⇀⦇ tx ,LEDGER⦈ s′
  → Γ ⊢ s  ⇀⦇ t ,LEDGER⦈ s″
  → Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s₁
  → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → (∃[ s₃ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s₃)) × (∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t ,LEDGER⦈ s₃))

LEDGER-cong : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → s ≈ˡ s″ → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s‴ × s′ ≈ˡ s‴)

-- Independence
LEDGER-frame :
    GovDomStable t₁ → GovDomStable t₂ → FullIndep t₁ t₂
  → Γ ⊢ s ⇀⦇ t₁ ,LEDGER⦈ s′
  → (∀ {s″} → Γ ⊢ s  ⇀⦇ t₂ ,LEDGER⦈ s″ → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t₂ ,LEDGER⦈ s₃))
  × (∀ {s″} → Γ ⊢ s′ ⇀⦇ t₂ ,LEDGER⦈ s″ → ∃[ s₃ ] (Γ ⊢ s  ⇀⦇ t₂ ,LEDGER⦈ s₃))

-- CheckedInsertion
LEDGER-defer-checked :
    GovDomStable t → QueueCompat tx t
  → Γ ⊢ s  ⇀⦇ tx ,LEDGER⦈ s′
  → Γ ⊢ s  ⇀⦇ t ,LEDGER⦈ s″
  → Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s₁
  → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → (∃[ s₃ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s₃)) × (∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t ,LEDGER⦈ s₃))

shift-govSt≈ :
    Normalized s → Allᴸ.All GovDomStable txs2 → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
  → govOf s₁ ≈ᵍ govOf s₂
```

## Main results

Equalities of maps are up to `≡ᵉ`. "Two runs" always start from the same state.
"Moving a transaction to the front" compares the run of a queue followed by the transaction
with the run of the transaction followed by the queue.

| Result | Module | Statement |
|---|---|---|
| `foldl-↭` | GeneralLemmas *(shared)* | A left fold gives equivalent results on any permutation of a list whose elements all satisfy `P` and pairwise satisfy a symmetric `R`, when the step commutes on `R`-related `P`-elements. |
| `foldl-block-comm`, `foldl-push` | GeneralLemmas *(shared)* | Two blocks, each element of the first commuting with each element of the second, can be folded in either order; one element can be moved past a block it commutes with. |
| `local-comm` | MapCommutativity *(shared)* | Two map updates that each change only their own key, with the result at that key depending only on the input there, commute when the keys differ. |
| `stepAll-net` | NetEffect *(shared)* | Applying a list of remove-then-add updates, none of which removes a key added by itself or a later update, gives the initial map plus all additions, minus all removed keys. |
| `stepAll-↭` | NetEffect *(shared)* | Two permutations of a list of updates, both satisfying that condition, and whose updates' potential additions (`add`, whether applied or not) are pairwise disjoint, give the same map. |
| `STEPS-cong` | TraceReorder *(shared)*, module `Cong` | If a step relation respects a state equivalence, then so do runs of that step relation. |
| `insert-2v`, `insert-2v-≈` | TraceReorder *(shared)*, module `Cong.TwoValidations` | Given a step relation respecting `≈`, a state invariant `Inv` preserved by steps, and, for an inserted transaction satisfying `P` and queue members `Q`-related to it, a deferral lemma and a two-element exchange lemma (from `Inv` states): from an `Inv` start state, such a transaction valid at an insertion point and at the end of the queue can be inserted there; given also a comparison (from `Inv` states) of the whole queue with the transaction at the back and at the front, the result is `≈` to appending it. |
| `STEPS-permute` | TraceReorder *(shared)*, module `Cong.Frame` | Given a frame rule and an exchange lemma for `P`-transactions, a valid run of a list of `P`-transactions that are pairwise `F`-independent can be replayed in any permuted order, ending in an equivalent state. |
| `insert-indep`, `insert-indep-≈` | TraceReorder *(shared)*, module `Cong.Frame` | A `P`-transaction `F`-independent of every member of a queue of `P`-transactions, and valid at the insertion point, can be inserted there; it is also valid at the end, and given a whole-queue comparison, inserting it is `≈` to appending it. |
| `_≈ˡ_`, `≈ˡ-refl`, `≈ˡ-sym`, `≈ˡ-trans` | StateEquiv | Ledger-state equivalence is an equivalence relation. |
| `UniqueIds⇒DisjOuts`, `UniqueIds⇒fresh`, `run-Rem#Add` | ReorderLemmas | If the applied transaction ids are pairwise distinct and new to the initial UTxO, then outputs created by different (sub)transactions are disjoint and fresh, and along a run no (sub)transaction spends an output created by itself or by a later one. |
| `LEDGERS-utxo≈`, `LEDGERS-fees≈`, `LEDGERS-don≈` | ReorderLemmas, module `Assuming` | Two runs over permutations of the same list end with the same UTxO, fees and donations (the UTxO and fees use the three replay facts above). |
| `LEDGERS-govSt≈` | ReorderLemmas, module `Assuming` | Two runs over permutations of a list of `GovDomStable`, pairwise-`Indep` transactions end with equivalent governance states. |
| `LEDGER⇒certΔ` | CertLemmas | The certificate state after a `LEDGER` step is a fixed function (`certOpᵀ`) of the environment's epoch and protocol parameters, the certificate state before, and the transaction. |
| `LEDGERS-field≈`, `LEDGERS-field-shift≈` | CertReorder, module `Field.CommR` | For a certificate-state field that only certificates change, and on which `R`-related certificates commute: two runs over permutations of a list whose members all satisfy `P` and are pairwise related by a symmetric `Q` that, on `P`-members, makes every certificate of one `R`-related to every certificate of the other, end with equal values of that field; and so do the runs before and after moving a transaction to the front of a queue, when each of its certificates is `R`-related to every certificate of each queue member. |
| `LEDGERS-sd≈`, `LEDGERS-dd≈`, `LEDGERS-pstate≈`, `LEDGERS-cc≈`, `LEDGERS-gd≈` | CertReorder | Two runs over permutations of a list of pairwise-`Indep` transactions end with equal stake delegations, deposits, pool state, CC hot keys and DRep deposits. |
| `SDS`, `DDS`, `PSS`, `CCS`, `GDS` `.LEDGERS-field-shift≈` | CertReorder | Moving a transaction to the front of a queue of transactions it is `Indep` of leaves the stake delegations, deposits, pool state, CC hot keys and DRep deposits unchanged. |
| `LEDGERS-dr≈`, `LEDGERS-vd≈` | CertReorder | Two runs over permutations of a list of `GovDomStable`, pairwise-`Indep` transactions end with equal DReps and vote delegations. |
| `LEDGERS-dr-shift≈` | CertReorder | Moving any transaction to the front of a queue of `GovDomStable` transactions leaves the DReps unchanged. |
| `LEDGERS-vd-shift≈` | CertReorder | Moving a transaction to the front of a queue of `GovDomStable` transactions it is `Indep` of, and whose delegatees it does not deregister, leaves the vote delegations unchanged. |
| `LEDGERS-rewards≈` | RewardsReorder | Two runs over permutations of a list of pairwise-`Indep` transactions end with equal account balances. |
| `LEDGERS-rewards-shift≈` | RewardsReorder | Moving a transaction to the front of a queue of transactions it is `Indep` of leaves the account balances unchanged. |
| `LEDGERS-cert≈` | Reorder | Two runs over permutations of a list of `GovDomStable`, pairwise-`Indep` transactions end with equivalent certificate states. |
| `LEDGERS-reorder` | Reorder | Two runs over permutations of a list of `GovDomStable`, pairwise-`Indep` transactions end in `≈ˡ`-equivalent states. |
| `Simple⇒Indep` | Insertion | A transaction whose batch has no certificates, withdrawals, direct deposits, balance intervals (including starting ones), proposals or votes is `Indep` of every transaction. |
| `insert-after` | Insertion | A simple transaction that is valid at an insertion point and at the end of a queue of `GovDomStable`, spend-only transactions can be inserted at that point. |
| `insert-after-≈` | Insertion | If the queue is also pairwise `Indep`, the run with the simple transaction inserted ends in a state equivalent to appending it at the end. |
| `LEDGER-comm` | Independence | Two `GovDomStable`, fully independent transactions applied in one order can be applied in the other order, ending in an equivalent state. |
| `LEDGERS-permute` | Independence | A valid run of pairwise fully independent `GovDomStable` transactions can be replayed in any permuted order, ending in an equivalent state. |
| `insert-indep-≈` | Independence | A `GovDomStable` transaction fully independent of a `GovDomStable`, pairwise-`Indep` queue, and valid at an insertion point, is valid at the end too, and inserting it gives a state equivalent to appending it. |
| `LEDGER-Normalized` | CheckedInsertion | `LEDGER` steps preserve `Normalized` states. |
| `LEDGERS-shift-≈` | CheckedInsertion | From a `Normalized` state, moving a transaction to the front of a `GovDomStable` queue it is `QueueCompat` with gives an equivalent state. |
| `insert-checked` | CheckedInsertion | From a `Normalized` starting state, a transaction valid at an insertion point and at the end of a `GovDomStable` queue it is `QueueCompat` with can be inserted at that point. |
| `insert-checked-≈`, `reorder-urgent-≈` | CheckedInsertion | Under the same conditions, the run with the transaction inserted ends in a state equivalent to appending it at the end (`reorder-urgent-≈` packages this per mempool lane). |

`Footprints` contains only definitions: the read and write sets of a batch (UTxO entries,
accounts, pools, VRF and BLS keys, CC keys, DRep deregistrations, voters and delegatees, and
proposal accounts), used to state `SpendOnly`, `FullIndep`, `QueueCompat` and the hypothesis
of `LEDGERS-vd-shift≈`.
