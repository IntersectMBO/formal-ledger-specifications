{-# OPTIONS --safe #-}

open import Ledger.Types.GovStructure
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Gov.Properties
  (txs : _) (open TransactionStructure txs using (govStructure))
  (open GovStructure govStructure hiding (epoch)) where

open import Ledger.Prelude hiding (Any; any?)

open import Axiom.Set.Properties

open import Ledger.Enact govStructure
open import Ledger.Conway.Conformance.Gov txs
open import Ledger.GovernanceActions govStructure hiding (yes; no)
open import Ledger.Ratify txs

import Data.List.Membership.Propositional as P
open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Any hiding (map)
open import Data.List.Relation.Unary.Unique.Propositional
open import Data.Maybe.Properties
open import Relation.Binary using (IsEquivalence)

open import Tactic.Defaults
open import Tactic.GenError

private module L where
  open import Ledger.Gov txs public
  open import Ledger.Gov.Properties txs public

open Equivalence
open GovActionState
open Inverse

private
  lookupActionId : (pparams : PParams) (role : GovRole) (aid : GovActionID) (s : GovState) →
                   Dec (Any (λ (aid' , ast) → aid ≡ aid' × canVote pparams (action ast) role) s)
  lookupActionId pparams role aid = any? λ _ → ¿ _ ¿

  isUpdateCommittee : (a : GovAction) → Dec (∃[ new ] ∃[ rem ] ∃[ q ] a ≡ UpdateCommittee new rem q)
  isUpdateCommittee NoConfidence                = no λ()
  isUpdateCommittee (UpdateCommittee new rem q) = yes (new , rem , q , refl)
  isUpdateCommittee (NewConstitution x x₁)      = no λ()
  isUpdateCommittee (TriggerHF x)               = no λ()
  isUpdateCommittee (ChangePParams x)           = no λ()
  isUpdateCommittee (TreasuryWdrl x)            = no λ()
  isUpdateCommittee Info                        = no λ()

  instance
    needsPolicy₁ : {a : GovAction} → (∃[ u ] a ≡ ChangePParams u) ⁇
    needsPolicy₁ {NoConfidence}              = ⁇ no λ()
    needsPolicy₁ {UpdateCommittee new rem q} = ⁇ no λ()
    needsPolicy₁ {NewConstitution x x₁}      = ⁇ no λ()
    needsPolicy₁ {TriggerHF x}               = ⁇ no λ()
    needsPolicy₁ {ChangePParams x}           = ⁇ yes (-, refl)
    needsPolicy₁ {TreasuryWdrl x}            = ⁇ no λ()
    needsPolicy₁ {Info}                      = ⁇ no λ()

    needsPolicy₂ : {a : GovAction} → (∃[ w ] a ≡ TreasuryWdrl w) ⁇
    needsPolicy₂ {NoConfidence}              = ⁇ no λ()
    needsPolicy₂ {UpdateCommittee new rem q} = ⁇ no λ()
    needsPolicy₂ {NewConstitution x x₁}      = ⁇ no λ()
    needsPolicy₂ {TriggerHF x}               = ⁇ no λ()
    needsPolicy₂ {ChangePParams x}           = ⁇ no λ()
    needsPolicy₂ {TreasuryWdrl x}            = ⁇ yes (-, refl)
    needsPolicy₂ {Info}                      = ⁇ no λ()

  hasPrev : ∀ x v → Dec (∃[ v' ] x .action ≡ TriggerHF v' × pvCanFollow v' v)
  hasPrev record { action = NoConfidence }            v = no λ ()
  hasPrev record { action = (UpdateCommittee _ _ _) } v = no λ ()
  hasPrev record { action = (NewConstitution _ _) }   v = no λ ()
  hasPrev record { action = (TriggerHF v') }          v = case pvCanFollow? {v'} {v} of λ where
    (yes p) → yes (-, refl , p)
    (no ¬p) → no  (λ where (_ , refl , h) → ¬p h)
  hasPrev record { action = (ChangePParams _) }       v = no λ ()
  hasPrev record { action = (TreasuryWdrl _) }        v = no λ ()
  hasPrev record { action = Info }                    v = no λ ()

opaque
  unfolding isRegistered

  isRegistered? : ∀ Γ v → Dec (isRegistered Γ v)
  isRegistered? _ (CC   , _) = ¿ _ ∈ _ ¿
  isRegistered? _ (DRep , _) = ¿ _ ∈ _ ¿
  isRegistered? _ (SPO  , _) = ¿ _ ∈ _ ¿

instance
  Computational-GOV' : Computational _⊢_⇀⦇_,GOV'⦈_ String
  Computational-GOV' = record {Go} where
    module Go Γ s where
      open GovEnv (proj₁ Γ)
      k = proj₂ Γ

      module GoVote sig where
        open GovVote sig

        computeProof = case lookupActionId pparams (proj₁ voter) gid s ,′ isRegistered? (proj₁ Γ) voter of λ where
            (yes p , yes p') → case Any↔ .from p of λ where
              (_ , mem , refl , cV) → success (_ , GOV-Vote (∈-fromList .to mem , cV , p'))
            (yes _ , no ¬p) → failure (genErrors ¬p)
            (no ¬p , _)     → failure (genErrors ¬p)

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ inj₁ sig ,GOV'⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (GOV-Vote (mem , cV , reg))
          with lookupActionId pparams (proj₁ voter) gid s | isRegistered? (proj₁ Γ) voter
        ... | no ¬p | _ = ⊥-elim (¬p (Any↔ .to (_ , ∈-fromList .from mem , refl , cV)))
        ... | yes _ | no ¬p = ⊥-elim $ ¬p reg
        ... | yes p | yes p' with Any↔ .from p
        ... | (_ , mem , refl , cV) = refl

      module GoProp prop where
        open GovProposal prop
          renaming (action to a; deposit to d; policy to p; returnAddr to addr; prevAction to prev)
        open PParams pparams hiding (a)

        instance 
          Dec-actionWellFormed = L.actionWellFormed?
        {-# INCOHERENT Dec-actionWellFormed #-}

        H = ¿ L.actionWellFormed rewardCreds p ppolicy epoch a
            × d ≡ govActionDeposit
            × L.validHFAction prop s enactState
            × L.hasParent' enactState s a prev
            × addr .RwdAddr.net ≡ NetworkId ¿
            ,′ isUpdateCommittee a

        genErrorsWellFormed : ∀ {a} → ¬ (L.actionWellFormed rewardCreds p ppolicy epoch a) → String
        genErrorsWellFormed {NoConfidence} ¬p          = genErrors ¬p
        genErrorsWellFormed {UpdateCommittee _ _ _} ¬p = genErrors ¬p
        genErrorsWellFormed {NewConstitution _ _} ¬p   = genErrors ¬p
        genErrorsWellFormed {TriggerHF _} ¬p           = genErrors ¬p
        genErrorsWellFormed {ChangePParams _} ¬p       = genErrors ¬p
        genErrorsWellFormed {TreasuryWdrl _} ¬p        = genErrors ¬p
        genErrorsWellFormed {Info} ¬p                  = genErrors ¬p

        computeProof = case H of λ where
          (yes (wf , dep , vHFA , L.HasParent' en , goodAddr) , yes (new , rem , q , refl)) →
            case ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ of λ where
              (yes newOk) → success (_ , GOV-Propose (wf , dep , vHFA , en , goodAddr))
              (no ¬p)     → failure (genErrors ¬p)
          (yes (wf , dep , vHFA , L.HasParent' en , goodAddr) , no notNewComm) → success
            (-, GOV-Propose (wf , dep , vHFA , en , goodAddr))
          (no ¬p , _) → case dec-de-morgan ¬p of λ where
            (inj₁ q) → failure (genErrorsWellFormed q)
            (inj₂ q) → failure (genErrors q)

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ inj₂ prop ,GOV'⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (GOV-Propose (wf , dep , vHFA , en , goodAddr)) with H
        ... | (no ¬p , _) = ⊥-elim (¬p (wf , dep , vHFA , L.HasParent' en , goodAddr))
        ... | (yes (_ , _ , _ , L.HasParent' _ , _) , no notNewComm) = refl
        ... | (yes ((_ , allOk) , _ , _ , L.HasParent' _ , _) , yes (new , rem , q , refl))
          rewrite dec-yes ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ allOk .proj₂ = refl

      computeProof : (sig : GovVote ⊎ GovProposal) → _
      computeProof (inj₁ s) = GoVote.computeProof s
      computeProof (inj₂ s) = GoProp.computeProof s

      completeness : ∀ sig s' → Γ ⊢ s ⇀⦇ sig ,GOV'⦈ s' → _
      completeness (inj₁ s) = GoVote.completeness s
      completeness (inj₂ s) = GoProp.completeness s

Computational-GOV : Computational _⊢_⇀⦇_,GOV⦈_ String
Computational-GOV = it
