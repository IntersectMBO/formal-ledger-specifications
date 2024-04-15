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
-- open import Ledger.GovernanceActions -- (gs : _) (open GovStructure gs)
open import Ledger.Ledger txs abs
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs
open import Data.List.Relation.Unary.Any using (here; there )

open import Data.Bool.Properties    using (¬-not)
open import Data.List using (filter)
open import Data.List.Properties
open import Data.List.Ext.Properties using (map-∷ʳ; frominj₁; frominj₂; ∈-frominj₂; ∈-frominj₁)
open import Data.Nat.Properties     hiding (_≟_)
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
        with computeGov govΓ govSt (txgov txb) | complete _ _ _ _ govStep
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
  LEDGER-pov h (LEDGER-V⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ st) _ _) = pov h st
  LEDGER-pov h (LEDGER-I⋯ _ (UTXOW-inductive⋯ _ _ _ _ _ st))     = pov h st

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

f : GovActionID × GovActionState → DepositPurpose
f (id , _) = GovActionDeposit id

isGADepositᵇ : DepositPurpose → Bool
isGADepositᵇ (GovActionDeposit _) = true
isGADepositᵇ _                    = false

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (utxoSt .deposits )) ≡ᵉ fromList (map (λ pr → GovActionDeposit (proj₁ pr)) govSt)
  where open UTxOState using (deposits)

instance _ = +-0-monoid

