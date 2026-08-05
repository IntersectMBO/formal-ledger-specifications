---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/Independence.lagda.md
---

# Full independence: commutativity and insertion {#sec:ledgers-independence}

The [reordering theorem](Ledger.Conway.Specification.Ledger.Properties.Reorder.md)
takes both executions as given, and the
[insertion theorem](Ledger.Conway.Specification.Ledger.Properties.Insertion.md)
buys its constructive power from two validations plus syntactic transaction
classes.  This module proves the classical *unconditional* counterparts under
the strongest pairwise hypothesis: **full independence**.  Two transactions
are fully independent when every part of their read/write footprints is
disjoint — certificate targets, deposit keys and vote targets (`Indep`),
withdrawal credentials (against each other *and* against the other's
certificate targets), and on the UTxO side spending inputs, collateral
inputs, reference inputs, and created outputs.

Under full independence (plus the global `NoGov`, which no pairwise condition
can replace — proposals and DRep (de)registration act through the global
`rmOrphanDRepVotes` filter):

* transactions **commute** — an adjacent pair may be swapped in any
  execution, and a whole list may be permuted arbitrarily, *given only one
  run* (`LEDGER-comm`, `LEDGERS-permute`);
* the **insertion lemma holds with a single validation** — a transaction
  fully independent of the queue suffix and validated once at the insertion
  point can be inserted (`insert-indep`), and doing so is observationally
  equivalent to appending it at the back (`insert-indep-≈`).

Everything reduces to **one** new postulate, the frame rule `LEDGER-frame`:
a step of `t₁` neither disables nor enables a fully-independent `t₂`.  Its
soundness argument: `t₁`'s writes are its consumed inputs (spending or
collateral), its freshly-keyed outputs, its certificate/deposit/vote targets
and its withdrawal zero-outs — every one of which `FullIndep` separates from
what `t₂`'s premises read; `NoGov` keeps `dom dreps`, and hence the orphan-vote
filter and `POST-CERT` restriction, constant.  Discharging it is the same
window-form transport of the congruence stack as the insertion obligations.
The derived results additionally consume `LEDGERS-reorder` (Reorder's four
postulates) and `LEDGER-cong` (from the insertion module).

<!--
```agda
{-# OPTIONS --with-K #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Specification.Ledger.Properties.Independence
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Utxo txs abs using (outs)
open import Ledger.Conway.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Reorder txs abs
  using (Indep; Indep-sym; NoGov; LEDGERS-reorder)
open import Ledger.Conway.Specification.Ledger.Properties.Insertion txs abs
  using (LEDGERS-cong; LEDGERS-++)
open import Ledger.Conway.Specification.Ledger.Properties.GeneralLemmas
  using (AllPairs-resp-↭)

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
  using (shift; All-resp-↭)

private variable
  Γ : LEnv
  s s₀ s₁ s₂ s₃ s′ s″ : LState
  tx t t₁ t₂ : Tx
  txs1 txs2 l l₁ l₂ : List Tx
```
-->

## Full independence

```agda
private
  ins refs colls : Tx → ℙ TxIn
  ins   t = t .Tx.body .TxBody.txIns
  refs  t = t .Tx.body .TxBody.refInputs
  colls t = t .Tx.body .TxBody.collateralInputs

  reads spends : Tx → ℙ TxIn
  reads  t = ins t ∪ refs t ∪ colls t
  spends t = ins t ∪ colls t        -- validity-blind: covers both phase-2 outcomes

  outsDom : Tx → ℙ TxIn
  outsDom t = dom (outs (t .Tx.body) ˢ)

  wdrlCreds : Tx → ℙ Credential
  wdrlCreds t = mapˢ RewardAddress.stake (dom (t .Tx.body .TxBody.txWithdrawals))

  certTargets : Tx → ℙ Credential
  certTargets t = fromList (mapMaybe cwitness (t .Tx.body .TxBody.txCerts))

record FullIndep (t₁ t₂ : Tx) : Type where
  field
    indep         : Indep t₁ t₂   -- certificate targets, deposit keys, vote targets
    disjWdrls     : disjoint (wdrlCreds t₁) (wdrlCreds t₂)
    disjWdrlCert₁ : disjoint (wdrlCreds t₁) (certTargets t₂)
    disjWdrlCert₂ : disjoint (wdrlCreds t₂) (certTargets t₁)
    disjSpends₁   : disjoint (reads t₁) (spends t₂)
    disjSpends₂   : disjoint (reads t₂) (spends t₁)
    disjOuts₁     : disjoint (reads t₁) (outsDom t₂)
    disjOuts₂     : disjoint (reads t₂) (outsDom t₁)

FullIndep-sym : FullIndep t₁ t₂ → FullIndep t₂ t₁
FullIndep-sym fi = record
  { indep         = Indep-sym (fi .indep)
  ; disjWdrls     = Properties.disjoint-sym (fi .disjWdrls)
  ; disjWdrlCert₁ = fi .disjWdrlCert₂ ; disjWdrlCert₂ = fi .disjWdrlCert₁
  ; disjSpends₁   = fi .disjSpends₂   ; disjSpends₂   = fi .disjSpends₁
  ; disjOuts₁     = fi .disjOuts₂     ; disjOuts₂     = fi .disjOuts₁
  } where open FullIndep
```

