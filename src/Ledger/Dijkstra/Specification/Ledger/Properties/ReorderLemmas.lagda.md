---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/ReorderLemmas.lagda.md
---

# Reordering lemmas for Dijkstra (proof layer) {#sec:dijkstra-ledgers-reorder-lemmas}

Proofs behind the [Dijkstra reordering theorem](Ledger.Dijkstra.Specification.Ledger.Properties.Reorder.md).
No postulates: the replay-protection facts are the parameters of `Assuming`.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
  using (addVote; GovState; GovEnv; isRegistered; HasCertState-GovEnv; _⊢_⇀⦇_,GOV⦈_; GOV-Vote; _⊢_⇀⦇_,GOVS⦈_)
open import Ledger.Dijkstra.Specification.Gov.Actions govStructure using () renaming (Vote to GVote)
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Prelude.Properties.GeneralLemmas
import Ledger.Prelude.Properties.NetEffect as NetEffect

open import Algebra.Morphism using (module MonoidMorphisms)
open import Data.Nat.Properties using (+-assoc; +-identityʳ)
open import Data.List.Properties using (foldl-++)
import Data.List.Relation.Unary.All as Allᴸ
import Data.List.Relation.Unary.All.Properties as AllPropᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (All-resp-↭)
open import Data.List.Relation.Binary.Pointwise using ([]; _∷_)
import Data.List.Relation.Binary.Pointwise as PW
open import Data.List.Membership.Propositional.Properties using (∈-++⁺ʳ)
open import Data.Product.Properties using (×-≡,≡→≡)

private variable
  Γ : LedgerEnv
  s s′ s₁ s₂ : LedgerState
  tx : TopLevelTx
  l l₁ l₂ : List TopLevelTx
```
-->

## Vocabulary

```agda
-- the components of a ledger state
utxoOf : LedgerState → UTxO
utxoOf s = UTxOState.utxo (LedgerState.utxoSt s)

feesOf donsOf : LedgerState → Coin
feesOf s = UTxOState.fees (LedgerState.utxoSt s)
donsOf s = UTxOState.donations (LedgerState.utxoSt s)

govOf : LedgerState → GovState
govOf = LedgerState.govSt

certOf : LedgerState → CertState
certOf = LedgerState.certState

-- batch-wide footprints (subtransactions first, in application order)
subTxs : TopLevelTx → List SubLevelTx
subTxs = SubTransactionsOf

allVotes : TopLevelTx → List GovVote
allVotes t = concatMap ListOfGovVotesOf (subTxs t) ++ ListOfGovVotesOf t

certCreds : TopLevelTx → ℙ Credential
certCreds t = fromList (mapMaybe cwitness (allDCerts t))

voteTargets : TopLevelTx → ℙ (GovActionID × GovVoter)
voteTargets t = fromList (map (λ v → (GovVote.gid v , GovVote.voter v)) (allVotes t))

isDRepCert : DCert → Type
isDRepCert (regdrep _ _ _) = ⊤
isDRepCert (deregdrep _ _) = ⊤
isDRepCert _               = ⊥

NoProp NoDRepCert GovDomStable : TopLevelTx → Type
NoProp t = Allᴸ.All (λ x → ListOfGovProposalsOf x ≡ []) (subTxs t) × ListOfGovProposalsOf t ≡ []
NoDRepCert t = Allᴸ.All (λ x → Allᴸ.All (λ c → ¬ isDRepCert c) (DCertsOf x)) (subTxs t)
             × Allᴸ.All (λ c → ¬ isDRepCert c) (DCertsOf t)
-- no proposals and no DRep (de)registration anywhere in the batch; votes allowed
GovDomStable t = NoProp t × NoDRepCert t

-- union of a per-member set over the whole batch
batch∪ : {X : Type} ⦃ _ : DecEq X ⦄ → (∀ {ℓ} → Tx ℓ → ℙ X) → TopLevelTx → ℙ X
batch∪ f t = f t ∪ ⋃map f (subTxs t)

-- the accounts a batch withdraws from and deposits into
wdrlCreds ddCreds : TopLevelTx → ℙ Credential
wdrlCreds t = batch∪ (λ x → mapˢ RewardAddress.stake (dom (WithdrawalsOf x ˢ))) t
ddCreds   t = batch∪ (λ x → mapˢ RewardAddress.stake (dom (DirectDepositsOf x ˢ))) t

-- `cwitness` is total in Dijkstra, so disjoint certificate targets also
-- separate every deposit key
record Indep (t₁ t₂ : TopLevelTx) : Type where
  field
    disjCertCreds : disjoint (certCreds t₁) (certCreds t₂)
    disjVotes     : disjoint (voteTargets t₁) (voteTargets t₂)
    -- a withdrawal and a direct deposit into one account do not commute,
    -- nor does a direct deposit with that account's (de)registration
    disjWdrlDD    : disjoint (wdrlCreds t₁) (ddCreds t₂)
    disjDDWdrl    : disjoint (ddCreds t₁) (wdrlCreds t₂)
    disjDDCert    : disjoint (ddCreds t₁) (certCreds t₂)
    disjCertDD    : disjoint (certCreds t₁) (ddCreds t₂)

Indep-sym : ∀ {t₁ t₂} → Indep t₁ t₂ → Indep t₂ t₁
Indep-sym i = record { disjCertCreds = Properties.disjoint-sym (i .disjCertCreds)
                     ; disjVotes     = Properties.disjoint-sym (i .disjVotes)
                     ; disjWdrlDD    = Properties.disjoint-sym (i .disjDDWdrl)
                     ; disjDDWdrl    = Properties.disjoint-sym (i .disjWdrlDD)
                     ; disjDDCert    = Properties.disjoint-sym (i .disjCertDD)
                     ; disjCertDD    = Properties.disjoint-sym (i .disjDDCert) }
  where open Indep
```

### UTxO updates of a batch

```agda
-- one remove-then-add update: (does it add?, removed keys, added map)
UAtom : Type
UAtom = Bool × ℙ TxIn × UTxO

subAtom : SubLevelTx → UAtom
subAtom x = (true , SpendInputsOf x , outs x)

topAtom collAtom : TopLevelTx → UAtom
topAtom  t = (true , SpendInputsOf t , outs t)
collAtom t = (false , CollateralInputsOf t , ∅ᵐ)

-- the UTxO updates a top-level transaction performs
atomsᵀ : TopLevelTx → List UAtom
atomsᵀ t = if IsValidFlagOf t then map subAtom (subTxs t) ++ topAtom t ∷ [] else collAtom t ∷ []

atoms : List TopLevelTx → List UAtom
atoms = concatMap atomsᵀ

open NetEffect.Updates {A = UAtom} proj₁ (proj₁ ∘ proj₂) (proj₂ ∘ proj₂) public

atomsᵀ-v : ∀ {t} → IsValidFlagOf t ≡ true → atomsᵀ t ≡ map subAtom (subTxs t) ++ topAtom t ∷ []
atomsᵀ-v v rewrite v = refl

atomsᵀ-i : ∀ {t} → IsValidFlagOf t ≡ false → atomsᵀ t ≡ collAtom t ∷ []
atomsᵀ-i i rewrite i = refl
```

## Inverting the rules

```agda
UTXOW⇒UTXO : ∀ {Γᵘ : UTxOEnv} {u u′ : UTxOState} {t} → Γᵘ ⊢ u ⇀⦇ t ,UTXOW⦈ u′ → Γᵘ ⊢ u ⇀⦇ t ,UTXO⦈ u′
UTXOW⇒UTXO (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h)   = h
UTXOW⇒UTXO (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) = h

UTXO-v : ∀ {Γᵘ : UTxOEnv} {u u′ : UTxOState} {t : TopLevelTx} → Γᵘ ⊢ u ⇀⦇ t ,UTXO⦈ u′ → IsValidFlagOf t ≡ true
  → u′ ≡ ⟦ (UTxOState.utxo u ∣ SpendInputsOf t ᶜ) ∪ˡ outs t
         , UTxOState.fees u + TxFeesOf t , UTxOState.donations u + DonationsOf t ⟧ᵘ
UTXO-v (UTXO _) v rewrite v = refl

UTXO-i : ∀ {Γᵘ : UTxOEnv} {u u′ : UTxOState} {t : TopLevelTx} → Γᵘ ⊢ u ⇀⦇ t ,UTXO⦈ u′ → IsValidFlagOf t ≡ false
  → u′ ≡ ⟦ UTxOState.utxo u ∣ CollateralInputsOf t ᶜ
         , UTxOState.fees u + cbalance (UTxOState.utxo u ∣ CollateralInputsOf t)
         , UTxOState.donations u ⟧ᵘ
