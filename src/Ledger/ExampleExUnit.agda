module Ledger.ExampleExUnit where

open import Ledger.Script
open import Ledger.Prelude
open import Data.Nat.Properties
open import Data.Product.Algebra
open import Data.Product.Properties
open import Algebra

open PlutusStructure

open import Data.Product

addPair1 : (ℕ × ℕ) → (ℕ × ℕ) → (ℕ × ℕ)
addPair1 a b = {!!}

addPair : (ℕ × ℕ) → (ℕ × ℕ) → (ℕ × ℕ)
addPair (a , b) (c , d) = (a + c) , (b + d)

addPairAssoc : Algebra.Associative _≡_ addPair
addPairAssoc (a , b) (c , d) (e , f) rewrite +-assoc a c e | +-assoc b d f = refl

addPairIdentityʳ : Algebra.RightIdentity _≡_ (zero , zero) addPair
addPairIdentityʳ (a , b) rewrite +-identityʳ a | +-identityʳ b = refl

addPairIdentity : Algebra.Identity _≡_ (zero , zero) addPair
addPairIdentity = (λ x → refl) , addPairIdentityʳ

addPairIsMonoid : IsMonoid _≡_ addPair (zero , zero)
addPairIsMonoid = record { isSemigroup = record { isMagma = record { isEquivalence = isEquivalence ; ∙-cong = cong₂ addPair }
                                                                   ; assoc = addPairAssoc }
                                                                   ; identity = addPairIdentity }

addPairComm : Algebra.Commutative _≡_ addPair
addPairComm (a , b) (c , d) rewrite +-comm a c | +-comm b d = refl

ExUnitExample' : CommutativeMonoid 0ℓ 0ℓ
ExUnitExample' = record
                  { Carrier = ℕ × ℕ
                  ; _≈_ =  _≡_
                  ; _∙_ = addPair
                  ; ε = zero , zero
                  ; isCommutativeMonoid = record { isMonoid = {!!} ; comm = {!×-comm!} }
                  }


ExUnitExample : CommutativeMonoid 0ℓ 0ℓ
ExUnitExample = record
                  { Carrier = ℕ × ℕ
                  ; _≈_ =  _≡_
                  ; _∙_ = addPair
                  ; ε = zero , zero
                  ; isCommutativeMonoid = record { isMonoid = addPairIsMonoid ; comm = addPairComm }
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
