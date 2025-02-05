{-# OPTIONS --safe #-}

open import Ledger.Types.GovStructure
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Gov (txs : _) (open TransactionStructure txs hiding (epoch)) where

open import Ledger.Prelude hiding (any?; Any; all?; All; Rel; lookup; ∈-filter)

open import Axiom.Set.Properties th using (∃-sublist-⇔)

open import Ledger.GovernanceActions govStructure using (Vote)
open import Ledger.Enact govStructure
open import Ledger.Ratify txs hiding (vote)
open import Ledger.Conway.Conformance.Certs govStructure
import Ledger.Gov txs as L

open import Data.List.Ext using (subpermutations; sublists)
open import Data.List.Ext.Properties2
open import Data.List.Membership.Propositional.Properties using (Any↔; ∈-filter⁻; ∈-filter⁺)
open import Data.List.Relation.Binary.Subset.Propositional using () renaming (_⊆_ to _⊆ˡ_)
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Any using (any?; Any)
open import Data.List.Relation.Unary.Unique.DecPropositional using (unique?)
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.Relation.Nullary.Decidable.Ext using (map′⇔)
open import Function.Related.Propositional using (↔⇒)

open GovActionState

GovState : Type

GovState = List (GovActionID × GovActionState)

record GovEnv : Type where
  constructor ⟦_,_,_,_,_,_,_⟧ᵍ
  field

    txid        : TxId
    epoch       : Epoch
    pparams     : PParams
    ppolicy     : Maybe ScriptHash
    enactState  : EnactState
    certState   : CertState
    rewardCreds : ℙ Credential

private variable
  Γ : GovEnv
  s s' : GovState
  aid : GovActionID
  voter : Voter
  vote : GovVote
  v : Vote
  d : Coin
  addr : RwdAddr
  a : GovAction
  prev : NeedsHash a
  k : ℕ
  p : Maybe ScriptHash

open GState
open PState

opaque
  isRegistered : GovEnv → Voter → Type
  isRegistered ⟦ _ , _ , _ , _ , _ , ⟦ _ , pState , gState ⟧ᶜˢ , _ ⟧ᵍ (r , c) = case r of λ where
    CC    → just c ∈ range (gState .ccHotKeys)
    DRep  → c ∈ dom (gState .dreps)
    SPO   → c ∈ mapˢ KeyHashObj (dom (pState .pools))

data _⊢_⇀⦇_,GOV'⦈_  : GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → GovState → Type where

  GOV-Vote : ∀ {x ast} → let
      open GovEnv Γ
      vote = record { gid = aid ; voter = voter ; vote = v ; anchor = x }
    in
    ∙ (aid , ast) ∈ fromList s
    ∙ canVote pparams (action ast) (proj₁ voter)
    ∙ isRegistered Γ voter
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₁ vote ,GOV'⦈ L.addVote s aid voter v

  GOV-Propose : ∀ {x} → let
      open GovEnv Γ; open PParams pparams hiding (a)
      prop = record { returnAddr = addr ; action = a ; anchor = x
                    ; policy = p ; deposit = d ; prevAction = prev }
      s' = L.addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a prev
    in
    ∙ L.actionWellFormed rewardCreds p ppolicy epoch a
    ∙ d ≡ govActionDeposit
    ∙ L.validHFAction prop s enactState
    ∙ L.hasParent enactState s a prev
    ∙ addr .RwdAddr.net ≡ NetworkId
      ───────────────────────────────────────
      (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV'⦈ s'

_⊢_⇀⦇_,GOV⦈_   : GovEnv → GovState → List (GovVote ⊎ GovProposal) → GovState → Type
_⊢_⇀⦇_,GOV⦈_ = ReflexiveTransitiveClosureᵢ {sts = _⊢_⇀⦇_,GOV'⦈_}
