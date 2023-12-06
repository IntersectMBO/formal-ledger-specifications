{-# OPTIONS --safe #-}

import Data.List.Membership.Propositional as P
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

  hasPrev : ∀ x v → Dec (∃[ v' ] x .action ≡ TriggerHF v' × pvCanFollow v' v)
  hasPrev record { action = NoConfidence }          v = no λ ()
  hasPrev record { action = (NewCommittee _ _ _) }  v = no λ ()
  hasPrev record { action = (NewConstitution _ _) } v = no λ ()
  hasPrev record { action = (TriggerHF v') }        v = case pvCanFollow? {v'} {v} of λ where
    (yes p) → yes (-, refl , p)
    (no ¬p) → no  (λ where (_ , refl , h) → ¬p h)
  hasPrev record { action = (ChangePParams _) }     v = no λ ()
  hasPrev record { action = (TreasuryWdrl _) }      v = no λ ()
  hasPrev record { action = Info }                  v = no λ ()

  instance
    validHFAction? : ∀ {p s e} → validHFAction p s e ⁇
    validHFAction? {record { action = NoConfidence }} = Dec-⊤
    validHFAction? {record { action = NewCommittee _ _ _ }} = Dec-⊤
    validHFAction? {record { action = NewConstitution _ _ }} = Dec-⊤
    validHFAction? {record { action = TriggerHF v ; prevAction = prev }} {s} {record { pv = (v' , aid') }}
      with aid' ≟ prev ×-dec pvCanFollow? {v'} {v} | any? (λ (aid , x) → aid ≟ prev ×-dec hasPrev x v) s
    ... | yes p | _ = ⁇ yes (inj₁ p)
    ... | no _ | yes p with ((aid , x) , x∈xs , (refl , v , h)) ← P.find p = ⁇ yes (inj₂
      (x , v , to ∈-fromList x∈xs , h))
    ... | no ¬p₁ | no ¬p₂ = ⁇ no λ
      { (inj₁ x) → ¬p₁ x
      ; (inj₂ (s , v , (h₁ , h₂ , h₃))) → ¬p₂ $
        ∃∈-Any ((prev , s) , (from ∈-fromList h₁ , refl , (v , h₂ , h₃))) }
    validHFAction? {record { action = ChangePParams _ }} = Dec-⊤
    validHFAction? {record { action = TreasuryWdrl _ }} = Dec-⊤
    validHFAction? {record { action = Info }} = Dec-⊤

instance
  Computational-GOV' : Computational _⊢_⇀⦇_,GOV'⦈_
  Computational-GOV' .computeProof (⟦ _ , _ , pparams , _ ⟧ᵍ , k) s (inj₁ record { gid = aid ; role = role }) =
    case lookupActionId pparams role aid s of λ where
      (yes p) →
        case Any↔ .from p of λ where
          (_ , mem , refl , cV) → just (_ , GOV-Vote (∈-fromList .to mem) cV)
      (no _)  → nothing
  Computational-GOV' .computeProof (⟦ _ , epoch , pparams , e ⟧ᵍ , k) s (inj₂ prop@(record { action = a ; deposit = d })) =
    case ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govActionDeposit × validHFAction prop s e ¿
         ,′ isNewCommittee a of λ where
      (yes (wf , dep , vHFA) , yes (new , rem , q , refl)) →
        case ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ of λ where
          (yes newOk) → just (_ , GOV-Propose wf dep (λ where refl → newOk) vHFA)
          (no _)      → nothing
      (yes (wf , dep , vHFA) , no notNewComm) → just (_ , GOV-Propose wf dep (λ isNewComm → ⊥-elim (notNewComm (_ , _ , _ , isNewComm))) vHFA)
      _ → nothing
  Computational-GOV' .completeness (⟦ _ , _ , pparams , _ ⟧ᵍ , k) s (inj₁ record { gid = aid ; role = role }) s' (GOV-Vote mem cV)
    with lookupActionId pparams role aid s
  ... | no ¬p = ⊥-elim (¬p (Any↔ .to (_ , ∈-fromList .from mem , refl , cV)))
  ... | yes p with Any↔ .from p
  ...   | (_ , mem , refl , cV) = refl
  Computational-GOV' .completeness (⟦ _ , epoch , pparams , e ⟧ᵍ , k) s (inj₂ prop@(record { action = a ; deposit = d })) s' (GOV-Propose wf dep newOk vHFA)
    with ¿ actionWellFormed a ≡ true × d ≡ pparams .PParams.govActionDeposit × validHFAction prop s e ¿ | isNewCommittee a
  ... | no ¬p | _ = ⊥-elim (¬p (wf , dep , vHFA))
  ... | yes _ | no notNewComm = refl
  ... | yes _ | yes (new , rem , q , refl)
   rewrite dec-yes ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ (newOk refl) .proj₂ = refl

Computational-GOV : Computational _⊢_⇀⦇_,GOV⦈_
Computational-GOV = it
