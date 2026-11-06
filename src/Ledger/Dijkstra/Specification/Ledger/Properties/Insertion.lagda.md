---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/Insertion.lagda.md
---

# Insertion of a transaction into a validated queue (Dijkstra) {#sec:dijkstra-ledgers-insertion}

A `SimpleTx` validated at the insertion point and at the end of the queue can
be inserted in front of a `SpendOnly` suffix without revalidating it.

<!--
```agda
open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.Insertion
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.Reorder txs abs
  using (Indep; Indep-sym; GovDomStable; LEDGERS-reorder; subTxs; certCreds; batch∪)
open import Ledger.Prelude.Properties.GeneralLemmas using (⋃map)
open import Ledger.Dijkstra.Specification.Ledger.Properties.Footprints txs abs
  using (spendIns; refIns; colls)
import Ledger.Prelude.Properties.TraceReorder as TR

open import Data.List.Properties using (++-identityʳ)
import Data.List.Relation.Unary.All as Allᴸ
import Data.List.Relation.Unary.All.Properties as AllPropᴸ
import Data.List.Relation.Unary.AllPairs.Properties as APPropᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; swap; ↭-reflexive) renaming (refl to ↭-rfl; trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (shift)

private variable
  Γ : LedgerEnv
  s s₀ s₁ s₂ s′ s″ : LedgerState
  tx t : TopLevelTx
  txs1 txs2 l : List TopLevelTx
```
-->

## The two transaction classes

```agda
-- a batch member with trivial certificate, account and governance components
record SimpleBody {ℓ} (x : Tx ℓ) : Type where
  field
    noCerts     : DCertsOf x ≡ []
    noWdrls     : WithdrawalsOf x ˢ ≡ᵉ ∅
    noDDeps     : DirectDepositsOf x ˢ ≡ᵉ ∅
    noIntervals : BalanceIntervalsOf x ˢ ≡ᵉ ∅
    noProps     : ListOfGovProposalsOf x ≡ []
    noGovVotes  : ListOfGovVotesOf x ≡ []

-- the inserted transaction: every member of its batch is simple, and it has no starting balance intervals
SimpleTx : TopLevelTx → Type
SimpleTx t = Allᴸ.All SimpleBody (subTxs t) × SimpleBody t × StartingBalanceIntervalsOf t ˢ ≡ᵉ ∅

-- a suffix transaction: phase-2 valid, reading the UTxO only where it consumes
record SpendOnly (t : TopLevelTx) : Type where
  field
    valid   : IsValidFlagOf t ≡ true
    noRefs  : refIns t ≡ᵉ ∅
    collSub : colls t ⊆ spendIns t

private
  All-[] : ∀ {A : Type} {P : A → Type} {xs : List A} → xs ≡ [] → Allᴸ.All P xs
  All-[] refl = []

  concatMap-[] : ∀ {A B : Type} {f : A → List B} {xs : List A} → Allᴸ.All (λ x → f x ≡ []) xs → concatMap f xs ≡ []
  concatMap-[] []         = refl
  concatMap-[] (e ∷ es) rewrite e = concatMap-[] es

  disj-[] : ∀ {A B : Type} ⦃ _ : DecEq B ⦄ {f : A → Maybe B} {xs : List A} {Y : ℙ B} → xs ≡ [] → disjoint (fromList (mapMaybe f xs)) Y
  disj-[] refl a∈ _ with Equivalence.from ∈-fromList a∈
  ... | ()

  disjᵐ-[] : ∀ {A B : Type} ⦃ _ : DecEq B ⦄ {f : A → B} {xs : List A} {Y : ℙ B} → xs ≡ [] → disjoint (fromList (map f xs)) Y
  disjᵐ-[] refl a∈ _ with Equivalence.from ∈-fromList a∈
  ... | ()

Simple⇒GovDomStable : SimpleTx tx → GovDomStable tx
Simple⇒GovDomStable (bs , b , _) =
  (Allᴸ.map SimpleBody.noProps bs , SimpleBody.noProps b)
  , (Allᴸ.map (λ b′ → All-[] (SimpleBody.noCerts b′)) bs , All-[] (SimpleBody.noCerts b))

private
  -- a simple batch touches no account
  noAcct : ∀ {M : Type} {W : RewardAddress ⇀ M} → W ˢ ≡ᵉ ∅ → ∀ {c : Credential} → c ∉ mapˢ RewardAddress.stake (dom (W ˢ))
  noAcct {W = W} e c∈ with Equivalence.from ∈-map c∈
  ... | a , _ , a∈ with Equivalence.from dom∈ a∈
  ...   | _ , av∈ = Properties.∉-∅ (e .proj₁ av∈)

  batch-empty : ∀ {f : ∀ {ℓ} → Tx ℓ → ℙ Credential} {t : TopLevelTx}
    → (∀ {ℓ} {x : Tx ℓ} → SimpleBody x → ∀ {c : Credential} → c ∉ f x)
    → SimpleTx t → ∀ {c : Credential} → c ∉ batch∪ f t
  batch-empty {f} h (bs , b , _) c∈ with Equivalence.from ∈-∪ c∈
  ... | inj₁ c∈t = h b c∈t
  ... | inj₂ c∈s = go bs c∈s
    where
    go : ∀ {xs : List SubLevelTx} {c : Credential} → Allᴸ.All SimpleBody xs → c ∉ ⋃map f xs
    go []       c∈ = Properties.∉-∅ c∈
    go (b′ ∷ bs′) c∈ with Equivalence.from ∈-∪ c∈
    ... | inj₁ h′ = h b′ h′
    ... | inj₂ h′ = go bs′ h′

Simple⇒Indep : SimpleTx tx → ∀ t → Indep tx t
Simple⇒Indep {tx} sx@(bs , b , _) t = record
  { disjCertCreds = noCert
  ; disjVotes     = disjᵐ-[] (cong₂ _++_ (concatMap-[] (Allᴸ.map SimpleBody.noGovVotes bs)) (SimpleBody.noGovVotes b))
  ; disjWdrlDD    = λ c∈ _ → batch-empty {t = tx} (λ {_} {x} b′ → noAcct {W = WithdrawalsOf x} (SimpleBody.noWdrls b′)) sx c∈
  ; disjDDWdrl    = λ c∈ _ → batch-empty {t = tx} (λ {_} {x} b′ → noAcct {W = DirectDepositsOf x} (SimpleBody.noDDeps b′)) sx c∈
  ; disjDDCert    = λ c∈ _ → batch-empty {t = tx} (λ {_} {x} b′ → noAcct {W = DirectDepositsOf x} (SimpleBody.noDDeps b′)) sx c∈
  ; disjCertDD    = noCert }
  where
  noCert : ∀ {Y} → disjoint (certCreds tx) Y
  noCert = disj-[] (cong₂ _++_ (concatMap-[] (Allᴸ.map SimpleBody.noCerts bs)) (SimpleBody.noCerts b))
```