UTXO-i (UTXO _) i rewrite i = refl

-- the collateral exists in the pre-batch snapshot
UTXO⇒collat⊆ : ∀ {Γᵘ : UTxOEnv} {u u′ : UTxOState} {t : TopLevelTx} → Γᵘ ⊢ u ⇀⦇ t ,UTXO⦈ u′
  → CollateralInputsOf t ⊆ dom (UTxOEnv.utxo₀ Γᵘ ˢ)
UTXO⇒collat⊆ (UTXO-⋯ _ p₁ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) k∈ = p₁ (Equivalence.to ∈-∪ (inj₂ k∈))

-- under a valid top-level transaction each subtransaction applies its own update
SUBLEDGERS-v : ∀ {Γˢ : SubLedgerEnv} {s s′ : LedgerState} {stxs}
  → SubLedgerEnv.isTopLevelValid Γˢ ≡ true → Γˢ ⊢ s ⇀⦇ stxs ,SUBLEDGERS⦈ s′
  → utxoOf s′ ≡ stepAll (utxoOf s) (map subAtom stxs)
    × feesOf s′ ≡ feesOf s
    × donsOf s′ ≡ scalarᶠ DonationsOf (donsOf s) stxs
SUBLEDGERS-v _ (BS-base Id-nop) = refl , refl , refl
SUBLEDGERS-v v (BS-ind (SUBLEDGER-V (refl , SUBUTXOW-⋯ _ _ _ _ _ _ _ _ _ _ _ _ (SUBUTXO _) , _ , _)) rest) =
  SUBLEDGERS-v v rest
SUBLEDGERS-v v (BS-ind (SUBLEDGER-I (i , _)) _) = ⊥-elim (case trans (sym v) i of λ ())

LEDGER⇒utxoΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → utxoOf s′ ≡ stepAll (utxoOf s) (atomsᵀ tx)
LEDGER⇒utxoΔ {s = s} {tx = tx} (LEDGER-V (v , sub , _ , _ , uw)) =
  trans (cong UTxOState.utxo (UTXO-v (UTXOW⇒UTXO uw) v))
    (trans (cong (λ u → (u ∣ SpendInputsOf tx ᶜ) ∪ˡ outs tx) (SUBLEDGERS-v v sub .proj₁))
      (trans (sym (stepAll-++ (utxoOf s) (map subAtom (subTxs tx)) (topAtom tx ∷ [])))
        (cong (stepAll (utxoOf s)) (sym (atomsᵀ-v v)))))
LEDGER⇒utxoΔ {s = s} {tx = tx} (LEDGER-I (i , _ , uw)) =
  trans (cong UTxOState.utxo (UTXO-i (UTXOW⇒UTXO uw) i))
    (cong (stepAll (utxoOf s)) (sym (atomsᵀ-i i)))
```

## Replay protection from unique transaction ids

```agda
-- the ids of the applied batch members (the top-level id also for an invalid batch)
idsᵀ : TopLevelTx → List TxId
idsᵀ t = if IsValidFlagOf t then map TxIdOf (subTxs t) ++ TxIdOf t ∷ [] else TxIdOf t ∷ []

appliedIds : List TopLevelTx → List TxId
appliedIds = concatMap idsᵀ

-- applied ids are pairwise distinct and new to the initial UTxO
UniqueIds : UTxO → List TopLevelTx → Type
UniqueIds u l = AllPairs _≢_ (appliedIds l) × Allᴸ.All (λ i → ∀ {k : TxIn} → k ∈ dom (u ˢ) → proj₁ k ≢ i) (appliedIds l)

-- the keys an update adds carry the given id
KeysOf : UAtom → TxId → Type
KeysOf a i = ∀ {k : TxIn} → k ∈ dom (proj₂ (proj₂ a) ˢ) → proj₁ k ≡ i

private
  outs-dom : ∀ {ℓ} (x : Tx ℓ) → KeysOf (true , SpendInputsOf x , outs x) (TxIdOf x)
  outs-dom x h with Equivalence.from ∈-map (proj₂ (Equivalence.from dom∈ h))
  ... | _ , eq , _ = cong (proj₁ ∘ proj₁) eq

  subs-ids : ∀ (xs : List SubLevelTx) → PW.Pointwise KeysOf (map subAtom xs) (map TxIdOf xs)
  subs-ids []       = []
  subs-ids (x ∷ xs) = outs-dom x ∷ subs-ids xs

atomsᵀ-ids : ∀ t → PW.Pointwise KeysOf (atomsᵀ t) (idsᵀ t)
atomsᵀ-ids t with IsValidFlagOf t
... | true  = PW.++⁺ (subs-ids (subTxs t)) (outs-dom t ∷ [])
... | false = (λ {k} k∈ → ⊥-elim (Properties.∉-∅ (proj₂ (Equivalence.from dom∈ k∈)))) ∷ []

atoms-ids : ∀ l → PW.Pointwise KeysOf (atoms l) (appliedIds l)
atoms-ids []       = []
atoms-ids (t ∷ ts) = PW.++⁺ (atomsᵀ-ids t) (atoms-ids ts)

private
  pw-all : ∀ {a : UAtom} {i : TxId} {as : List UAtom} {is : List TxId} → KeysOf a i → PW.Pointwise KeysOf as is → Allᴸ.All (i ≢_) is
    → Allᴸ.All (λ a′ → disjoint (dom (proj₂ (proj₂ a) ˢ)) (dom (proj₂ (proj₂ a′) ˢ))) as
  pw-all p []       []         = []
  pw-all {a} {i} {a′ ∷ as} {i′ ∷ is} p (q ∷ qs) (ne ∷ nes) =
    (λ {k} k∈ k∈′ → ne (trans (sym (p {k} k∈)) (q {k} k∈′))) ∷ pw-all {a} {i} {as} {is} p qs nes

  pw-pairs : ∀ {as : List UAtom} {is : List TxId} → PW.Pointwise KeysOf as is → AllPairs _≢_ is → DisjOuts as
  pw-pairs []       []       = []
  pw-pairs {a ∷ as} {i ∷ is} (p ∷ ps) (d ∷ ds) = pw-all {a} {i} {as} {is} p ps d ∷ pw-pairs ps ds

  pw-fresh : ∀ {u : UTxO} {as : List UAtom} {is : List TxId} → PW.Pointwise KeysOf as is
    → Allᴸ.All (λ i → ∀ {k : TxIn} → k ∈ dom (u ˢ) → proj₁ k ≢ i) is
    → Allᴸ.All (λ a → disjoint (dom (u ˢ)) (dom (proj₂ (proj₂ a) ˢ))) as
  pw-fresh []       []       = []
  pw-fresh {u} (p ∷ ps) (f ∷ fs) = (λ {k} k∈u k∈a → f {k} k∈u (p {k} k∈a)) ∷ pw-fresh {u} ps fs

  ap-split : ∀ {X : Type} {R : X → X → Type} xs {ys} → AllPairs R (xs ++ ys)
    → Allᴸ.All (λ x → Allᴸ.All (R x) ys) xs × AllPairs R ys
  ap-split []       h       = [] , h
  ap-split (x ∷ xs) (a ∷ h) = let (b , c) = ap-split xs h in (AllPropᴸ.++⁻ʳ xs a ∷ b) , c

UniqueIds⇒DisjOuts : ∀ {u : UTxO} {l : List TopLevelTx} → UniqueIds u l → DisjOuts (atoms l)
UniqueIds⇒DisjOuts {l = l} U = pw-pairs (atoms-ids l) (proj₁ U)

UniqueIds⇒fresh : ∀ {u : UTxO} {l : List TopLevelTx} → UniqueIds u l → Allᴸ.All (λ a → disjoint (dom (u ˢ)) (dom (proj₂ (proj₂ a) ˢ))) (atoms l)
UniqueIds⇒fresh {u} {l} U = pw-fresh {u} (atoms-ids l) (proj₂ U)

private
  SUBLEDGERS⇒rem⊆ : ∀ {Γˢ : SubLedgerEnv} {s s′ : LedgerState} {stxs}
    → SubLedgerEnv.isTopLevelValid Γˢ ≡ true → Γˢ ⊢ s ⇀⦇ stxs ,SUBLEDGERS⦈ s′
    → Allᴸ.All (λ x → SpendInputsOf x ⊆ dom (SubLedgerEnv.utxo₀ Γˢ ˢ)) stxs
  SUBLEDGERS⇒rem⊆ _ (BS-base Id-nop) = []
  SUBLEDGERS⇒rem⊆ v (BS-ind (SUBLEDGER-V (refl , SUBUTXOW-⋯ _ _ _ _ _ _ _ _ _ _ _ _ (SUBUTXO (_ , p₁ , _)) , _ , _)) rest) =
    p₁ ∷ SUBLEDGERS⇒rem⊆ v rest
  SUBLEDGERS⇒rem⊆ v (BS-ind (SUBLEDGER-I (i , _)) _) = ⊥-elim (case trans (sym v) i of λ ())

