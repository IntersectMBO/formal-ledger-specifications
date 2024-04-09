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

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (utxoSt .deposits ))
  ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt)


  where open UTxOState using (deposits)

instance
  _ = +-0-monoid

module _ -- ASSUMPTIONS (TODO: eliminate these) --
         {filterGA : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵
                                     ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
         {filterCD : ∀ {c} {pp} → filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ)) ≡ᵉ ∅}
  where

  LEDGER-govDepsMatch : LedgerInvariant _⊢_⇀⦇_,LEDGER⦈_ govDepsMatch
  LEDGER-govDepsMatch
    Γ@{⟦ slt , ppol , pp , enactSt ⟧ˡᵉ}   -- Γ : LEnv
    s@{⟦ utxoSt , govSt , _ ⟧ˡ}           -- s : LState = UTxOState × GovState × CertState
                                          --                         (GovState = List (GovActionID × GovActionState))
    tx@{record { body = txb ; wits = wits ; isValid = txIsValid ; txAD = txAD }}
    s'@{⟦ utxoSt' , govSt' , _ ⟧ˡ}
    (_⊢_⇀⦇_,LEDGER⦈_.LEDGER ( _⊢_⇀⦇_,UTXOW⦈_.UTXOW-inductive (_ , _ , _ , _ , _ , utxoSTS)
                            , _
                            , govSTS) )
    aprioriMatch = goal

    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose × Coin})
    module ≡ᵉ₁ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})

    open UTxOState using (deposits)

    open TxBody txb
    open LEnv Γ; open PParams pp

    utxoΓ : UTxOEnv
    utxoΓ = record { slot = slt ; pparams = pp }

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = utxoSt .deposits
    utxoDeps' = utxoSt' .deposits

    ¬txIsValid : Bool
    ¬txIsValid = not txIsValid

    ⊢utxo :  utxoΓ ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
    ⊢utxo = case utxoSTS of λ where
     (UTXO-inductive (_ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , _ , h)) → h

    γ : ⟦ txid , epoch slt , pp , ppol , enactSt ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'
    γ = govSTS

  -- govSt inhabits type GovState (= List (GovActionID × GovActionState)); it is updated
  -- to obtain govSt' as follows: go through list `txgov txb : List (GovVote ⊎ GovProposal)` and
  --   in `v : GovVote` case:    s' = addVote s aid voter v
  --   in GovPropose case:       s' = addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a' prev
  -- where
  --   addVote : GovState → GovActionID → Voter → Vote → GovState
  --   addVote s aid voter v = map modifyVotes s
  --     where modifyVotes = λ (gid , s') → gid , record s'
  --             { votes = if gid ≡ aid then insert (votes s') voter v else votes s'}
  --
  --   addAction : GovState
  --             → Epoch → GovActionID → RwdAddr → (a : GovAction) → NeedsHash a
  --             → GovState
  --   addAction s e aid addr a prev = s ∷ʳ (aid , record
  --     { votes = ∅ ; returnAddr = addr ; expiresIn = e ; action = a ; prevAction = prev })

    updateGovDeps≡ᵉ : (txIsValid ≡ true
                      → fromList (map (λ where (id , _) → GovActionDeposit id) govSt')
                        ≡ᵉ fromList (map (λ where (id , _) → GovActionDeposit id) govSt)
                           ∪ dom ((propDepsChange txprop pparams txb)ˢ))
                      × (txIsValid ≡ false
                        → fromList (map (λ where (id , _) → GovActionDeposit id) govSt')
                          ≡ᵉ fromList (map (λ where (id , _) → GovActionDeposit id) govSt))

    updateGovDeps≡ᵉ = i , ii
      where
      i : txIsValid ≡ true
          → fromList (map (λ { (id , _) → GovActionDeposit id }) govSt')
             ≡ᵉ fromList (map (λ { (id , _) → GovActionDeposit id }) govSt)
                ∪ dom ((propDepsChange txprop pparams txb)ˢ)
      i p = {!!}
      ii : txIsValid ≡ false
           → fromList (map (λ { (id , _) → GovActionDeposit id }) govSt')
             ≡ᵉ fromList (map (λ { (id , _) → GovActionDeposit id }) govSt)
      ii ¬p = {!!}


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
       → dom ((updateProposalDeposits props txid govActionDeposit utxoDeps)ˢ)
        ≡ᵉ dom ((utxoDeps ∪⁺ propDepsChange props pparams txb)ˢ)
    updatePropDeps≡ᵉ {[]} = begin
      dom ((updateProposalDeposits [] txid govActionDeposit utxoDeps)ˢ)
        ≈⟨ ≡ᵉ₁.refl ⟩
      dom (utxoDeps ˢ)
        ≈⟨ dom-cong (≡ᵉ.sym (∪-identityʳ (utxoDeps ˢ))) ⟩
      (dom (utxoDeps ˢ ∪ ∅))
        ≈⟨ dom∪ ⟩
      dom (utxoDeps ˢ) ∪ dom{X = DepositPurpose ⇀ Coin}{A = DepositPurpose}{B = Coin} ∅
        ≈⟨ ∪-cong ≡ᵉ₁.refl (dom-cong ≡ᵉ.refl) ⟩
      dom (utxoDeps ˢ) ∪ dom ((propDepsChange [] pparams txb)ˢ)
        ≈⟨ ≡ᵉ₁.sym dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ propDepsChange [] pparams txb) ˢ)
        ∎
      where open SetoidReasoning ≡ᵉ-Setoid
    updatePropDeps≡ᵉ {x ∷ props} = let
        open SetoidReasoning ≡ᵉ-Setoid
        gaD = GovActionDeposit (txid , length props)
      in
      begin
      dom (updateProposalDeposits (x ∷ props) txid govActionDeposit utxoDeps ˢ)
        ≈⟨ ≡ᵉ₁.refl ⟩
      dom ((updateProposalDeposits props txid govActionDeposit utxoDeps ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits props txid govActionDeposit utxoDeps ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ{props}) ≡ᵉ₁.refl ⟩
      dom ((utxoDeps ∪⁺ propDepsChange props pparams txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong dom∪⁺ ≡ᵉ₁.refl ⟩
      (dom (utxoDeps ˢ) ∪ dom ((propDepsChange props pparams txb) ˢ)) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-assoc (dom (utxoDeps ˢ)) (dom ((propDepsChange props pparams txb) ˢ)) (dom (❴ gaD , govActionDeposit ❵ ˢ)) ⟩
      dom (utxoDeps ˢ) ∪ (dom ((propDepsChange props pparams txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong ≡ᵉ₁.refl (≡ᵉ₁.sym dom∪⁺) ⟩
      dom (utxoDeps ˢ) ∪ dom ((propDepsChange props pparams txb ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈⟨ ≡ᵉ₁.sym dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ propDepsChange (x ∷ props) pparams txb) ˢ)
        ∎

    noGACerts : ∀ {cs} {deps}
      → filterˢ isGADeposit (dom ((updateCertDeposits pparams cs deps)ˢ)) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))
    noGACerts {[]} {deps} = filter-pres-≡ᵉ (dom-cong ≡ᵉ.refl)
    noGACerts {c ∷ cs} {deps} =
      let
        open SetoidReasoning ≡ᵉ-Setoid
        upCD = updateCertDeposits pparams cs deps
      in
      begin
      filterˢ isGADeposit (dom ((updateCertDeposits pparams (c ∷ cs) deps)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ₁.refl ⟩
      filterˢ isGADeposit (dom (((upCD ∪⁺ certDeposit c {pparams}) ∣ certRefund c ᶜ)ˢ))
        ≈⟨ {!!} ⟩
      filterˢ isGADeposit (dom ((upCD ∪⁺ certDeposit c {pparams})ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upCD ˢ) ∪ dom ((certDeposit c {pparams})ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upCD ˢ)) ∪ filterˢ isGADeposit (dom ((certDeposit c {pparams})ˢ))
        ≈⟨ ∪-cong (noGACerts {cs} {deps}) (filterCD {c} {pparams}) ⟩
      filterˢ isGADeposit (dom (deps ˢ)) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom (deps ˢ))) ⟩
      filterˢ isGADeposit (dom (deps ˢ))
        ∎

    subLemma : {props : List GovProposal}
      → filterˢ isGADeposit (dom ((propDepsChange props pparams txb)ˢ)) ≡ᵉ dom ((propDepsChange props pparams txb)ˢ)
    subLemma {[]} = let open SetoidReasoning ≡ᵉ-Setoid in
      begin
      filterˢ isGADeposit (dom ((propDepsChange [] pparams txb)ˢ))  ≈⟨ filter-pres-≡ᵉ (dom-cong ≡ᵉ.refl)⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)  ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                         ≈⟨ ∅-least filter-⊆ ⟩
      ∅ˢ                                                            ≈⟨ ≡ᵉ₁.sym dom∅ ⟩
      dom {A = DepositPurpose} {B = Coin} ∅ˢ                        ≈⟨ dom-cong ≡ᵉ.refl ⟩
      dom ((propDepsChange [] pparams txb)ˢ)                          ∎

    subLemma {(p ∷ ps)} =
      let
        open SetoidReasoning ≡ᵉ-Setoid; open Equivalence
        upPD = updateProposalDeposits ps txid govActionDeposit ∅
        gaD = GovActionDeposit (txid , length ps)
      in
      begin
      filterˢ isGADeposit (dom ((propDepsChange (p ∷ ps) pparams txb)ˢ))
        ≈⟨ filter-pres-≡ᵉ (dom-cong ≡ᵉ.refl) ⟩
      filterˢ isGADeposit (dom ((upPD ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upPD ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upPD ˢ)) ∪ filterˢ isGADeposit (dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (subLemma{ps}) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ (filterˢ isGADeposit ❴ gaD ❵)
        ≈⟨ ∪-cong (dom-cong ≡ᵉ.refl) filterGA ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ ❴ gaD ❵
        ≈⟨ ∪-cong ≡ᵉ₁.refl (≡ᵉ₁.sym dom-single≡single) ⟩
      dom ((propDepsChange ps pparams txb)ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ≡ᵉ₁.sym dom∪⁺ ⟩
      dom (((propDepsChange ps pparams txb) ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈⟨ dom-cong ≡ᵉ.refl ⟩
      dom ((propDepsChange (p ∷ ps) pparams txb)ˢ)
        ∎

    goal : govDepsMatch s'
    goal with (txIsValid ≟ true)
    ...| yes p = begin
      filterˢ isGADeposit (dom (utxoSt' .deposits))
        ≈⟨ filter-pres-≡ᵉ ((proj₁ updateDeps-dom≡ᵉ) p) ⟩
      filterˢ isGADeposit (dom (updateDeposits pparams txb utxoDeps))
        ≈⟨ noGACerts{txcerts} ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
        ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ{txprop}) ⟩
      filterˢ isGADeposit (dom (utxoDeps ∪⁺ propDepsChange txprop pparams txb))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit ((dom utxoDeps) ∪ dom (propDepsChange txprop pparams txb))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (propDepsChange txprop pparams txb))
        ≈⟨ ∪-cong ≡ᵉ₁.refl (subLemma{txprop}) ⟩
      filterˢ isGADeposit (dom utxoDeps) ∪ dom ((propDepsChange txprop pparams txb)ˢ)
        ≈⟨ ∪-cong aprioriMatch ≡ᵉ₁.refl ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) govSt) ∪ dom ((propDepsChange txprop pparams txb)ˢ)
        ≈˘⟨ (proj₁ updateGovDeps≡ᵉ) p ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) govSt')
        ∎
      where open SetoidReasoning ≡ᵉ-Setoid

    ...| no ¬p = begin
      filterˢ isGADeposit (dom utxoDeps')
        ≈⟨ filter-pres-≡ᵉ ((proj₂ updateDeps-dom≡ᵉ) (¬-not ¬p)) ⟩
      filterˢ isGADeposit (dom utxoDeps)
        ≈⟨ aprioriMatch ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) govSt)
        ≈˘⟨ (proj₂ updateGovDeps≡ᵉ) (¬-not ¬p) ⟩
      fromList (map (λ (id , _) → GovActionDeposit id) govSt')
        ∎
      where open SetoidReasoning ≡ᵉ-Setoid

-- QUESTIONS ---------------------------------------------------------------------
-- 3. What about epoch boundaries? (out of scope)
-- 4. Is state fresh/valid?  (Valid transition doesn't necessarily mean valid state.)
