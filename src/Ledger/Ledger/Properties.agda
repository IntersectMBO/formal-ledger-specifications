{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Deleg.Properties govStructure
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs

open import Data.Bool.Properties   using (¬-not)
open import Data.Nat.Properties         hiding (_≟_)
open import Data.Product.Properties using (,-injectiveˡ; ×-≡,≡→≡; ×-≡,≡←≡)
open import Relation.Binary
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

open import Interface.ComputationalRelation

-- ** Proof that LEDGER is computational.

instance
  _ = Monad-ComputationResult

  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_ String
  Computational-LEDGER = record {go}
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    computeUtxow = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}
    computeCerts = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov   = comp {STS = _⊢_⇀⦇_,GOV⦈_}

    module go
      (Γ : LEnv)   (let ⟦ slot , ppolicy , pparams , enactState ⟧ˡᵉ = Γ)
      (s : LState) (let ⟦ utxoSt , govSt , certSt ⟧ˡ = s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      (let H? = LEDGER-premises .proj₂ .dec)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ
      govΓ  = GovEnv  ∋ ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = do
        (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
        (certSt' , certStep) ← map₁ (λ where (inj₁ x) → x; (inj₂ x) → x) $ computeCerts certΓ certSt txcerts
        (govSt'  , govStep)  ← map₁ (λ where (inj₁ ());    (inj₂ x) → x) $ computeGov   govΓ  govSt  (txgov txb)
        case H? of λ where
          (yes h) → success (_ , LEDGER⋯ utxoStep certStep govStep)
          (no f)  → failure "Failed at LEDGER"

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER⋯ utxoStep certStep govStep)
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        with computeCerts certΓ certSt txcerts | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with computeGov govΓ govSt (txgov txb) | complete _ _ _ _ govStep
      ... | success (govSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ (⊥ ⊎ String)
Computational-LEDGERS = it

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .getCoin s = getCoin (LState.utxoSt s)

-- ** Proof that LEDGER preserves values.

FreshTx : Tx → LState → Set
FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
  where open Tx; open TxBody; open UTxOState; open LState

module _ where

  private variable
    tx : Tx
    Γ : LEnv
    s s' : LState
    l : List Tx

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER⋯ (UTXOW-inductive⋯ _ _ _ _ _ st) _ _) = pov h st

  data FreshTxs : LEnv → LState → List Tx → Set where
    []-Fresh : FreshTxs Γ s []
    ∷-Fresh  : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → FreshTxs Γ s' l
              → FreshTxs Γ s (tx ∷ l)

  LEDGERS-pov : FreshTxs Γ s l → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s' → getCoin s ≡ getCoin s'
  LEDGERS-pov _ (BS-base Id-nop) = refl
  LEDGERS-pov {Γ} {_} {_ ∷ l} (∷-Fresh h h₁ h₂) (BS-ind x st) =
    trans (LEDGER-pov h x) $
      LEDGERS-pov (subst (λ s → FreshTxs Γ s l)
                          (sym $ computational⇒rightUnique Computational-LEDGER x h₁)
                          h₂) st

-- ** Proof that LEDGER preserves the following invariant, so if it holds for
-- some state it also holds when we successfully apply a block to that state.

isGADepositᵇ : DepositPurpose → Bool
isGADepositᵇ (GovActionDeposit _) = true
isGADepositᵇ _                    = false

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true

govDepPurpose : GovActionID × GovActionState → DepositPurpose
govDepPurpose (id , _) = GovActionDeposit id

govDepPurposes : GovState → List DepositPurpose
govDepPurposes = map govDepPurpose

govDepsMatch : LState → Set
govDepsMatch s = let open UTxOState; open LState s in
  filterˢ isGADeposit (dom (utxoSt .deposits ))
    ≡ᵉ fromList (map (λ where (id , _) → GovActionDeposit id) govSt)

instance
  _ = +-0-monoid

module _ -- ASSUMPTIONS (TODO: eliminate these) --
         {∪⁺ˢ→ˢ∪ : {d d' : DepositPurpose ⇀ Coin} → (d ∪⁺ d') ˢ ≡ᵉ d ˢ ∪ d' ˢ}
         {filterGA : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵
                                     ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
         {filterCD : ∀ {c} {pp} → filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ)) ≡ᵉ ∅}
  where

  LEDGER-govDepsMatch : {Γ : LEnv} {s s' : LState} {tx : Tx}
                        → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                        → govDepsMatch s → govDepsMatch s'
  LEDGER-govDepsMatch {Γ} s@{⟦ utxoSt , govSt , certState ⟧ˡ}
    s'@{.(⟦ utxoSt' , govSt' , certState' ⟧ˡ)} {tx}
    (_⊢_⇀⦇_,LEDGER⦈_.LEDGER {utxoSt' = utxoSt'} {certState'} {govSt'} x) aprioriMatch = goal
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose × Coin})
    module ≡ᵉ₁ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})

    open UTxOState using (deposits)

    txb : TxBody
    txb = Tx.body tx; open TxBody txb

    open LEnv Γ
    open PParams pparams

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = utxoSt .deposits
    utxoDeps' = utxoSt' .deposits

    txIsValid ¬txIsValid : Bool
    txIsValid = Tx.isValid tx
    ¬txIsValid = not txIsValid

    newGovDeps : ℙ DepositPurpose
    newGovDeps = dom (propDepsChangeˢ txprop pparams txb)

    ⊢utxo : ∙ record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
    ⊢utxo with (proj₁ x)
    ...| UTXOW-inductive (_ , _ , _ , _ , _ , h) with h
    ...| UTXO-inductive (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , h) = h

    updateDeps-dom≡ᵉ : (txIsValid ≡ true → dom utxoDeps' ≡ᵉ dom (updateDeposits pparams txb utxoDeps))
                       × (txIsValid ≡ false → dom utxoDeps' ≡ᵉ dom utxoDeps)
    updateDeps-dom≡ᵉ = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive ∘ (proj₁ updateDeps-dom≡) , reflexive ∘ (proj₂ updateDeps-dom≡)
      where
      ¬ft : ¬ (true ≡ false)
      ¬ft ()

      ⊢utxo-valid : txIsValid ≡ true
        → record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
        → utxoDeps' ≡ (updateDeposits pparams txb utxoDeps)
      ⊢utxo-valid _ (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes _) = refl
      ⊢utxo-valid tx-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No u) =
        ⊥-elim $ ¬ft (trans (sym tx-valid) (proj₂ u))

      ⊢utxo-not-valid : txIsValid ≡ false
        → record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt' → utxoDeps' ≡ utxoDeps
      ⊢utxo-not-valid _ (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No _) = refl
      ⊢utxo-not-valid tx-not-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) =
        ⊥-elim $ ¬ft (trans (sym $ proj₂ u) tx-not-valid)

      updateDeps≡ : (txIsValid ≡ true → utxoDeps' ≡ updateDeposits pparams txb utxoDeps)
                  × (txIsValid ≡ false → utxoDeps' ≡ utxoDeps)
      updateDeps≡ = (λ t → (⊢utxo-valid t) ⊢utxo) , (λ f → (⊢utxo-not-valid f) ⊢utxo)

      updateDeps-dom≡ : (txIsValid ≡ true → dom utxoDeps' ≡ dom (updateDeposits pparams txb utxoDeps))
                         × (txIsValid ≡ false → dom utxoDeps' ≡ dom utxoDeps)
      updateDeps-dom≡ = (cong dom ∘ (proj₁ updateDeps≡)) , (cong dom ∘ (proj₂ updateDeps≡))

    updatePropDeps≡ᵉ : {props : List GovProposal}
       → (updateProposalDeposits props txid (govActionDeposit) utxoDeps) ˢ
        ≡ᵉ utxoDeps ˢ ∪ (propDepsChangeˢ props pparams txb)
    updatePropDeps≡ᵉ {[]} = ≡ᵉ.sym (∪-identityʳ (utxoSt .deposits ˢ))
    updatePropDeps≡ᵉ {x ∷ props} =
      let
        open SetoidReasoning ≡ᵉ-Setoid
        gaD = GovActionDeposit (txid , length props)
      in
      begin
      updateProposalDeposits (x ∷ props) txid govActionDeposit utxoDeps ˢ
        ≈⟨ ∪⁺ˢ→ˢ∪ ⟩
      updateProposalDeposits props txid govActionDeposit utxoDeps ˢ ∪ (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ {props})  ≡ᵉ.refl ⟩
      (utxoSt .deposits ˢ ∪ propDepsChangeˢ props pparams txb) ∪ ❴ gaD , govActionDeposit ❵ ˢ
        ≈⟨ ∪-assoc (utxoSt .deposits ˢ) (propDepsChangeˢ props pparams txb) (❴ gaD , govActionDeposit ❵ ˢ) ⟩
      utxoSt .deposits ˢ ∪ ((propDepsChangeˢ props pparams txb) ∪ ❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.sym ∪⁺ˢ→ˢ∪) ⟩
      (utxoSt .deposits ˢ) ∪ propDepsChangeˢ (x ∷ props) pparams txb
        ∎

    noGACerts : ∀ {cs} {deps}
      → filterˢ isGADeposit (dom (updateCertDeposits pparams cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
    noGACerts {[]} {deps} = filter-pres-≡ᵉ (dom-cong ≡ᵉ.refl)
    noGACerts {c ∷ cs} {deps} =
      let
        open SetoidReasoning ≡ᵉ-Setoid
        upCD = updateCertDeposits pparams cs deps
      in
      begin
      filterˢ isGADeposit (dom (updateCertDeposits pparams (c ∷ cs) deps))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ₁.refl ⟩
      filterˢ isGADeposit (dom ((upCD ∪⁺ certDeposit c {pparams}) ∣ certRefund c ᶜ))
        ≈⟨ {!!} ⟩
      filterˢ isGADeposit (dom (upCD ∪⁺ certDeposit c {pparams}))
        ≈⟨ filter-pres-≡ᵉ (dom-cong ∪⁺ˢ→ˢ∪) ⟩
      filterˢ isGADeposit (dom (upCD ˢ ∪ (certDeposit c {pparams})ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪ ⟩
      filterˢ isGADeposit (dom (upCD ˢ) ∪ dom ((certDeposit c {pparams})ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upCD ˢ)) ∪ filterˢ isGADeposit (dom ((certDeposit c {pparams})ˢ))
        ≈⟨ ∪-cong (noGACerts {cs} {deps}) (filterCD {c} {pparams}) ⟩
      filterˢ isGADeposit (dom deps) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom deps)) ⟩
      filterˢ isGADeposit (dom deps)
        ∎

    subLemma : {props : List GovProposal}
      → filterˢ isGADeposit (dom (propDepsChangeˢ props pparams txb)) ≡ᵉ dom (propDepsChangeˢ props pparams txb)
    subLemma {[]} = let open SetoidReasoning ≡ᵉ-Setoid in
      begin
      filterˢ isGADeposit (dom (propDepsChangeˢ [] pparams txb))    ≈⟨ filter-pres-≡ᵉ (dom-cong ≡ᵉ.refl)⟩
      filterˢ isGADeposit (dom {A = DepositPurpose} {B = Coin} ∅ˢ)  ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                         ≈⟨ ∅-least filter-⊆ ⟩
      ∅ˢ                                                            ≈⟨ ≡ᵉ₁.sym dom∅ ⟩
      dom {A = DepositPurpose} {B = Coin} ∅ˢ                        ≈⟨ dom-cong ≡ᵉ.refl ⟩
      dom (propDepsChangeˢ [] pparams txb)                          ∎

    subLemma {(p ∷ ps)} =
      let
        open SetoidReasoning ≡ᵉ-Setoid; open Equivalence
        upPD = updateProposalDeposits ps txid govActionDeposit ∅
        gaD = GovActionDeposit (txid , length ps)
      in
      begin
      filterˢ isGADeposit (dom (propDepsChangeˢ (p ∷ ps) pparams txb))
        ≈⟨ filter-pres-≡ᵉ (dom-cong ∪⁺ˢ→ˢ∪) ⟩
      filterˢ isGADeposit (dom ((upPD ˢ) ∪ (❴ gaD , govActionDeposit ❵ ˢ)))
        ≈⟨ filter-pres-≡ᵉ dom∪ ⟩
      filterˢ isGADeposit (dom (upPD ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upPD ˢ)) ∪ filterˢ isGADeposit (dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (subLemma{ps}) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom (propDepsChangeˢ ps pparams txb) ∪ (filterˢ isGADeposit ❴ gaD ❵)
        ≈⟨ ∪-cong (dom-cong ≡ᵉ.refl) filterGA ⟩
      dom (upPD ˢ) ∪ ❴ gaD ❵
        ≈⟨ ∪-cong ≡ᵉ₁.refl (≡ᵉ₁.sym dom-single≡single) ⟩
      dom (upPD ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ≡ᵉ₁.sym dom∪ ⟩
      dom ((upPD ˢ) ∪ (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ dom-cong (≡ᵉ.sym ∪⁺ˢ→ˢ∪) ⟩
      dom (propDepsChangeˢ (p ∷ ps) pparams txb)
        ∎

    γ : ∙  record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
        ∙  ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
    γ = (proj₁ x) , (proj₂ (proj₂ x))

    goal : govDepsMatch ⟦ utxoSt' , govSt' , certState' ⟧ˡ
    goal with (txIsValid ≟ true)
    ...| yes p = begin
      filterˢ isGADeposit (dom (utxoSt' .deposits))
        ≈⟨ filter-pres-≡ᵉ ((proj₁ updateDeps-dom≡ᵉ) p) ⟩
      filterˢ isGADeposit (dom (updateDeposits pparams txb utxoDeps))
        ≈⟨ noGACerts{txcerts} ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
        ≈⟨ filter-pres-≡ᵉ (dom-cong (updatePropDeps≡ᵉ{txprop})) ⟩
      filterˢ isGADeposit (dom (utxoDeps ˢ ∪ (propDepsChangeˢ txprop pparams txb)))
        ≈⟨ filter-pres-≡ᵉ dom∪ ⟩
      filterˢ isGADeposit ((dom utxoDeps) ∪ dom (propDepsChangeˢ txprop pparams txb))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (propDepsChangeˢ txprop pparams txb))
        ≈⟨ ∪-cong ≡ᵉ₁.refl (subLemma{txprop}) ⟩
      filterˢ isGADeposit (dom utxoDeps) ∪ newGovDeps
        ≈⟨ ∪-cong aprioriMatch ≡ᵉ₁.refl ⟩
      fromList (govDepPurposes govSt) ∪ newGovDeps
        ≈˘⟨ ii ⟩
      fromList (govDepPurposes govSt')
        ∎
      where
      open SetoidReasoning ≡ᵉ-Setoid
      -- TODO: prove ii
      ii : fromList (map (λ where (id , _) → GovActionDeposit id) govSt')
           ≡ᵉ fromList (map (λ where (id , _) → GovActionDeposit id) govSt) ∪ newGovDeps
      ii = begin
           fromList (map (λ where (id , _) → GovActionDeposit id) govSt')
             ≈⟨ {!!} ⟩
           fromList (map (λ where (id , _) → GovActionDeposit id) govSt) ∪ newGovDeps
             ∎

    ...| no ¬p = begin
      filterˢ isGADeposit (dom utxoDeps')
        ≈⟨ filter-pres-≡ᵉ ((proj₂ updateDeps-dom≡ᵉ) (¬-not ¬p)) ⟩
      filterˢ isGADeposit (dom utxoDeps)
        ≈⟨ aprioriMatch ⟩
      fromList (govDepPurposes govSt)
        ≈˘⟨ ii ⟩
      fromList (govDepPurposes govSt')
        ∎
      where
      open SetoidReasoning ≡ᵉ-Setoid
      -- TODO: prove ii
      ii : fromList (govDepPurposes govSt') ≡ᵉ fromList (govDepPurposes govSt)
      ii = {!!}


-- QUESTIONS ---------------------------------------------------------------------
-- 1. Is ordinary union what we want?
-- 2. What about a `GovActionDeposit id` that already shows up in govSt?
-- 3. What about epoch boundaries? (out of scope)
-- 4. Is state fresh/valid?  Valid transition doesn't necessarily mean valid state.
