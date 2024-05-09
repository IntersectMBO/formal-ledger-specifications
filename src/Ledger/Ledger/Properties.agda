{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Chain txs abs
open import Ledger.Deleg.Properties govStructure
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs hiding (vote)
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs

open import Data.Bool.Properties using (¬-not)
open import Data.List using (filter)
open import Data.List.Ext using (∈ˡ-map-filter⁻; ∈ˡ-map-filter⁺) renaming (∈-map to ∈ˡ-map)
open import Data.List.Properties using (length-map; ++-identityʳ; map-++; ++-assoc)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁻; ∈-filter⁺; ∈-map⁻; ∈-map⁺)
open import Data.Product.Properties using (×-≡,≡→≡; ×-≡,≡←≡)
open import Data.Nat.Properties using (+-0-monoid)
open import Relation.Binary using (IsEquivalence)
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

instance _ = +-0-monoid

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
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ
      govΓ  = GovEnv  ∋ ⟦ txid , epoch slot , pparams , ppolicy , enactState ⟧ᵍ

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = case isValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          (certSt' , certStep) ← map₁ (λ where (inj₁ x) → x; (inj₂ x) → x) $ computeCerts certΓ certSt txcerts
          (govSt'  , govStep)  ← map₁ (λ where (inj₁ ());    (inj₂ x) → x) $ computeGov   govΓ  govSt  (txgov txb)
          success (_ , LEDGER-V⋯ p utxoStep certStep govStep)
        (no ¬p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          success (_ , LEDGER-I⋯ (¬-not ¬p) utxoStep)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER-V⋯ v utxoStep certStep govStep)
        with isValid ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        with computeCerts certΓ certSt txcerts | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with computeGov govΓ govSt (txgov txb) | complete govΓ _ _ _ govStep
      ... | success (govSt' , _) | refl = refl
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER-I⋯ i utxoStep)
        with isValid ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ (⊥ ⊎ String)
Computational-LEDGERS = it

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .getCoin s = getCoin (LState.utxoSt s)

-- ** Proof that LEDGER preserves values.

module _ where

  private variable
    tx : Tx
    Γ : LEnv
    s s' : LState
    l : List Tx

  FreshTx : Tx → LState → Set
  FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
    where open Tx; open TxBody; open UTxOState; open LState

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER-V⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ _ _ st) _ _) = pov h st
  LEDGER-pov h (LEDGER-I⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ _ _ st))     = pov h st

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


-- ** Proof that govDepsMatch is a LEDGER invariant.

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true
  where
  isGADepositᵇ : DepositPurpose → Bool
  isGADepositᵇ (GovActionDeposit _) = true
  isGADepositᵇ _                    = false

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (UTxOState.deposits utxoSt))
  ≡ᵉ fromList (map (λ pr → GovActionDeposit (proj₁ pr)) govSt)

getDeposits : LState → DepositPurpose ⇀ Coin
getDeposits s = UTxOState.deposits (LState.utxoSt s)

