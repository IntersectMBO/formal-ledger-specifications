module Ledger.ProductAlgebraProof where

open import Ledger.Script
open import Ledger.Prelude
open import Data.Nat.Properties
open import Data.Product.Algebra
open import Data.Product.Properties
open import Algebra

open PlutusStructure

open import Data.Product

prodAdd : {X : Set} → (X → X → X) → (X × X) → (X × X) → (X × X)
prodAdd f (a , b) (c , d) = f a c , f b d

addProdAssoc : {X : Set} → (ε : X) → (f : (X → X → X)) →  Algebra.Associative _≡_ f
                                                          →  Algebra.Associative _≡_ (prodAdd f)
addProdAssoc ε₁ f assoc (a , b) (c , d) (e , f') rewrite assoc a c e | assoc b d f' = refl

addProdIdentityˡ : {X : Set} → (ε : X) → (f : (X → X → X)) → Algebra.LeftIdentity _≡_ ε f
                                                           → Algebra.LeftIdentity _≡_ (ε , ε) (prodAdd f)
addProdIdentityˡ ε₁ f idˡ (a , b) rewrite idˡ a | idˡ b = refl

addProdIdentityʳ : {X : Set} → (ε : X) → (f : (X → X → X)) → Algebra.RightIdentity _≡_ ε f
                                                           → Algebra.RightIdentity _≡_ (ε , ε) (prodAdd f)
addProdIdentityʳ ε₁ f idʳ (a , b) rewrite idʳ a | idʳ b = refl

addProdIdentity : {X : Set} → (ε : X) → (f : (X → X → X)) → Algebra.Identity _≡_ ε f
                                                          → Algebra.Identity _≡_ (ε , ε) (prodAdd f)
addProdIdentity ε₁ f (idˡ , idʳ) = addProdIdentityˡ ε₁ f idˡ , addProdIdentityʳ ε₁ f idʳ

prodAddIsMonoid : {X : Set} → (ε : X) → (f : (X → X → X)) →  IsMonoid _≡_ f ε
                                                          →  IsMonoid _≡_ (prodAdd f) (ε , ε)
prodAddIsMonoid ε₁ f record { isSemigroup = isSemigroup ; identity = identity } =
                                                        record { isSemigroup =
                                                               record { isMagma = record { isEquivalence = isEquivalence
                                                                                          ; ∙-cong = cong₂ (prodAdd f) }
                                                                                          ; assoc = addProdAssoc ε₁ f (IsSemigroup.assoc isSemigroup) }
                                                                                          ; identity = addProdIdentity ε₁ f identity }

prodComm : {X : Set} → (ε : X) → (f : (X → X → X)) → Algebra.Commutative _≡_ f
                                                   → Algebra.Commutative _≡_ (prodAdd f)
prodComm ε₁ f comm (a , b) (c , d) rewrite comm a c | comm b d = refl

prodAddRespectsComm : {X : Set} → (ε : X) → (f : (X → X → X)) → (IsCommutativeMonoid _≡_ f ε) → IsCommutativeMonoid _≡_ (prodAdd f) (ε , ε)
prodAddRespectsComm ε₁ f record { isMonoid = isMonoid ; comm = comm } = record { isMonoid = prodAddIsMonoid ε₁ f isMonoid ; comm = prodComm ε₁ f comm }


ExUnitExample' : CommutativeMonoid 0ℓ 0ℓ
ExUnitExample' = record
                  { Carrier = ℕ × ℕ
                  ; _≈_ =  _≡_
                  ; _∙_ = prodAdd _+_
                  ; ε = zero , zero
                  ; isCommutativeMonoid = prodAddRespectsComm zero _+_ +-0-isCommutativeMonoid
                  }



{-
HSP2ScriptStructure : PlutusStructure ℕ ℕ ℕ
HSP2ScriptStructure = record
                        { Dataʰ = {!!}
                        ; PlutusScript = {!!}
                        ; CostModel = {!!}
                        ; ExUnit-CommutativeMonoid = ExUnitExample
                        ; Hashable-PlutusScript = {!!}
                        ; DecEq-PlutusScript = {!!}
                        ; _≥ᵉ_ = {!!}
                        ; validPlutusScript = {!!}
                        ; validPlutusScript? = {!!}
                        }
-}