module _

  {gΓ : GovEnv}

  -- ASSUMPTIONS (TODO: eliminate these) --
  {- 1 -} {dom-single : ∀ {A} {B} {x : A} {y : B} → dom (❴ x , y ❵ ˢ) ≡ ❴ x ❵ }
  {- 2 -} {filterCD   : ∀ {c} {pp} → filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ)) ≡ᵉ ∅}
  {- 3 -} {filterGA   : ∀ {txid} {n} → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵ ≡ᵉ ❴ GovActionDeposit (txid , n) ❵ }
  {- 4 -} {filterCR   : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                            → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  where
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})


  LEDGER-govDepsMatch : LedgerInvariant _⊢_⇀⦇_,LEDGER⦈_ govDepsMatch

  LEDGER-govDepsMatch
    (LEDGER-I⋯ tx-not-valid (UTXOW-inductive⋯ _ _ _ _ _ (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts)))
    aprioriMatch = case UTXOS-sts of λ where
      (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes u) → contradiction (trans (sym $ proj₂ u) tx-not-valid) (λ ())
      (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No _) → aprioriMatch

  LEDGER-govDepsMatch
    Γ@{⟦ _ , _ , pp , _ ⟧ˡᵉ}
    s@{⟦ utxoSt , govSt , _ ⟧ˡ}
    tx@{record { body = txb }}
    s'@{⟦ utxoSt' , govSt' , _ ⟧ˡ}
    (LEDGER-V⋯ tx-valid
      (UTXOW-inductive⋯ _ _ _ _ _
        (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ UTXOS-sts)) _

      GOV-sts) -- ⟦ txid , _ , .pp , _ , _ ⟧ᵍ ⊢ govSt ⇀⦇ txgov txb ,GOV⦈ govSt'

    aprioriMatch  = goal
    where
    open UTxOState using (deposits)
    open TxBody txb
    open LEnv Γ; open PParams pp --  hiding (govActionLifetime)

    utxoDeps utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps = utxoSt .deposits
    utxoDeps' = utxoSt' .deposits

    updateVotes : GovState → List (GovVote) → GovState
    updateVotes s [] = s
    updateVotes s (v ∷ vs) = updateVotes (addVote s gid voter vote) vs
      where open GovVote v

    propsToState : List (GovProposal) → GovState
    propsToState [] = []
    propsToState (p ∷ ps) = (propsToState ps) ∷ʳ newAction
      where
      open GovProposal p
      newAction : GovActionID × GovActionState
      newAction = ActionId×ActionState (govActionLifetime +ᵉ GovEnv.epoch gΓ) (txid , length ps) returnAddr action prevAction

    updateGovStates : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateGovStates s vps = updateVotes s (frominj₁ vps) ++ propsToState (frominj₂ vps)

    votesDontCount : {govSt : GovState}(vs : List GovVote)
                     → map f (updateVotes govSt vs) ≡ map f govSt
    votesDontCount [] = refl
    votesDontCount {[]} (v ∷ vs) = votesDontCount vs

    votesDontCount {govSt} (v ∷ vs) =
      begin
        map f (updateVotes (addVote govSt gid voter vote) vs)
          ≡⟨ votesDontCount vs ⟩
        map f (addVote govSt gid voter vote)
          ≡⟨ votesDontCount' ⟩
        map f govSt
          ∎
      where
      open GovVote v
      open ≡-Reasoning
      votesDontCount' : {govSt : GovState}
                        → (map f (addVote govSt gid voter vote)) ≡ (map f govSt)
      votesDontCount' {[]} = refl
      votesDontCount' {(gid' , _) ∷ _} = cong (GovActionDeposit gid' ∷_ ) votesDontCount'

    updateGovStates≡ : (govSt : GovState) (vps : List (GovVote ⊎ GovProposal))
       → map f (updateGovStates govSt vps) ≡ map f (govSt ++ propsToState (frominj₂ vps))
    updateGovStates≡ govSt vps = let open ≡-Reasoning in
      begin
        map f (updateGovStates govSt vps)
          ≡⟨ refl ⟩
        map f ((updateVotes govSt (frominj₁ vps)) ++ propsToState (frominj₂ vps))
          ≡⟨ map-++ f (updateVotes govSt (frominj₁ vps)) (propsToState (frominj₂ vps)) ⟩
        map f (updateVotes govSt (frominj₁ vps)) ++ map f (propsToState (frominj₂ vps))
          ≡⟨ cong (_++ map f (propsToState (frominj₂ vps))) (votesDontCount (frominj₁ vps)) ⟩
        map f govSt ++ map f (propsToState (frominj₂ vps))
          ≡˘⟨ map-++ f govSt (propsToState (frominj₂ vps)) ⟩
        map f (govSt ++ propsToState (frominj₂ vps))
          ∎

    updateGovStates≡' : map f (updateGovStates govSt (map inj₁ txvote ++ map inj₂ txprop))
                      ≡ map f (updateGovStates govSt (map inj₂ txprop))
    updateGovStates≡' =
      let
        open ≡-Reasoning
        vps = map inj₁ txvote ++ map inj₂ txprop
      in
      begin
      map f (updateGovStates govSt vps)
        ≡⟨ map-++ f (updateVotes govSt (frominj₁ vps)) (propsToState (frominj₂ vps)) ⟩
      (map f (updateVotes govSt (frominj₁ vps))) ++ (map f (propsToState (frominj₂ vps)))
        ≡⟨ cong (λ u → u ++ map f (propsToState (frominj₂ vps))) (votesDontCount (frominj₁ vps)) ⟩
      (map f govSt) ++ (map f (propsToState (frominj₂ vps)))
        ≡⟨ cong (λ u → (map f govSt) ++ (map f (propsToState u))) (∈-frominj₂{ll = txvote}) ⟩
      (map f govSt) ++ (map f (propsToState txprop))
        ≡˘⟨ map-++ f (updateVotes govSt []) (propsToState txprop) ⟩
      (map f ((updateVotes govSt []) ++ (propsToState txprop)))
        ≡˘⟨ cong (λ u → (map f ((updateVotes govSt []) ++ u))) (cong propsToState i) ⟩
      (map f ((updateVotes govSt []) ++ (propsToState (frominj₂{A = GovVote} (map inj₂ txprop)))))
        ≡˘⟨ cong (λ u → (map f (u ++ (propsToState (frominj₂{A = GovVote} (map inj₂ txprop))))) ) (cong (λ u → updateVotes govSt u) ξ) ⟩
      (map f ((updateVotes govSt (frominj₁ (map inj₂ txprop))) ++ (propsToState (frominj₂{A = GovVote} (map inj₂ txprop)))))
        ∎
      where
      i : frominj₂{A = GovVote} (map inj₂ txprop) ≡ txprop
      i = ∈-frominj₂{A = GovVote}{ll = []}
      ξ : frominj₁{A = GovVote} (map inj₂ txprop) ≡ []
      ξ = ∈-frominj₁{lr = txprop}

    -- govSt' ↔ updateGovStates
    updateGovSt≡ : let open GovEnv gΓ in -- ⟦ txid , _ , pp , _ , _ ⟧ᵍ
      fromList (map f govSt') ≡ᵉ fromList (map f (updateGovStates govSt (txgov txb)))
    updateGovSt≡ = {!!}

    open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
    utxo-govst-connex : {props : List GovProposal}
      → dom (proposalDepositsΔ props pp txb ˢ) ≡ᵉ fromList (map f (propsToState props))
    utxo-govst-connex {[]} = dom∅
    utxo-govst-connex {p ∷ ps} = begin
      dom (proposalDepositsΔ (p ∷ ps) pp txb ˢ)
        ≈⟨ ≡ᵉ.refl ⟩
      dom ((updateProposalDeposits ps txid govActionDeposit ∅  ∪⁺ ❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵) ˢ)
        ≈⟨ dom∪⁺ ⟩
      dom ((updateProposalDeposits ps txid govActionDeposit ∅)ˢ) ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (utxo-govst-connex{ps}) (≡ᵉ.reflexive dom-single) ⟩
      fromList (map f (propsToState ps)) ∪ ❴ GovActionDeposit (txid , length ps) ❵
        ≈⟨ ≡ᵉ.refl ⟩
      fromList (map f (propsToState ps)) ∪ ❴ f ((txid , length ps) , newActionState ) ❵
        ≈⟨ ≡ᵉ.sym fromList-∪-singletonʳ ⟩
      fromList ((map f (propsToState ps)) ∷ʳ f ((txid , length ps) , newActionState ))
        ≈⟨ ≡ᵉ.reflexive (cong fromList (map-∷ʳ f (propsToState ps) )) ⟩
      fromList (map f ((propsToState ps) ∷ʳ ((txid , length ps) , newActionState )))
        ≈⟨ ≡ᵉ.refl ⟩
      (fromList ∘ map f) (propsToState (p ∷ ps))
        ∎
        where
        open GovProposal p
        newActionState : GovActionState
        newActionState = record { votes = ∅ ; returnAddr = returnAddr
                                ; expiresIn = (govActionLifetime +ᵉ GovEnv.epoch gΓ)
                                ; action = action ; prevAction = prevAction }


    -- utxoDeps' ↔ updateDeposits
    updateDeps-dom≡ᵉ : dom utxoDeps' ≡ᵉ dom (updateDeposits pp txb utxoDeps)
    updateDeps-dom≡ᵉ = let open IsEquivalence (≡ᵉ-isEquivalence{DepositPurpose}) in
      reflexive (cong dom (⊢utxo-valid UTXOS-sts))
      where
      ⊢utxo-valid : record { LEnv Γ } ⊢ utxoSt ⇀⦇ tx ,UTXOS⦈ utxoSt'
                    → utxoDeps' ≡ (updateDeposits pp txb utxoDeps)
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-Yes _) = refl
      ⊢utxo-valid (_⊢_⇀⦇_,UTXOS⦈_.Scripts-No u) = contradiction (trans (sym tx-valid) (proj₂ u)) (λ ())


    -- updateProposalDeposits ↔ utxoDeps ∪ proposalDepositsΔ
    updatePropDeps≡ᵉ : {props : List GovProposal}
       → dom ((updateProposalDeposits props txid govActionDeposit utxoDeps)ˢ)
         ≡ᵉ dom ((utxoDeps ∪⁺ proposalDepositsΔ props pp txb)ˢ)
    updatePropDeps≡ᵉ {[]} = begin
      dom ((updateProposalDeposits [] txid govActionDeposit utxoDeps)ˢ)
        ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      (dom (utxoDeps ˢ ∪ ∅))
        ≈⟨ dom∪ ⟩
      dom (utxoDeps ˢ) ∪ dom{X = DepositPurpose ⇀ Coin} ∅
        ≈˘⟨ dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ proposalDepositsΔ [] pp txb) ˢ)
        ∎

    updatePropDeps≡ᵉ {p ∷ ps} = let gaD = GovActionDeposit (txid , length ps) in
      begin
      dom (updateProposalDeposits (p ∷ ps) txid govActionDeposit utxoDeps ˢ)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits ps txid govActionDeposit utxoDeps ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ{ps}) ≡ᵉ.refl ⟩
      dom ((utxoDeps ∪⁺ proposalDepositsΔ ps pp txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong dom∪⁺ ≡ᵉ.refl ⟩
      (dom (utxoDeps ˢ) ∪ dom ((proposalDepositsΔ ps pp txb) ˢ)) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-assoc (dom (utxoDeps ˢ)) (dom ((proposalDepositsΔ ps pp txb) ˢ)) (dom (❴ gaD , govActionDeposit ❵ ˢ)) ⟩
      dom (utxoDeps ˢ) ∪ (dom ((proposalDepositsΔ ps pp txb) ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom∪⁺ ⟩
      dom (utxoDeps ˢ) ∪ dom ((proposalDepositsΔ ps pp txb ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom ((utxoDeps ∪⁺ proposalDepositsΔ (p ∷ ps) pp txb) ˢ)
        ∎

    noGACerts : ∀ {cs} {deps}
      → filterˢ isGADeposit (dom ((updateCertDeposits pp cs deps)ˢ)) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))
    noGACerts {[]} {deps} = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts {c ∷ cs} {deps} = let upCD = updateCertDeposits pp cs deps in
      -- TODO: clean up proof; should be trivial
      begin
      filterˢ isGADeposit (dom ((updateCertDeposits pp (c ∷ cs) deps)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom (((upCD ∪⁺ certDeposit c {pp}) ∣ certRefund c ᶜ)ˢ))
        ≈⟨ filterCR c {upCD ∪⁺ certDeposit c {pp}} ⟩
      filterˢ isGADeposit (dom ((upCD ∪⁺ certDeposit c {pp})ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upCD ˢ) ∪ dom ((certDeposit c {pp})ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upCD ˢ)) ∪ filterˢ isGADeposit (dom ((certDeposit c {pp})ˢ))
        ≈⟨ ∪-cong (noGACerts {cs} {deps}) (filterCD {c} {pp}) ⟩
      filterˢ isGADeposit (dom (deps ˢ)) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom (deps ˢ))) ⟩
      filterˢ isGADeposit (dom (deps ˢ))
        ∎

    allGA-propDepsΔ : {props : List GovProposal}
      → filterˢ isGADeposit (dom ((proposalDepositsΔ props pp txb)ˢ)) ≡ᵉ dom ((proposalDepositsΔ props pp txb)ˢ)
    allGA-propDepsΔ {[]} = begin
      filterˢ isGADeposit (dom ((proposalDepositsΔ [] pp txb)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)
        ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅
        ≈⟨ ∅-least filter-⊆ ⟩
      ∅
        ≈˘⟨ dom∅ ⟩
      dom ((proposalDepositsΔ [] pp txb)ˢ)
        ∎
    allGA-propDepsΔ {(p ∷ ps)} =
      let
        upPD = updateProposalDeposits ps txid govActionDeposit ∅
        gaD = GovActionDeposit (txid , length ps)
      in
      begin
      filterˢ isGADeposit (dom ((proposalDepositsΔ (p ∷ ps) pp txb)ˢ))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom ((upPD ∪⁺ ❴ gaD , govActionDeposit ❵) ˢ))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom (upPD ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom (upPD ˢ)) ∪ filterˢ isGADeposit (dom (❴ gaD , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (allGA-propDepsΔ{ps}) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom ((proposalDepositsΔ ps pp txb)ˢ) ∪ (filterˢ isGADeposit ❴ gaD ❵)
        ≈⟨ ∪-cong ≡ᵉ.refl filterGA ⟩
      dom ((proposalDepositsΔ ps pp txb)ˢ) ∪ ❴ gaD ❵
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom-single≡single ⟩
      dom ((proposalDepositsΔ ps pp txb)ˢ) ∪ dom (❴ gaD , govActionDeposit ❵ ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom ((proposalDepositsΔ (p ∷ ps) pp txb)ˢ)
        ∎

    final-lemma : fromList (map f govSt) ∪ fromList (map f (propsToState txprop))
                  ≡ᵉ  fromList ((map f govSt) ++ (map f (propsToState txprop)))
    final-lemma = ?
 

    goal : filterˢ isGADeposit (dom (utxoDeps' )) ≡ᵉ fromList (map f govSt')
    goal = begin
      filterˢ isGADeposit (dom utxoDeps')                                                        ≈⟨ filter-pres-≡ᵉ updateDeps-dom≡ᵉ ⟩
      filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))                                 ≈⟨ noGACerts{txcerts} ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))   ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ{txprop}) ⟩
      filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pp txb))                    ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pp txb))               ≈⟨ filter-hom-∪ ⟩
      (filterˢ isGADeposit (dom utxoDeps)) ∪ (filterˢ isGADeposit (dom (proposalDepositsΔ txprop pp txb))) ≈⟨ ∪-cong ≡ᵉ.refl (allGA-propDepsΔ{txprop}) ⟩
      (filterˢ isGADeposit (dom utxoDeps)) ∪ (dom ((proposalDepositsΔ txprop pp txb)ˢ))          ≈⟨ ∪-cong aprioriMatch (utxo-govst-connex{txprop}) ⟩
      fromList (map f govSt) ∪ fromList (map f (propsToState txprop))                            ≈⟨ final-lemma ⟩
      fromList ((map f govSt) ++ (map f (propsToState txprop)))                                  ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ f govSt (propsToState txprop))) ⟩
      fromList (map f (govSt ++ propsToState txprop))                                            ≈˘⟨ ≡ᵉ.reflexive (cong fromList (cong (λ u → map f (govSt ++ propsToState u)) i)) ⟩
      fromList (map f (govSt ++ propsToState (frominj₂ (map inj₂ txprop))))                      ≈˘⟨ ≡ᵉ.reflexive (cong fromList (updateGovStates≡ govSt (map inj₂ txprop))) ⟩
      fromList (map f (updateGovStates govSt (map inj₂ txprop)))                                 ≈˘⟨ ≡ᵉ.reflexive (cong fromList updateGovStates≡') ⟩
      fromList (map f (updateGovStates govSt (map inj₁ txvote ++ map inj₂ txprop)))              ≈⟨ ≡ᵉ.refl  ⟩
      fromList (map f (updateGovStates govSt (txgov txb)))                                       ≈˘⟨ updateGovSt≡ ⟩
      fromList (map f govSt')
        ∎
      where
      i : frominj₂{A = GovVote} (map inj₂ txprop) ≡ txprop
      i = ∈-frominj₂{A = GovVote}{ll = []}



