{-# OPTIONS --safe #-}

import Data.List.Membership.Propositional as P
open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Unary.Any hiding (map)

open import Ledger.Prelude hiding (Any; any?)
open import Ledger.Types.GovStructure
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Gov.Properties
  (txs : _) (open TransactionStructure txs using (govStructure))
  (open GovStructure govStructure hiding (epoch)) where

open import Ledger.Gov txs
open import Ledger.GovernanceActions govStructure hiding (yes; no)
open import Ledger.Ratify txs

open import Tactic.Defaults
open import Tactic.GenError

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

  instance
    needsPolicy₁ : {a : GovAction} → (∃[ u ] a ≡ ChangePParams u) ⁇
    needsPolicy₁ {NoConfidence}           = ⁇ no λ()
    needsPolicy₁ {NewCommittee new rem q} = ⁇ no λ()
    needsPolicy₁ {NewConstitution x x₁}   = ⁇ no λ()
    needsPolicy₁ {TriggerHF x}            = ⁇ no λ()
    needsPolicy₁ {ChangePParams x}        = ⁇ yes (-, refl)
    needsPolicy₁ {TreasuryWdrl x}         = ⁇ no λ()
    needsPolicy₁ {Info}                   = ⁇ no λ()

    needsPolicy₂ : {a : GovAction} → (∃[ w ] a ≡ TreasuryWdrl w) ⁇
    needsPolicy₂ {NoConfidence}           = ⁇ no λ()
    needsPolicy₂ {NewCommittee new rem q} = ⁇ no λ()
    needsPolicy₂ {NewConstitution x x₁}   = ⁇ no λ()
    needsPolicy₂ {TriggerHF x}            = ⁇ no λ()
    needsPolicy₂ {ChangePParams x}        = ⁇ no λ()
    needsPolicy₂ {TreasuryWdrl x}         = ⁇ yes (-, refl)
    needsPolicy₂ {Info}                   = ⁇ no λ()

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
  Computational-GOV' : Computational _⊢_⇀⦇_,GOV'⦈_ String
  Computational-GOV' = record {Go} where
    module Go Γ s where
      open GovEnv (proj₁ Γ)
      k = proj₂ Γ

      module GoVote sig where
        open GovVote sig

        computeProof = case lookupActionId pparams (proj₁ voter) gid s of λ where
            (yes p) → case Any↔ .from p of λ where
              (_ , mem , refl , cV) → success (_ , GOV-Vote (∈-fromList .to mem , cV))
            (no ¬p)  → failure (genErrors ¬p)

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ inj₁ sig ,GOV'⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (GOV-Vote (mem , cV)) with lookupActionId pparams (proj₁ voter) gid s
        ... | no ¬p = ⊥-elim (¬p (Any↔ .to (_ , ∈-fromList .from mem , refl , cV)))
        ... | yes p with Any↔ .from p
        ... | (_ , mem , refl , cV) = refl

      module GoProp prop where
        open GovProposal prop
          renaming (action to a; deposit to d; policy to p; returnAddr to addr; prevAction to prev)
        open PParams pparams hiding (a)

        instance _ = actionWellFormed?

        H = ¿ actionWellFormed a
            × d ≡ govActionDeposit
            × validHFAction prop s enactState
            × (∃[ u ] a ≡ ChangePParams u ⊎ ∃[ w ] a ≡ TreasuryWdrl w → p ≡ ppolicy)
            × allEnactable' enactState (addAction s (govActionLifetime +ᵉ epoch) (txid , k) addr a prev) ¿
            ,′ isNewCommittee a

        computeProof = case H of λ where
          (yes (wf , dep , vHFA , pol , AllEnactable' en) , yes (new , rem , q , refl)) →
            case ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ of λ where
              (yes newOk) → success (_ , GOV-Propose (wf , dep , pol , (λ where refl → newOk) , vHFA , en))
              (no ¬p)     → failure (genErrors ¬p)
          (yes (wf , dep , vHFA , pol , AllEnactable' en) , no notNewComm) → success
            (-, GOV-Propose (wf , dep , pol , (λ isNewComm → ⊥-elim (notNewComm (-, -, -, isNewComm))) , vHFA , en))
          (no ¬p , _) → failure (genErrors ¬p)

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ inj₂ prop ,GOV'⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (GOV-Propose (wf , dep , pol , newOk , vHFA , en)) with H
        ... | (no ¬p , _) = ⊥-elim (¬p (wf , dep , vHFA , pol , AllEnactable' en))
        ... | (yes (_ , _ , _ , _ , AllEnactable' _) , no notNewComm) = refl
        ... | (yes (_ , _ , _ , _ , AllEnactable' _) , yes (new , rem , q , refl))
          rewrite dec-yes ¿ ∀[ e ∈ range new ] epoch < e × dom new ∩ rem ≡ᵉ ∅ ¿ (newOk refl) .proj₂ = refl

      computeProof : (sig : GovVote ⊎ GovProposal) → _
      computeProof (inj₁ s) = GoVote.computeProof s
      computeProof (inj₂ s) = GoProp.computeProof s

      completeness : ∀ sig s' → Γ ⊢ s ⇀⦇ sig ,GOV'⦈ s' → _
      completeness (inj₁ s) = GoVote.completeness s
      completeness (inj₂ s) = GoProp.completeness s

Computational-GOV : Computational _⊢_⇀⦇_,GOV⦈_ (⊥ ⊎ String)
Computational-GOV = it