-- every removed key exists before the batch
LEDGER⇒rem⊆ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → Allᴸ.All (λ a → proj₁ (proj₂ a) ⊆ dom (utxoOf s ˢ)) (atomsᵀ tx)
LEDGER⇒rem⊆ {s = s} {tx = tx} (LEDGER-V (v , sub , _ , _ , uw)) =
  subst (Allᴸ.All (λ a → proj₁ (proj₂ a) ⊆ dom (utxoOf s ˢ))) (sym (atomsᵀ-v v))
    (AllPropᴸ.++⁺ (AllPropᴸ.map⁺ (SUBLEDGERS⇒rem⊆ v sub)) ((λ {k} k∈ → top k∈) ∷ []))
  where
  top : SpendInputsOf tx ⊆ dom (utxoOf s ˢ)
  top k∈ with UTXOW⇒UTXO uw
  ... | UTXO-⋯ _ p₁ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ = p₁ (Equivalence.to ∈-∪ (inj₁ k∈))
LEDGER⇒rem⊆ {s = s} {tx = tx} (LEDGER-I (i , _ , uw)) =
  subst (Allᴸ.All (λ a → proj₁ (proj₂ a) ⊆ dom (utxoOf s ˢ))) (sym (atomsᵀ-i i))
    ((λ {k} k∈ → UTXO⇒collat⊆ (UTXOW⇒UTXO uw) k∈) ∷ [])

-- no key of the UTxO carries an id still to be applied
Good : UTxO → List TopLevelTx → Type
Good u l = ∀ {k : TxIn} → k ∈ dom (u ˢ) → ¬ (proj₁ k ∈ˡ appliedIds l)

UniqueIds⇒Good : ∀ {u : UTxO} {l : List TopLevelTx} → UniqueIds u l → Good u l
UniqueIds⇒Good U k∈ i∈ = Allᴸ.lookup (proj₂ U) i∈ k∈ refl

