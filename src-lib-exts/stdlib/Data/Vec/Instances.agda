{-# OPTIONS --safe --without-K #-}
module stdlib.Data.Vec.Instances where

open import Level
open import Algebra
open import Data.Vec
open import Data.Vec.Properties hiding (zipWith-assoc; zipWith-identityˡ; zipWith-identityʳ; zipWith-comm)
open import Data.Nat using (ℕ)

open import Relation.Binary
open import Algebra
open import Data.Product.Base using (_×_; zip; _,_; map; _<*>_; uncurry)
open import Level using (Level; _⊔_)

open import Data.Vec.Relation.Binary.Pointwise.Inductive 

private
  variable
    a b ℓ ℓ₁ ℓ₂ : Level
    A : Set a
    n : ℕ

------------------------------------------------------------------------
-- Raw bundles

module _ (n : ℕ) where
  rawMagma : RawMagma a ℓ → RawMagma a (a ⊔ ℓ)
  rawMagma M = record
    { Carrier = Vec M.Carrier n
    ; _≈_     = Pointwise M._≈_
    ; _∙_     = zipWith M._∙_
    } where module M = RawMagma M
  
  rawMonoid : RawMonoid a ℓ → RawMonoid a (a ⊔ ℓ)
  rawMonoid M = record
    { Carrier = Vec M.Carrier n
    ; _≈_     = Pointwise M._≈_
    ; _∙_     = zipWith M._∙_
    ; ε       = replicate n M.ε
    } where module M = RawMonoid M

------------------------------------------------------------------------
-- Bundles

module _ (n : ℕ) where

  magma : Magma a ℓ → Magma a (a ⊔ ℓ)
  magma M = record
    { Carrier = Vec M.Carrier n
    ; _≈_     = Pointwise M._≈_
    ; _∙_     = zipWith M._∙_
    ; isMagma = record
      { isEquivalence = isEquivalence M.isEquivalence n
      ; ∙-cong = zipWith-cong M.∙-cong
      }
    } where module M = Magma M

  semigroup : Semigroup a ℓ → Semigroup a (a ⊔ ℓ)
  semigroup G = record
    { isSemigroup = record
      { isMagma = Magma.isMagma (magma G.magma)
      ; assoc = zipWith-assoc G.assoc
      }
    } where module G = Semigroup G

  monoid : Monoid a ℓ → Monoid a (a ⊔ ℓ)
  monoid M = record
    { ε = replicate n M.ε
    ; isMonoid = record
      { isSemigroup = Semigroup.isSemigroup (semigroup M.semigroup)
      ; identity = zipWith-identityˡ M.identityˡ
                 , zipWith-identityʳ M.identityʳ
      }
    } where module M = Monoid M

  commutativeMonoid : CommutativeMonoid a ℓ
                    → CommutativeMonoid a (a ⊔ ℓ)
  commutativeMonoid M = record
    { isCommutativeMonoid = record
      { isMonoid = Monoid.isMonoid (monoid M.monoid)
      ; comm = zipWith-comm M.comm
      }
    } where module M = CommutativeMonoid M
