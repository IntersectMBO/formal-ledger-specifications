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
open import Data.List.Ext using (∈ˡ-map-filter⁺) renaming (∈-map to ∈ˡ-map)
open import Data.List.Ext.Properties using (swap-head)
open import Data.List.Properties using (++-identityʳ; map-++; ++-assoc)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁻; ∈-map⁻)
open import Data.List.Relation.Unary.Any using (Any)
open import Data.Product.Properties using (×-≡,≡→≡)
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
          (certSt' , certStep) ← computeCerts certΓ certSt txcerts
          (govSt'  , govStep)  ← computeGov   govΓ  govSt  (txgov txb)
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

-- ** Proof that the set equality `govDepsMatch` (below) is a LEDGER invariant.

isGADeposit : DepositPurpose → Set
isGADeposit dp = isGADepositᵇ dp ≡ true
  where
  isGADepositᵇ : DepositPurpose → Bool
  isGADepositᵇ (GovActionDeposit _) = true
  isGADepositᵇ _                    = false

govDepsMatch : LState → Set
govDepsMatch ⟦ utxoSt , govSt , _ ⟧ˡ =
  filterˢ isGADeposit (dom (UTxOState.deposits utxoSt)) ≡ᵉ fromList (map (GovActionDeposit ∘ proj₁) govSt)

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

  module LEDGER-PROPS (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)

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
      ActionId×ActionState
        (PParams.govActionLifetime pp +ᵉ GovEnv.epoch ⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ)
        (GovEnv.txid ⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ , n) returnAddr action prevAction

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
                 → isValid ≡ true → LState.govSt s' ≡ updateGovStates (txgov txb) 0 (LState.govSt s)
    STS→GovSt≡ (LEDGER-V x) refl = STS→updateGovSt≡ (txgov txb) 0 (proj₂ (proj₂ (proj₂ x)))
      where
      STS→updateGovSt≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {govSt govSt' : GovState}
        → (_⊢_⇀⟦_⟧ᵢ*'_ IdSTS _⊢_⇀⦇_,GOV'⦈_ (⟦ txid , epoch slot , pp , ppolicy , enactState ⟧ᵍ , k) govSt vps govSt')
        → govSt' ≡ updateGovStates vps k govSt
      STS→updateGovSt≡ [] _ (BS-base Id-nop) = refl
      STS→updateGovSt≡ (inj₁ v ∷ vps) k {govSt}(BS-ind {s' = .(voteUpdate govSt v)} (GOV-Vote x) h)
        = STS→updateGovSt≡ vps (suc k) h
      STS→updateGovSt≡ (inj₂ p ∷ vps) k (BS-ind (GOV-Propose x) h) = STS→updateGovSt≡ vps (suc k) h


  module EquationalProperties (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)
    open ≡-Reasoning
    open LEDGER-PROPS tx Γ s using (dpMap; updateGovStates; voteUpdate; mkAction; updateVotesOnly; propUpdate; STS→GovSt≡)

    updateGovState-++-decomp : (vps : List (GovVote ⊎ GovProposal)) {k : ℕ} (gs gs' : GovState)
      → updateGovStates vps k (gs ++ gs')  ≡ updateVotesOnly gs vps ++ updateGovStates vps k gs'

    updateGovState-++-decomp [] _ _ = refl
    updateGovState-++-decomp (inj₁ v ∷ vps) gs gs' =
      begin
      updateGovStates vps _ (voteUpdate (gs ++ gs') v)      ≡⟨ cong (updateGovStates vps _) (voteUpdate-++ gs gs' v) ⟩
      updateGovStates vps _ (voteUpdate gs v ++ voteUpdate gs' v)  ≡⟨ updateGovState-++-decomp vps (voteUpdate gs v) (voteUpdate gs' v) ⟩
      updateVotesOnly (voteUpdate gs v) vps ++ updateGovStates vps _ (voteUpdate gs' v)  ∎
        where
        open ≡-Reasoning
        voteUpdate-++ : (gs gs' : GovState) (v : GovVote) → voteUpdate (gs ++ gs') v ≡ voteUpdate gs v ++ voteUpdate gs' v
        voteUpdate-++ [] _ _ = refl
        voteUpdate-++ (g ∷ gs) gs' v = begin
          voteUpdate (g ∷ gs ++ gs') v                   ≡⟨ cong (voteUpdate [ g ] v ++_) (voteUpdate-++ gs gs' v) ⟩
          voteUpdate [ g ] v ++ (voteUpdate gs v ++ voteUpdate gs' v)  ≡⟨ ++-assoc (voteUpdate [ g ] v) (voteUpdate gs v) (voteUpdate gs' v) ⟩
          (voteUpdate [ g ] v ++ voteUpdate gs v) ++ voteUpdate gs' v  ≡˘⟨ cong (_++ voteUpdate gs' v) refl ⟩
          voteUpdate (g ∷ gs) v ++ voteUpdate gs' v             ∎

    updateGovState-++-decomp (inj₂ p ∷ vps) {k} gs gs' = let open ≡-Reasoning in begin
      updateGovStates vps _ (propUpdate (gs ++ gs') p k)                   ≡⟨ cong (updateGovStates vps _) (propUpdate-++-decomp gs gs' p k) ⟩
      updateGovStates vps _ (gs ++ propUpdate gs' p k)                     ≡⟨ updateGovState-++-decomp vps gs (propUpdate gs' p k) ⟩
      updateVotesOnly gs vps ++ updateGovStates vps _ (propUpdate gs' p k) ∎
      where
      propUpdate-++-decomp : (gs gs' : GovState) (p : GovProposal) (n : ℕ) → propUpdate (gs ++ gs') p n ≡ gs ++ propUpdate gs' p n
      propUpdate-++-decomp gs gs' p n = let open ≡-Reasoning in begin
        propUpdate (gs ++ gs') p n  ≡⟨ ++-assoc gs gs' [ mkAction p n ] ⟩
        gs ++ gs' ∷ʳ mkAction p n   ≡⟨ cong (gs ++_) refl ⟩
        gs ++ propUpdate gs' p n          ∎

    -- decomposition of updateGovStates applied to list of proposals
    updateProps-decomp : (ps : List GovProposal) {k : ℕ} {govSt : GovState} →
      updateGovStates (map inj₂ ps) k govSt ≡ govSt ++ updateGovStates (map inj₂ ps) k []

    -- decomposition of updateGovStates over concatenated lists
    updateProps-++-decomp : (ps ps' : List GovProposal) {k : ℕ} {govSt : GovState} →
      updateGovStates (map inj₂ (ps ++ ps')) k govSt
      ≡ updateGovStates (map inj₂ ps) k govSt  ++ updateGovStates (map inj₂ ps') (k + length ps) []
    updateProps-++-decomp [] ps' {k} {govSt} = let open ≡-Reasoning in begin
      updateGovStates (map inj₂ ps') k govSt              ≡˘⟨ cong (λ x → updateGovStates (map inj₂ ps') x govSt) (+-identityʳ k) ⟩
      updateGovStates (map inj₂ ps') (k + 0) govSt        ≡⟨ updateProps-decomp ps' ⟩
      govSt ++ updateGovStates (map inj₂ ps') (k + 0) []  ∎
    updateProps-++-decomp (p ∷ ps) ps' {k} {govSt} = let open ≡-Reasoning in begin
      updateGovStates (map inj₂ (ps ++ ps')) (suc k) (propUpdate govSt p k)
        ≡⟨ updateProps-++-decomp ps ps' ⟩
      updateGovStates (map inj₂ ps) (suc k) (propUpdate govSt p k) ++ updateGovStates (map inj₂ ps') (suc k + length ps) []
        ≡˘⟨ cong (λ x → updateGovStates (map inj₂ ps) (suc k) (propUpdate govSt p k)
            ++ updateGovStates (map inj₂ ps') x [] ) (+-suc k (length ps)) ⟩
      updateGovStates (map inj₂ ps) (suc k) (propUpdate govSt p k) ++ updateGovStates (map inj₂ ps') (k + length (p ∷ ps)) []
        ∎

    updateProps-decomp [] {k} {govSt} = sym (++-identityʳ govSt)
    updateProps-decomp (p ∷ ps) {k} {govSt} =
      let open ≡-Reasoning
          upp = updateGovStates (map inj₂ [ p ]) k []
          upps = updateGovStates (map inj₂ ps) (suc k) []
      in  begin
          updateGovStates (map inj₂ ps) _ (propUpdate govSt p k)                ≡⟨ updateProps-decomp ps ⟩
          (propUpdate govSt p k) ++ upps                                        ≡⟨ ++-assoc govSt [ mkAction p k ] upps  ⟩
          govSt ++ (upp ++ upps)                                                ≡⟨ cong (λ x → govSt ++ (upp ++ updateGovStates (map inj₂ ps) x [])) (+-comm 1 k) ⟩
          govSt ++ (upp ++ updateGovStates (map inj₂ ps) (k + length [ p ]) []) ≡˘⟨ cong (govSt ++_) (updateProps-++-decomp [ p ] ps {govSt = []}) ⟩
          govSt ++ (updateGovStates (map inj₂ ([ p ] ++ ps)) k [] )             ≡⟨ cong (govSt ++_) refl ⟩
          govSt ++ updateGovStates (map inj₂ ps) _ (propUpdate [] p k)          ∎
    -- dpMap of GovState is invariant under updating with one GovVote
    dmMap-vote-invar : (v : GovVote) (vps : List (GovVote ⊎ GovProposal)) {k : ℕ} {govSt : GovState}
      → dpMap (updateGovStates (inj₁ v ∷ vps) k govSt ) ≡ dpMap (updateGovStates vps (suc k) govSt)
    dmMap-vote-invar _ _ {k} {[]} = refl
    dmMap-vote-invar v [] {k} {g ∷ gs} = begin
      dpMap (voteUpdate (g ∷ gs) v)                         ≡⟨ cong dpMap{x = (voteUpdate (g ∷ gs) v)} refl ⟩
      dpMap (voteUpdate [ g ] v ++ voteUpdate gs v)         ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) (voteUpdate [ g ] v) (voteUpdate gs v) ⟩
      dpMap (voteUpdate [ g ] v) ++ dpMap (voteUpdate gs v) ≡⟨ cong (dpMap (voteUpdate [ g ] v) ++_) (dmMap-vote-invar v [] {0} ) ⟩
      dpMap (g ∷ gs)                          ∎
    dmMap-vote-invar v (inj₁ v' ∷ vps) {k} {govSt} = begin
      dpMap (updateGovStates (inj₁ v ∷ (inj₁ v' ∷ vps)) _ govSt )  ≡⟨ dmMap-vote-invar v' vps ⟩
      dpMap (updateGovStates vps _ (voteUpdate govSt v))           ≡⟨ dmMap-vote-invar v vps  ⟩
      dpMap (updateGovStates vps _ govSt)                          ≡˘⟨ dmMap-vote-invar v' vps ⟩
      dpMap (updateGovStates vps _ (voteUpdate govSt v'))          ∎
    dmMap-vote-invar v (inj₂ p ∷ vps) {k} {govSt} = begin
       dpMap (updateGovStates vps _ (voteUpdate govSt v ∷ʳ mkAction p (suc k)))  ≡⟨ cong dpMap (updateGovState-++-decomp vps (voteUpdate govSt v) [ mkAction p (suc k) ]) ⟩
       dpMap ((updateVotesOnly (voteUpdate govSt v) vps) ++ upp)                 ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) ((updateVotesOnly (voteUpdate govSt v) vps)) upp ⟩
       dpMap (updateVotesOnly (voteUpdate govSt v) vps) ++ dpMap upp             ≡⟨ cong (_++ dpMap upp) (updateVotesOnly-map-invar (voteUpdate govSt v) vps) ⟩
       dpMap (voteUpdate govSt v) ++ dpMap upp                                   ≡⟨ cong (_++ dpMap upp) (voteUpdate-map-invar govSt v) ⟩
       dpMap govSt ++ dpMap upp                                                  ≡˘⟨ cong (_++ (dpMap upp)) (updateVotesOnly-map-invar govSt vps) ⟩
       dpMap (updateVotesOnly govSt vps) ++  dpMap upp                           ≡˘⟨ map-++ (λ (id , _) → GovActionDeposit id) (updateVotesOnly govSt vps) upp ⟩
       dpMap (updateVotesOnly govSt vps ++  upp)                                 ≡˘⟨ cong dpMap (updateGovState-++-decomp vps govSt [ mkAction p (suc k) ]) ⟩
       dpMap (updateGovStates vps _ (govSt ∷ʳ mkAction p (suc k)))               ∎
         where
         open ≡-Reasoning
         upp = updateGovStates vps _ [ mkAction p (suc k) ]

         voteUpdate-map-invar : (gs : GovState) (v : GovVote) → dpMap (voteUpdate gs v) ≡ dpMap gs
         voteUpdate-map-invar [] v = refl
         voteUpdate-map-invar (g ∷ gs) v = begin
           dpMap (voteUpdate (g ∷ gs) v)                          ≡⟨ cong dpMap{x = voteUpdate (g ∷ gs) v} refl ⟩
           dpMap (voteUpdate [ g ] v ++ voteUpdate gs v)          ≡⟨ map-++ (λ (id , _) → GovActionDeposit id) (voteUpdate [ g ] v) (voteUpdate gs v) ⟩
           dpMap (voteUpdate [ g ] v) ++ dpMap (voteUpdate gs v)  ≡⟨ cong (dpMap (voteUpdate [ g ] v) ++_) (voteUpdate-map-invar gs v) ⟩
           dpMap (voteUpdate [ g ] v) ++ dpMap gs                 ≡⟨ cong (_++ dpMap gs) refl ⟩
           dpMap (g ∷ gs)                                         ∎

         updateVotesOnly-map-invar : (gs : GovState) (vps : List (GovVote ⊎ GovProposal))
                                     → dpMap (updateVotesOnly gs vps) ≡ dpMap gs
         updateVotesOnly-map-invar gs [] = refl
         updateVotesOnly-map-invar gs (inj₂ p ∷ vps) = updateVotesOnly-map-invar gs vps
         updateVotesOnly-map-invar gs (inj₁ v ∷ vps) = begin
           dpMap (updateVotesOnly (voteUpdate gs v) vps)  ≡⟨ updateVotesOnly-map-invar (voteUpdate gs v) vps ⟩
           dpMap (voteUpdate gs v)                        ≡⟨ voteUpdate-map-invar gs v ⟩
           dpMap gs                                       ∎

    dmMap-vote-invar++ : (ps : List GovProposal) (vs : List GovVote) {k : ℕ} {govSt : GovState}
      → dpMap (updateGovStates (map inj₂ ps ++ map inj₁ vs) k govSt ) ≡ dpMap (updateGovStates (map inj₂ ps) k govSt)
    dmMap-vote-invar++ [] [] = refl
    dmMap-vote-invar++ [] (v ∷ vs) = trans (dmMap-vote-invar v (map inj₁ vs)) (dmMap-vote-invar++ [] vs)
    dmMap-vote-invar++ (p ∷ ps) vs = dmMap-vote-invar++ ps vs

    updateGovStates≡ : (vps : List (GovVote ⊎ GovProposal)) (k : ℕ) {govSt : GovState}
       → dpMap (updateGovStates vps k govSt) ≡ dpMap (govSt ++ updateGovStates vps k [])
    updateGovStates≡ [] _ {govSt} = cong dpMap (sym (++-identityʳ govSt))
    updateGovStates≡ (inj₁ v ∷ vps) k {govSt} = let open ≡-Reasoning in begin
      dpMap (updateGovStates vps (suc k) (voteUpdate govSt v))  ≡⟨ dmMap-vote-invar v vps ⟩
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

  module SetoidProperties (tx : Tx) (Γ : LEnv) (s : LState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp)
    open PParams pp using (govActionDeposit)
    open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
    govSt : GovState
    govSt = LState.govSt s
    open LEDGER-PROPS tx Γ s using (utxoDeps; dpMap; propUpdate; mkAction; updateGovStates; STS→GovSt≡)
    open EquationalProperties tx Γ s using (dmMap-vote-invar++; updateGovStates≡; updateProps-decomp; updateProps-++-decomp)

    -- Decomposition of the domain of the result of `updateProposalDeposits`.
    updatePropDeps≡ᵉ : (props : List GovProposal)
      → dom (updateProposalDeposits props txid govActionDeposit utxoDeps)
        ≡ᵉ dom (utxoDeps ∪⁺ proposalDepositsΔ props pp txb)
    updatePropDeps≡ᵉ [] = begin
      dom (updateProposalDeposits [] txid govActionDeposit utxoDeps)  ≈˘⟨ dom-cong (∪-identityʳ (utxoDeps ˢ)) ⟩
      dom (utxoDeps ˢ ∪ ∅)                                            ≈⟨ dom∪ ⟩
      dom utxoDeps ∪ dom{X = DepositPurpose ⇀ Coin} ∅                 ≈˘⟨ dom∪⁺ ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ [] pp txb)                   ∎

    updatePropDeps≡ᵉ (p ∷ ps) = begin
      dom (updateProposalDeposits (p ∷ ps) txid govActionDeposit utxoDeps)
        ≈⟨ dom∪⁺ ⟩
      dom (updateProposalDeposits ps txid govActionDeposit utxoDeps) ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong (updatePropDeps≡ᵉ ps) ≡ᵉ.refl ⟩
      dom (utxoDeps ∪⁺ (proposalDepositsΔ ps pp txb)) ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-cong dom∪⁺ ≡ᵉ.refl ⟩
      (dom utxoDeps ∪ dom (proposalDepositsΔ ps pp txb)) ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
        ≈⟨ ∪-assoc (dom utxoDeps) (dom (proposalDepositsΔ ps pp txb)) (dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)) ⟩
      dom utxoDeps ∪ (dom (proposalDepositsΔ ps pp txb) ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ))
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom∪⁺ ⟩
      dom utxoDeps ∪ dom ((proposalDepositsΔ ps pp txb ∪⁺ ❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵) ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom (utxoDeps ∪⁺ proposalDepositsΔ (p ∷ ps) pp txb)
        ∎

    -- No governance action deposits come fro the certs update.
    noGACerts : (cs : List DCert) (deps : DepositPurpose ⇀ Coin)
      → filterˢ isGADeposit (dom (updateCertDeposits pp cs deps)) ≡ᵉ filterˢ isGADeposit (dom deps)
    noGACerts [] _ = filter-pres-≡ᵉ ≡ᵉ.refl
    noGACerts (c ∷ cs) deps = let upCD = updateCertDeposits pp cs deps in begin
      filterˢ isGADeposit (dom (updateCertDeposits pp (c ∷ cs) deps))                 ≈⟨ filterCR c {upCD ∪⁺ certDeposit c {pp}} ⟩
      filterˢ isGADeposit (dom (upCD ∪⁺ certDeposit c {pp}))                          ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom upCD ∪ dom (certDeposit c {pp}))                       ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upCD) ∪ filterˢ isGADeposit (dom (certDeposit c {pp})) ≈⟨ ∪-cong (noGACerts cs deps) (filterCD {pp} {c}) ⟩
      filterˢ isGADeposit (dom deps) ∪ ∅                                              ≈⟨ ∪-identityʳ (filterˢ isGADeposit (dom deps)) ⟩
      filterˢ isGADeposit (dom deps)                                                  ∎

    -- All deposits in proposalDepositsΔ are governance action deposits.
    allGA-propDepsΔ : (props : List GovProposal)
      → filterˢ isGADeposit (dom (proposalDepositsΔ props pp txb)) ≡ᵉ dom (proposalDepositsΔ props pp txb)
    allGA-propDepsΔ [] = begin
      filterˢ isGADeposit (dom (proposalDepositsΔ [] pp txb))  ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom {X = DepositPurpose ⇀ Coin} ∅)  ≈⟨ filter-pres-≡ᵉ dom∅ ⟩
      filterˢ isGADeposit ∅                                    ≈⟨ ∅-least filter-⊆ ⟩
      ∅                                                        ≈˘⟨ dom∅ ⟩
      dom (proposalDepositsΔ [] pp txb ˢ)                      ∎
    allGA-propDepsΔ (p ∷ ps) = let upPD = updateProposalDeposits ps txid govActionDeposit ∅ in begin
      filterˢ isGADeposit (dom (proposalDepositsΔ (p ∷ ps) pp txb))
        ≈⟨ filter-pres-≡ᵉ ≡ᵉ.refl ⟩
      filterˢ isGADeposit (dom (upPD ∪⁺ ❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵))
        ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
      filterˢ isGADeposit (dom upPD ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ))
        ≈⟨ filter-hom-∪ ⟩
      filterˢ isGADeposit (dom upPD) ∪ filterˢ isGADeposit (dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ))
        ≈⟨ ∪-cong (allGA-propDepsΔ ps) (filter-pres-≡ᵉ dom-single≡single) ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ filterˢ isGADeposit ❴ GovActionDeposit (txid , length ps) ❵
        ≈⟨ ∪-cong ≡ᵉ.refl filterGA ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ ❴ GovActionDeposit (txid , length ps) ❵
        ≈˘⟨ ∪-cong ≡ᵉ.refl dom-single≡single ⟩
      dom (proposalDepositsΔ ps pp txb) ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
        ≈˘⟨ dom∪⁺ ⟩
      dom (proposalDepositsΔ (p ∷ ps) pp txb)
        ∎

    permuteTwoProps : (x y : GovProposal) (k : ℕ) {govSt : GovState} →
      fromList (dpMap (propUpdate (propUpdate govSt x k) y (suc k))) ≡ᵉ fromList (dpMap (propUpdate (propUpdate govSt y k) x (suc k)))
    permuteTwoProps x y k {govSt} = begin
      fromList (dpMap (propUpdate (govSt ∷ʳ mkAction x k) y (suc k)))
        ≈⟨ ≡ᵉ.reflexive (cong (fromList ∘ dpMap) (++-assoc govSt [ mkAction x k ] [ mkAction y (suc k) ])) ⟩
      fromList (dpMap (govSt ++ [ mkAction x k ] ++ [ mkAction y (suc k)]))
        ≈⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) govSt ([ mkAction x k ] ++ [ mkAction y (suc k)]))) ⟩
      fromList (dpMap govSt ++ dpMap [ mkAction x k ] ++ dpMap [ mkAction y (suc k) ])
        ≈⟨ ≡ᵉ.refl ⟩
      fromList ((dpMap govSt) ++ dpMap [ mkAction y k ] ++ dpMap [ mkAction x (suc k) ])
        ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) govSt ([ mkAction y k ] ++ [ mkAction x (suc k) ]))) ⟩
      fromList (dpMap (govSt ++ [ mkAction y k ] ++ [ mkAction x (suc k) ]))
        ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ dpMap) (++-assoc govSt [ mkAction y k ] [ mkAction x (suc k) ])) ⟩
      fromList (dpMap (propUpdate (propUpdate govSt y k) x (suc k)))
        ∎

    permuteProps : (ps ps' : List GovProposal) (k : ℕ) (govSt : GovState) → ps ↭ ps'
      → fromList (dpMap (updateGovStates (map inj₂ ps) k govSt)) ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ ps') k govSt))
    permuteProps ps .(ps) _ _ _↭_.refl = ≡ᵉ.reflexive refl
    permuteProps .(x ∷ xs) .(x ∷ ys) k govSt (_↭_.prep {xs} {ys} x lrp) = permuteProps xs ys (suc k) (govSt ++ [ mkAction x k ]) lrp
    permuteProps ps ps' k govSt (_↭_.trans {ys = ys} lrp lrp₁) = ≡ᵉ.trans (permuteProps ps ys k govSt lrp) (permuteProps ys ps' k govSt lrp₁)
    permuteProps .(x ∷ y ∷ xs) .(y ∷ x ∷ ys) k govSt (_↭_.swap {xs} {ys} x y lrp) = begin
      fromList (dpMap (updateGovStates (map inj₂ xs) (suc (suc k)) (propUpdate (propUpdate govSt x k) y (suc k))))
        ≈⟨ permuteProps xs ys (suc (suc k)) (propUpdate (propUpdate govSt x k) y (suc k)) lrp ⟩
      fromList (dpMap (updateGovStates (map inj₂ ys) (suc (suc k)) (propUpdate (propUpdate govSt x k) y (suc k))))
        ≈⟨ ≡ᵉ.reflexive (cong (fromList ∘ dpMap) (updateProps-decomp ys)) ⟩
      fromList (dpMap (propUpdate (propUpdate govSt x k) y (suc k) ++ updateGovStates (map inj₂ ys) (suc (suc k)) []))
        ≈⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) (propUpdate (propUpdate govSt x k) y (suc k))
                                                                                  (updateGovStates (map inj₂ ys) (suc (suc k)) []) )) ⟩
      fromList ((dpMap (propUpdate (propUpdate govSt x k) y (suc k))) ++ (dpMap (updateGovStates (map inj₂ ys) (suc (suc k)) [])))
        ≈˘⟨ ∪-fromList-++ (dpMap (propUpdate (propUpdate govSt x k) y (suc k))) (dpMap (updateGovStates (map inj₂ ys) (suc (suc k)) [])) ⟩
      fromList (dpMap (propUpdate (propUpdate govSt x k) y (suc k))) ∪ fromList (dpMap (updateGovStates (map inj₂ ys) (suc (suc k)) []))
        ≈⟨ ∪-cong (permuteTwoProps x y k) ≡ᵉ.refl ⟩
      fromList (dpMap (propUpdate (propUpdate govSt y k) x (suc k))) ∪ fromList (dpMap (updateGovStates (map inj₂ ys) (suc (suc k)) []))
        ≈⟨ ∪-fromList-++ (dpMap (propUpdate (propUpdate govSt y k) x (suc k))) (dpMap (updateGovStates (map inj₂ ys) (suc (suc k)) [])) ⟩
      fromList ((dpMap (propUpdate (propUpdate govSt y k) x (suc k))) ++ (dpMap (updateGovStates (map inj₂ ys) (suc (suc k)) [])))
        ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id)
            (propUpdate (propUpdate govSt y k) x (suc k)) (updateGovStates (map inj₂ ys) (suc (suc k)) []))) ⟩
      fromList (dpMap (propUpdate (propUpdate govSt y k) x (suc k) ++ (updateGovStates (map inj₂ ys) (suc (suc k)) [])))
        ≈˘⟨ ≡ᵉ.reflexive (cong ((fromList ∘ dpMap)) (updateProps-decomp ys)) ⟩
      fromList (dpMap (updateGovStates (map inj₂ ys) _ (propUpdate (propUpdate govSt y k) x (suc k))))
        ∎


    -- GA Deposits Invariance Property for LEDGER STS --------------------------------------------------------------------
    LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                          → govDepsMatch s → govDepsMatch s'
    LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

    LEDGER-govDepsMatch s'@{⟦ .(⟦ ((UTxOState.utxo (LState.utxoSt s) ∣ txins ᶜ) ∪ˡ (outs txb))
                                , _ , updateDeposits pp txb (UTxOState.deposits (LState.utxoSt s)) , _ ⟧ᵘ)
                            , govSt' , _ ⟧ˡ}
      utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ GOV-sts) aprioriMatch = begin
        filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
          ≈⟨ noGACerts txcerts (updateProposalDeposits txprop txid govActionDeposit utxoDeps) ⟩
        filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
          ≈⟨ filter-pres-≡ᵉ (updatePropDeps≡ᵉ txprop) ⟩
        filterˢ isGADeposit (dom (utxoDeps ∪⁺ proposalDepositsΔ txprop pp txb))
          ≈⟨ filter-pres-≡ᵉ dom∪⁺ ⟩
        filterˢ isGADeposit ((dom utxoDeps) ∪ dom (proposalDepositsΔ txprop pp txb))
          ≈⟨ filter-hom-∪ ⟩
        filterˢ isGADeposit (dom utxoDeps) ∪ filterˢ isGADeposit (dom (proposalDepositsΔ txprop pp txb))
          ≈⟨ ∪-cong aprioriMatch (allGA-propDepsΔ txprop) ⟩
        fromList (dpMap govSt) ∪ dom (proposalDepositsΔ txprop pp txb ˢ)
          ≈⟨ ∪-cong ≡ᵉ.refl (utxo-govst-connex txprop) ⟩
        fromList (dpMap govSt) ∪ fromList (dpMap (updateGovStates (map inj₂ txprop) 0 []))
         ≈˘⟨ ∪-cong ≡ᵉ.refl (≡ᵉ.reflexive (cong fromList (dmMap-vote-invar++ txprop txvote {0}))) ⟩
        fromList (dpMap govSt) ∪ fromList (dpMap (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))
          ≈⟨ ∪-fromList-++ (dpMap govSt) (dpMap (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))⟩
        fromList (dpMap govSt ++ dpMap (updateGovStates (map inj₂ txprop ++ map inj₁ txvote) 0 []))
          ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) govSt (updateGovStates (txgov txb) 0 []))) ⟩
        fromList (dpMap (govSt ++ updateGovStates (txgov txb) 0 []))
          ≈˘⟨ ≡ᵉ.reflexive (cong fromList (updateGovStates≡ (txgov txb) 0)) ⟩
        fromList (dpMap (updateGovStates (txgov txb) 0 govSt ))
          ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ dpMap ) (STS→GovSt≡ utxosts tx-valid)) ⟩
        fromList (dpMap govSt')
          ∎
        where
        utxo-govst-connex : (props : List GovProposal)
          → dom (proposalDepositsΔ props pp txb) ≡ᵉ fromList (dpMap (updateGovStates (map inj₂ props) 0 [] ))
        utxo-govst-connex [] = dom∅
        utxo-govst-connex (p ∷ ps) = let upps = updateGovStates (map inj₂ ps) _ [] in begin
          dom (proposalDepositsΔ (p ∷ ps) pp txb)
            ≈⟨ dom∪⁺ ⟩
          dom (updateProposalDeposits ps txid govActionDeposit ∅)
            ∪ dom (❴ GovActionDeposit (txid , length ps) , govActionDeposit ❵ ˢ)
            ≈⟨ ∪-cong (utxo-govst-connex ps) dom-single≡single ⟩
          fromList (dpMap upps) ∪ fromList (dpMap [ mkAction p (length ps) ])
            ≈⟨ ∪-fromList-++ (dpMap upps)(dpMap [ mkAction p (length ps) ]) ⟩
          fromList (dpMap upps ++ dpMap [ mkAction p (length ps) ])
            ≈˘⟨ ≡ᵉ.reflexive (cong fromList (map-++ (λ (id , _) → GovActionDeposit id) upps [ mkAction p (length ps) ])) ⟩
          fromList (dpMap (upps ++ updateGovStates (map inj₂ [ p ]) (0 + length ps) []))
            ≈˘⟨ ≡ᵉ.reflexive (cong (fromList ∘ dpMap) (updateProps-++-decomp ps [ p ])) ⟩
          fromList (dpMap (updateGovStates (map inj₂ (ps ++ [ p ])) 0 []))
            ≈⟨ permuteProps (ps ++ [ p ]) (p ∷ ps) 0 [] (↭-sym swap-head) ⟩
          fromList (dpMap (updateGovStates (map inj₂ (p ∷ ps)) 0 []))
            ∎


    LEDGER-govDepsMatch utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (<″-offset fst)) , _ , GOV-sts)) aprioriMatch


  module EPOCH-PROPS (tx : Tx) (Γ : LEnv) (eΓ : NewEpochEnv) (eps : EpochState) where
    open Tx tx renaming (body to txb); open TxBody txb
    open LEnv Γ renaming (pparams to pp); open EpochState eps hiding (es); open LState ls
    open GovActionState; open RatifyState fut using (removed)

    -- GA Deposits Invariance Property for EPOCH STS --------------------------------------------------------------------
    EPOCH-govDepsMatch :
      (ratify-removed : mapˢ (GovActionDeposit ∘ proj₁) removed ⊆ mapˢ proj₁ (UTxOState.deposits utxoSt ˢ))
      (eps' : EpochState) {e : Epoch}
      → eΓ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      → govDepsMatch (EpochState.ls eps) → govDepsMatch (EpochState.ls eps')

    EPOCH-govDepsMatch ratify-removed ⟦ acnt' , ls' ,  es , fut' ⟧ᵉ'
      (EPOCH x) govDepsMatch-ls =
      ≡ᵉ.trans (filter-pres-≡ᵉ $ dom-cong (res-comp-cong (≡ᵉ.sym χ'≡χ))) (main-invariance-lemma govDepsMatch-ls)
      where

      -- the combinator used in the EPOCH rule
      χ : (DepositPurpose ⇀ Coin) → ℙ DepositPurpose
      χ deps = mapˢ (proj₁ ∘ proj₂)
        (flip concatMapˢ removed  (λ (gaid , gast) → mapˢ (returnAddr gast ,_) ((deps ∣ ❴ GovActionDeposit gaid ❵) ˢ)))

      -- a simpler combinator that suffices here;
      χ' : ℙ DepositPurpose
      χ' = mapˢ (GovActionDeposit ∘ proj₁) removed
      -- Below we prove χ and χ' are essentially equivalent.

      P : GovActionID × GovActionState → Set
      P = λ u → proj₁ u ∉ mapˢ proj₁ removed

      Pᵇ : GovActionID × GovActionState → Bool
      Pᵇ = λ u → does ¿ P u ¿

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
                   , to ∈-concatMapˢ((gaid , gast) , gaidgast∈rem , addr-dp-c-∈map)
                   )
          where
          dp-c-∈-utxoDep : (GovActionDeposit gaid , c) ∈  (utxoDeps ˢ)
          dp-c-∈-utxoDep = subst (λ x₂ → (x₂ , c) ∈ (utxoDeps ˢ))
                                 (trans (sym a≡dp) a≡GAgaid) dpc∈utxoDeps

          addr-dp-c-∈map : (returnAddr gast , GovActionDeposit gaid , c)
                           ∈ mapˢ (returnAddr gast ,_) ( (utxoDeps ∣ ❴ GovActionDeposit gaid ❵)ˢ )
          addr-dp-c-∈map =
            to ∈-map $ (GovActionDeposit gaid , c)
                     , (×-≡,≡→≡ (refl , refl) , res-singleton⁺{m = utxoDeps} dp-c-∈-utxoDep)
        χ⊆χ' : χ utxoDeps ⊆ χ'
        χ⊆χ' {a} x with (from ∈-map x)
        ... | ((rwa , dp , c) , a≡dp , rwa-dp-c∈) with (from ∈-concatMapˢ rwa-dp-c∈)
        ... | ((gaid , gast) , gaid-gast-∈-removed , rwa-dp-c-∈-map) with (from ∈-map rwa-dp-c-∈-map)
        ... | ((dp' , _) , q≡ , q∈) = to ∈-map ((gaid , gast) , a≡GA , gaid-gast-∈-removed)
          where
          a≡GA : a ≡ GovActionDeposit gaid
          a≡GA = let open ≡-Reasoning in begin
            a                       ≡⟨ a≡dp ⟩
            dp                      ≡⟨ cong (proj₁ ∘ proj₂) q≡ ⟩
            dp'                     ≡⟨ cong proj₁ $ proj₂ (res-singleton''{m = utxoDeps} $ q∈) ⟩
            GovActionDeposit gaid   ∎

      main-invariance-lemma :
          filterˢ isGADeposit (dom utxoDeps) ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) govSt)
          ----------------------------------------------------------------------------------------------------------
        → filterˢ isGADeposit (dom utxoDeps') ≡ᵉ fromList (map (λ (id , _) → GovActionDeposit id) (filterᵇ Pᵇ govSt))

      main-invariance-lemma (fst , snd) = ⇛ , ⇚
        where
        ⇛ : filterˢ isGADeposit (dom utxoDeps')
            ⊆ fromList (map (λ (id , _) → GovActionDeposit id) (filterᵇ Pᵇ govSt))
        ⇛ {a} h with from ∈-filter h
        ... | (aGADep , a∈) with ∈-map⁻ (λ (id , _) → GovActionDeposit id)
                                        $ from ∈-fromList (fst $ to ∈-filter (aGADep , res-comp-domᵐ a∈))
        ... | ((tid , gast) , tidb∈govSt , refl) =
          to ∈-fromList $ ∈ˡ-map-filter⁺{P? = λ u → ¿ P u ¿}
                          ((tid , gast) , refl , tidb∈govSt , (res-comp-dom a∈) ∘ ∈-map⁺-∘)

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

    CHAIN-govDepsMatch rrm (CHAIN (NEWEPOCH-New _ eps₁→eps₂) ledgers) =
      (RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers)
      ∘ (EPOCH-PROPS.EPOCH-govDepsMatch tx Γ _ _ rrm _ eps₁→eps₂)

    CHAIN-govDepsMatch _ (CHAIN (NEWEPOCH-Not-New _) ledgers) =
      RTC-preserves-inv (λ {c} {s} {sig} → LEDGER-govDepsMatch sig c s) ledgers
