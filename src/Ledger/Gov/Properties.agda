{-# OPTIONS --safe #-}

open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Unary.Any

open import Ledger.Prelude hiding (Any; any?)
open import Ledger.GovStructure

module Ledger.Gov.Properties (gs : _) (open GovStructure gs hiding (epoch)) where

open import Ledger.Gov gs
open import Ledger.GovernanceActions gs hiding (yes; no)

open Computational ⦃...⦄
open Equivalence
open GovActionState
open Inverse

private
  lookupActionId : (pparams : PParams) (role : GovRole) (aid : GovActionID) (s : GovState) →
                   Dec (Any (λ (aid' , ast) → aid ≡ aid' × canVote pparams (action ast) role) s)
  lookupActionId pparams role aid = any? λ _ → ¿ _ ¿

  isNewCommittee : (a : GovAction) → Dec (∃[ new ] ∃[ rem ] ∃[ q ] a ≡ NewCommittee new rem q)
  isNewCommittee NoConfidence             = no λ()
  isNewCommittee (NewCommittee new rem q) = yes (new , rem , q , refl)
  isNewCommittee (NewConstitution x x₁)   = no λ()
  isNewCommittee (TriggerHF x)            = no λ()
  isNewCommittee (ChangePParams x)        = no λ()
  isNewCommittee (TreasuryWdrl x)         = no λ()
  isNewCommittee Info                     = no λ()

open import Interface.HasEmptySet th
instance
  _ : HasEmptySet Credential
  _ = record { ∅ = ∅ˢ }

  Computational-GOV' : Computational _⊢_⇀⦇_,GOV'⦈_
  Computational-GOV' .computeProof (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₁ record { gid = aid ; role = role }) =
    case lookupActionId pparams role aid s of λ where
      (yes p) →
        case Any↔ .from p of λ where
          (_ , mem , refl , cV) → just (_ , GOV-Vote (∈-fromList .to mem) cV)
      (no _)  → nothing
  Computational-GOV' .computeProof (⟦ _ , epoch , pparams ⟧ᵗ , k) s (inj₂ record { action = a ; deposit = d }) =
    case ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govActionDeposit ¿
         ,′ isNewCommittee a of λ where
      (yes (wf , dep) , yes (new , rem , q , refl)) →
        case ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ of λ where
          (yes newOk) → just (_ , GOV-Propose wf dep λ where refl → newOk)
          (no _)      → nothing
      (yes (wf , dep) , no notNewComm) → just (_ , GOV-Propose wf dep λ isNewComm → ⊥-elim (notNewComm (_ , _ , _ , isNewComm)))
      _ → nothing
  Computational-GOV' .completeness (⟦ _ , _ , pparams ⟧ᵗ , k) s (inj₁ record { gid = aid ; role = role }) s' (GOV-Vote mem cV)
    with lookupActionId pparams role aid s
  ... | no ¬p = ⊥-elim (¬p (Any↔ .to (_ , ∈-fromList .from mem , refl , cV)))
  ... | yes p with Any↔ .from p
  ...   | (_ , mem , refl , cV) = refl
  Computational-GOV' .completeness (⟦ _ , epoch , pparams ⟧ᵗ , k) s (inj₂ record { action = a ; deposit = d }) s' (GOV-Propose wf dep newOk)
    with ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govActionDeposit ¿ | isNewCommittee a
  ... | no ¬p | _ = ⊥-elim (¬p (wf , dep))
  ... | yes _ | no notNewComm = refl
  ... | yes _ | yes (new , rem , q , refl)
    rewrite dec-yes ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ (newOk refl) .proj₂ = refl

Computational-GOV : Computational _⊢_⇀⦇_,GOV⦈_
Computational-GOV = it