run-Rem#Add : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → AllPairs _≢_ (appliedIds l) → Good (utxoOf s) l → Rem#Add (atoms l)
run-Rem#Add (BS-base Id-nop) _ _ = tt
run-Rem#Add {s = s} {l = t ∷ ts} (BS-ind {s' = s₁} st rest) ap good =
  Rem#Add-prefix (λ k → proj₁ k ∈ˡ appliedIds (t ∷ ts)) (atomsᵀ t) (atoms ts)
    (Allᴸ.map (λ sub {k} k∈ → good (sub k∈)) (LEDGER⇒rem⊆ st))
    (λ {k} k∈ → dom-addedAll {Q = λ k′ i → proj₁ k′ ≡ i} (atoms-ids (t ∷ ts)) {k} k∈)
    (run-Rem#Add rest (proj₂ (ap-split (idsᵀ t) ap)) good′)
  where
  good′ : Good (utxoOf s₁) ts
  good′ {k} k∈ i∈ with dom-stepAll (atomsᵀ t) (subst (λ m → k ∈ dom (m ˢ)) (LEDGER⇒utxoΔ st) k∈)
  ... | inj₁ h = good h (∈-++⁺ʳ (idsᵀ t) i∈)
  ... | inj₂ h = Allᴸ.lookup (Allᴸ.lookup (proj₁ (ap-split (idsᵀ t) ap))
                   (dom-addedAll {Q = λ k′ i → proj₁ k′ ≡ i} (atomsᵀ-ids t) {k} h)) i∈ refl
```

## The proofs, parameterized by replay protection

```agda
module Assuming
  (replay-outs-disjoint : ∀ {Γ s s′ l} → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → DisjOuts (atoms l))
  (replay-outs-fresh : ∀ {Γ s s′ l} → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
     → Allᴸ.All (λ a → disjoint (dom (utxoOf s ˢ)) (dom (proj₂ (proj₂ a) ˢ))) (atoms l))
  (Ins#Outs-exec : ∀ {Γ s s′ l} → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → Rem#Add (atoms l))
  where
```

### `utxo`

```agda
  LEDGERS⇒utxoᶠ : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → utxoOf s′ ≡ stepAll (utxoOf s) (atoms l)
  LEDGERS⇒utxoᶠ (BS-base Id-nop) = refl
  LEDGERS⇒utxoᶠ {s = s} {l = t ∷ ts} (BS-ind st rest) =
    trans (LEDGERS⇒utxoᶠ rest)
      (trans (cong (λ u → stepAll u (atoms ts)) (LEDGER⇒utxoΔ st))
        (sym (stepAll-++ (utxoOf s) (atomsᵀ t) (atoms ts))))

  LEDGERS-utxo≈ : l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
    → utxoOf s₁ ˢ ≡ᵉ utxoOf s₂ ˢ
  LEDGERS-utxo≈ p st₁ st₂ =
    SetSetoid.trans (SetSetoid.reflexive (cong (λ m → m ˢ) (LEDGERS⇒utxoᶠ st₁)))
      (SetSetoid.trans
        (stepAll-↭ (concatMap-↭ atomsᵀ p) (Ins#Outs-exec st₁) (Ins#Outs-exec st₂) (replay-outs-disjoint st₁))
        (SetSetoid.reflexive (cong (λ m → m ˢ) (sym (LEDGERS⇒utxoᶠ st₂)))))
```

### `fees`

```agda
  -- the fee a top-level transaction pays, valuing its collateral in `u`
  feeᵀ : TopLevelTx → UTxO → Coin
  feeᵀ t u = if IsValidFlagOf t then TxFeesOf t else cbalance (u ∣ CollateralInputsOf t)

  cbalance-cong : ∀ {u u′ : UTxO} → u ˢ ≡ᵉ u′ ˢ → cbalance u ≡ cbalance u′
  cbalance-cong {u} {u′} eq =
    coinIsMonoidHomomorphism .⟦⟧-cong
      (indexedSumᵐ-cong {M = Value} {x = (mapValues txOutToValue u) ᶠᵐ} {(mapValues txOutToValue u′) ᶠᵐ}
        (Properties.map-≡ᵉ eq))
    where open MonoidMorphisms.IsMonoidHomomorphism

  feeᵀ-v : ∀ {t u} → IsValidFlagOf t ≡ true → feeᵀ t u ≡ TxFeesOf t
  feeᵀ-v v rewrite v = refl

  feeᵀ-i : ∀ {t u} → IsValidFlagOf t ≡ false → feeᵀ t u ≡ cbalance (u ∣ CollateralInputsOf t)
  feeᵀ-i i rewrite i = refl

  LEDGER⇒feeΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → feesOf s′ ≡ feesOf s + feeᵀ tx (utxoOf s)
  LEDGER⇒feeΔ {s = s} {tx = tx} (LEDGER-V (v , sub , _ , _ , uw)) =
    trans (cong UTxOState.fees (UTXO-v (UTXOW⇒UTXO uw) v))
      (trans (cong (_+ TxFeesOf tx) (SUBLEDGERS-v v sub .proj₂ .proj₁))
        (cong (feesOf s +_) (sym (feeᵀ-v {tx} {utxoOf s} v))))
  LEDGER⇒feeΔ {s = s} {tx = tx} (LEDGER-I (i , _ , uw)) =
    trans (cong UTxOState.fees (UTXO-i (UTXOW⇒UTXO uw) i))
      (cong (feesOf s +_) (sym (feeᵀ-i {tx} {utxoOf s} i)))

  LEDGER⇒collat⊆ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → CollateralInputsOf tx ⊆ dom (utxoOf s ˢ)
  LEDGER⇒collat⊆ (LEDGER-V (_ , _ , _ , _ , uw)) = UTXO⇒collat⊆ (UTXOW⇒UTXO uw)
  LEDGER⇒collat⊆ (LEDGER-I (_ , _ , uw))         = UTXO⇒collat⊆ (UTXOW⇒UTXO uw)

  private
    feeᵀ-det : ∀ {u W : UTxO} t → CollateralInputsOf t ⊆ dom (u ˢ) → u ˢ ⊆ W ˢ → feeᵀ t u ≡ feeᵀ t W
    feeᵀ-det {u} {W} t c⊆ u⊆ with IsValidFlagOf t
    ... | true  = refl
    ... | false = cbalance-cong {u ∣ CollateralInputsOf t} {W ∣ CollateralInputsOf t}
                    (res-⊆-unique {m = u} {W = W} {X = CollateralInputsOf t} c⊆ u⊆)

  LEDGERS⇒feesᶠ : ∀ {W : UTxO} → utxoOf s ˢ ⊆ W ˢ
    → Allᴸ.All (λ t → Allᴸ.All (λ a → added a ˢ ⊆ W ˢ) (atomsᵀ t)) l
    → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → feesOf s′ ≡ scalarᶠ (λ t → feeᵀ t W) (feesOf s) l
  LEDGERS⇒feesᶠ _ _ (BS-base Id-nop) = refl
  LEDGERS⇒feesᶠ {s = s} {l = t ∷ ts} {W = W} u⊆ (a⊆ ∷ as) (BS-ind st rest) =
    trans
      (LEDGERS⇒feesᶠ {W = W}
        (λ {x} x∈ → stepAll-⊆ {u = utxoOf s} {W = W} {l = atomsᵀ t} u⊆ a⊆
          (subst (λ m → x ∈ m ˢ) (LEDGER⇒utxoΔ st) x∈))
        as rest)
      (cong (λ a → scalarᶠ (λ t′ → feeᵀ t′ W) a ts)
        (trans (LEDGER⇒feeΔ st)
          (cong (feesOf s +_) (feeᵀ-det {u = utxoOf s} {W = W} t (LEDGER⇒collat⊆ st) u⊆))))

  LEDGERS-fees≈ : l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
    → feesOf s₁ ≡ feesOf s₂
  LEDGERS-fees≈ {l₁ = l₁} {l₂ = l₂} {s = s} p st₁ st₂ =
    let f₀ = feesOf s
        u₀ = utxoOf s
        W  = u₀ ∪ˡ addedAll (atoms l₁)
        u₀⊆W : u₀ ˢ ⊆ W ˢ
        u₀⊆W = λ x∈ → ∈-∪ˡ⁺ {m = u₀} {m' = addedAll (atoms l₁)} (inj₁ x∈)
        all₁ : Allᴸ.All (λ t → Allᴸ.All (λ a → added a ˢ ⊆ W ˢ) (atomsᵀ t)) l₁
        all₁ = All-concatMap⁻ atomsᵀ l₁
          (Allᴸ.tabulate (λ {a} a∈ → added⊆V {u₀ = u₀} {l = atoms l₁} {a = a} a∈
             (DisjOuts⇒Add (replay-outs-disjoint st₁)) (replay-outs-fresh st₁)))
    in
    trans (LEDGERS⇒feesᶠ {W = W} u₀⊆W all₁ st₁)
      (trans (scalarᶠ≡ f₀ l₁)
        (trans (cong (f₀ +_) (Σg-↭ {g = λ t → feeᵀ t W} p))
          (trans (sym (scalarᶠ≡ f₀ l₂))
            (sym (LEDGERS⇒feesᶠ {W = W} u₀⊆W (All-resp-↭ p all₁) st₂)))))
```

### `donations`

```agda
  dongᵀ : TopLevelTx → Coin
  dongᵀ t = if IsValidFlagOf t then Σg DonationsOf (subTxs t) + DonationsOf t else 0

  dongᵀ-v : ∀ {t} → IsValidFlagOf t ≡ true → dongᵀ t ≡ Σg DonationsOf (subTxs t) + DonationsOf t
  dongᵀ-v v rewrite v = refl

  dongᵀ-i : ∀ {t} → IsValidFlagOf t ≡ false → dongᵀ t ≡ 0
  dongᵀ-i i rewrite i = refl

  LEDGER⇒donΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → donsOf s′ ≡ donsOf s + dongᵀ tx
  LEDGER⇒donΔ {s = s} {tx = tx} (LEDGER-V (v , sub , _ , _ , uw)) =
    trans (cong UTxOState.donations (UTXO-v (UTXOW⇒UTXO uw) v))
      (trans (cong (_+ DonationsOf tx)
               (trans (SUBLEDGERS-v v sub .proj₂ .proj₂) (scalarᶠ≡ (donsOf s) (subTxs tx))))
        (trans (+-assoc (donsOf s) (Σg DonationsOf (subTxs tx)) (DonationsOf tx))
          (cong (donsOf s +_) (sym (dongᵀ-v {tx} v)))))
  LEDGER⇒donΔ {s = s} {tx = tx} (LEDGER-I (i , _ , uw)) =
    trans (cong UTxOState.donations (UTXO-i (UTXOW⇒UTXO uw) i))
      (trans (sym (+-identityʳ (donsOf s))) (cong (donsOf s +_) (sym (dongᵀ-i {tx} i))))

  LEDGERS⇒donᶠ : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → donsOf s′ ≡ scalarᶠ dongᵀ (donsOf s) l
  LEDGERS⇒donᶠ (BS-base Id-nop) = refl
  LEDGERS⇒donᶠ {l = t ∷ ts} (BS-ind st rest) =
    trans (LEDGERS⇒donᶠ rest) (cong (λ a → scalarᶠ dongᵀ a ts) (LEDGER⇒donΔ st))

  LEDGERS-don≈ : l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
    → donsOf s₁ ≡ donsOf s₂
  LEDGERS-don≈ {l₁ = l₁} {l₂ = l₂} {s = s} p st₁ st₂ =
    trans (LEDGERS⇒donᶠ st₁)
      (trans (scalarᶠ≡ (donsOf s) l₁)
        (trans (cong (donsOf s +_) (Σg-↭ {g = dongᵀ} p))
          (trans (sym (scalarᶠ≡ (donsOf s) l₂)) (sym (LEDGERS⇒donᶠ st₂)))))
```

### Votes: the `addVote` machinery

```agda
  addVoteOf : GovState → GovVote → GovState
  addVoteOf g v = addVote g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)

  private
    -- transparent mirror of the opaque `addVote`
    updVote : GovVoter → GVote → GovActionState → GovActionState
    updVote ⟦ CC , c ⟧ᵍᵛ x ast = record ast { votes = record (GovActionState.votes ast)
      { gvCC = insert (GovVotes.gvCC (GovActionState.votes ast)) c x } }
    updVote ⟦ DRep , c ⟧ᵍᵛ x ast = record ast { votes = record (GovActionState.votes ast)
      { gvDRep = insert (GovVotes.gvDRep (GovActionState.votes ast)) c x } }
    updVote ⟦ SPO , k ⟧ᵍᵛ x ast = record ast { votes = record (GovActionState.votes ast)
      { gvSPO = insert (GovVotes.gvSPO (GovActionState.votes ast)) k x } }

    addVoteAlt : GovState → GovActionID → GovVoter → GVote → GovState
    addVoteAlt g aid vt x =
      map (λ e → (proj₁ e , (if (proj₁ e ≡ aid) then updVote vt x (proj₂ e) else proj₂ e))) g

  opaque
    unfolding addVote

    addVote≡Alt : ∀ g aid vt x → addVote g aid vt x ≡ addVoteAlt g aid vt x
    addVote≡Alt [] aid vt x = refl
    addVote≡Alt ((gid , ast) ∷ g) aid ⟦ CC , c ⟧ᵍᵛ x   = cong₂ _∷_ refl (addVote≡Alt g aid ⟦ CC , c ⟧ᵍᵛ x)
    addVote≡Alt ((gid , ast) ∷ g) aid ⟦ DRep , c ⟧ᵍᵛ x = cong₂ _∷_ refl (addVote≡Alt g aid ⟦ DRep , c ⟧ᵍᵛ x)
    addVote≡Alt ((gid , ast) ∷ g) aid ⟦ SPO , k ⟧ᵍᵛ x  = cong₂ _∷_ refl (addVote≡Alt g aid ⟦ SPO , k ⟧ᵍᵛ x)

  private
    updVote-comm : ∀ (vt₁ vt₂ : GovVoter) x₁ x₂ ast → ¬ vt₁ ≡ vt₂
      → updVote vt₂ x₂ (updVote vt₁ x₁ ast) ≈ᵃ updVote vt₁ x₁ (updVote vt₂ x₂ ast)
    updVote-comm ⟦ CC , c₁ ⟧ᵍᵛ ⟦ CC , c₂ ⟧ᵍᵛ x₁ x₂ ast vt≢ = record
      { votes≈ = record { cc≈ = insert-comm {m = GovVotes.gvCC (GovActionState.votes ast)}
                                  {c₁ = c₁} {c₂ = c₂} {v₁ = x₁} {v₂ = x₂} (λ c≡ → vt≢ (cong ⟦ CC ,_⟧ᵍᵛ c≡))
                        ; dr≈ = SetSetoid.refl ; spo≈ = SetSetoid.refl }
      ; rest≡ = refl }
    updVote-comm ⟦ CC , _ ⟧ᵍᵛ   ⟦ DRep , _ ⟧ᵍᵛ _ _ _ _ = ≈ᵃ-refl
    updVote-comm ⟦ CC , _ ⟧ᵍᵛ   ⟦ SPO , _ ⟧ᵍᵛ  _ _ _ _ = ≈ᵃ-refl
    updVote-comm ⟦ DRep , _ ⟧ᵍᵛ ⟦ CC , _ ⟧ᵍᵛ   _ _ _ _ = ≈ᵃ-refl
    updVote-comm ⟦ DRep , c₁ ⟧ᵍᵛ ⟦ DRep , c₂ ⟧ᵍᵛ x₁ x₂ ast vt≢ = record
      { votes≈ = record { cc≈ = SetSetoid.refl
                        ; dr≈ = insert-comm {m = GovVotes.gvDRep (GovActionState.votes ast)}
                                  {c₁ = c₁} {c₂ = c₂} {v₁ = x₁} {v₂ = x₂} (λ c≡ → vt≢ (cong ⟦ DRep ,_⟧ᵍᵛ c≡))
                        ; spo≈ = SetSetoid.refl }
      ; rest≡ = refl }
    updVote-comm ⟦ DRep , _ ⟧ᵍᵛ ⟦ SPO , _ ⟧ᵍᵛ  _ _ _ _ = ≈ᵃ-refl
    updVote-comm ⟦ SPO , _ ⟧ᵍᵛ  ⟦ CC , _ ⟧ᵍᵛ   _ _ _ _ = ≈ᵃ-refl
    updVote-comm ⟦ SPO , _ ⟧ᵍᵛ  ⟦ DRep , _ ⟧ᵍᵛ _ _ _ _ = ≈ᵃ-refl
    updVote-comm ⟦ SPO , k₁ ⟧ᵍᵛ ⟦ SPO , k₂ ⟧ᵍᵛ x₁ x₂ ast vt≢ = record
      { votes≈ = record { cc≈ = SetSetoid.refl ; dr≈ = SetSetoid.refl
                        ; spo≈ = insert-comm {m = GovVotes.gvSPO (GovActionState.votes ast)}
                                   {c₁ = k₁} {c₂ = k₂} {v₁ = x₁} {v₂ = x₂} (λ c≡ → vt≢ (cong ⟦ SPO ,_⟧ᵍᵛ c≡)) }
      ; rest≡ = refl }

    updVote-cong : ∀ (vt : GovVoter) x {ast ast′} → ast ≈ᵃ ast′ → updVote vt x ast ≈ᵃ updVote vt x ast′
    updVote-cong ⟦ CC , c ⟧ᵍᵛ x {ast} {ast′} a≈ = record
      { votes≈ = record { cc≈ = insert-cong {m = GovVotes.gvCC (GovActionState.votes ast)}
                                  {m′ = GovVotes.gvCC (GovActionState.votes ast′)} c x (_≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈))
                        ; dr≈ = _≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈) ; spo≈ = _≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈) }
      ; rest≡ = _≈ᵃ_.rest≡ a≈ }
    updVote-cong ⟦ DRep , c ⟧ᵍᵛ x {ast} {ast′} a≈ = record
      { votes≈ = record { cc≈ = _≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈)
                        ; dr≈ = insert-cong {m = GovVotes.gvDRep (GovActionState.votes ast)}
                                  {m′ = GovVotes.gvDRep (GovActionState.votes ast′)} c x (_≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈))
                        ; spo≈ = _≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈) }
      ; rest≡ = _≈ᵃ_.rest≡ a≈ }
    updVote-cong ⟦ SPO , k ⟧ᵍᵛ x {ast} {ast′} a≈ = record
      { votes≈ = record { cc≈ = _≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈) ; dr≈ = _≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈)
                        ; spo≈ = insert-cong {m = GovVotes.gvSPO (GovActionState.votes ast)}
                                   {m′ = GovVotes.gvSPO (GovActionState.votes ast′)} k x (_≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈)) }
      ; rest≡ = _≈ᵃ_.rest≡ a≈ }

    addVoteAlt-comm : ∀ g aid₁ vt₁ x₁ aid₂ vt₂ x₂ → ¬ (aid₁ , vt₁) ≡ (aid₂ , vt₂)
      → addVoteAlt (addVoteAlt g aid₁ vt₁ x₁) aid₂ vt₂ x₂ ≈ᵍ addVoteAlt (addVoteAlt g aid₂ vt₂ x₂) aid₁ vt₁ x₁
    addVoteAlt-comm [] _ _ _ _ _ _ _ = []
    addVoteAlt-comm ((gid , ast) ∷ g) aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
      with ¿ gid ≡ aid₁ ¿ | ¿ gid ≡ aid₂ ¿
    ... | no _     | no _     = (refl , ≈ᵃ-refl) ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
    ... | yes refl | no _     = (refl , ≈ᵃ-refl) ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
    ... | no _     | yes refl = (refl , ≈ᵃ-refl) ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
    ... | yes refl | yes eq₂  =
      (refl , updVote-comm vt₁ vt₂ x₁ x₂ ast (λ vt≡ → ne (×-≡,≡→≡ (eq₂ , vt≡))))
      ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne

    addVoteAlt-cong : ∀ {g g′} aid vt x → g ≈ᵍ g′ → addVoteAlt g aid vt x ≈ᵍ addVoteAlt g′ aid vt x
    addVoteAlt-cong aid vt x [] = []
    addVoteAlt-cong {g = (gid , ast) ∷ g} {g′ = (gid′ , ast′) ∷ g′} aid vt x ((refl , a≈) ∷ rest)
      with ¿ gid ≡ aid ¿
    ... | no _     = (refl , a≈) ∷ addVoteAlt-cong aid vt x rest
    ... | yes refl = (refl , updVote-cong vt x a≈) ∷ addVoteAlt-cong aid vt x rest

  addVote-comm : ∀ g (v₁ v₂ : GovVote)
    → ¬ (GovVote.gid v₁ , GovVote.voter v₁) ≡ (GovVote.gid v₂ , GovVote.voter v₂)
    → addVoteOf (addVoteOf g v₁) v₂ ≈ᵍ addVoteOf (addVoteOf g v₂) v₁
  addVote-comm g v₁ v₂ ne =
    ≈ᵍ-trans (≡⟹≈ᵍ (trans (addVote≡Alt (addVoteOf g v₁) a₂ w₂ x₂)
                            (cong (λ h → addVoteAlt h a₂ w₂ x₂) (addVote≡Alt g a₁ w₁ x₁))))
      (≈ᵍ-trans (addVoteAlt-comm g a₁ w₁ x₁ a₂ w₂ x₂ ne)
        (≡⟹≈ᵍ (sym (trans (addVote≡Alt (addVoteOf g v₂) a₁ w₁ x₁)
                            (cong (λ h → addVoteAlt h a₁ w₁ x₁) (addVote≡Alt g a₂ w₂ x₂))))))
    where
    a₁ = GovVote.gid v₁ ; w₁ = GovVote.voter v₁ ; x₁ = GovVote.vote v₁
    a₂ = GovVote.gid v₂ ; w₂ = GovVote.voter v₂ ; x₂ = GovVote.vote v₂

  addVote-cong : ∀ {g g′} (v : GovVote) → g ≈ᵍ g′ → addVoteOf g v ≈ᵍ addVoteOf g′ v
  addVote-cong {g} {g′} v e =
    ≈ᵍ-trans (≡⟹≈ᵍ (addVote≡Alt g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)))
      (≈ᵍ-trans (addVoteAlt-cong (GovVote.gid v) (GovVote.voter v) (GovVote.vote v) e)
        (≡⟹≈ᵍ (sym (addVote≡Alt g′ (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)))))