The `reads`/`spends` overapproximation is deliberate: `spends` covers both
phase-2 outcomes (inputs if valid, collateral if invalid), so full
independence needs no validity information — unlike the insertion module's
`SpendOnly`, which recovered the missing disjointness *from* validity.

## The frame rule

```agda
postulate
  -- A step of t₁ neither disables nor enables a fully-independent t₂:
  -- forward, t₂'s premises survive t₁'s writes (all separated by FullIndep,
  -- with fresh outputs unable to shadow and NoGov keeping the orphan-vote
  -- filter inert); backward, t₂'s premises at the post-state pull back to
  -- the pre-state (t₁'s outputs are not among t₂'s reads by disjOuts, its
  -- cert/wdrl writes not among t₂'s cert-premise reads).  Discharging this
  -- is the window-form transport of the UTXOW-congruence stack, plus its
  -- certificate/withdrawal analogue.
  LEDGER-frame :
      NoGov t₁ → NoGov t₂ → FullIndep t₁ t₂
    → Γ ⊢ s ⇀⦇ t₁ ,LEDGER⦈ s′
    → (∀ {s″} → Γ ⊢ s  ⇀⦇ t₂ ,LEDGER⦈ s″ → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t₂ ,LEDGER⦈ s₃))
    × (∀ {s″} → Γ ⊢ s′ ⇀⦇ t₂ ,LEDGER⦈ s″ → ∃[ s₃ ] (Γ ⊢ s  ⇀⦇ t₂ ,LEDGER⦈ s₃))
```

## Commutativity

Adjacent fully-independent steps exchange, with `≈ˡ`-equal end states — the
backward frame direction recovers `t₂` at the pre-state, the forward
direction replays `t₁` after it, and the two-element reordering theorem
compares the results:

```agda
LEDGER-comm :
    NoGov t₁ → NoGov t₂ → FullIndep t₁ t₂
  → Γ ⊢ s ⇀⦇ t₁ ,LEDGER⦈ s₁ → Γ ⊢ s₁ ⇀⦇ t₂ ,LEDGER⦈ s₂
  → ∃[ s₁′ ] ∃[ s₂′ ] (Γ ⊢ s ⇀⦇ t₂ ,LEDGER⦈ s₁′ × Γ ⊢ s₁′ ⇀⦇ t₁ ,LEDGER⦈ s₂′ × s₂ ≈ˡ s₂′)
LEDGER-comm {t₁ = t₁} {t₂ = t₂} ng₁ ng₂ fi st₁ st₂ =
  let (s₁′ , st₂′) = LEDGER-frame ng₁ ng₂ fi st₁ .proj₂ st₂
      (s₂′ , st₁′) = LEDGER-frame ng₂ ng₁ (FullIndep-sym fi) st₂′ .proj₁ st₁
      e = LEDGERS-reorder
            (ng₁ Allᴸ.∷ ng₂ Allᴸ.∷ Allᴸ.[])
            ((fi .FullIndep.indep Allᴸ.∷ Allᴸ.[]) ∷ (Allᴸ.[] ∷ []))
            (swap t₁ t₂ ↭-rfl)
            (BS-ind st₁ (BS-ind st₂ (BS-base Id-nop)))
            (BS-ind st₂′ (BS-ind st₁′ (BS-base Id-nop)))
  in s₁′ , s₂′ , st₂′ , st₁′ , e
```

Commutativity lifts to arbitrary permutations of a pairwise-fully-independent
list, **given only one run** — by induction on the permutation, exchanging
adjacent pairs and transporting the remainder across the resulting `≈ˡ` with
`LEDGERS-cong`:

```agda
LEDGERS-permute :
    Allᴸ.All NoGov l₁ → AllPairs FullIndep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁
  → ∃[ s₂ ] (Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂ × s₁ ≈ˡ s₂)
LEDGERS-permute _ _ ↭-rfl r = -, r , ≈ˡ-refl
LEDGERS-permute (_ Allᴸ.∷ ngs) (_ ∷ ap) (prep x p) (BS-ind st rest) =
  let (_ , rest′ , e) = LEDGERS-permute ngs ap p rest
  in -, BS-ind st rest′ , e
LEDGERS-permute (ng₁ Allᴸ.∷ ng₂ Allᴸ.∷ ngs) ((f Allᴸ.∷ _) ∷ _ ∷ ap)
                (swap x y p) (BS-ind st₁ (BS-ind st₂ rest)) =
  let (_ , _ , st₂′ , st₁′ , e) = LEDGER-comm ng₁ ng₂ f st₁ st₂
      (_ , rest′ , e₁) = LEDGERS-cong rest e
      (_ , rest″ , e₂) = LEDGERS-permute ngs ap p rest′
  in -, BS-ind st₂′ (BS-ind st₁′ rest″) , ≈ˡ-trans e₁ e₂
LEDGERS-permute ngs ap (↭-trans p q) r =
  let (_ , r′ , e₁) = LEDGERS-permute ngs ap p r
      (_ , r″ , e₂) = LEDGERS-permute (All-resp-↭ p ngs)
                          (AllPairs-resp-↭ FullIndep-sym p ap) q r′
  in -, r″ , ≈ˡ-trans e₁ e₂
```

