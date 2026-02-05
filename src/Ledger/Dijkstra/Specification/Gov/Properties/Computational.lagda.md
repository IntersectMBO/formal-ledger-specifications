---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Gov/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base
open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)

module Ledger.Dijkstra.Specification.Gov.Properties.Computational
  (txs : _) (open TransactionStructure txs using (govStructure))
  (open GovStructure govStructure hiding (epoch)) where

open import Ledger.Prelude hiding (Any; any?)

open import Axiom.Set.Properties

open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Gov.Actions govStructure hiding (yes; no)
open import Ledger.Dijkstra.Specification.Ratify govStructure

import Data.List.Membership.Propositional as P
open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Any hiding (map)
open import Data.List.Relation.Unary.Unique.Propositional
open import Data.Maybe.Properties
open import Relation.Binary using (IsEquivalence)

open import Tactic.Defaults
open import stdlib-meta.Tactic.GenError

open Equivalence
open Inverse

lookupActionId :
  (pparams  : PParams)
  (role     : GovRole)
  (aid      : GovActionID)
  (epoch    : Epoch)
  (s        : GovState)
  → Dec (Any ( λ (aid' , ast) →  aid ≡ aid'
                                 × canVote pparams (GovActionOf ast) role
                                 × ¬ (expired epoch ast) ) s)

lookupActionId pparams role aid epoch =
  let  instance _ = λ {e ga} → ⁇ (expired? e ga)
  in   any? λ _ → ¿ _ ¿


private
  isUpdateCommittee : (a : GovAction)
    → Dec (∃[ new ] ∃[ rem ] ∃[ q ] a ≡ ⟦ UpdateCommittee , (new , rem , q) ⟧ᵍᵃ)
  -- (new , rem , q) : (Credential ⇀ Epoch) × ℙ Credential × ℚ

  isUpdateCommittee ⟦ NoConfidence       , _                ⟧ᵍᵃ = no λ()
  isUpdateCommittee ⟦ UpdateCommittee    , (new , rem , q)  ⟧ᵍᵃ = yes (new , rem , q , refl)
  isUpdateCommittee ⟦ NewConstitution    , _                ⟧ᵍᵃ = no λ()
  isUpdateCommittee ⟦ TriggerHardFork    , _                ⟧ᵍᵃ = no λ()
  isUpdateCommittee ⟦ ChangePParams      , _                ⟧ᵍᵃ = no λ()
  isUpdateCommittee ⟦ TreasuryWithdrawal , _                ⟧ᵍᵃ = no λ()
  isUpdateCommittee ⟦ Info               , _                ⟧ᵍᵃ = no λ()

  hasPrev : (ast : GovActionState) (v : ProtVer)
    → Dec (∃[ v' ] (GovActionOf ast) ≡ ⟦ TriggerHardFork , v' ⟧ᵍᵃ × pvCanFollow v' v)

  hasPrev record { action = ⟦ NoConfidence        , _   ⟧ᵍᵃ} v = no λ ()
  hasPrev record { action = ⟦ UpdateCommittee     , _   ⟧ᵍᵃ} v = no λ ()
  hasPrev record { action = ⟦ NewConstitution     , _   ⟧ᵍᵃ} v = no λ ()
  hasPrev record { action = ⟦ TriggerHardFork     , v'  ⟧ᵍᵃ} v =
    case pvCanFollow? {v'} {v} of λ where
      (yes p) → yes (-, refl , p)
      (no ¬p) → no  (λ where (_ , refl , h) → ¬p h)
  hasPrev record { action = ⟦ ChangePParams       , _   ⟧ᵍᵃ} v = no λ ()
  hasPrev record { action = ⟦ TreasuryWithdrawal  , _   ⟧ᵍᵃ} v = no λ ()
  hasPrev record { action = ⟦ Info                , _   ⟧ᵍᵃ} v = no λ ()


opaque
  unfolding validHFAction isRegistered

  instance
    validHFAction? : ∀ {p : GovProposal} {s : GovState} {e : EnactState}
      → validHFAction p s e ⁇

    validHFAction?  {record { action = ⟦ NoConfidence     , _ ⟧ᵍᵃ}} = Dec-⊤
    validHFAction?  {record { action = ⟦ UpdateCommittee  , _ ⟧ᵍᵃ}} = Dec-⊤
    validHFAction?  {record { action = ⟦ NewConstitution  , _ ⟧ᵍᵃ}} = Dec-⊤
    validHFAction?  {record { action = ⟦ TriggerHardFork  , v ⟧ᵍᵃ ; prevAction = prev }}
                    {s} {record { pv = (v' , aid') }}
      with    aid' ≟ prev ×-dec pvCanFollow? {v'} {v}
           |  any? (λ (aid , x) → aid ≟ prev ×-dec hasPrev x v) s

    ... | yes p  | _       = ⁇ yes (inj₁ p)
    ... | no _   | yes p with ((aid , x) , x∈xs , (refl , v , h)) ← P.find p
                           = ⁇ yes (inj₂ (x , v , to ∈-fromList x∈xs , h))
    ... | no ¬p₁ | no ¬p₂  = ⁇ no λ  { (inj₁ x) → ¬p₁ x
                                     ; (inj₂ (s , v , (h₁ , h₂ , h₃))) → ¬p₂ $
                                       ∃∈-Any  ( (prev , s)
                                               , from ∈-fromList h₁ , refl , (v , h₂ , h₃)
                                               )
                                     }
    validHFAction? {record { action = ⟦ ChangePParams       , _ ⟧ᵍᵃ}} = Dec-⊤
    validHFAction? {record { action = ⟦ TreasuryWithdrawal  , _ ⟧ᵍᵃ}} = Dec-⊤
    validHFAction? {record { action = ⟦ Info                , _ ⟧ᵍᵃ}} = Dec-⊤

  isRegistered? : ∀ Γ v → Dec (isRegistered Γ v)
  isRegistered? _ ⟦ CC   , _ ⟧ᵍᵛ = ¿ _ ∈ _ ¿
  isRegistered? _ ⟦ DRep , _ ⟧ᵍᵛ = ¿ _ ∈ _ ¿
  isRegistered? _ ⟦ SPO  , _ ⟧ᵍᵛ = ¿ _ ∈ _ ¿

open GovVoter

instance
  Computational-GOV : Computational _⊢_⇀⦇_,GOV⦈_ String
  Computational-GOV = record {Go} where
    module Go (Γk : GovEnv × ℕ) (s : GovState) where
      Γ : GovEnv
      Γ = proj₁ Γk

      k : ℕ
      k = proj₂ Γk

      module GoVote sig where
        open GovVote sig

        computeProof = case lookupActionId (PParamsOf Γ) (gvRole voter) gid (EpochOf Γ) s ,′ isRegistered? Γ voter of λ where
            (yes p , yes p') → case Any↔ .from p of λ where
              (_ , mem , refl , cV , ¬exp) → success (_ , GOV-Vote (∈-fromList .to mem , cV , p' , ¬exp))
            (yes _ , no ¬p) → failure (genErrors ¬p)
            (no ¬p , _    ) → failure (genErrors ¬p)

        completeness : ∀ s' → (Γ , k) ⊢ s ⇀⦇ inj₁ sig ,GOV⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (GOV-Vote {ast = ast} (mem , cV , reg , ¬expired))
          with lookupActionId (PParamsOf Γ) (gvRole voter) gid (EpochOf Γ) s | isRegistered? Γ voter
        ... | no ¬p | _ = ⊥-elim (¬p (Any↔ .to (_ , ∈-fromList .from mem , refl , cV , ¬expired)))
        ... | yes _ | no ¬p = ⊥-elim $ ¬p reg
        ... | yes p | yes q with Any↔ .from p
        ... | ((_ , ast') , mem , refl , cV) = refl

      module GoProp prop where
        open PParams (PParamsOf Γ)

        instance
          Dec-actionWellFormed = actionWellFormed?
          Dec-actionValid = actionValid?
        {-# INCOHERENT Dec-actionWellFormed #-}
        {-# INCOHERENT Dec-actionValid #-}

        H = ¿ actionWellFormed (GovActionOf prop)
            × actionValid (RewardCredentialsOf Γ) (PolicyOf prop) (GovEnv.ppolicy Γ) (EpochOf Γ) (GovActionOf prop)
            × (DepositOf prop) ≡ govActionDeposit
            × validHFAction prop s (EnactStateOf Γ)
            × hasParent' (EnactStateOf Γ) s ((GovActionOf prop) .gaType) (GovProposal.prevAction prop)
            × NetworkIdOf (RewardAddressOf prop) ≡ NetworkId
            × CredentialOf (RewardAddressOf prop) ∈ (RewardCredentialsOf Γ) ¿
            ,′ isUpdateCommittee (GovActionOf prop)

        pattern gov-propose  {zz} xx = GOV-Propose {_} {_} {_} {_} {_} {_} {_} {_} {_} {zz} xx
        -- The inferred variables in both cases below are
        -- { Γ } { RewardAddressOf prop } { GovActionOf prop } { AnchorOf prop } { PolicyOf prop } { DepositOf prop } { (GovProposal.prevAction prop) } { s } { k }

        computeProof = case H of λ where
          (yes (wf , av , dep , vHFA , HasParent' en , goodAddr , regReturn) , yes (new , rem , q , refl)) →
            case ¿ ∀[ e ∈ range new ] (EpochOf Γ) < e × dom new ∩ rem ≡ᵉ ∅ ¿ of λ where
              (yes newOk) → success (-, gov-propose {(new , rem , q)} (wf , av , dep , vHFA , en , goodAddr , regReturn))
              (no ¬p)     → failure (genErrors ¬p)
          (yes (wf , av , dep , vHFA , HasParent' en , goodAddr , returnReg) , no notNewComm) → success
            (-, gov-propose {(GovActionOf prop) .gaData} (wf , av , dep , vHFA , en , goodAddr , returnReg))
          (no ¬p , _) → failure (genErrors ¬p)

        completeness : ∀ s' → (Γ , k) ⊢ s ⇀⦇ inj₂ prop ,GOV⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (GOV-Propose (wf , av , dep , vHFA , en , goodAddr)) with H
        ... | (no ¬p , _) = ⊥-elim (¬p (wf , av , dep , vHFA , HasParent' en , goodAddr))
        ... | (yes (_ , _ , _ , _ , HasParent' _ , _) , no notNewComm) = refl
        ... | (yes (_ , (_ , (av₁ , av₂)) , _ , _ , HasParent' _ , _) , yes (new , rem , q , refl))
          rewrite dec-yes ¿ ∀[ e ∈ range new ] (EpochOf Γ) < e × dom new ∩ rem ≡ᵉ ∅ ¿ (λ { x → av₁ x , av₂ }) .proj₂ = refl

      computeProof : (sig : GovVote ⊎ GovProposal) → _
      computeProof (inj₁ s) = GoVote.computeProof s
      computeProof (inj₂ s) = GoProp.computeProof s

      completeness : ∀ sig s' → (Γ , k) ⊢ s ⇀⦇ sig ,GOV⦈ s' → _
      completeness (inj₁ s) = GoVote.completeness s
      completeness (inj₂ s) = GoProp.completeness s

Computational-GOVS : Computational _⊢_⇀⦇_,GOVS⦈_ String
Computational-GOVS = it

allEnactable-singleton : {aid : GovActionID} {s : GovActionState} {es : EnactState}
  → getHash (GovActionState.prevAction s) ≡ getHashES es (GovActionTypeOf s)
  → allEnactable es [ (aid , s) ]
allEnactable-singleton {aid} {s} {es} eq = helper All.∷ All.[]
  where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence th)

    helper : enactable es (getAidPairsList [ (aid , s) ]) (aid , s)
    helper with getHashES es (GovActionTypeOf s) | getHash (GovActionState.prevAction s)
    ... | just x | just x' with refl <- just-injective eq =
      [ (aid , x) ] , proj₁ ≡ᵉ.refl , All.[] ∷ [] , inj₁ (refl , refl)
    ... | just x | nothing = case eq of λ ()
    ... | nothing | _ = _
```