```

### Votes: the orphan-vote filter

```agda
  -- a voter is registered relative to a DRep domain `D` (only DReps are filtered)
  regOK : ℙ Credential → GovVoter → Type
  regOK D ⟦ CC , _ ⟧ᵍᵛ   = ⊤
  regOK D ⟦ DRep , c ⟧ᵍᵛ = c ∈ D
  regOK D ⟦ SPO , _ ⟧ᵍᵛ  = ⊤

  regOK-transport : ∀ {D D′} (vt : GovVoter) → D ≡ᵉ D′ → regOK D vt → regOK D′ vt
  regOK-transport ⟦ CC , _ ⟧ᵍᵛ   _  _ = tt
  regOK-transport ⟦ DRep , _ ⟧ᵍᵛ d≡ r = d≡ .proj₁ r
  regOK-transport ⟦ SPO , _ ⟧ᵍᵛ  _  _ = tt

  private
    fkD : CertState → (Credential ⇀ GVote) → (Credential ⇀ GVote)
    fkD cs m = filterKeys (_∈ dom (DRepsOf cs)) m

  rmO-cong : ∀ cs {g g′} → g ≈ᵍ g′ → rmOrphanDRepVotes cs g ≈ᵍ rmOrphanDRepVotes cs g′
  rmO-cong cs [] = []
  rmO-cong cs {g = (gid , ast) ∷ g} {g′ = (gid′ , ast′) ∷ g′} ((refl , a≈) ∷ rest) =
    ( refl
    , record { votes≈ = record { cc≈  = _≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈)
                               ; dr≈  = Properties.filter-cong (_≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈))
                               ; spo≈ = _≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈) }
             ; rest≡ = _≈ᵃ_.rest≡ a≈ } )
    ∷ rmO-cong cs rest

  rmO-cong-dom : ∀ {cs cs′} g → dom (DRepsOf cs) ≡ᵉ dom (DRepsOf cs′)
    → rmOrphanDRepVotes cs g ≈ᵍ rmOrphanDRepVotes cs′ g
  rmO-cong-dom [] d≡ = []
  rmO-cong-dom {cs} {cs′} ((gid , ast) ∷ g) d≡ =
    ( refl
    , record { votes≈ = record
                 { cc≈ = SetSetoid.refl
                 ; dr≈ = (λ h → let (pa , ab∈) = Equivalence.from ∈-filter h in Equivalence.to ∈-filter (d≡ .proj₁ pa , ab∈))
                       , (λ h → let (pa , ab∈) = Equivalence.from ∈-filter h in Equivalence.to ∈-filter (d≡ .proj₂ pa , ab∈))
                 ; spo≈ = SetSetoid.refl }
             ; rest≡ = refl } )
    ∷ rmO-cong-dom {cs = cs} {cs′ = cs′} g d≡

  rmO-idem : ∀ cs g → rmOrphanDRepVotes cs (rmOrphanDRepVotes cs g) ≈ᵍ rmOrphanDRepVotes cs g
  rmO-idem cs [] = []
  rmO-idem cs ((gid , ast) ∷ g) =
    ( refl
    , record { votes≈ = record
                 { cc≈ = SetSetoid.refl
                 ; dr≈ = (λ h → proj₂ (Equivalence.from ∈-filter h))
                       , (λ h → Equivalence.to ∈-filter (proj₁ (Equivalence.from ∈-filter h) , h))
                 ; spo≈ = SetSetoid.refl }
             ; rest≡ = refl } )
    ∷ rmO-idem cs g

  private
    rmO-addVoteAlt : ∀ cs g aid (vt : GovVoter) x → regOK (dom (DRepsOf cs)) vt
      → rmOrphanDRepVotes cs (addVoteAlt g aid vt x) ≈ᵍ addVoteAlt (rmOrphanDRepVotes cs g) aid vt x
    rmO-addVoteAlt cs [] aid vt x rk = []
    rmO-addVoteAlt cs ((gid , ast) ∷ g) aid vt x rk with ¿ gid ≡ aid ¿
    ... | no _ = (refl , ≈ᵃ-refl) ∷ rmO-addVoteAlt cs g aid vt x rk
    ... | yes refl with vt | rk
    ...   | ⟦ CC , c ⟧ᵍᵛ  | rk′ = (refl , ≈ᵃ-refl) ∷ rmO-addVoteAlt cs g aid ⟦ CC , c ⟧ᵍᵛ x rk′
    ...   | ⟦ SPO , k ⟧ᵍᵛ | rk′ = (refl , ≈ᵃ-refl) ∷ rmO-addVoteAlt cs g aid ⟦ SPO , k ⟧ᵍᵛ x rk′
    ...   | ⟦ DRep , c ⟧ᵍᵛ | c∈D =
      ( refl
      , record { votes≈ = record
          { cc≈ = SetSetoid.refl
          ; dr≈ =
              ( (λ h → let (pa , ab∈ins) = Equivalence.from ∈-filter h
                       in case ∈-insert⁻ {m = GovVotes.gvDRep (GovActionState.votes ast)} {c = c} {v = x} ab∈ins of λ where
                            (inj₁ eq) → ∈-insert⁺ {m = fkD cs (GovVotes.gvDRep (GovActionState.votes ast))} {c = c} {v = x} (inj₁ eq)
                            (inj₂ (a≢c , ab∈m)) →
                              ∈-insert⁺ {m = fkD cs (GovVotes.gvDRep (GovActionState.votes ast))} {c = c} {v = x}
                                (inj₂ (a≢c , Equivalence.to ∈-filter (pa , ab∈m))))
              , (λ h → case ∈-insert⁻ {m = fkD cs (GovVotes.gvDRep (GovActionState.votes ast))} {c = c} {v = x} h of λ where
                         (inj₁ refl) → Equivalence.to ∈-filter
                           (c∈D , ∈-insert⁺ {m = GovVotes.gvDRep (GovActionState.votes ast)} {c = c} {v = x} (inj₁ refl))
                         (inj₂ (a≢c , ab∈fk)) →
                           let (pa , ab∈m) = Equivalence.from ∈-filter ab∈fk
                           in Equivalence.to ∈-filter
                                (pa , ∈-insert⁺ {m = GovVotes.gvDRep (GovActionState.votes ast)} {c = c} {v = x} (inj₂ (a≢c , ab∈m)))) )
          ; spo≈ = SetSetoid.refl }
        ; rest≡ = refl } )
      ∷ rmO-addVoteAlt cs g aid ⟦ DRep , c ⟧ᵍᵛ x c∈D

  rmO-addVote : ∀ cs g (v : GovVote) → regOK (dom (DRepsOf cs)) (GovVote.voter v)
    → rmOrphanDRepVotes cs (addVoteOf g v) ≈ᵍ addVoteOf (rmOrphanDRepVotes cs g) v
  rmO-addVote cs g v rk =
    ≈ᵍ-trans (≡⟹≈ᵍ (cong (rmOrphanDRepVotes cs) (addVote≡Alt g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v))))
      (≈ᵍ-trans (rmO-addVoteAlt cs g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v) rk)
        (≡⟹≈ᵍ (sym (addVote≡Alt (rmOrphanDRepVotes cs g) (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)))))

  addVotes-cong : ∀ {g g′ : GovState} (vs : List GovVote) → g ≈ᵍ g′ → foldl addVoteOf g vs ≈ᵍ foldl addVoteOf g′ vs
  addVotes-cong []       e = e
  addVotes-cong (v ∷ vs) e = addVotes-cong vs (addVote-cong v e)

  -- the orphan filter passes through a fold of registered votes
  rmO-addVotes : ∀ cs {g : GovState} (vs : List GovVote)
    → Allᴸ.All (λ v → regOK (dom (DRepsOf cs)) (GovVote.voter v)) vs
    → rmOrphanDRepVotes cs (foldl addVoteOf g vs) ≈ᵍ foldl addVoteOf (rmOrphanDRepVotes cs g) vs
  rmO-addVotes cs []       _          = ≈ᵍ-refl
  rmO-addVotes cs {g} (v ∷ vs) (rk ∷ rks) =
    ≈ᵍ-trans (rmO-addVotes cs vs rks) (addVotes-cong vs (rmO-addVote cs g v rk))
