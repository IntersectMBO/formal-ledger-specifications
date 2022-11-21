{-# OPTIONS --safe #-}

open import Prelude

import Data.List.Relation.Unary.All as All
import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List.Membership.Propositional
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Disjoint.Propositional
open import Data.List.Relation.Binary.Permutation.Propositional
open import Data.List.Relation.Unary.AllPairs
open import Data.List.Relation.Unary.Any
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import Function.Related using (toRelated; fromRelated)
open import Interface.DecEq

module Data.List.Ext.Properties where

-- TODO: stdlib?
_×-cong_ : ∀ {a b c d} {A : Set a} {B : Set b} {C : Set c} {D : Set d} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A × C) R.∼[ k ] (B × D)
h ×-cong h' = fromRelated (toRelated h M.×-cong toRelated h')
  where open import Data.Product.Function.NonDependent.Propositional as M

_⊎-cong_ : ∀ {a b c d} {A : Set a} {B : Set b} {C : Set c} {D : Set d} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A ⊎ C) R.∼[ k ] (B ⊎ D)
h ⊎-cong h' = fromRelated (toRelated h M.⊎-cong toRelated h')
  where open import Data.Sum.Function.Propositional as M

module _ {a} {A : Set a} ⦃ _ : DecEq A ⦄ where
  open import Data.List.Relation.Unary.Unique.DecPropositional.Properties {A = A} _≟_

  deduplicate≡ : List A → List A
  deduplicate≡ = deduplicate _≟_

  disj-on-dedup : ∀ {l l'} → Disjoint l l' → Disjoint (deduplicate≡ l) (deduplicate≡ l')
  disj-on-dedup = _∘ Data.Product.map (∈-deduplicate⁻ _≟_ _) (∈-deduplicate⁻ _≟_ _)

  ∈-dedup : ∀ {l a} → a ∈ l ⇔ a ∈ deduplicate≡ l
  ∈-dedup = mk⇔ (∈-deduplicate⁺ _≟_) (∈-deduplicate⁻ _≟_ _)

  -- TODO: stdlib?
  dedup-++-↭ : {l l' : List A} → Disjoint l l' → deduplicate≡ (l ++ l') ↭ deduplicate≡ l ++ deduplicate≡ l'
  dedup-++-↭ {l = l} {l'} disj = let dedup-unique = λ {l} → deduplicate-! l in ∼bag⇒↭ $
    unique∧set⇒bag dedup-unique (++⁺ dedup-unique dedup-unique (disj-on-dedup disj)) λ {a} → toRelated $
      a ∈ deduplicate≡ (l ++ l')                 ∼⟨ R.SK-sym ∈-dedup ⟩
      a ∈ l ++ l'                                ∼⟨ helper ⟩
      (a ∈ l ⊎ a ∈ l')                           ∼⟨ ∈-dedup ⊎-cong ∈-dedup ⟩
      (a ∈ deduplicate≡ l ⊎ a ∈ deduplicate≡ l') ∼⟨ R.SK-sym helper ⟩
      a ∈ deduplicate≡ l ++ deduplicate≡ l'       ∎
    where open R.EquationalReasoning
          helper : ∀ {l l' a} → a ∈ l ++ l' ⇔ (a ∈ l ⊎ a ∈ l')
          helper = mk⇔ (∈-++⁻ _) Data.Sum.[ ∈-++⁺ˡ , ∈-++⁺ʳ _ ]

-- TODO: stdlib?
AllPairs⇒≡∨R∨Rᵒᵖ : ∀ {ℓ ℓ'} {A : Set ℓ} {R : A → A → Set ℓ'} {a b l}
                 → AllPairs R l → a ∈ˡ l → b ∈ˡ l → a ≡ b ⊎ R a b ⊎ R b a
AllPairs⇒≡∨R∨Rᵒᵖ [] = λ ()
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (here refl) = inj₁ refl
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (there b∈l) = inj₂ (inj₁ (All.lookup x b∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (here refl) = inj₂ (inj₂ (All.lookup x a∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (there b∈l) = AllPairs⇒≡∨R∨Rᵒᵖ h a∈l b∈l
