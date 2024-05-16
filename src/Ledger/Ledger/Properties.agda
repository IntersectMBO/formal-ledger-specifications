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
open import Data.List.Ext using (∈ˡ-map-filter⁻; ∈ˡ-map-filter⁺; zipWithIndex⁻) renaming (∈-map to ∈ˡ-map; range to indxs)
open import Data.List.Ext.Properties using (swap-head)
open import Data.List.Properties using (length-map; ++-identityʳ; map-++; ++-assoc)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁻; ∈-filter⁺; ∈-map⁻; ∈-map⁺; ∈-++⁺ʳ)
open import Data.List.Relation.Binary.Subset.Propositional.Properties using (xs⊆ys++xs; xs⊆xs++ys)
open import Data.List.Relation.Unary.Any using (Any)
open import Data.Product.Properties using (×-≡,≡→≡; ×-≡,≡←≡)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-suc; +-comm)
open import Relation.Binary using (IsEquivalence)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_; ↭-sym)

open Any

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

    φ : GovState → List DepositPurpose
    φ = map (λ (id , _) → GovActionDeposit id)

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = UTxOState.deposits (LState.utxoSt s)
    utxoDeps' = updateDeposits pp txb utxoDeps

    noGACerts : (cs : List DCert)(deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom (updateCertDeposits pp cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
    noGACerts [] _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts (c ∷ cs) deps = let
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
        ≈⟨ ∪-cong (noGACerts cs deps) (filterCD {pp} {c}) ⟩
      filterˢ isGADeposit (dom deps) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom deps)) ⟩
      filterˢ isGADeposit (dom deps)
        ∎

    updatePropDeps≡ᵉ : (props : List GovProposal)
      → dom (updateProposalDeposits props txid govActionDeposit utxoDeps)
        ≡ᵉ dom (utxoDeps ∪⁺ proposalDepositsΔ props pp txb)
    updatePropDeps≡ᵉ [] = let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      dom (updateProposalDeposits [] txid govActionDeposit utxoDeps)  ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      (dom (utxoDeps ˢ ∪ ∅))                                          ≈⟨ dom∪ ⟩
      dom utxoDeps ∪ dom{X = DepositPurpose ⇀ Coin} ∅                 ≈˘⟨ dom∪⁺ ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ [] pp txb)                   ∎

    updatePropDeps≡ᵉ (p ∷ ps) = let
      gaD = GovActionDeposit (txid , length ps)
      open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      dom (updateProposalDeposits (p ∷ ps) txid govActionDeposit utxoDeps)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits ps txid govActionDeposit utxoDeps) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ ps) ≡ᵉ.refl ⟩
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

    allGA-propDepsΔ : (props : List GovProposal)
      → filterˢ isGADeposit (dom (proposalDepositsΔ props pp txb))
        ≡ᵉ dom (proposalDepositsΔ props pp txb)

    allGA-propDepsΔ [] = let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      filterˢ isGADeposit (dom (proposalDepositsΔ [] pp txb))  ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)  ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                    ≈⟨ ∅-least filter-⊆ ⟩
      ∅                                                        ≈˘⟨ dom∅ ⟩
      dom ((proposalDepositsΔ [] pp txb)ˢ)                     ∎

    allGA-propDepsΔ (p ∷ ps) = let
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
        ≈⟨ ∪-cong (allGA-propDepsΔ ps) (filter-pres-≡ᵉ dom-single≡single) ⟩
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
      ActionId×ActionState
        (PParams.govActionLifetime pp +ᵉ GovEnv.epoch ⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ)
        (GovEnv.txid ⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ , n) returnAddr action prevAction

    propToState : GovState → GovProposal → ℕ → GovState
    propToState s p n = s ∷ʳ mkAction p n

    propToState-++ : (gs gs' : GovState) (p : GovProposal) (n : ℕ)
                     → propToState (gs ++ gs') p n ≡ gs ++ propToState gs' p n
    propToState-++ gs gs' p n = let open ≡-Reasoning in
      begin
      propToState (gs ++ gs') p n  ≡⟨ ++-assoc gs gs' [ mkAction p n ] ⟩
      gs ++ gs' ∷ʳ mkAction p n    ≡⟨ cong (gs ++_) refl ⟩
      gs ++ propToState gs' p n    ∎

    updateVote : GovState → GovVote → GovState
    updateVote s v = addVote s gid voter vote
      where open GovVote v

    updateVote-++ : (gs gs' : GovState) (v : GovVote)
                    → updateVote (gs ++ gs') v ≡ updateVote gs v ++ updateVote gs' v
    updateVote-++ [] gs' v = refl
    updateVote-++ (g ∷ gs) gs' v = let open ≡-Reasoning in
      begin
      updateVote (g ∷ gs ++ gs') v
        ≡⟨ cong (updateVote [ g ] v ++_) (updateVote-++ gs gs' v) ⟩
      updateVote [ g ] v ++ (updateVote gs v ++ updateVote gs' v)
        ≡⟨ ++-assoc (updateVote [ g ] v) (updateVote gs v) (updateVote gs' v) ⟩
      (updateVote [ g ] v ++ updateVote gs v) ++ updateVote gs' v
        ≡˘⟨ cong (_++ updateVote gs' v) refl ⟩
      updateVote (g ∷ gs) v ++ updateVote gs' v
        ∎

    updateVotesOnly : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateVotesOnly s [] = s
    updateVotesOnly s (inj₁ v ∷ vps) = updateVotesOnly (updateVote s v) vps
    updateVotesOnly s (inj₂ _ ∷ vps) = updateVotesOnly s vps

    updateGovStates : List (GovVote ⊎ GovProposal) → ℕ → GovState → GovState
    updateGovStates [] _ s = s
    updateGovStates (inj₁ v ∷ vps) k s = updateGovStates vps (suc k) (updateVote s v)
    updateGovStates (inj₂ p ∷ vps) k s = updateGovStates vps (suc k) (propToState s p k)

    ∈-updateGovStates : (p : GovProposal) (ps : List GovProposal) {k : ℕ} {govSt : GovState}
      → ∃[ c ] c ∈ˡ (updateGovStates(map inj₂ (p ∷ ps)) k govSt ) × proj₂ (proj₁ c) ≡ k + length ps
    ∈-updateGovStates p [] {k} {govSt} = mkAction p k , ∈-++⁺ʳ govSt (here refl) , sym (+-identityʳ k)
    ∈-updateGovStates p (p' ∷ ps) {k} {govSt} with ∈-updateGovStates p' ps
    ...| c , c∈ , c≡ = c , c∈ , (trans c≡ (sym (+-suc k (length ps))))

    STS→updateGovSt≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {govSt govSt' : GovState}
      → (_⊢_⇀⟦_⟧ᵢ*'_ IdSTS _⊢_⇀⦇_,GOV'⦈_ (⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ , k) govSt vps govSt')
      → govSt' ≡ updateGovStates vps k govSt

    STS→updateGovSt≡ [] _ (BS-base Id-nop) = refl
    STS→updateGovSt≡ (inj₁ v ∷ vps) k {govSt}(BS-ind {s' = .(updateVote govSt v)} (GOV-Vote x) h)
      = STS→updateGovSt≡ vps (suc k) h

    STS→updateGovSt≡ (inj₂ p ∷ vps) k (BS-ind (GOV-Propose x) h) = STS→updateGovSt≡ vps (suc k) h

    STS→GovSt≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                 → isValid ≡ true → LState.govSt s' ≡ updateGovStates (txgov txb) 0 (LState.govSt s)
    STS→GovSt≡ (LEDGER-V x) refl = STS→updateGovSt≡ (txgov txb) 0 (proj₂ (proj₂ (proj₂ x)))


    updateVote-map-invar : (gs : GovState) (v : GovVote) → φ (updateVote gs v) ≡ φ gs
    updateVote-map-invar [] v = refl
    updateVote-map-invar (g ∷ gs) v = let open ≡-Reasoning; open GovVote v in
      begin
        φ (updateVote (g ∷ gs) v)                                          ≡⟨ cong φ{x = (addVote (g ∷ gs) gid voter vote)} refl ⟩
        φ (addVote [ g ] gid voter vote ++ addVote gs gid voter vote)      ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) (addVote [ g ] gid voter vote) (addVote gs gid voter vote) ⟩
        φ (addVote [ g ] gid voter vote) ++ φ (addVote gs gid voter vote)  ≡⟨ cong (φ (addVote [ g ] gid voter vote) ++_) (updateVote-map-invar gs v) ⟩
        φ (addVote [ g ] gid voter vote) ++ φ gs                           ≡⟨ cong (_++ φ gs) refl ⟩
        φ (g ∷ gs)                                                             ∎

    updateVotesOnly-map-invar : (gs : GovState) (vps : List (GovVote ⊎ GovProposal))
                                → φ (updateVotesOnly gs vps) ≡ φ gs
    updateVotesOnly-map-invar gs [] = refl
    updateVotesOnly-map-invar gs (inj₂ p ∷ vps) = updateVotesOnly-map-invar gs vps
    updateVotesOnly-map-invar gs (inj₁ v ∷ vps) = let open ≡-Reasoning in
      begin
      φ (updateVotesOnly (updateVote gs v) vps)  ≡⟨ updateVotesOnly-map-invar (updateVote gs v) vps ⟩
      φ (updateVote gs v)                        ≡⟨ updateVote-map-invar gs v ⟩
      φ gs                                       ∎


    updateGovVote-++ : (vps : List (GovVote ⊎ GovProposal)) {k : ℕ} (gs gs' : GovState)
      → updateGovStates vps k (gs ++ gs')  ≡ updateVotesOnly gs vps ++ updateGovStates vps k gs'

    updateGovVote-++ [] _ _ = refl
    updateGovVote-++ (inj₁ v ∷ vps) gs gs' = let open ≡-Reasoning in
      begin
      updateGovStates vps _ (updateVote (gs ++ gs') v)                                   ≡⟨ cong (updateGovStates vps _) (updateVote-++ gs gs' v) ⟩
      updateGovStates vps _ ((updateVote gs v) ++ (updateVote gs' v))                    ≡⟨ updateGovVote-++ vps (updateVote gs v) (updateVote gs' v) ⟩
      updateVotesOnly (updateVote gs v) vps ++ updateGovStates vps _ (updateVote gs' v)  ∎

    updateGovVote-++ (inj₂ p ∷ vps) {k} gs gs' = let open ≡-Reasoning in
      begin
      updateGovStates vps _ (propToState (gs ++ gs') p k)                   ≡⟨ cong (λ x → updateGovStates vps _ x) (propToState-++ gs gs' p k) ⟩
      updateGovStates vps _ (gs ++ propToState gs' p k)                     ≡⟨ updateGovVote-++ vps gs (propToState gs' p k) ⟩
      updateVotesOnly gs vps ++ updateGovStates vps _ (propToState gs' p k) ∎

    vote-updateGovStates-map-invar : (v : GovVote) (vps : List (GovVote ⊎ GovProposal)) {k : ℕ} {govSt : GovState}
      → φ (updateGovStates (inj₁ v ∷ vps) k govSt ) ≡ φ (updateGovStates vps (suc k) govSt)

    vote-updateGovStates-map-invar v vps {k} {[]} = refl
    vote-updateGovStates-map-invar v [] {k} {g ∷ gs} = let open GovVote v; open ≡-Reasoning in
      begin
        φ (updateVote (g ∷ gs) v)                                             ≡⟨ cong φ{x = (addVote (g ∷ gs) gid voter vote)} refl ⟩
        φ (addVote [ g ] gid voter vote ++ addVote gs gid voter vote)         ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) (addVote [ g ] gid voter vote) (addVote gs gid voter vote) ⟩
        φ (addVote [ g ] gid voter vote) ++ φ (addVote gs gid voter vote) ≡⟨ cong (φ (addVote [ g ] gid voter vote) ++_) (vote-updateGovStates-map-invar v [] {0} ) ⟩
        φ (g ∷ gs)                                                            ∎

    vote-updateGovStates-map-invar v (inj₁ v' ∷ vps) {k} {govSt} = let open ≡-Reasoning in
      begin
      φ (updateGovStates (inj₁ v ∷ (inj₁ v' ∷ vps)) _ govSt )  ≡⟨ vote-updateGovStates-map-invar v' vps ⟩
      φ (updateGovStates vps _ (updateVote govSt v))           ≡⟨ vote-updateGovStates-map-invar v vps  ⟩
      φ (updateGovStates vps _ govSt)                          ≡˘⟨ vote-updateGovStates-map-invar v' vps ⟩
      φ (updateGovStates vps _ (updateVote govSt v'))          ∎

    vote-updateGovStates-map-invar v (inj₂ p ∷ vps) {k} {govSt} =
      let open ≡-Reasoning
          upp = updateGovStates vps _ [ mkAction p (suc k) ]
          upv = updateVote govSt v
      in begin
         φ (updateGovStates vps _ (upv ∷ʳ mkAction p (suc k)))   ≡⟨ cong φ (updateGovVote-++ vps upv [ mkAction p (suc k) ]) ⟩
         φ ((updateVotesOnly upv vps) ++ upp)                  ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) ((updateVotesOnly upv  vps)) upp ⟩
         φ (updateVotesOnly upv vps) ++ φ upp              ≡⟨ cong (_++ φ upp) (updateVotesOnly-map-invar upv vps) ⟩
         φ upv ++ φ upp                                    ≡⟨ cong (_++ φ upp) (updateVote-map-invar govSt v) ⟩
         φ govSt ++ φ upp                                  ≡˘⟨ cong (_++ (φ upp)) (updateVotesOnly-map-invar govSt vps) ⟩
         φ (updateVotesOnly govSt vps) ++  φ upp           ≡˘⟨ map-++ (λ (id , _) → GovActionDeposit id) (updateVotesOnly govSt vps) upp ⟩
         φ (updateVotesOnly govSt vps ++  upp)                 ≡˘⟨ cong φ (updateGovVote-++ vps govSt [ mkAction p (suc k) ]) ⟩
         φ (updateGovStates vps _ (govSt ∷ʳ mkAction p (suc k))) ∎

    vote-updateGovStates-map-invar++ : (ps : List GovProposal) (vs : List GovVote) {k : ℕ} {govSt : GovState}
       → φ (updateGovStates (map inj₂ ps ++ map inj₁ vs) k govSt ) ≡ φ (updateGovStates (map inj₂ ps) k govSt)
    vote-updateGovStates-map-invar++ [] [] {k} {govSt} = refl
    vote-updateGovStates-map-invar++ [] (v ∷ vs) {k} {govSt} = trans (vote-updateGovStates-map-invar v (map inj₁ vs)) (vote-updateGovStates-map-invar++ [] vs)
    vote-updateGovStates-map-invar++ (p ∷ ps) vs {k} {govSt} = vote-updateGovStates-map-invar++ ps vs


    updateGovStates≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {govSt : GovState}
       → φ (updateGovStates vps k govSt) ≡ φ (govSt ++ updateGovStates vps k [])

    updateGovStates≡ [] _ {govSt} = cong φ (sym (++-identityʳ govSt))

    updateGovStates≡ (inj₁ v ∷ vps) k {govSt} = let open ≡-Reasoning in
      begin
        φ (updateGovStates vps (suc k) (updateVote govSt v))  ≡⟨ vote-updateGovStates-map-invar v vps ⟩
        φ (updateGovStates vps (suc k) govSt)                 ≡⟨ updateGovStates≡ vps (suc k) ⟩
        φ (govSt ++ updateGovStates vps (suc k) [])           ∎

    updateGovStates≡ (inj₂ p ∷ vps) k {govSt} = let open ≡-Reasoning in
      begin
        φ (updateGovStates vps (suc k) (propToState govSt p k))             ≡⟨ updateGovStates≡ vps (suc k) ⟩
        φ (propToState govSt p k ++  updateGovStates vps (suc k) [])        ≡⟨ cong (λ x → φ (x ++ updateGovStates vps _ [])) refl ⟩
        φ ((govSt ++ [ mkAction p k ]) ++  updateGovStates vps (suc k) [])  ≡⟨ cong φ (++-assoc govSt [ mkAction p k ] (updateGovStates vps (suc k) [])) ⟩
        φ (govSt ++ [ mkAction p k ] ++  updateGovStates vps (suc k) [])    ≡⟨ cong (λ x → φ (govSt ++ x ++  updateGovStates vps (suc k) [])) refl ⟩
        φ (govSt ++ propToState [] p k ++  updateGovStates vps _ [])        ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) govSt (propToState [] p k ++ updateGovStates vps _ []) ⟩
        φ govSt ++ φ (propToState [] p k ++ updateGovStates vps _ [])   ≡˘⟨ cong ((φ govSt) ++_) (updateGovStates≡ vps (suc k)) ⟩
        φ govSt ++ φ (updateGovStates vps _ (propToState [] p k))       ≡˘⟨ map-++ (λ (id , _) → GovActionDeposit id) govSt (updateGovStates vps _ (propToState [] p k)) ⟩
        φ (govSt ++ updateGovStates vps (suc k) (propToState [] p k))       ∎


    updateProps : (ps : List GovProposal) {k : ℕ} {govSt : GovState} →
      updateGovStates (map inj₂ ps) k govSt
      ≡ govSt ++ updateGovStates (map inj₂ ps) k []

    updateProps++ : (ps ps' : List GovProposal) {k : ℕ} {govSt : GovState} →
      updateGovStates (map inj₂ (ps ++ ps')) k govSt
      ≡ updateGovStates (map inj₂ ps) k govSt  ++ updateGovStates (map inj₂ ps') (k + length ps) []
    updateProps++ [] ps' {k} {govSt} = let open ≡-Reasoning in
      begin
        updateGovStates (map inj₂ ps') k govSt              ≡˘⟨ cong (λ x → updateGovStates (map inj₂ ps') x govSt) (+-identityʳ k) ⟩
        updateGovStates (map inj₂ ps') (k + 0) govSt        ≡⟨ updateProps ps' ⟩
        govSt ++ updateGovStates (map inj₂ ps') (k + 0) []  ∎

    updateProps++ (p ∷ ps) ps' {k} {govSt} = let open ≡-Reasoning in
      begin
        updateGovStates (map inj₂ (ps ++ ps')) (suc k) (propToState govSt p k)
          ≡⟨ updateProps++ ps ps' ⟩
        updateGovStates (map inj₂ ps) (suc k) (propToState govSt p k)  ++ updateGovStates (map inj₂ ps') (suc k + length ps) []
          ≡˘⟨ cong (λ x → updateGovStates (map inj₂ ps) (suc k) (propToState govSt p k)
              ++ updateGovStates (map inj₂ ps') x [] ) (+-suc k (length ps)) ⟩
        updateGovStates (map inj₂ ps) (suc k) (propToState govSt p k)  ++ updateGovStates (map inj₂ ps') (k + length (p ∷ ps)) []
          ∎

    updateProps [] {k} {govSt} = sym (++-identityʳ govSt)
    updateProps (p ∷ ps) {k} {govSt} =
      let open ≡-Reasoning
          upp = updateGovStates (map inj₂ [ p ]) k []
          upps = updateGovStates (map inj₂ ps) (suc k) []
      in  begin
          updateGovStates (map inj₂ ps) _ (propToState govSt p k)                ≡⟨ updateProps ps ⟩
          (propToState govSt p k) ++ upps                                        ≡⟨ ++-assoc govSt [ mkAction p k ] upps  ⟩
          govSt ++ (upp ++ upps)                                                 ≡⟨ cong (λ x → govSt ++ (upp ++ updateGovStates (map inj₂ ps) x [])) (+-comm 1 k) ⟩
          govSt ++ (upp ++ updateGovStates (map inj₂ ps) (k + length [ p ]) [])  ≡˘⟨ cong (govSt ++_) (updateProps++ [ p ] ps {govSt = []}) ⟩
          govSt ++ (updateGovStates (map inj₂ ([ p ] ++ ps)) k [] )              ≡⟨ cong (govSt ++_) refl ⟩
          govSt ++ updateGovStates (map inj₂ ps) _ (propToState [] p k)          ∎

    permuteTwoProps : (x y : GovProposal) {k : ℕ} {govSt : GovState} →
      fromList (φ (propToState (propToState govSt x k) y (suc k)))
      ≡ᵉ fromList (φ (propToState (propToState govSt y k) x (suc k)))
    permuteTwoProps x y {k}{govSt} = let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose}) in
      begin
      fromList (φ (propToState (govSt ∷ʳ mkAction x k) y (suc k)))                ≈⟨ ≡ᵉ.reflexive (cong (fromList ∘ φ) (++-assoc govSt [ mkAction x k ] [ mkAction y (suc k) ])) ⟩
      fromList (φ (govSt ++ [ mkAction x k ] ++ [ mkAction y (suc k)]))           ≈⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) govSt ([ mkAction x k ] ++ [ mkAction y (suc k)]))) ⟩
      fromList (φ govSt ++ φ [ mkAction x k ] ++ φ [ mkAction y (suc k) ])  ≈⟨ ≡ᵉ.refl ⟩
      fromList ((φ govSt) ++ φ [ mkAction y k ] ++ φ [ mkAction x (suc k) ])  ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) govSt ([ mkAction y k ] ++ [ mkAction x (suc k) ]))) ⟩
      fromList (φ (govSt ++ [ mkAction y k ] ++ [ mkAction x (suc k) ]))          ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ φ) (++-assoc govSt [ mkAction y k ] [ mkAction x (suc k) ])) ⟩
      fromList (φ (propToState (propToState govSt y k) x (suc k)))                ∎

    permuteProps : (ps ps' : List GovProposal) {k : ℕ} {govSt : GovState}
      → ps ↭ ps' → fromList (φ (updateGovStates (map inj₂ ps) k govSt))
                    ≡ᵉ fromList (φ (updateGovStates (map inj₂ ps') k govSt))
    permuteProps ps .(ps) _↭_.refl = ≡ᵉ.reflexive refl
    permuteProps .(x ∷ xs) .(x ∷ ys) (_↭_.prep {xs} {ys} x lrp) = permuteProps xs ys lrp
    permuteProps .(x ∷ y ∷ xs) .(y ∷ x ∷ ys) {k} {govSt} (_↭_.swap {xs} {ys} x y lrp) =
      let upys = updateGovStates (map inj₂ ys) (suc (suc k)) []
          open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
      in  begin
          fromList (φ  $ updateGovStates (map inj₂ xs) (suc (suc k)) (propToState (propToState govSt x k) y (suc k)))
            ≈⟨ permuteProps xs ys lrp ⟩
          fromList (φ (updateGovStates (map inj₂ ys) (suc (suc k)) (propToState (propToState govSt x k) y (suc k))))
            ≈⟨ ≡ᵉ.reflexive (cong ((fromList ∘ φ)) (updateProps ys)) ⟩
          fromList (φ ((propToState (propToState govSt x k) y (suc k)) ++ upys))
            ≈⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id)
                                                   (propToState (propToState govSt x k) y (suc k)) upys)) ⟩
          fromList (φ (propToState (propToState govSt x k) y (suc k)) ++ φ upys)
            ≈˘⟨ ∪-fromList-++ ⟩
          fromList (φ (propToState (propToState govSt x k) y (suc k))) ∪ fromList (φ upys)
            ≈⟨ ∪-cong (permuteTwoProps x y) ≡ᵉ.refl ⟩
          fromList (φ (propToState (propToState govSt y k) x (suc k))) ∪ fromList (φ upys)
            ≈⟨ ∪-fromList-++ ⟩
          fromList (φ (propToState (propToState govSt y k) x (suc k)) ++ φ upys)
            ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id)
                                                    (propToState (propToState govSt y k) x (suc k)) upys)) ⟩
          fromList (φ (propToState (propToState govSt y k) x (suc k) ++ upys))
            ≈˘⟨ ≡ᵉ.reflexive (cong ((fromList ∘ φ)) (updateProps ys)) ⟩
          fromList (φ (updateGovStates (map inj₂ ys) _ (propToState (propToState govSt y k) x (suc k))))
            ∎

    permuteProps ps ps' (_↭_.trans {ys = ys} lrp lrp₁) = ≡ᵉ.trans (permuteProps ps ys lrp) (permuteProps ys ps' lrp₁)

    -- CONNECTING LEMMA --
    utxo-govst-connex : {props : List GovProposal}
      → dom (proposalDepositsΔ props pp txb) ≡ᵉ fromList (φ (updateGovStates (map inj₂ props) 0 [] ))
    utxo-govst-connex {[]} = dom∅

    utxo-govst-connex {p ∷ ps} =
      let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
          upps = updateGovStates (map inj₂ ps) _ []
          mkAp = mkAction p (length ps)
      in  begin
          dom (proposalDepositsΔ (p ∷ ps) pp txb)                                     ≈⟨ dom∪⁺ ⟩
          dom (updateProposalDeposits ps txid govActionDeposit ∅)
            ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)      ≈⟨ ∪-cong (utxo-govst-connex{props = ps}) dom-single≡single ⟩
          fromList (φ upps) ∪ fromList (φ [ mkAp ])                                   ≈⟨ ∪-fromList-++  ⟩
          fromList (φ upps ++ φ [ mkAp ])                                             ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) upps [ mkAp ])) ⟩
          fromList (φ (upps ++ updateGovStates (map inj₂ [ p ]) (0 + length ps) []))  ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ φ) (updateProps++ ps [ p ])) ⟩
          fromList (φ (updateGovStates (map inj₂ (ps ++ [ p ])) _ []))                ≈⟨ permuteProps (ps ++ [ p ]) (p ∷ ps) (↭-sym swap-head) ⟩
          fromList (φ (updateGovStates (map inj₂ ps) 1 (propToState [] p 0)))         ∎


    -- MAIN THEOREM: LEDGER -----------------------------------------------------------------------------
    LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                          → govDepsMatch s → govDepsMatch s'
    LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

    LEDGER-govDepsMatch s'@{⟦ .(⟦ ((UTxOState.utxo (LState.utxoSt s) ∣ txins ᶜ) ∪ˡ (outs txb))
                                , _ , updateDeposits pp txb (UTxOState.deposits (LState.utxoSt s)) , _ ⟧ᵘ)
                            , govSt' , _ ⟧ˡ}
      utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ GOV-sts) aprioriMatch =
      let open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
          govSt = LState.govSt s
      in  begin
          filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))                                        ≈⟨ noGACerts txcerts (updateProposalDeposits txprop txid govActionDeposit utxoDeps) ⟩
          filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))          ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ txprop) ⟩
          filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pp txb))                           ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
          filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pp txb))                      ≈⟨ filter-hom-∪ ⟩
          filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (proposalDepositsΔ txprop pp txb))  ≈⟨ ∪-cong aprioriMatch (allGA-propDepsΔ txprop) ⟩
          fromList (φ govSt) ∪ dom ((proposalDepositsΔ txprop pp txb)ˢ)                                     ≈⟨ ∪-cong ≡ᵉ.refl (utxo-govst-connex{txprop}) ⟩
          fromList (φ govSt) ∪ fromList (φ (updateGovStates (map inj₂ txprop) 0 []))                        ≈˘⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.reflexive (cong fromList (vote-updateGovStates-map-invar++ txprop txvote {0}))) ⟩
          fromList (φ govSt) ∪ fromList (φ (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))     ≈⟨ ∪-fromList-++ ⟩
          fromList ((φ govSt) ++ φ (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))             ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) govSt (updateGovStates (txgov txb) 0 []))) ⟩
          fromList (φ (govSt ++ updateGovStates (txgov txb) 0 []))                                          ≈˘⟨ ≡ᵉ.reflexive (cong fromList (updateGovStates≡ (txgov txb) 0)) ⟩
          fromList (φ (updateGovStates (txgov txb) 0 govSt ))                                               ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ φ ) (STS→GovSt≡ utxosts tx-valid)) ⟩
          fromList (φ govSt')                                                                               ∎

    LEDGER-govDepsMatch utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (<″-offset fst)) , _ , GOV-sts)) aprioriMatch


  -- MAIN THEOREM: EPOCH --
  module EPOCH-PROPS
    (tx : Tx)
    (Γ : LEnv)
    (eΓ : NewEpochEnv)
    (eps : EpochState)
    where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
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
      (EPOCH x) govDepsMatch-ls = ≡ᵉ.trans connect (main-invariance-lemma govDepsMatch-ls)
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

      main-invariance-lemma :
          filterˢ isGADeposit (dom utxoDeps) ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt)
          -------------------------------------------------------------------------
        → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) (filterᵇ Pᵇ govSt))

      main-invariance-lemma (fst , snd) = ⇛ , ⇚
        where
        ⇛ : filterˢ isGADeposit (dom utxoDeps')
            ⊆ fromList (map (λ (id , _) → GovActionDeposit id) (filterᵇ Pᵇ govSt))
        ⇛ {a} h with from ∈-filter h
        ... | (aGADep , a∈) with ∈-map⁻ (λ (id , _) → GovActionDeposit id) (from ∈-fromList (fst (to ∈-filter (aGADep , res-comp-domᵐ a∈))))
        ... | ((tid , gast) , tidb∈govSt , refl) =
          to ∈-fromList (∈ˡ-map-filter⁺{P? = λ u → ¿ P u ¿}
                          ((tid , gast) , refl , tidb∈govSt , (res-comp-dom a∈) ∘ ∈-map⁺-∘))

        ⇚ : fromList (map (λ (id , _) → GovActionDeposit id) (filterᵇ Pᵇ govSt))
              ⊆ filterˢ isGADeposit (dom utxoDeps')
        ⇚ {a} h with ∈-map⁻ (λ (id , _) → GovActionDeposit id) (from ∈-fromList h)
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