```

### Votes: extraction from the rules

```agda
  private opaque
    unfolding isRegistered

    regOK-of : ∀ {Γᵍ : GovEnv} (vt : GovVoter) → isRegistered Γᵍ vt → regOK (dom (DRepsOf (CertStateOf Γᵍ))) vt
    regOK-of ⟦ CC , _ ⟧ᵍᵛ   _ = tt
    regOK-of ⟦ DRep , _ ⟧ᵍᵛ r = r
    regOK-of ⟦ SPO , _ ⟧ᵍᵛ  _ = tt

  private
    GOVS-votes⇒foldl : ∀ {Γᵍ : GovEnv} {n} {g g′ : GovState} (vs : List GovVote)
      → _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⟦_⟧_ = _⊢_⇀⦇_,GOV⦈_} (Γᵍ , n) g (map inj₁ vs) g′
      → (g′ ≡ foldl addVoteOf g vs) × Allᴸ.All (λ v → regOK (dom (DRepsOf (CertStateOf Γᵍ))) (GovVote.voter v)) vs
    GOVS-votes⇒foldl [] (BS-base Id-nop) = refl , []
    GOVS-votes⇒foldl (v ∷ vs) (BS-ind (GOV-Vote (_ , _ , isReg , _)) rest) =
      let (eq , alls) = GOVS-votes⇒foldl vs rest in eq , (regOK-of (GovVote.voter v) isReg ∷ alls)

    NoProp⇒gpv : ∀ {ℓ} (x : Tx ℓ) → ListOfGovProposalsOf x ≡ [] → GovProposals+Votes x ≡ map inj₁ (ListOfGovVotesOf x)
    NoProp⇒gpv x np rewrite np = refl

    GOVS⇒votes : ∀ {ℓ} {Γᵍ : GovEnv} {g g′ : GovState} (x : Tx ℓ) → ListOfGovProposalsOf x ≡ []
      → Γᵍ ⊢ g ⇀⦇ GovProposals+Votes x ,GOVS⦈ g′
      → (g′ ≡ foldl addVoteOf g (ListOfGovVotesOf x))
        × Allᴸ.All (λ v → regOK (dom (DRepsOf (CertStateOf Γᵍ))) (GovVote.voter v)) (ListOfGovVotesOf x)
    GOVS⇒votes x np govs =
      GOVS-votes⇒foldl (ListOfGovVotesOf x) (subst (λ sig → _ ⊢ _ ⇀⦇ sig ,GOVS⦈ _) (NoProp⇒gpv x np) govs)

    CERT-dreps-dom : ∀ {Γᶜ : CertEnv} {cs cs′ : CertState} {c : DCert} → ¬ isDRepCert c
      → Γᶜ ⊢ cs ⇀⦇ c ,CERT⦈ cs′ → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
    CERT-dreps-dom ¬d (CERT-deleg _)                     = SetSetoid.refl
    CERT-dreps-dom ¬d (CERT-pool _)                      = SetSetoid.refl
    CERT-dreps-dom ¬d (CERT-gov (GOVCERT-regdrep _))     = ⊥-elim (¬d tt)
    CERT-dreps-dom ¬d (CERT-gov (GOVCERT-deregdrep _))   = ⊥-elim (¬d tt)
    CERT-dreps-dom ¬d (CERT-gov (GOVCERT-ccreghot _))    = SetSetoid.refl

    CERTS⇒dreps-dom : ∀ {Γᶜ : CertEnv} {cs cs′ : CertState} {cts : List DCert}
      → Allᴸ.All (λ c → ¬ isDRepCert c) cts → Γᶜ ⊢ cs ⇀⦇ cts ,CERTS⦈ cs′ → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
    CERTS⇒dreps-dom []         (BS-base Id-nop) = SetSetoid.refl
    CERTS⇒dreps-dom (¬d ∷ nds) (BS-ind st rest) = SetSetoid.trans (CERTS⇒dreps-dom nds rest) (CERT-dreps-dom ¬d st)

  SUBENTITIES⇒dreps-dom : ∀ {Γᵉ : SubEntitiesEnv} {cs cs′ : CertState} {x : SubLevelTx}
    → Allᴸ.All (λ c → ¬ isDRepCert c) (DCertsOf x) → Γᵉ ⊢ cs ⇀⦇ x ,SUBENTITIES⦈ cs′
    → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
  SUBENTITIES⇒dreps-dom {Γᵉ} {cs} {x = x} nds (SUBENTITIES (_ , _ , _ , _ , _ , certs , _ , _)) =
    SetSetoid.trans (CERTS⇒dreps-dom nds certs)
      (mVR-dom (DRepsOf cs) (mapPartial (isGovVoterDRep ∘ GovVote.voter) (fromList (ListOfGovVotesOf x)))
               (const (SubEntitiesEnv.epoch Γᵉ + PParams.drepActivity (SubEntitiesEnv.pp Γᵉ))))

  ENTITIES⇒dreps-dom : ∀ {Γᵉ : EntitiesEnv} {cs cs′ : CertState} {x : TopLevelTx}
    → Allᴸ.All (λ c → ¬ isDRepCert c) (DCertsOf x) → Γᵉ ⊢ cs ⇀⦇ x ,ENTITIES⦈ cs′
    → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
  ENTITIES⇒dreps-dom {Γᵉ} {cs} {x = x} nds (ENTITIES (_ , _ , _ , _ , _ , _ , _ , _ , certs , _ , _)) =
    SetSetoid.trans (CERTS⇒dreps-dom nds certs)
      (mVR-dom (DRepsOf cs) (mapPartial (isGovVoterDRep ∘ GovVote.voter) (fromList (ListOfGovVotesOf x)))
               (const (EntitiesEnv.epoch Γᵉ + PParams.drepActivity (EntitiesEnv.pp Γᵉ))))

  -- a valid batch's subtransactions fold their votes, against a constant DRep domain
  SUBLEDGERS⇒gov : ∀ {Γˢ : SubLedgerEnv} {s s′ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γˢ ≡ true
    → Allᴸ.All (λ x → ListOfGovProposalsOf x ≡ []) stxs
    → Allᴸ.All (λ x → Allᴸ.All (λ c → ¬ isDRepCert c) (DCertsOf x)) stxs
    → Γˢ ⊢ s ⇀⦇ stxs ,SUBLEDGERS⦈ s′
    → (govOf s′ ≡ foldl addVoteOf (govOf s) (concatMap ListOfGovVotesOf stxs))
      × Allᴸ.All (λ v → regOK (dom (DRepsOf (certOf s))) (GovVote.voter v)) (concatMap ListOfGovVotesOf stxs)
      × dom (DRepsOf (certOf s′)) ≡ᵉ dom (DRepsOf (certOf s))
  SUBLEDGERS⇒gov _ _ _ (BS-base Id-nop) = refl , [] , SetSetoid.refl
  SUBLEDGERS⇒gov {s = s} {stxs = x ∷ xs} v (np ∷ nps) (nd ∷ nds) (BS-ind (SUBLEDGER-V (refl , _ , ents , govs)) rest) =
    let d₁ = SUBENTITIES⇒dreps-dom nd ents
        (g₁ , r₁) = GOVS⇒votes x np govs
        (gᵣ , rᵣ , dᵣ) = SUBLEDGERS⇒gov v nps nds rest
    in trans gᵣ (trans (cong (λ g → foldl addVoteOf g (concatMap ListOfGovVotesOf xs)) g₁)
                       (sym (foldl-++ addVoteOf (govOf s) (ListOfGovVotesOf x) (concatMap ListOfGovVotesOf xs))))
     , AllPropᴸ.++⁺ (Allᴸ.map (λ {v′} → regOK-transport (GovVote.voter v′) d₁) r₁)
                    (Allᴸ.map (λ {v′} → regOK-transport (GovVote.voter v′) d₁) rᵣ)
     , SetSetoid.trans dᵣ d₁
  SUBLEDGERS⇒gov v _ _ (BS-ind (SUBLEDGER-I (i , _)) _) = ⊥-elim (case trans (sym v) i of λ ())

  LEDGER⇒dreps-dom : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → GovDomStable tx
    → dom (DRepsOf (certOf s′)) ≡ᵉ dom (DRepsOf (certOf s))
  LEDGER⇒dreps-dom (LEDGER-V (v , sub , ents , _ , _)) ((nps , np) , (nds , nd)) =
    SetSetoid.trans (ENTITIES⇒dreps-dom nd ents) (SUBLEDGERS⇒gov v nps nds sub .proj₂ .proj₂)
  LEDGER⇒dreps-dom (LEDGER-I _) _ = SetSetoid.refl

  LEDGER⇒govΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → GovDomStable tx
    → ( govOf s′ ≡ rmOrphanDRepVotes (certOf s′) (foldl addVoteOf (govOf s) (allVotes tx))
      × Allᴸ.All (λ v → regOK (dom (DRepsOf (certOf s))) (GovVote.voter v)) (allVotes tx)
      × IsValidFlagOf tx ≡ true )
    ⊎ (govOf s′ ≡ govOf s × IsValidFlagOf tx ≡ false)
  LEDGER⇒govΔ {s = s} {tx = tx} {s′ = s′} (LEDGER-V (v , sub , ents , govs , _)) ((nps , np) , (nds , nd)) =
    let (g₁ , r₁ , d₁) = SUBLEDGERS⇒gov v nps nds sub
        d₂ = SetSetoid.trans (ENTITIES⇒dreps-dom nd ents) d₁
        (g₂ , r₂) = GOVS⇒votes tx np govs
        cm = concatMap ListOfGovVotesOf (subTxs tx)
    in inj₁ ( cong (rmOrphanDRepVotes (certOf s′))
                (trans g₂ (trans (cong (λ g → foldl addVoteOf g (ListOfGovVotesOf tx)) g₁)
                                 (sym (foldl-++ addVoteOf (govOf s) cm (ListOfGovVotesOf tx)))))
            , AllPropᴸ.++⁺ r₁ (Allᴸ.map (λ {v′} → regOK-transport (GovVote.voter v′) d₂) r₂)
            , v )
  LEDGER⇒govΔ (LEDGER-I (i , _ , _)) _ = inj₂ (refl , i)
```

### `govSt`

```agda
  private
    vtgt : GovVote → GovActionID × GovVoter
    vtgt v = (GovVote.gid v , GovVote.voter v)

    map-∈ˡ : ∀ {A B : Type} {f : A → B} {v : A} {vs : List A} → v ∈ˡ vs → f v ∈ˡ map f vs
    map-∈ˡ (here refl) = here refl
    map-∈ˡ (there v∈)  = there (map-∈ˡ v∈)

    votePush : ∀ {g : GovState} (v : GovVote) (vs : List GovVote) → (∀ {v′} → v′ ∈ˡ vs → ¬ vtgt v ≡ vtgt v′)
      → foldl addVoteOf (addVoteOf g v) vs ≈ᵍ addVoteOf (foldl addVoteOf g vs) v
    votePush v [] H = ≈ᵍ-refl
    votePush {g} v (v′ ∷ vs) H =
      ≈ᵍ-trans (addVotes-cong vs (addVote-comm g v v′ (H (here refl))))
        (votePush {g = addVoteOf g v′} v vs (λ v″∈ → H (there v″∈)))

    votesBlock-comm : ∀ {g : GovState} (vx vy : List GovVote)
      → (∀ {v₁ v₂} → v₁ ∈ˡ vx → v₂ ∈ˡ vy → ¬ vtgt v₁ ≡ vtgt v₂)
      → foldl addVoteOf (foldl addVoteOf g vx) vy ≈ᵍ foldl addVoteOf (foldl addVoteOf g vy) vx
    votesBlock-comm [] vy H = ≈ᵍ-refl
    votesBlock-comm {g} (v ∷ vx) vy H =
      ≈ᵍ-trans (votesBlock-comm {g = addVoteOf g v} vx vy (λ v₁∈ v₂∈ → H (there v₁∈) v₂∈))
        (addVotes-cong vx (votePush v vy (λ v′∈ → H (here refl) v′∈)))

    -- the per-transaction governance operation, relative to the initial certificate state
    govOp : CertState → GovState → TopLevelTx → GovState
    govOp cs₀ g t = if IsValidFlagOf t then foldl addVoteOf (rmOrphanDRepVotes cs₀ g) (allVotes t) else g

    Pgov : CertState → TopLevelTx → Type
    Pgov cs₀ t = IsValidFlagOf t ≡ true → Allᴸ.All (λ v → regOK (dom (DRepsOf cs₀)) (GovVote.voter v)) (allVotes t)

    govOp-cong : ∀ cs₀ {g g′ : GovState} (t : TopLevelTx) → g ≈ᵍ g′ → govOp cs₀ g t ≈ᵍ govOp cs₀ g′ t
    govOp-cong cs₀ t e with IsValidFlagOf t
    ... | true  = addVotes-cong (allVotes t) (rmO-cong cs₀ e)
    ... | false = e

    govFold-cong : ∀ cs₀ {g g′ : GovState} (l : List TopLevelTx) → g ≈ᵍ g′ → foldl (govOp cs₀) g l ≈ᵍ foldl (govOp cs₀) g′ l
    govFold-cong cs₀ []       e = e
    govFold-cong cs₀ (t ∷ ts) e = govFold-cong cs₀ ts (govOp-cong cs₀ t e)

    govOp-comm : ∀ cs₀ {g : GovState} {x y : TopLevelTx} → Indep x y → Pgov cs₀ x → Pgov cs₀ y
      → govOp cs₀ (govOp cs₀ g x) y ≈ᵍ govOp cs₀ (govOp cs₀ g y) x
    govOp-comm cs₀ {g} {x} {y} i px py with IsValidFlagOf x | IsValidFlagOf y | px | py
    ... | true  | false | _   | _   = ≈ᵍ-refl
    ... | false | true  | _   | _   = ≈ᵍ-refl
    ... | false | false | _   | _   = ≈ᵍ-refl
    ... | true  | true  | px′ | py′ =
      ≈ᵍ-trans
        (addVotes-cong (allVotes y)
          (≈ᵍ-trans (rmO-addVotes cs₀ (allVotes x) (px′ refl)) (addVotes-cong (allVotes x) (rmO-idem cs₀ g))))
        (≈ᵍ-trans (votesBlock-comm (allVotes x) (allVotes y) disjT)
          (≈ᵍ-sym (addVotes-cong (allVotes x)
            (≈ᵍ-trans (rmO-addVotes cs₀ (allVotes y) (py′ refl)) (addVotes-cong (allVotes y) (rmO-idem cs₀ g))))))
      where
      disjT : ∀ {v₁ v₂} → v₁ ∈ˡ allVotes x → v₂ ∈ˡ allVotes y → ¬ vtgt v₁ ≡ vtgt v₂
      disjT v₁∈ v₂∈ tgt≡ =
        i .Indep.disjVotes (Equivalence.to ∈-fromList (map-∈ˡ v₁∈))
          (subst (λ p → p ∈ voteTargets y) (sym tgt≡) (Equivalence.to ∈-fromList (map-∈ˡ v₂∈)))

    LEDGERS⇒govᶠ : ∀ {cs₀ : CertState}
      → dom (DRepsOf (certOf s)) ≡ᵉ dom (DRepsOf cs₀)
      → Allᴸ.All GovDomStable l
      → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
      → (govOf s′ ≈ᵍ foldl (govOp cs₀) (govOf s) l) × Allᴸ.All (Pgov cs₀) l
    LEDGERS⇒govᶠ _ _ (BS-base Id-nop) = ≈ᵍ-refl , []
    LEDGERS⇒govᶠ {s = s} {l = t ∷ ts} {cs₀ = cs₀} d₀ (ng ∷ ngs) (BS-ind {s' = s₁} st rest) =
      let dₛ = LEDGER⇒dreps-dom st ng
          d₁ = SetSetoid.trans dₛ d₀
          (ihEq , ihAll) = LEDGERS⇒govᶠ {cs₀ = cs₀} d₁ ngs rest
      in case LEDGER⇒govΔ st ng of λ where
        (inj₁ (eq , alls , v)) →
            ≈ᵍ-trans ihEq
              (govFold-cong cs₀ ts
                (≈ᵍ-trans (≡⟹≈ᵍ eq)
                  (≈ᵍ-trans (rmO-addVotes (certOf s₁) (allVotes t)
                              (Allᴸ.map (λ {v′} → regOK-transport (GovVote.voter v′) (SetSetoid.sym dₛ)) alls))
                    (≈ᵍ-trans (addVotes-cong (allVotes t) (rmO-cong-dom {cs = certOf s₁} {cs′ = cs₀} (govOf s) d₁))
                      (≡⟹≈ᵍ (sym (cong (λ b → if b then foldl addVoteOf (rmOrphanDRepVotes cs₀ (govOf s)) (allVotes t)
                                                    else govOf s) v)))))))
          , ((λ _ → Allᴸ.map (λ {v′} → regOK-transport (GovVote.voter v′) d₀) alls) ∷ ihAll)
        (inj₂ (eq , iv)) →
            ≈ᵍ-trans ihEq
              (govFold-cong cs₀ ts
                (≈ᵍ-trans (≡⟹≈ᵍ eq)
                  (≡⟹≈ᵍ (sym (cong (λ b → if b then foldl addVoteOf (rmOrphanDRepVotes cs₀ (govOf s)) (allVotes t)
                                                else govOf s) iv)))))
          , ((λ v → ⊥-elim (case trans (sym iv) v of λ ())) ∷ ihAll)

  LEDGERS-govSt≈ : Allᴸ.All GovDomStable l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
    → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂ → govOf s₁ ≈ᵍ govOf s₂
  LEDGERS-govSt≈ {s = s} ng ap p st₁ st₂ =
    let cs₀ = certOf s
        (e₁ , all₁) = LEDGERS⇒govᶠ {cs₀ = cs₀} SetSetoid.refl ng st₁
        (e₂ , _)    = LEDGERS⇒govᶠ {cs₀ = cs₀} SetSetoid.refl (All-resp-↭ p ng) st₂
    in ≈ᵍ-trans e₁
         (≈ᵍ-trans
           (foldl-↭ _≈ᵍ_ ≈ᵍ-refl ≈ᵍ-trans Indep Indep-sym (Pgov cs₀) (govOp cs₀)
             (λ t e → govOp-cong cs₀ t e) (λ i px py → govOp-comm cs₀ i px py) (govOf s) all₁ ap p)
           (≈ᵍ-sym e₂))
```
