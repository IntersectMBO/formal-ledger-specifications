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
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Certs.Properties govStructure
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs hiding (vote)
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs

open import Data.Bool.Properties using (¬-not)
open import Data.List.Base using (filter)
open import Data.List.Ext using (∈ˡ-map-filter)
open import Data.List.Ext.Properties using (_×-cong_)
open import Data.List.Properties using (++-identityʳ; map-++; ++-assoc; length-++)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁺; map-∈↔)
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-suc; +-comm)
open import Relation.Binary using (IsEquivalence)
open import Relation.Unary using (Decidable)

import Function.Related.Propositional as R

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
      (Γ : LEnv)   (let ⟦ slot , ppolicy , pparams , enactState , _ ⟧ˡᵉ = Γ)
      (s : LState) (let ⟦ utxoSt , govSt , certSt ⟧ˡ = s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls , UTxOState.deposits utxoSt ⟧ᶜ
      govΓ : CertState → GovEnv
      govΓ = ⟦ txid , epoch slot , pparams , ppolicy , enactState ,_⟧ᵍ

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = case isValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          (certSt' , certStep) ← computeCerts certΓ certSt txcerts
          (govSt'  , govStep)  ← computeGov   (govΓ certSt') (govSt |ᵒ certSt') (txgov txb)
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
        with computeGov (govΓ certSt') (govSt |ᵒ certSt') (txgov txb) | complete {STS = _⊢_⇀⦇_,GOV⦈_} (govΓ certSt') _ _ _ govStep
      ... | success (govSt' , _) | refl = refl
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (LEDGER-I⋯ i utxoStep)
        with isValid ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
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

  FreshTx : Tx → LState → Type
  FreshTx tx ls = tx .body .txid ∉ mapˢ proj₁ (dom (ls .utxoSt .utxo))
    where open Tx; open TxBody; open UTxOState; open LState

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER-V⋯ _ (UTXOW⇒UTXO st) _ _) = pov h st
  LEDGER-pov h (LEDGER-I⋯ _ (UTXOW⇒UTXO st))     = pov h st

  data FreshTxs : LEnv → LState → List Tx → Type where
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

-- ** Proof that the set equality `govDepsMatch` (below) is a LEDGER invariant.

isGADeposit : DepositPurpose → Type
isGADeposit dp = isGADepositᵇ dp ≡ true
  where
  isGADepositᵇ : DepositPurpose → Bool
  isGADepositᵇ (GovActionDeposit _) = true
  isGADepositᵇ _                    = false

govDepsMatch : LState → Type
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (UTxOState.deposits utxoSt)) ≡ᵉ fromList (map (GovActionDeposit ∘ proj₁) govSt)

getDeposits : LState → DepositPurpose ⇀ Coin
getDeposits s = UTxOState.deposits (LState.utxoSt s)

module _  -- ASSUMPTIONS (TODO: eliminate/prove these) --
  {- 1 -} {filterCD : ∀ pp c → filterˢ isGADeposit (dom (certDeposit c pp)) ≡ᵉ ∅}
  {- 2 -} {filterCR : (c : DCert) {deps : DepositPurpose ⇀ Coin}
                      → filterˢ isGADeposit (dom ( deps ∣ certRefund c ᶜ ˢ )) ≡ᵉ filterˢ isGADeposit (dom (deps ˢ))}
  where
  module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {DepositPurpose})
  pattern UTXOW-UTXOS x = UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ x)

  filterGA : ∀ txid n → filterˢ isGADeposit ❴ GovActionDeposit (txid , n) ❵ ≡ᵉ ❴ GovActionDeposit (txid , n) ❵
  proj₁ (filterGA txid n) {a} x = (proj₂ (from ∈-filter x)) where open Equivalence
  proj₂ (filterGA txid n) {a} x = to ∈-filter (ξ (from ∈-singleton x) , x)
    where
    open Equivalence
    ξ : a ≡ GovActionDeposit (txid , n) → isGADeposit a
    ξ refl = refl

  module LEDGER-PROPS (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)
    open ≡-Reasoning

    -- Mapping a list of `GovActionID × GovActionState`s to a list of
    -- `DepositPurpose`s is so common, we give it a name `dpMap`.
    dpMap : GovState → List DepositPurpose
    dpMap = map (λ (id , _) → GovActionDeposit id)

    -- initial utxo deposits
    utxoDeps : DepositPurpose ⇀ Coin
    utxoDeps = UTxOState.deposits (LState.utxoSt s)

    -- utxo deposits after the transaction
    utxoDeps' : DepositPurpose ⇀ Coin
    utxoDeps' = updateDeposits pp txb utxoDeps

    -- GovState definitions and lemmas --
    mkAction : GovProposal → ℕ → GovActionID × GovActionState
    mkAction p n = let open GovProposal p in
      mkGovStatePair
        (PParams.govActionLifetime pp +ᵉ epoch slot)
        (txid , n) returnAddr action prevAction

    -- update GovState with a proposal
    propUpdate : GovState → GovProposal → ℕ → GovState
    propUpdate s p n = s ∷ʳ mkAction p n

    -- update GovState with a vote
    voteUpdate : GovState → GovVote → GovState
    voteUpdate s v = addVote s gid voter vote
      where open GovVote v

    -- update GovState with only the votes in a list of votes and proposals
    updateVotesOnly : GovState → List (GovVote ⊎ GovProposal) → GovState
    updateVotesOnly s [] = s
    updateVotesOnly s (inj₁ v ∷ vps) = updateVotesOnly (voteUpdate s v) vps
    updateVotesOnly s (inj₂ _ ∷ vps) = updateVotesOnly s vps

    -- update GovState with a list of votes and proposals
    updateGovStates : List (GovVote ⊎ GovProposal) → ℕ → GovState → GovState
    updateGovStates [] _ s = s
    updateGovStates (inj₁ v ∷ vps) k s = updateGovStates vps (suc k) (voteUpdate s v)
    updateGovStates (inj₂ p ∷ vps) k s = updateGovStates vps (suc k) (propUpdate s p k)

    -- updateGovStates faithfully represents a step of the LEDGER sts
    STS→GovSt≡ : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                 → isValid ≡ true → LState.govSt s' ≡ updateGovStates (txgov txb) 0 (LState.govSt s |ᵒ LState.certState s')
    STS→GovSt≡ (LEDGER-V x) refl = STS→updateGovSt≡ (txgov txb) 0 (proj₂ (proj₂ (proj₂ x)))
      where
      STS→updateGovSt≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {certSt : CertState} {govSt govSt' : GovState}
        → (_⊢_⇀⟦_⟧ᵢ*'_ IdSTS _⊢_⇀⦇_,GOV'⦈_ (⟦ txid , epoch slot , pp , ppolicy , enactState , certSt ⟧ᵍ , k) govSt vps govSt')
        → govSt' ≡ updateGovStates vps k govSt
      STS→updateGovSt≡ [] _ (BS-base Id-nop) = refl
      STS→updateGovSt≡ (inj₁ v ∷ vps) k (BS-ind (GOV-Vote x) h)
        = STS→updateGovSt≡ vps (suc k) h
      STS→updateGovSt≡ (inj₂ p ∷ vps) k (BS-ind (GOV-Propose x) h) = STS→updateGovSt≡ vps (suc k) h

  module EquationalProperties (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)
    open ≡-Reasoning
    open LEDGER-PROPS tx Γ s

    -- decomposition of updateGovStates applied to list of proposals
    updateProps-decomp : (ps : List GovProposal) {k : ℕ} {govSt : GovState} →
      updateGovStates (map inj₂ ps) k govSt ≡ govSt ++ updateGovStates (map inj₂ ps) k []


    -- decomposition of updateGovStates over concatenated lists
    updateProps-++-decomp : (ps ps' : List GovProposal) {k : ℕ} {govSt : GovState} →
      updateGovStates (map inj₂ (ps ++ ps')) k govSt
      ≡ updateGovStates (map inj₂ ps) k govSt  ++ updateGovStates (map inj₂ ps') (k + length ps) []

    updateProps-++-decomp [] ps' {k} {govSt} = begin
      updateGovStates (map inj₂ ps') k govSt
        ≡˘⟨ cong (λ x → updateGovStates (map inj₂ ps') x govSt) (+-identityʳ k) ⟩
      updateGovStates (map inj₂ ps') (k + 0) govSt
        ≡⟨ updateProps-decomp ps' ⟩
      govSt ++ updateGovStates (map inj₂ ps') (k + 0) [] ∎

    updateProps-++-decomp (p ∷ ps) ps' {k} {govSt} = begin
      updateGovStates (map inj₂ (ps ++ ps')) (suc k) (propUpdate govSt p k)
        ≡⟨ updateProps-++-decomp ps ps' ⟩
      updateGovStates (map inj₂ ps) (suc k) (propUpdate govSt p k)
      ++ updateGovStates (map inj₂ ps') (suc k + length ps) []
        ≡˘⟨ cong (λ x → updateGovStates (map inj₂ ps) (suc k) (propUpdate govSt p k)
            ++ updateGovStates (map inj₂ ps') x [] ) (+-suc k (length ps)) ⟩
      updateGovStates (map inj₂ ps) (suc k) (propUpdate govSt p k)
      ++ updateGovStates (map inj₂ ps') (k + length (p ∷ ps)) [] ∎

    updateProps-decomp [] {k} {govSt} = sym (++-identityʳ govSt)
    updateProps-decomp (p ∷ ps) {k} {govSt} =
      let upp = updateGovStates (map inj₂ [ p ]) k []
          upps = updateGovStates (map inj₂ ps) (suc k) []
      in  begin
          updateGovStates (map inj₂ ps) _ (propUpdate govSt p k)
            ≡⟨ updateProps-decomp ps ⟩
          (propUpdate govSt p k) ++ upps
            ≡⟨ ++-assoc govSt [ mkAction p k ] upps  ⟩
          govSt ++ (upp ++ upps)
            ≡⟨ cong (λ x → govSt ++ (upp ++ updateGovStates (map inj₂ ps) x [])) (+-comm 1 k) ⟩
          govSt ++ (upp ++ updateGovStates (map inj₂ ps) (k + length [ p ]) [])
            ≡˘⟨ cong (govSt ++_) (updateProps-++-decomp [ p ] ps {govSt = []}) ⟩
          govSt ++ updateGovStates (map inj₂ ps) _ (propUpdate [] p k) ∎


    opaque
      unfolding addVote

      |ᵒ-[] : ∀ certState → [] |ᵒ certState ≡ []
      |ᵒ-[] certState = refl

      |ᵒ-++ : ∀ gs gs′ certState → (gs ++ gs′) |ᵒ certState ≡ (gs |ᵒ certState) ++ (gs′ |ᵒ certState)
      |ᵒ-++ gs gs′ certState = map-++ _ gs gs′

      |ᵒ-singleton : ∀ gid gas certState → ∃[ gas′ ] [ (gid , gas) ] |ᵒ certState ≡ [ (gid , gas′) ]
      |ᵒ-singleton gid gas certState = (removeOrphanDRepVotes certState gas , refl)

      dpMap-|ᵒ-singleton : ∀ g certState → dpMap ([ g ] |ᵒ certState) ≡ dpMap [ g ]
      dpMap-|ᵒ-singleton (gid , gas) certState rewrite |ᵒ-singleton gid gas certState .proj₂ = refl

      dpMap-|ᵒ : ∀ govSt certState → dpMap (govSt |ᵒ certState) ≡ dpMap govSt
      dpMap-|ᵒ [] certState = cong dpMap (|ᵒ-[] certState)
      dpMap-|ᵒ (g ∷ govSt) certState = begin
        dpMap ((g ∷ govSt) |ᵒ certState)
          ≡⟨ cong dpMap (|ᵒ-++ [ g ] govSt certState) ⟩
        dpMap (([ g ] |ᵒ certState) ++ (govSt |ᵒ certState))
          ≡⟨ map-++ _ ([ g ] |ᵒ certState) (govSt |ᵒ certState) ⟩
        dpMap ([ g ] |ᵒ certState) ++ dpMap (govSt |ᵒ certState)
          ≡⟨ cong (dpMap ([ g ] |ᵒ certState) ++_) (dpMap-|ᵒ govSt certState) ⟩
        dpMap ([ g ] |ᵒ certState) ++ dpMap govSt
          ≡⟨ cong (_++ dpMap govSt) (dpMap-|ᵒ-singleton g certState) ⟩
        dpMap [ g ] ++ dpMap govSt
          ≡˘⟨ map-++ _ [ g ] govSt ⟩
        dpMap (g ∷ govSt) ∎

      -- dpMap of GovState is invariant under updating with one GovVote
      dpMap-vote-invar : (v : GovVote) (vps : List (GovVote ⊎ GovProposal)) {k : ℕ} {govSt : GovState}
        → dpMap (updateGovStates (inj₁ v ∷ vps) k govSt ) ≡ dpMap (updateGovStates vps (suc k) govSt)
      dpMap-vote-invar v vps = dpMap-updateGovStates-cong vps (dpMap-vote-invar' v)
        where
        dpMap-vote-invar' : (v : GovVote) {govSt : GovState} → dpMap (voteUpdate govSt v) ≡ dpMap govSt
        dpMap-vote-invar' v {[]} = refl
        dpMap-vote-invar' v {x ∷ govSt} rewrite dpMap-vote-invar' v {govSt} = refl

        map-∷ʳ : ∀ {A B : Type} (f : A → B) x xs → map f (xs ∷ʳ x) ≡ map f xs ∷ʳ f x
        map-∷ʳ f x xs = map-++ f xs [ x ]

        dpMap-updateGovStates-cong : (vps : List (GovVote ⊎ GovProposal)) {k : ℕ} {govSt govSt' : GovState}
          → dpMap govSt ≡ dpMap govSt'
          → dpMap (updateGovStates vps k govSt) ≡ dpMap (updateGovStates vps k govSt')
        dpMap-updateGovStates-cong [] h = h
        dpMap-updateGovStates-cong (inj₁ x ∷ vps) h = dpMap-updateGovStates-cong vps $ begin
          dpMap (voteUpdate _ x) ≡⟨  dpMap-vote-invar' x ⟩ dpMap _                ≡⟨ h ⟩
          dpMap _                ≡˘⟨ dpMap-vote-invar' x ⟩ dpMap (voteUpdate _ x) ∎
        dpMap-updateGovStates-cong (inj₂ y ∷ vps) h = dpMap-updateGovStates-cong vps $ begin
          dpMap (propUpdate _ y _)  ≡⟨  map-∷ʳ _ _ _ ⟩ dpMap _ ∷ʳ _             ≡⟨ cong (_∷ʳ _) h ⟩
          dpMap _ ∷ʳ _              ≡˘⟨ map-∷ʳ _ _ _ ⟩ dpMap (propUpdate _ y _) ∎

      updateGovStates≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {govSt : GovState}
         → dpMap (updateGovStates vps k govSt) ≡ dpMap (govSt ++ updateGovStates vps k [])
      updateGovStates≡ [] _ {govSt} = cong dpMap (sym (++-identityʳ govSt))
      updateGovStates≡ (inj₁ v ∷ vps) k {govSt} = let open ≡-Reasoning in begin
        dpMap (updateGovStates vps (suc k) (voteUpdate govSt v))  ≡⟨ dpMap-vote-invar v vps ⟩
        dpMap (updateGovStates vps (suc k) govSt)                 ≡⟨ updateGovStates≡ vps (suc k) ⟩
        dpMap (govSt ++ updateGovStates vps (suc k) [])           ∎
      updateGovStates≡ (inj₂ p ∷ vps) k {govSt} = begin
        dpMap (updateGovStates vps (suc k) (propUpdate govSt p k))
          ≡⟨ updateGovStates≡ vps (suc k) ⟩
        dpMap (propUpdate govSt p k ++  updateGovStates vps (suc k) [])
          ≡⟨ cong (λ x → dpMap (x ++ updateGovStates vps _ [])) refl ⟩
        dpMap ((govSt ++ [ mkAction p k ]) ++  updateGovStates vps (suc k) [])
          ≡⟨ cong dpMap (++-assoc govSt [ mkAction p k ] (updateGovStates vps (suc k) [])) ⟩
        dpMap (govSt ++ [ mkAction p k ] ++  updateGovStates vps (suc k) [])
          ≡⟨ cong (λ x → dpMap (govSt ++ x ++  updateGovStates vps (suc k) [])) refl ⟩
        dpMap (govSt ++ propUpdate [] p k ++  updateGovStates vps _ [])
          ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) govSt (propUpdate [] p k ++ updateGovStates vps _ []) ⟩
        dpMap govSt ++ dpMap (propUpdate [] p k ++ updateGovStates vps _ [])
          ≡˘⟨ cong ((dpMap govSt) ++_) (updateGovStates≡ vps (suc k)) ⟩
        dpMap govSt ++ dpMap (updateGovStates vps _ (propUpdate [] p k))
          ≡˘⟨ map-++ (λ (id , _) → GovActionDeposit id) govSt (updateGovStates vps _ (propUpdate [] p k)) ⟩
        dpMap (govSt ++ updateGovStates vps (suc k) (propUpdate [] p k))
          ∎

    dpMap-vote-invar++ : (ps : List GovProposal) (vs : List GovVote) {k : ℕ} {govSt : GovState}
      → dpMap (updateGovStates (map inj₂ ps ++ map inj₁ vs) k govSt ) ≡ dpMap (updateGovStates (map inj₂ ps) k govSt)
    dpMap-vote-invar++ [] [] = refl
    dpMap-vote-invar++ [] (v ∷ vs) = trans (dpMap-vote-invar v (map inj₁ vs)) (dpMap-vote-invar++ [] vs)
    dpMap-vote-invar++ (p ∷ ps) vs = dpMap-vote-invar++ ps vs

  module SetoidProperties (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)
    govSt : GovState
    govSt = LState.govSt s
    open LEDGER-PROPS tx Γ s using (utxoDeps; dpMap; propUpdate; mkAction; updateGovStates; STS→GovSt≡)
    open EquationalProperties tx Γ s using (dpMap-vote-invar++; updateGovStates≡; updateProps-decomp; updateProps-++-decomp; dpMap-|ᵒ)

    dpMap-update : ∀ ps k govSt
      → dpMap (updateGovStates (map inj₂ ps) k govSt)
        ≡ dpMap govSt ++ applyUpTo (λ i → GovActionDeposit (txid , k + i)) (length ps)
    dpMap-update [] k govSt = sym (++-identityʳ (dpMap govSt))
    dpMap-update (x ∷ ps₁) k govSt = let open ≡-Reasoning in begin
      dpMap (updateGovStates (map inj₂ (x ∷ ps₁)) k govSt)
        ≡⟨ dpMap-update ps₁ _ (propUpdate govSt x k) ⟩
      dpMap (propUpdate govSt x k)
        ++ applyUpTo (λ i → GovActionDeposit (txid , suc (k + i))) (length ps₁)
        ≡⟨ cong (_++ _) (map-++ _ govSt _) ⟩
      (dpMap govSt ++ [ GovActionDeposit (txid , k) ])
        ++ applyUpTo (λ i → GovActionDeposit (txid , suc (k + i))) (length ps₁)
        ≡⟨ ++-assoc (dpMap govSt) [ GovActionDeposit (txid , k) ] _ ⟩
      dpMap govSt ++ [ GovActionDeposit (txid , k) ]
        ++ applyUpTo (λ i → GovActionDeposit (txid , suc (k + i))) (length ps₁)
        ≡˘⟨ cong (λ u → dpMap govSt ++ [ GovActionDeposit (txid , u) ]
            ++ applyUpTo (λ i → GovActionDeposit (txid , suc (k + i)))(length ps₁)) (+-identityʳ k) ⟩
      dpMap govSt ++ [ GovActionDeposit (txid , k + 0) ]
        ++ applyUpTo (λ i → GovActionDeposit (txid , suc (k + i))) (length ps₁)
        ≡⟨ cong (λ u → dpMap govSt ++ [ GovActionDeposit (txid , k + 0) ] ++ u)
           (funext-app (length ps₁) (λ i → cong (λ v → GovActionDeposit (txid , v)) (sym (+-suc k i)))) ⟩
      dpMap govSt ++ [ GovActionDeposit (txid , k + 0) ]
        ++ applyUpTo (λ i → GovActionDeposit (txid , k + suc i)) (length ps₁)
        ≡⟨ cong (dpMap govSt ++_) refl ⟩
      dpMap govSt ++ applyUpTo (λ i → GovActionDeposit (txid , k + i)) (suc (length ps₁)) ∎
        where
        funext-app : {f g : ℕ → DepositPurpose} (n : ℕ) → (∀ i → f i ≡ g i) → applyUpTo f n ≡ applyUpTo g n
        funext-app zero fi≡gi = refl
        funext-app (suc n) fi≡gi = cong₂ _∷_ (fi≡gi 0) (funext-app  n (fi≡gi ∘ suc))

    dpMap-update-length-≡ : ∀ ps ps' → length ps ≡ length ps'
      → dpMap (updateGovStates (map inj₂ ps) 0 []) ≡ dpMap (updateGovStates (map inj₂ ps') 0 [])
    dpMap-update-length-≡ ps ps' l≡ = let open ≡-Reasoning in begin
      dpMap (updateGovStates (map inj₂ ps) 0 [])
        ≡⟨ dpMap-update ps 0 [] ⟩
      dpMap [] ++ applyUpTo (λ i → GovActionDeposit (txid , 0 + i)) (length ps)
        ≡⟨ cong (λ u → dpMap [] ++ applyUpTo (λ i → GovActionDeposit (txid , 0 + i)) u) l≡ ⟩
      dpMap [] ++ applyUpTo (λ i → GovActionDeposit (txid , 0 + i)) (length ps')
        ≡˘⟨ dpMap-update ps' 0 [] ⟩
      dpMap (updateGovStates (map inj₂ ps') 0 []) ∎

    -- Removing orphan DRep votes does not modify the set of GAs in GovState
    |ᵒ-GAs-pres : ∀ vps k govSt certState →
        dpMap (updateGovStates vps k (govSt |ᵒ certState)) ≡ dpMap (updateGovStates vps k govSt)
    |ᵒ-GAs-pres vps k govSt certState = let open ≡-Reasoning in begin
      dpMap (updateGovStates vps k (govSt |ᵒ certState))
        ≡⟨ updateGovStates≡ vps k ⟩
      dpMap ((govSt |ᵒ certState) ++ updateGovStates vps k [])
        ≡⟨ map-++ _ (govSt |ᵒ certState) (updateGovStates vps k []) ⟩
      dpMap (govSt |ᵒ certState) ++ dpMap (updateGovStates vps k [])
        ≡⟨ cong (_++ dpMap (updateGovStates vps k [])) (dpMap-|ᵒ govSt certState) ⟩
      dpMap govSt ++ dpMap (updateGovStates vps k [])
        ≡˘⟨ map-++ _ govSt (updateGovStates vps k []) ⟩
      dpMap (govSt ++ updateGovStates vps k [])
        ≡˘⟨ updateGovStates≡ vps k ⟩
      dpMap (updateGovStates vps k govSt) ∎

    open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})

    -- Decomposition of the domain of the result of `updateProposalDeposits`.
    updatePropDeps≡ᵉ : (props : List GovProposal)
      → dom (updateProposalDeposits props txid govActionDeposit utxoDeps)
        ≡ᵉ dom (utxoDeps ∪⁺ proposalDepositsΔ props pp txb)
    updatePropDeps≡ᵉ [] = begin
      dom (updateProposalDeposits [] txid govActionDeposit utxoDeps)
        ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      dom (utxoDeps ˢ ∪ ∅)
        ≈⟨ dom∪ ⟩
      dom utxoDeps ∪ dom{X = DepositPurpose ⇀ Coin} ∅
        ≈˘⟨ dom∪⁺≡∪dom ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ [] pp txb) ∎

    updatePropDeps≡ᵉ (p ∷ ps) =
      let pdΔ = proposalDepositsΔ ps pp txb
          gaDˢ = ❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ
      in begin
      dom (updateProposalDeposits (p ∷ ps) txid govActionDeposit utxoDeps)
        ≈⟨ dom∪⁺≡∪dom ⟩
      dom (updateProposalDeposits ps txid govActionDeposit utxoDeps) ∪ dom gaDˢ
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ ps) ≡ᵉ.refl ⟩
      dom (utxoDeps ∪⁺ pdΔ) ∪ dom gaDˢ
        ≈⟨ ∪-cong dom∪⁺≡∪dom ≡ᵉ.refl ⟩
      (dom utxoDeps ∪ dom pdΔ) ∪ dom gaDˢ
        ≈⟨ ∪-assoc (dom utxoDeps) (dom (pdΔ)) (dom gaDˢ) ⟩
      dom utxoDeps ∪ (dom pdΔ ∪ dom gaDˢ)
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom∪⁺≡∪dom ⟩
      dom utxoDeps ∪ dom ((pdΔ ∪⁺ ❴ GovActionDeposit (txid , length ps), govActionDeposit ❵)ˢ)
        ≈˘⟨ dom∪⁺≡∪dom ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ (p ∷ ps) pp txb)
        ∎

    -- No governance action deposits come fro the certs update.
    noGACerts : (cs : List DCert) (deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom (updateCertDeposits pp cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
    noGACerts [] _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts (c ∷ cs) deps =
      let upCD = updateCertDeposits pp cs deps
      in begin
      filterˢ isGADeposit (dom (updateCertDeposits pp (c ∷ cs) deps))
        ≈⟨ filterCR c {upCD ∪⁺ certDeposit c pp} ⟩
      filterˢ isGADeposit (dom (upCD ∪⁺ certDeposit c pp))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
      filterˢ isGADeposit (dom upCD ∪ dom (certDeposit c pp))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upCD) ∪ filterˢ isGADeposit (dom (certDeposit c pp))
        ≈⟨ ∪-cong (noGACerts cs deps) (filterCD pp c) ⟩
      filterˢ isGADeposit (dom deps) ∪ ∅
        ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom deps)) ⟩
      filterˢ isGADeposit (dom deps) ∎


    -- All deposits in proposalDepositsΔ are governance action deposits.
    allGA-propDepsΔ : (props : List GovProposal)
      → filterˢ isGADeposit (dom (proposalDepositsΔ props pp txb))
        ≡ᵉ dom (proposalDepositsΔ props pp txb)

    allGA-propDepsΔ [] = begin
      filterˢ isGADeposit (dom (proposalDepositsΔ [] pp txb))  ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                    ≈⟨ ∅-least filter-⊆ ⟩
      ∅                                                        ≈˘⟨ dom∅ ⟩
      dom (proposalDepositsΔ [] pp txb ˢ)                      ∎

    allGA-propDepsΔ (p ∷ ps) =
      let upPD = updateProposalDeposits ps txid govActionDeposit ∅
          pdΔ = proposalDepositsΔ ps pp txb
          gaDˢ = ❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ
      in begin
      filterˢ isGADeposit (dom (proposalDepositsΔ (p ∷ ps) pp txb))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
      filterˢ isGADeposit (dom upPD ∪ dom gaDˢ)
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upPD) ∪ filterˢ isGADeposit (dom gaDˢ)
        ≈⟨ ∪-cong (allGA-propDepsΔ ps) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom pdΔ ∪ filterˢ isGADeposit ❴ GovActionDeposit (txid , length ps) ❵
        ≈⟨ ∪-cong ≡ᵉ.refl (filterGA _ _) ⟩
      dom pdΔ ∪ ❴ GovActionDeposit (txid , length ps) ❵
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom-single≡single ⟩
      dom pdΔ ∪ dom gaDˢ
        ≈˘⟨ dom∪⁺≡∪dom ⟩
      dom (proposalDepositsΔ (p ∷ ps) pp txb) ∎


    utxo-govst-connex : (props : List GovProposal)
      → dom (proposalDepositsΔ props pp txb) ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ props) 0 [] ))
    utxo-govst-connex [] = dom∅
    utxo-govst-connex (p ∷ ps) = let upps = updateGovStates (map inj₂ ps) _ [] in begin
      dom (proposalDepositsΔ (p ∷ ps) pp txb)
        ≈⟨ dom∪⁺≡∪dom ⟩
      dom (updateProposalDeposits ps txid govActionDeposit ∅)
        ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (utxo-govst-connex ps) dom-single≡single ⟩
      fromList (dpMap upps) ∪ fromList (dpMap [ mkAction p (length ps) ])
        ≈⟨ ∪-fromList-++ (dpMap upps)(dpMap [ mkAction p (length ps) ]) ⟩
      fromList (dpMap upps ++ dpMap [ mkAction p (length ps) ])
        ≡˘⟨ cong fromList (map-++ (λ (id , _) → GovActionDeposit id)
                                  upps [ mkAction p (length ps) ]) ⟩
      fromList (dpMap (upps ++ updateGovStates (map inj₂ [ p ]) (0 + length ps) []))
        ≡˘⟨ cong (fromList ∘ dpMap) (updateProps-++-decomp ps [ p ]) ⟩
      fromList (dpMap (updateGovStates (map inj₂ (ps ++ [ p ])) 0 []))
        ≡⟨ cong fromList (dpMap-update-length-≡ (ps ++ [ p ]) (p ∷ ps)
                           (trans (length-++ ps) (+-comm (length ps) 1))) ⟩
      fromList (dpMap (updateGovStates (map inj₂ (p ∷ ps)) 0 [])) ∎

    -- GA Deposits Invariance Property for LEDGER STS --------------------------------------------------------------------
    LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                          → govDepsMatch s → govDepsMatch s'
    LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

    LEDGER-govDepsMatch s'@{⟦ .(⟦ ((UTxOState.utxo (LState.utxoSt s) ∣ txins ᶜ) ∪ˡ (outs txb))
                                , _ , updateDeposits pp txb (UTxOState.deposits (LState.utxoSt s)) , _ ⟧ᵘ)
                            , govSt' , certState' ⟧ˡ}
      utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ GOV-sts) aprioriMatch = begin
        filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
          ≈⟨ noGACerts txcerts (updateProposalDeposits txprop txid govActionDeposit utxoDeps) ⟩
        filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
          ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ txprop) ⟩
        filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pp txb))
          ≈⟨ filter-pres-≡ᵉ dom∪⁺≡∪dom ⟩
        filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pp txb))
          ≈⟨ filter-hom-∪ ⟩
        filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (proposalDepositsΔ txprop pp txb))
          ≈⟨ ∪-cong aprioriMatch (allGA-propDepsΔ txprop) ⟩
        fromList (dpMap govSt) ∪ dom (proposalDepositsΔ txprop pp txb ˢ)
          ≈⟨ ∪-cong ≡ᵉ.refl (utxo-govst-connex txprop) ⟩
        fromList (dpMap govSt) ∪ fromList (dpMap (updateGovStates (map inj₂ txprop) 0 []))
          ≈˘⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.reflexive (cong fromList (dpMap-vote-invar++ txprop txvote {0}))) ⟩
        fromList (dpMap govSt) ∪ fromList (dpMap (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))
          ≈⟨ ∪-fromList-++ (dpMap govSt) (dpMap (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))⟩
        fromList (dpMap govSt ++ dpMap (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))
          ≡˘⟨ cong fromList (map-++ (λ (id , _) → GovActionDeposit id) govSt (updateGovStates (txgov txb) 0 [])) ⟩
        fromList (dpMap (govSt ++ updateGovStates (txgov txb) 0 []))
          ≡˘⟨ cong fromList (updateGovStates≡ (txgov txb) 0) ⟩
        fromList (dpMap (updateGovStates (txgov txb) 0 govSt ))
          ≡˘⟨ cong fromList (|ᵒ-GAs-pres (txgov txb) 0 govSt certState') ⟩
        fromList (dpMap (updateGovStates (txgov txb) 0 (govSt |ᵒ certState')))
          ≡˘⟨ cong (fromList ∘ dpMap ) (STS→GovSt≡ utxosts tx-valid) ⟩
        fromList (dpMap govSt') ∎

    LEDGER-govDepsMatch utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (_ , refl)) , _ , GOV-sts)) aprioriMatch


  module EPOCH-PROPS (tx : Tx) (Γ : LEnv) (eps : EpochState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp); open EpochState eps hiding (es); open LState ls
    open GovActionState; open RatifyState fut using (removed)

    -- GA Deposits Invariance Property for EPOCH STS -----------------------------------------------
    EPOCH-govDepsMatch :
      (ratify-removed : mapˢ (GovActionDeposit ∘ proj₁) removed ⊆ mapˢ proj₁ (UTxOState.deposits utxoSt ˢ))
      (eps' : EpochState) {e : Epoch}
      → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      → govDepsMatch (EpochState.ls eps) → govDepsMatch (EpochState.ls eps')

    EPOCH-govDepsMatch ratify-removed ⟦ acnt' , ls' ,  es , _ , fut' ⟧ᵉ'
      (EPOCH x _) = ≡ᵉ.trans (filter-pres-≡ᵉ $ dom-cong (res-comp-cong $ ≡ᵉ.sym χ'≡χ))
                            ∘ from ≡ᵉ⇔≡ᵉ' ∘ main-invariance-lemma ∘ to ≡ᵉ⇔≡ᵉ'
      where

      -- the combinator used in the EPOCH rule
      χ : (DepositPurpose ⇀ Coin) → ℙ DepositPurpose
      χ deps = mapˢ (proj₁ ∘ proj₂)
        (flip concatMapˢ removed  (λ (gaid , gast) → mapˢ (returnAddr gast ,_) ((deps ∣ ❴ GovActionDeposit gaid ❵) ˢ)))

      -- a simpler combinator that suffices here;
      χ' : ℙ DepositPurpose
      χ' = mapˢ (GovActionDeposit ∘ proj₁) removed
      -- Below we prove χ and χ' are essentially equivalent.

      P : GovActionID × GovActionState → Type
      P = λ u → proj₁ u ∉ mapˢ proj₁ removed

      P? : Decidable P
      P? = λ u → ¿ P u ¿

      utxoDeps : Deposits
      utxoDeps = UTxOState.deposits utxoSt

      -- utxo deposits restricted to new form of set used in EPOCH rule
      utxoDeps' : Deposits
      utxoDeps' = utxoDeps ∣ χ' ᶜ

      -- utxo deposits restricted to old form of set used in EPOCH rule
      utxoDeps'' : Deposits
      utxoDeps'' = utxoDeps ∣ χ utxoDeps ᶜ

      open Equivalence

      χ'≡χ : χ' ≡ᵉ χ utxoDeps
      χ'≡χ = χ'⊆χ , χ⊆χ'
        where
        χ'⊆χ : χ' ⊆ χ utxoDeps
        χ'⊆χ {a} x with from ∈-map x
        ... | (gaid , gast) , refl , gaidgast∈rem with from ∈-map (ratify-removed x)
        ... | (dp , c) , refl , dpc∈utxoDeps = let gadc = (GovActionDeposit gaid , c) in
          to ∈-map ((returnAddr gast , gadc)
                   , refl
                   , to ∈-concatMapˢ ((gaid , gast)
                                     , gaidgast∈rem
                                     , to ∈-map (gadc , refl , res-singleton⁺ {m = utxoDeps} dpc∈utxoDeps)))
        χ⊆χ' : χ utxoDeps ⊆ χ'
        χ⊆χ' {a} x with from ∈-map x
        ... | (rwa , dp , c) , refl , rwa-dp-c∈ with (from ∈-concatMapˢ rwa-dp-c∈)
        ... | (gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map with (from ∈-map rwa-dp-c-∈-map)
        ... | (.dp , _) , refl , q∈ =
          to ∈-map ((gaid , gast)
                   , proj₁ (×-≡,≡←≡ (proj₂ (res-singleton'' {m = utxoDeps} q∈)))
                   , gaid-gast-∈-removed)


      map-filter-decomp : ∀ a → (a ∉ χ' × a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt)
                                 ⇔ (a ∈ˡ map (GovActionDeposit ∘ proj₁)(filter P? govSt))
      map-filter-decomp a = mk⇔ i (λ h → ii h , iii h)
        where
        i : ((a ∉ χ') × (a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt))
            → a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)
        i (a∉χ' , a∈) with Inverse.from (map-∈↔ (GovActionDeposit ∘ proj₁)) a∈
        ... | b , b∈ , refl = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁))
                                         (b , ∈-filter⁺ P? b∈ (a∉χ' ∘ ∈-map⁺-∘) , refl)

        ii : a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt) → a ∉ χ'
        ii a∈ a∈χ' with from (∈ˡ-map-filter{l = govSt}{P? = P?}) a∈
        ... | _ , _ , refl , Pb with ∈-map⁻' a∈χ'
        ... | q , refl , q∈rem = Pb (to ∈-map (q , refl , q∈rem))

        iii : a ∈ˡ map (GovActionDeposit ∘ proj₁) (filter P? govSt)
              → a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt
        iii a∈ with from (∈ˡ-map-filter{l = govSt}{P? = P?}) a∈
        ... | b , b∈ , refl , Pb = Inverse.to (map-∈↔ (GovActionDeposit ∘ proj₁)) (b , (b∈ , refl))


      main-invariance-lemma :
          filterˢ isGADeposit (dom utxoDeps) ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) govSt)
          ---------------------------------------------------------------------------------------------------
        → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ' fromList (map (GovActionDeposit ∘ proj₁) (filter P? govSt))

      main-invariance-lemma HYP a = let open R.EquationalReasoning in
        a ∈ (filterˢ isGADeposit (dom utxoDeps'))                       ∼⟨ R.SK-sym ∈-filter ⟩
        (isGADeposit a × a ∈ dom utxoDeps')                             ∼⟨ R.K-refl ×-cong ∈-resᶜ-dom ⟩
        (isGADeposit a × a ∉ χ' × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ ×-⇔-swap ⟩
        (a ∉ χ' × isGADeposit a × ∃[ q ] (a , q) ∈ utxoDeps)            ∼⟨ R.K-refl ×-cong (R.K-refl ×-cong dom∈)⟩
        (a ∉ χ' × isGADeposit a × a ∈ dom utxoDeps)                     ∼⟨ R.K-refl ×-cong ∈-filter ⟩
        (a ∉ χ' × a ∈ filterˢ isGADeposit (dom utxoDeps))               ∼⟨ R.K-refl ×-cong (HYP a) ⟩
        (a ∉ χ' × a ∈ fromList (map (GovActionDeposit ∘ proj₁) govSt))  ∼⟨ R.K-refl ×-cong (R.SK-sym ∈-fromList)⟩
        (a ∉ χ' × a ∈ˡ map (GovActionDeposit ∘ proj₁) govSt)            ∼⟨ map-filter-decomp a ⟩
        (a ∈ˡ map (GovActionDeposit ∘ proj₁)(filter P? govSt))          ∼⟨ ∈-fromList ⟩
        a ∈ fromList (map (GovActionDeposit ∘ proj₁)(filter P? govSt))  ∎


  -- GA Deposits Invariance Property for CHAIN STS --------------------------------------------------------------------
  module _ (tx : Tx) (Γ : LEnv) (b : Block) (cs : ChainState) where
    open Block b; open ChainState cs
    open NewEpochState newEpochState
    open EpochState epochState; open EnactState es
    open RatifyState fut using (removed)
    open SetoidProperties using (LEDGER-govDepsMatch)

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

    CHAIN-govDepsMatch rrm (CHAIN (NEWEPOCH-New (_ , eps₁→eps₂)) ledgers) =
      (RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers)
      ∘ (EPOCH-PROPS.EPOCH-govDepsMatch tx Γ _ rrm _ eps₁→eps₂)

    CHAIN-govDepsMatch _ (CHAIN (NEWEPOCH-Not-New _) ledgers) =
      RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers

    CHAIN-govDepsMatch rrm (CHAIN (NEWEPOCH-No-Reward-Update (_ , eps₁→eps₂)) ledgers) =
      (RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers)
      ∘ (EPOCH-PROPS.EPOCH-govDepsMatch tx Γ _ rrm _ eps₁→eps₂)