module _  -- ASSUMPTIONS (TODO: eliminate/prove these) --
  {- 1 -} {filterCD : ∀ {pp} {c} → filterˢ isGADeposit (dom (certDeposit c {pp})) ≡ᵉ ∅}
  {- 2 -} {filterGA : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵ ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
  {- 3 -} {filterCR : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                      → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  where

  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})

  pattern UTXOW-UTXOS x = UTXOW-inductive⋯ _ _ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x)

  -- MAIN THEOREM: LEDGER --
  module LEDGER-PROPS (tx : Tx) (Γ : LEnv) (s : LState)
    where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)

    govSt : GovState
    govSt = LState.govSt s

    gΓ : GovEnv
    gΓ = ⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ

    f : GovActionID × GovActionState → DepositPurpose
    f = λ (id , _) → GovActionDeposit id

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = UTxOState.deposits (LState.utxoSt s)
    utxoDeps' = updateDeposits pp txb utxoDeps

    noGACerts : {cs : List DCert}(deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom (updateCertDeposits pp cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
    noGACerts {[]} _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts {c ∷ cs} deps = let
      upCD = updateCertDeposits pp cs deps
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      filterˢ isGADeposit (dom (updateCertDeposits pp (c ∷ cs) deps))
        ≈⟨ filterCR c {upCD ∪⁺ certDeposit c {pp}} ⟩
      filterˢ isGADeposit (dom (upCD ∪⁺ certDeposit c {pp}))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom upCD ∪ dom (certDeposit c {pp}))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upCD) ∪ filterˢ isGADeposit (dom (certDeposit c {pp}))
        ≈⟨ ∪-cong (noGACerts {cs} deps) (filterCD {pp} {c}) ⟩
      filterˢ isGADeposit (dom deps) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom deps)) ⟩
      filterˢ isGADeposit (dom deps)
        ∎

    updatePropDeps≡ᵉ : {props : List GovProposal} → dom (updateProposalDeposits props txid govActionDeposit utxoDeps) ≡ᵉ dom (utxoDeps ∪⁺ proposalDepositsΔ props pp txb)
    updatePropDeps≡ᵉ {[]} = let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      dom (updateProposalDeposits [] txid govActionDeposit utxoDeps)  ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      (dom (utxoDeps ˢ ∪ ∅))                                          ≈⟨ dom∪ ⟩
      dom utxoDeps ∪ dom{X = DepositPurpose ⇀ Coin} ∅                 ≈˘⟨ dom∪⁺ ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ [] pp txb)                   ∎

    updatePropDeps≡ᵉ {p ∷ ps} = let
      gaD = GovActionDeposit (txid , length ps)
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      dom (updateProposalDeposits (p ∷ ps) txid govActionDeposit utxoDeps)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits ps txid govActionDeposit utxoDeps) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ {ps}) ≡ᵉ.refl ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ ps pp txb) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong dom∪⁺ ≡ᵉ.refl ⟩
      (dom utxoDeps ∪ dom (proposalDepositsΔ ps pp txb)) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-assoc (dom utxoDeps) (dom (proposalDepositsΔ ps pp txb)) (dom (❴ gaD , govActionDeposit ❵ ˢ)) ⟩
      dom utxoDeps ∪ (dom (proposalDepositsΔ ps pp txb) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom∪⁺ ⟩
      dom utxoDeps ∪ dom ((proposalDepositsΔ ps pp txb ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ (p ∷ ps) pp txb)
        ∎

    GADeps-noCerts≡ : filterˢ isGADeposit (dom utxoDeps')
      ≡ᵉ filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
    GADeps-noCerts≡ = noGACerts {cs = txcerts} (updateProposalDeposits txprop txid govActionDeposit utxoDeps)

    allGA-propDepsΔ : {props : List GovProposal}
      → filterˢ isGADeposit (dom (proposalDepositsΔ props pp txb))
        ≡ᵉ dom (proposalDepositsΔ props pp txb)

    allGA-propDepsΔ {[]} = let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      filterˢ isGADeposit (dom (proposalDepositsΔ [] pp txb))  ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)  ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                    ≈⟨ ∅-least filter-⊆ ⟩
      ∅                                                        ≈˘⟨ dom∅ ⟩
      dom ((proposalDepositsΔ [] pp txb)ˢ)                     ∎

    allGA-propDepsΔ {(p ∷ ps)} = let
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      upPD = updateProposalDeposits ps txid govActionDeposit ∅
      gaD = GovActionDeposit (txid , length ps) in
      begin
      filterˢ isGADeposit (dom (proposalDepositsΔ (p ∷ ps) pp txb))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom (upPD ∪⁺ ❴ gaD , govActionDeposit ❵))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom upPD ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upPD) ∪ filterˢ isGADeposit (dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (allGA-propDepsΔ{ps}) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ (filterˢ isGADeposit ❴ gaD ❵)
        ≈⟨ ∪-cong ≡ᵉ.refl filterGA ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ ❴ gaD ❵
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom-single≡single ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom (proposalDepositsΔ (p ∷ ps) pp txb)
        ∎


    -- GovState definitions and lemmas --
    mkAction : GovProposal → ℕ → GovActionID × GovActionState
    mkAction p n = let open GovProposal p in
      ActionId×ActionState (PParams.govActionLifetime pp +ᵉ GovEnv.epoch gΓ)
                           (GovEnv.txid gΓ , n) returnAddr action prevAction

    propToState : GovState → GovProposal → ℕ → GovState
    propToState s p n = s ∷ʳ mkAction p n

    propToState-++ : (gs gs' : GovState) (p : GovProposal) (n : ℕ)
                    → propToState (gs ++ gs') p n ≡ gs ++ propToState gs' p n
    propToState-++ gs gs' p n = let open ≡-Reasoning in
      begin
      propToState (gs ++ gs') p n  ≡⟨ ++-assoc gs gs' [ mkAction p n ] ⟩
      gs ++ gs' ∷ʳ mkAction p n    ≡⟨ cong (gs ++_) refl ⟩
      gs ++ propToState gs' p n    ∎


    updateGovStates : {k : ℕ} → GovState → List (GovVote ⊎ GovProposal) → GovState
    updateGovStates s [] = s
    updateGovStates {k} s (inj₁ v ∷ vps) = updateGovStates {suc k} (addVote s gid voter vote) vps
      where open GovVote v
    updateGovStates {k} s (inj₂ p ∷ vps) = updateGovStates {suc k} (propToState s p k) vps

    STS→updateGovSt≡ : {govSt govSt' : GovState}{k : ℕ} (vps : List (GovVote ⊎ GovProposal))
                       → (_⊢_⇀⟦_⟧ᵢ*'_ IdSTS _⊢_⇀⦇_,GOV'⦈_ (gΓ , k) govSt vps govSt')
                       → govSt' ≡ updateGovStates {k} govSt vps

    STS→updateGovSt≡ [] (BS-base Id-nop) = refl
    STS→updateGovSt≡ {govSt}{govSt'}{k} (inj₁ v ∷ vps) (BS-ind {s' = .(addVote govSt _ _ _)} (GOV-Vote x) h)
      = STS→updateGovSt≡ vps h

    STS→updateGovSt≡ {k = k} (inj₂ p ∷ vps) (BS-ind (GOV-Propose x) h) = STS→updateGovSt≡ {k = suc k} vps h

    STS→GovSt≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                 → isValid ≡ true
                 → LState.govSt s' ≡ updateGovStates {0} govSt (txgov txb)
    STS→GovSt≡ (LEDGER-V x) refl = STS→updateGovSt≡ (txgov txb) (proj₂ (proj₂ (proj₂ x)))

    -- CONNECTING LEMMA --
    utxo-govst-connex : {props : List GovProposal}
      → dom (proposalDepositsΔ props pp txb) ≡ᵉ fromList (map f (updateGovStates {0} [] (map inj₂ props)))
    utxo-govst-connex {[]} = dom∅

    utxo-govst-connex {p ∷ ps} = {!!}

    -- MAIN THEOREM: LEDGER -----------------------------------------------------------------------------
    LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                          → govDepsMatch s → govDepsMatch s'
    LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

    LEDGER-govDepsMatch s'@{⟦ .(⟦ ((UTxOState.utxo (LState.utxoSt s) ∣ txins ᶜ) ∪ˡ (outs txb))
                                , _ , updateDeposits pp txb (UTxOState.deposits (LState.utxoSt s)) , _ ⟧ᵘ)
                            , govSt' , _ ⟧ˡ}
      utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ GOV-sts) aprioriMatch = goal
        where
        open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})

        goal : filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps)) ≡ᵉ fromList (map f govSt')
        goal = begin
          filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
            ≈⟨ GADeps-noCerts≡ ⟩
          filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
            ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ {txprop}) ⟩
          filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pp txb))
            ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
          filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pp txb))
            ≈⟨ filter-hom-∪ ⟩
          filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (proposalDepositsΔ txprop pp txb))
            ≈⟨ ∪-cong aprioriMatch (allGA-propDepsΔ {txprop}) ⟩
          fromList (map f govSt) ∪ (dom ((proposalDepositsΔ txprop pp txb)ˢ))
            ≈⟨ ∪-cong ≡ᵉ.refl (utxo-govst-connex{txprop}) ⟩
          fromList (map f govSt) ∪ fromList (map f (updateGovStates {0} [] (map inj₂ txprop)))
            ≈˘⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.reflexive (cong fromList {!!} )) ⟩ -- (vote-updateGovStates-map-invar++ txvote txprop))) ⟩
          fromList (map f govSt) ∪ fromList (map f (updateGovStates {0} [] (map inj₁ txvote ++ map inj₂ txprop)))
            ≈⟨ ∪-fromList-++ ⟩
          fromList ((map f govSt) ++ (map f (updateGovStates {0} [] (map inj₁ txvote ++ map inj₂ txprop))))
            ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ f govSt (updateGovStates {0} [] (txgov txb)))) ⟩
          fromList (map f (govSt ++ updateGovStates {0} [] (txgov txb)))
            ≈˘⟨ {!!} ⟩ -- ≡ᵉ.reflexive (cong fromList (updateGovStates≡ (txgov txb))) ⟩
          fromList (map f (updateGovStates govSt (txgov txb)))
            ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ (map f) ) (STS→GovSt≡ utxosts tx-valid)) ⟩
          fromList (map f govSt')
            ∎

    LEDGER-govDepsMatch s'@{⟦ .(⟦ (UTxOState.utxo (LState.utxoSt s) ∣ collateral ᶜ) , _ , UTxOState.deposits (LState.utxoSt s) , _ ⟧ᵘ) , govSt' , certState' ⟧ˡ}
      utxosts@(LEDGER-V (() , UTXOW-UTXOS (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No (<″-offset fst)) , _ , GOV-sts)) aprioriMatch

  -- MAIN THEOREM: EPOCH --
  module EPOCH-PROPS
    (tx : Tx) (let open Tx tx renaming (body to txb)) (let open TxBody txb)
    (Γ : LEnv) (let open LEnv Γ renaming (pparams to pp))
    (eΓ : NewEpochEnv)
    (eps : EpochState)
    where
    open EpochState eps hiding (es)
    open LState ls
    open GovActionState
    open RatifyState fut using (removed)

    EPOCH-govDepsMatch :
      (ratify-removed : mapˢ (GovActionDeposit ∘ proj₁) removed ⊆ mapˢ proj₁ ((UTxOState.deposits utxoSt)ˢ))
      (eps' : EpochState) {e : Epoch}
      → eΓ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      → govDepsMatch (EpochState.ls eps) → govDepsMatch (EpochState.ls eps')

    EPOCH-govDepsMatch ratify-removed ⟦ acnt' , ls' ,  es , fut' ⟧ᵉ'
      (EPOCH x) govDepsMatch-ls =
      ≡ᵉ.trans connect (main-invariance-lemma govDepsMatch-ls)
      where

      rga : Deposits → (GovActionID × GovActionState) → ℙ (RwdAddr × DepositPurpose × Coin)
      rga deps = λ (gaid , gast) → mapˢ (returnAddr gast ,_) ((deps ∣ ❴ GovActionDeposit gaid ❵) ˢ)

      -- the combinator used in the EPOCH rule
      χ : (DepositPurpose ⇀ Coin) → ℙ DepositPurpose
      χ deps = mapˢ (proj₁ ∘ proj₂) (flip concatMapˢ removed  (rga deps))

      -- a simpler combinator that suffices here;
      χ' : ℙ DepositPurpose
      χ' = mapˢ (GovActionDeposit ∘ proj₁) removed
      -- Below we prove χ and χ' are essentially equivalent.

      P : GovActionID × GovActionState → Set
      P = λ u → proj₁ u ∉ mapˢ proj₁ removed

      Pᵇ : GovActionID × GovActionState → Bool
      Pᵇ = (λ u → does ¿ P u ¿)

      utxoDeps : Deposits
      utxoDeps = UTxOState.deposits utxoSt

      -- utxo deposits restricted to new form of set used in EPOCH rule
      utxoDeps' : Deposits
      utxoDeps' = utxoDeps ∣ χ' ᶜ

      -- utxo deposits restricted to old form of set used in EPOCH rule
      utxoDeps'' : Deposits
      utxoDeps'' = utxoDeps ∣ (χ utxoDeps) ᶜ

      open Equivalence

      χ'≡χ : χ' ≡ᵉ χ utxoDeps
      χ'≡χ = χ'⊆χ , χ⊆χ'
        where
        χ'⊆χ : χ' ⊆ χ utxoDeps
        χ'⊆χ {a} x with from ∈-map x
        ... | ((gaid , gast) , a≡GAgaid , gaidgast∈rem) with from ∈-map (ratify-removed x)
        ... | ((dp , c) , a≡dp , dpc∈utxoDeps) =
          to ∈-map ( (returnAddr gast , GovActionDeposit gaid , c)
                   , a≡GAgaid
                   , to (∈-concatMapˢ{f = (rga utxoDeps)})((gaid , gast) , gaidgast∈rem , addr-dp-c-∈map)
                   )
              where
              dp-c-∈-utxoDep : (GovActionDeposit gaid , c) ∈  (utxoDeps ˢ)
              dp-c-∈-utxoDep = subst (λ x₂ → (x₂ , c) ∈ (utxoDeps ˢ))
                                     (trans (sym a≡dp) a≡GAgaid) dpc∈utxoDeps

              addr-dp-c-∈map : (returnAddr gast , GovActionDeposit gaid , c)
                               ∈ mapˢ (returnAddr gast ,_) ( (utxoDeps ∣ ❴ GovActionDeposit gaid ❵)ˢ )
              addr-dp-c-∈map = to ∈-map ( (GovActionDeposit gaid , c )
                                        , (×-≡,≡→≡ (refl , refl)
                                        , res-singleton⁺{m = utxoDeps} dp-c-∈-utxoDep)
                                        )
        χ⊆χ' : χ utxoDeps ⊆ χ'
        χ⊆χ' {a} x with (from ∈-map x)
        ... | ((rwa , dp , c) , a≡dp , rwa-dp-c∈) with (from ∈-concatMapˢ rwa-dp-c∈)
        ... | ((gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map) with (from ∈-map rwa-dp-c-∈-map)
        ... | ((dp' , _) , q≡ , q∈) = to ∈-map ((gaid , gast) , a≡GA , gaid-gast-∈-removed)
          where
          a≡GA : a ≡ GovActionDeposit gaid
          a≡GA = let open ≡-Reasoning in
            begin
            a                       ≡⟨ a≡dp ⟩
            dp                      ≡⟨ cong (proj₁ ∘ proj₂) q≡ ⟩
            dp'                     ≡⟨ cong proj₁ $ proj₂ (res-singleton''{m = utxoDeps} $ q∈) ⟩
            GovActionDeposit gaid   ∎

      govSt' : GovState
      govSt' = filterᵇ Pᵇ govSt

      connect : filterˢ isGADeposit (dom utxoDeps'') ≡ᵉ filterˢ isGADeposit (dom utxoDeps')
      connect = filter-pres-≡ᵉ $ dom-cong (res-comp-cong (≡ᵉ.sym χ'≡χ))

      f : GovActionID × GovActionState → DepositPurpose
      f = λ (id , _) → GovActionDeposit id

      main-invariance-lemma :
          filterˢ isGADeposit (dom utxoDeps) ≡ᵉ fromList (map f govSt)
          -------------------------------------------------------------------------
        → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ fromList (map f (filterᵇ Pᵇ govSt))

      main-invariance-lemma (fst , snd) = ⇛ , ⇚
        where
        ⇛ : filterˢ isGADeposit (dom utxoDeps')
            ⊆ fromList (map f (filterᵇ Pᵇ govSt))
        ⇛ {a} h with from ∈-filter h
        ... | (aGADep , a∈) with ∈-map⁻ f (from ∈-fromList (fst (to ∈-filter (aGADep , res-comp-domᵐ a∈))))
        ... | ((tid , gast) , tidb∈govSt , refl) =
          to ∈-fromList (∈ˡ-map-filter⁺{P? = λ u → ¿ P u ¿}
                          ((tid , gast) , refl , tidb∈govSt , (res-comp-dom a∈) ∘ ∈-map⁺-∘))

        ⇚ : fromList (map f (filterᵇ Pᵇ govSt))
              ⊆ filterˢ isGADeposit (dom utxoDeps')
        ⇚ {a} h with ∈-map⁻ f (from ∈-fromList h)
        ... | (aid×st , aid×st∈ , refl) with ∈-filter⁻ (λ u → ¿ P u ¿) aid×st∈
        ... | (aid×st∈govSt , Paid×st) =
          to ∈-filter (refl , ∈-resᶜ-dom⁺ (a∉χ' , (to dom∈ $ proj₂ (from ∈-filter a∈))))
          where
          a∈ : a ∈ filterˢ isGADeposit (dom utxoDeps)
          a∈ = snd $ to ∈-fromList $ to ∈ˡ-map (aid×st , refl , aid×st∈govSt)

          a∉χ' : a ∉ χ'
          a∉χ' a∈χ' with ∈-map⁻' a∈χ'
          ... | q , refl , q∈rem = Paid×st (to ∈-map (q , refl , q∈rem))


  -- MAIN THEOREM: CHAIN --
  module _ (tx : Tx) (Γ : LEnv) (b : Block) (cs : ChainState)
    where
    open Block b; open ChainState cs
    open NewEpochState newEpochState
    open EpochState epochState; open EnactState es
    open RatifyState fut using (removed)

    updateChainState : ChainState → NewEpochState → ChainState
    updateChainState s nes =
      record s { newEpochState =
        record nes { epochState =
          record (NewEpochState.epochState (ChainState.newEpochState s))
            { ls = EpochState.ls (NewEpochState.epochState nes) }
        }
      }

    CHAIN-govDepsMatch : {nes : NewEpochState}
      → mapˢ (GovActionDeposit ∘ proj₁) removed ⊆ mapˢ proj₁ (getDeposits ls ˢ)
      → _ ⊢ cs ⇀⦇ b ,CHAIN⦈ (updateChainState cs nes)
      → govDepsMatch ls → govDepsMatch (EpochState.ls (NewEpochState.epochState nes))

    CHAIN-govDepsMatch rrm (CHAIN (NEWEPOCH-New _ eps₁→eps₂) ledgers) =
      (RTC-preserves-inv (λ {c}{s}{sig} → LEDGER-PROPS.LEDGER-govDepsMatch sig c s) ledgers)
      ∘ (EPOCH-PROPS.EPOCH-govDepsMatch tx Γ _ _ rrm _ eps₁→eps₂)

    CHAIN-govDepsMatch _ (CHAIN (NEWEPOCH-Not-New _) ledgers) =
      RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-PROPS.LEDGER-govDepsMatch sig c s) ledgers