## The single-step obligations

```agda
postulate
  -- crossing a SimpleTx over a SpendOnly suffix transaction, both ways
  LEDGER-defer :
      SimpleTx tx → SpendOnly t
    → Γ ⊢ s  ⇀⦇ tx ,LEDGER⦈ s′
    → Γ ⊢ s  ⇀⦇ t ,LEDGER⦈ s″
    → Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s₁
    → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
    → (∃[ s₃ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s₃)) × (∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t ,LEDGER⦈ s₃))

  -- LEDGER is well defined on the `_≈ˡ_` quotient
  LEDGER-cong : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → s ≈ˡ s″ → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s‴ × s′ ≈ˡ s‴)

open TR _⊢_⇀⦇_,LEDGER⦈_ _≈ˡ_ ≈ˡ-refl ≈ˡ-trans public
  using () renaming (STEPS-++ to LEDGERS-++)
open TR.Cong _⊢_⇀⦇_,LEDGER⦈_ _≈ˡ_ ≈ˡ-refl ≈ˡ-trans LEDGER-cong public
  using () renaming (STEPS-cong to LEDGERS-cong)

-- the two-element exchange of a SimpleTx with a suffix transaction
exch-simple : ∀ {Γ s s₁ s₂ tx t} → SimpleTx tx → GovDomStable t × SpendOnly t
  → Γ ⊢ s ⇀⦇ t ∷ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ t ∷ [] ,LEDGERS⦈ s₂ → s₁ ≈ˡ s₂
exch-simple {tx = tx} {t = t} sx (ng , _) =
  LEDGERS-reorder (ng ∷ Simple⇒GovDomStable sx ∷ [])
    ((Indep-sym (Simple⇒Indep sx t) ∷ []) ∷ ([] ∷ [])) (swap t tx ↭-rfl)

open TR.Cong.TwoValidations _⊢_⇀⦇_,LEDGER⦈_ _≈ˡ_ ≈ˡ-refl ≈ˡ-trans LEDGER-cong
  (λ _ → ⊤) (λ _ _ → tt) SimpleTx (λ _ t → GovDomStable t × SpendOnly t)
  (λ sx (_ , so) → LEDGER-defer sx so) (λ _ → exch-simple)
```

## The insertion theorem and its corollary

```agda
insert-after :
    SimpleTx tx → Allᴸ.All GovDomStable txs2 → Allᴸ.All SpendOnly txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′ → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃)
insert-after sx ngs sos = insert-2v tt sx (Allᴸ.zip (ngs , sos))

-- the inserted run is `_≈ˡ_`-equal to appending tx at the back
insert-after-≈ :
    SimpleTx tx → Allᴸ.All GovDomStable txs2 → Allᴸ.All SpendOnly txs2 → AllPairs Indep txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′ → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
insert-after-≈ {tx = tx} {txs2 = txs2} sx ngs sos ap =
  insert-2v-≈ tt sx (Allᴸ.zip (ngs , sos))
    (λ _ → LEDGERS-reorder
      (AllPropᴸ.++⁺ ngs (Simple⇒GovDomStable sx ∷ []))
      (APPropᴸ.++⁺ ap ([] ∷ []) (Allᴸ.tabulate (λ {t} _ → Indep-sym (Simple⇒Indep sx t) ∷ [])))
      (↭-trans (shift tx txs2 []) (↭-reflexive (cong (tx ∷_) (++-identityʳ txs2)))))
```
