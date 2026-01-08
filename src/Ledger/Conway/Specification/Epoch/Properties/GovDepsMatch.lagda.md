---
source_branch: master
source_path: src/Ledger/Conway/Specification/Epoch/Properties/GovDepsMatch.lagda.md
---

## Lemma: <span class="AgdaFunction">govDepsMatch</span> is an <span class="AgdaDatatype">EPOCH</span> invariant {#lem:EpochGovDepsMatch}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Epoch.Properties.GovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.List.Base using (filter)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁺; map-∈↔)
open import stdlib.Data.List.Subpermutations using (∈ˡ-map-filter)
open import Data.Product.Function.NonDependent.Propositional using (_×-cong_)
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)

open import Relation.Unary using (Decidable)

open import Ledger.Prelude renaming (map to map'; mapˢ to map)

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Base txs abs
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Ratify govStructure
open import Ledger.Conway.Specification.Utxo txs abs

open import Axiom.Set.Properties th

open Equivalence

import Function.Related.Propositional as R
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

module EPOCH-Body (eps : EpochState) where
  open GovActionState public
  open EpochState eps hiding (es) renaming (ls to epsLState; fut to epsRState) public
  open RatifyState renaming (es to ensRState) public

  ens      = record (epsRState .ensRState) { withdrawals = ∅ }
  tmpGovSt = filter (λ x → ¿ proj₁ x ∉ map proj₁ (epsRState .removed) ¿) (GovStateOf eps)
  orphans  = fromList $ getOrphans (epsRState .ensRState) tmpGovSt
  removed' : ℙ (GovActionID × GovActionState)
  removed' = (epsRState .removed) ∪ orphans
  removedGovActions = flip concatMapˢ removed' λ (gaid , gaSt) →
    map (returnAddr gaSt ,_) ((DepositsOf eps ∣ ❴ GovActionDeposit gaid ❵) ˢ)

module EPOCH-PROPS {eps : EpochState} where
  open EPOCH-Body eps
```
-->

*Informally*.

Let `eps`{.AgdaBound}, `eps'`{.AgdaBound} : `EpochState`{.AgdaRecord} be two epoch
states and let `e`{.AgdaBound} : `Epoch`{.AgdaDatatype} be an epoch.
Recall, `LStateOf` `eps`{.AgdaBound} gives the ledger state of `eps`{.AgdaBound}.
If `eps`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `e`{.AgdaBound} `,EPOCH⦈`{.AgdaDatatype} `eps'`{.AgdaBound},
then (under a certain special condition)
`govDepsMatch`{.AgdaFunction} (`LStateOf` `eps`{.AgdaBound}) implies
`govDepsMatch`{.AgdaFunction} (`LStateOf` `eps'`{.AgdaBound}).

The special condition under which the property holds is the same as the one in
[Chain.Properties.GovDepsMatch][]:
let `removed'`{.AgdaFunction} be the union of the governance actions in
the `removed`{.AgdaField} field of the ratify state of `eps`{.AgdaBound} and the
orphaned governance actions in the `GovState`{.AgdaFunction} of `eps`{.AgdaBound}.

For the formal statement of the lemma,

+  let $𝒢$ be the set $\{$`GovActionDeposit`{.AgdaInductiveConstructor} `id`{.AgdaBound} : `id`{.AgdaBound} $∈$ `proj₁`{.AgdaFunction} `removed'`{.AgdaFunction}$\}$, and

+  assume $𝒢$ is a subset of the set of deposits of (the governance state of) `eps`{.AgdaBound}.

*Formally*.

```agda
  EPOCH-govDepsMatch :  {eps' : EpochState} {e : Epoch}
    → map (GovActionDeposit ∘ proj₁) removed' ⊆ dom (DepositsOf eps)
    → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    → govDepsMatch (LStateOf eps) → govDepsMatch (LStateOf eps')
```

*Proof*.  (Click the "Show more Agda" button to reveal the proof.)

<!--
```agda
  EPOCH-govDepsMatch {eps'} {e} ratify-removed = mainProof
    where

    -- the combinator used in the EPOCH rule
    ΔΠ : ℙ DepositPurpose
    ΔΠ = map (proj₁ ∘ proj₂) removedGovActions

    -- a simpler combinator that suffices here;
    ΔΠ' : ℙ DepositPurpose
    ΔΠ' = map (GovActionDeposit ∘ proj₁) removed'
    -- Below we prove ΔΠ and ΔΠ' are essentially equivalent.

    P : GovActionID × GovActionState → Type
    P = λ u → proj₁ u ∉ map proj₁ removed'

    P? : Decidable P
    P? = λ u → ¿ P u ¿

    utxoDeps : Deposits
    utxoDeps = UTxOState.deposits (LState.utxoSt epsLState)

    -- utxo deposits restricted to new form of set used in EPOCH rule
    utxoDeps' : Deposits
    utxoDeps' = utxoDeps ∣ ΔΠ' ᶜ

    ΔΠ'≡ΔΠ : ΔΠ' ≡ᵉ ΔΠ
    ΔΠ'≡ΔΠ = ΔΠ'⊆ΔΠ , ΔΠ⊆ΔΠ'
      where
      ΔΠ'⊆ΔΠ : ΔΠ' ⊆ ΔΠ
      ΔΠ'⊆ΔΠ {a} x with from ∈-map x
      ... | (gaid , gast) , refl , gaidgast∈rem with from ∈-map (ratify-removed x)
      ... | (dp , c) , refl , dpc∈utxoDeps = let gadc = (GovActionDeposit gaid , c) in
        to ∈-map ((returnAddr {txs} gast , gadc)
                 , refl
                 , to ∈-concatMapˢ ((gaid , gast)
                                   , gaidgast∈rem
                                   , to ∈-map (gadc , refl , res-singleton⁺ {m = utxoDeps} dpc∈utxoDeps)))
      ΔΠ⊆ΔΠ' : ΔΠ ⊆ ΔΠ'
      ΔΠ⊆ΔΠ' {a} x with from ∈-map x
      ... | (rwa , dp , c) , refl , rwa-dp-c∈ with (from ∈-concatMapˢ rwa-dp-c∈)
      ... | (gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map with (from ∈-map rwa-dp-c-∈-map)
      ... | (_ , _) , refl , q∈ =
        to ∈-map ((gaid , gast)
                 , proj₁ (×-≡,≡←≡ (proj₂ (res-singleton'' {m = utxoDeps} q∈)))
                 , gaid-gast-∈-removed)

    map-filter-decomp : ∀ a → (a ∉ ΔΠ' × a ∈ˡ map' (GovActionDeposit ∘ proj₁) (GovStateOf eps))
                               ⇔ (a ∈ˡ map' (GovActionDeposit ∘ proj₁)(filter P? (GovStateOf eps)))
    map-filter-decomp a = mk⇔ i (λ h → ii h , iii h)
      where
      i : ((a ∉ ΔΠ') × (a ∈ˡ map' (GovActionDeposit ∘ proj₁) (GovStateOf eps)))
          → a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? (GovStateOf eps))
      i (a∉ΔΠ' , a∈) with Inverse.from (map-∈↔ (GovActionDeposit ∘ proj₁)) a∈
      ... | b , b∈ , refl = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁))
                                       (b , ∈-filter⁺ P? b∈ (a∉ΔΠ' ∘ ∈-map⁺-∘) , refl)

      ii : a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? (GovStateOf eps)) → a ∉ ΔΠ'
      ii a∈ a∈ΔΠ' with from (∈ˡ-map-filter {l = (GovStateOf eps)} {P? = P?}) a∈
      ... | _ , _ , refl , Pb with ∈-map⁻' a∈ΔΠ'
      ... | q , refl , q∈rem = Pb (to ∈-map (q , refl , q∈rem))

      iii : a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? (GovStateOf eps))
            → a ∈ˡ map' (GovActionDeposit ∘ proj₁) (GovStateOf eps)
      iii a∈ with from (∈ˡ-map-filter {l = (GovStateOf eps)} {P? = P?}) a∈
      ... | b , b∈ , refl , Pb = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁)) (b , (b∈ , refl))


    main-invariance-lemma :
        filterˢ isGADeposit (dom utxoDeps) ≡ᵉ' fromList (map' (GovActionDeposit ∘ proj₁) (GovStateOf eps))
        ---------------------------------------------------------------------------------------------------
      → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ' fromList (map' (GovActionDeposit ∘ proj₁) (filter P? (GovStateOf eps)))

    main-invariance-lemma HYP a = let open R.EquationalReasoning in
      a ∈ filterˢ isGADeposit (dom utxoDeps')                          ∼⟨ R.SK-sym ∈-filter ⟩
      (isGADeposit a × a ∈ dom utxoDeps')                              ∼⟨ R.K-refl ×-cong ∈-resᶜ-dom ⟩
      (isGADeposit a × a ∉ ΔΠ' × ∃[ q ] (a , q) ∈ utxoDeps)             ∼⟨ ×-⇔-swap ⟩
      (a ∉ ΔΠ' × isGADeposit a × ∃[ q ] (a , q) ∈ utxoDeps)             ∼⟨ R.K-refl ×-cong (R.K-refl ×-cong dom∈)⟩
      (a ∉ ΔΠ' × isGADeposit a × a ∈ dom utxoDeps)                      ∼⟨ R.K-refl ×-cong ∈-filter ⟩
      (a ∉ ΔΠ' × a ∈ filterˢ isGADeposit (dom utxoDeps))                ∼⟨ R.K-refl ×-cong (HYP a) ⟩
      (a ∉ ΔΠ' × a ∈ fromList (map' (GovActionDeposit ∘ proj₁) (GovStateOf eps)))  ∼⟨ R.K-refl ×-cong (R.SK-sym ∈-fromList)⟩
      (a ∉ ΔΠ' × a ∈ˡ map' (GovActionDeposit ∘ proj₁) (GovStateOf eps))            ∼⟨ map-filter-decomp a ⟩
      a ∈ˡ map' (GovActionDeposit ∘ proj₁) (filter P? (GovStateOf eps))           ∼⟨ ∈-fromList ⟩
      a ∈ fromList (map' (GovActionDeposit ∘ proj₁) (filter P? (GovStateOf eps))) ∎

    ls₁ = record (LStateOf eps')
           { utxoSt = Pre-POOLREAPUpdate.utxoSt' (LStateOf eps) (EnactStateOf eps) (GovernanceUpdate.updates ((LStateOf eps)) ((RatifyStateOf eps))) }

    open LState
    open CertState

    retiredDeposits : ℙ DepositPurpose
    retiredDeposits = map PoolDeposit ((RetiringOf eps)⁻¹ e)

    d≡PoolDepositA
      : (d : DepositPurpose)
      → d ∈ dom (DepositsOf ls₁ ∣ retiredDeposits)
      → ∃[ kh ] d ≡ PoolDeposit kh
    d≡PoolDepositA d d∈res =
      Product.map₂ proj₁ $
        ∈-map⁻' $       -- (∃[ a ] d ≡ PoolDeposit a × a ∈ _)
         res-dom d∈res  -- d ∈ retiredDeposits
      where import Data.Product.Base as Product using (map₂)

    noGADepositIsRetired
      : (d : DepositPurpose)
      → d ∈ dom (DepositsOf ls₁ ∣ retiredDeposits)
      → ¬ isGADeposit d
    noGADepositIsRetired d d∈res dIsGA
     rewrite (proj₂ $ d≡PoolDepositA d d∈res)
     with dIsGA
    ... | ()

    dropRetiredDeposits :
      filterˢ isGADeposit (dom (DepositsOf ls₁ ∣ retiredDeposits ᶜ)) ≡ᵉ
        filterˢ isGADeposit (dom (DepositsOf ls₁))
    dropRetiredDeposits = begin
      filterˢ isGADeposit (dom (DepositsOf ls₁ ∣ retiredDeposits ᶜ))

        ≈⟨ ∪-identityˡ _ ⟨

      ∅ˢ ∪ filterˢ isGADeposit (dom (DepositsOf ls₁ ∣ retiredDeposits ᶜ))

        ≈⟨ ∪-cong
             (filter-∅ noGADepositIsRetired)
             (IsEquivalence.refl ≡ᵉ-isEquivalence)
         ⟨

      filterˢ isGADeposit (dom (DepositsOf ls₁ ∣ retiredDeposits))
      ∪
      filterˢ isGADeposit (dom (DepositsOf ls₁ ∣ retiredDeposits ᶜ))

        ≈⟨ filter-hom-∪ ⟨

      filterˢ isGADeposit
        (dom (DepositsOf ls₁ ∣ retiredDeposits)
         ∪
         dom (DepositsOf ls₁ ∣ retiredDeposits ᶜ)
        )

        ≈⟨ filter-cong dom∪ ⟨

      filterˢ isGADeposit
        (dom
          ((DepositsOf ls₁ ∣ retiredDeposits) ˢ
            ∪
           (DepositsOf ls₁ ∣ retiredDeposits ᶜ) ˢ
          )
        )

        ≈⟨ IsEquivalence.refl ≡ᵉ-isEquivalence ⟩

      filterˢ isGADeposit
        (Rel.dom
          (((DepositsOf ls₁ ˢ) ∣ʳ retiredDeposits)
            ∪
           ((DepositsOf ls₁ ˢ) ∣ʳ retiredDeposits ᶜ)
          )
        )

        ≈⟨ filter-cong $ dom-cong (res-ex-∪ dec¹) ⟩

      filterˢ isGADeposit (dom (DepositsOf ls₁))
      ∎

      where
        open SetoidReasoning (≡ᵉ-Setoid {A = DepositPurpose})
        open import Relation.Binary using (IsEquivalence)
        import Axiom.Set.Rel th as Rel

    mainProof
     : _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
     → govDepsMatch (LStateOf eps) → govDepsMatch (LStateOf eps')
    -- Pattern matching POOLREAP used to be done in EPOCH-govDepsMatch directly.
    -- However, that made typechecking much slower.
    mainProof (EPOCH (x , POOLREAP , _)) = poolReapMatch ∘ ratifiesSnapMatch
      where
        ratifiesSnapMatch : govDepsMatch (LStateOf eps) → govDepsMatch ls₁
        ratifiesSnapMatch =
          ≡ᵉ.trans (filter-cong $ dom-cong (res-comp-cong $ ≡ᵉ.sym ΔΠ'≡ΔΠ))
          ∘ from ≡ᵉ⇔≡ᵉ' ∘ main-invariance-lemma ∘ to ≡ᵉ⇔≡ᵉ'

        poolReapMatch : govDepsMatch ls₁ → govDepsMatch (LStateOf eps')
        poolReapMatch = ≡ᵉ.trans dropRetiredDeposits
```
-->