## Insertion with a single validation

A transaction fully independent of a run defers past all of it — the forward
frame direction, iterated:

```agda
LEDGER-defers-run :
    NoGov tx → Allᴸ.All NoGov l → Allᴸ.All (FullIndep tx) l
  → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
  → ∃[ s₂ ] (Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂)
LEDGER-defers-run _ _ _ (BS-base Id-nop) st = -, st
LEDGER-defers-run ngx (ngt Allᴸ.∷ ngs) (f Allᴸ.∷ fs) (BS-ind t-step rest) st =
  let (_ , st′) = LEDGER-frame ngt ngx (FullIndep-sym f) t-step .proj₁ st
  in LEDGER-defers-run ngx ngs fs rest st′
```

And the suffix of a run re-fires *after* it, giving insertion from **one**
validation at the insertion point (contrast the insertion module, where the
end validation stood in for the missing independence information):

```agda
private
  hoistᶠ :
      NoGov tx → Allᴸ.All NoGov txs2 → Allᴸ.All (FullIndep tx) txs2
    → Γ ⊢ s ⇀⦇ txs2 ,LEDGERS⦈ s₁
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
    → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ txs2 ,LEDGERS⦈ s₃)
  hoistᶠ _ _ _ (BS-base Id-nop) _ = -, BS-base Id-nop
  hoistᶠ {tx = tx} {txs2 = t ∷ ts} ngx (ngt Allᴸ.∷ ngs) (f Allᴸ.∷ fs)
         (BS-ind t-step rest) tx-mid =
    let (_ , t-step₂)  = LEDGER-frame ngx ngt f tx-mid .proj₁ t-step
        (_ , tx-step₂) = LEDGER-frame ngt ngx (FullIndep-sym f) t-step .proj₁ tx-mid
        e = LEDGERS-reorder
              (ngt Allᴸ.∷ ngx Allᴸ.∷ Allᴸ.[])
              ((Indep-sym (f .FullIndep.indep) Allᴸ.∷ Allᴸ.[]) ∷ (Allᴸ.[] ∷ []))
              (swap t tx ↭-rfl)
              (BS-ind t-step (BS-ind tx-step₂ (BS-base Id-nop)))
              (BS-ind tx-mid (BS-ind t-step₂ (BS-base Id-nop)))
        (_ , ts-run) = hoistᶠ ngx ngs fs rest tx-step₂
        (_ , ts-run′ , _) = LEDGERS-cong ts-run e
    in -, BS-ind t-step₂ ts-run′

insert-indep :
    NoGov tx → Allᴸ.All NoGov txs2 → Allᴸ.All (FullIndep tx) txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀
  → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′        -- the one validation, at the insertion point
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃)
insert-indep ngx ngs fs pre suf tx-mid =
  let (_ , suf′) = hoistᶠ ngx ngs fs suf tx-mid
  in -, LEDGERS-++ pre (BS-ind tx-mid suf′)
```

Finally, the inserted run is observationally equivalent to validating `tx`
at the *back* of the queue — the end validation, a hypothesis in the
insertion module, is here *derived* (`LEDGER-defers-run`) and used only for
comparison:

```agda
insert-indep-≈ :
    NoGov tx → Allᴸ.All NoGov txs2 → Allᴸ.All (FullIndep tx) txs2
  → AllPairs Indep txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀
  → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′
  → ∃[ s₂ ] ∃[ s₃ ] ( Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
                    × Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃
                    × s₂ ≈ˡ s₃ )
insert-indep-≈ {tx = tx} {txs2 = txs2} ngx ngs fs ap pre suf tx-mid =
  let (s₂ , tx-end) = LEDGER-defers-run ngx ngs fs suf tx-mid
      (s₃ , suf′) = hoistᶠ ngx ngs fs suf tx-mid
      full = BS-ind tx-mid suf′
      cmp  = LEDGERS-++ suf (BS-ind tx-end (BS-base Id-nop))
      e = LEDGERS-reorder
            (AllPropᴸ.++⁺ ngs (ngx Allᴸ.∷ Allᴸ.[]))
            (APPropᴸ.++⁺ ap (Allᴸ.[] ∷ [])
              (Allᴸ.map (λ f → Indep-sym (f .FullIndep.indep) Allᴸ.∷ Allᴸ.[]) fs))
            (↭-trans (shift tx txs2 []) (↭-reflexive (cong (tx ∷_) (++-identityʳ txs2))))
            cmp full
  in s₂ , s₃ , tx-end , LEDGERS-++ pre full , e
```
