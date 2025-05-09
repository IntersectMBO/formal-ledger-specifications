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

module _ (_≈_ : Rel A ℓ) where
  module _ {f : A → A → A} where
    zipWith-assoc : Associative _≈_ f 
                  → Associative (Pointwise _≈_) (zipWith {n = n} f)
    zipWith-assoc assoc [] [] [] = []
    zipWith-assoc assoc (x ∷ xs) (y ∷ ys) (z ∷ zs) = assoc x y z ∷ zipWith-assoc assoc xs ys zs

  module _ {f : A → A → A} {e : A} where
    zipWith-identityˡ : LeftIdentity _≈_ e f →
                        LeftIdentity (Pointwise _≈_) (replicate n e) (zipWith f)
    zipWith-identityˡ idˡ []       = []
    zipWith-identityˡ idˡ (x ∷ xs) = idˡ x ∷ zipWith-identityˡ idˡ xs

    zipWith-identityʳ : RightIdentity _≈_ e f →
                        RightIdentity (Pointwise _≈_) (replicate n e) (zipWith f)
    zipWith-identityʳ idʳ []       = []
    zipWith-identityʳ idʳ (x ∷ xs) = idʳ x ∷ zipWith-identityʳ idʳ xs

  module _ {f : A → A → A} where
    zipWith-comm : Commutative _≈_ f →
                   Commutative (Pointwise _≈_) (zipWith {n = n} f)
    zipWith-comm comm []       []       = []
    zipWith-comm comm (x ∷ xs) (y ∷ ys) = comm x y ∷ zipWith-comm comm xs ys
      
  module _ {f : A → A → A} where
    zipWith-cong : ∀ {m n}
          {ws : Vec A m} {xs : Vec A n} {ys : Vec A m} {zs : Vec A n} →
          Congruent₂ _≈_ f →
          Pointwise _≈_ ws xs → Pointwise _≈_ ys zs →
          Pointwise _≈_ (zipWith f ws ys) (zipWith f xs zs)
    zipWith-cong cong [] [] = []
    zipWith-cong cong (x∼y ∷ xs) (a∼b ∷ ys) = cong x∼y a∼b ∷ zipWith-cong cong xs ys

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
      ; ∙-cong = zipWith-cong M._≈_ M.∙-cong
      }
    } where module M = Magma M

  semigroup : Semigroup a ℓ → Semigroup a (a ⊔ ℓ)
  semigroup G = record
    { isSemigroup = record
      { isMagma = Magma.isMagma (magma G.magma)
      ; assoc = zipWith-assoc (Magma._≈_ G.magma) G.assoc
      }
    } where module G = Semigroup G

  monoid : Monoid a ℓ → Monoid a (a ⊔ ℓ)
  monoid M = record
    { ε = replicate n M.ε
    ; isMonoid = record
      { isSemigroup = Semigroup.isSemigroup (semigroup M.semigroup)
      ; identity = zipWith-identityˡ (Magma._≈_ M.magma) M.identityˡ
                 , zipWith-identityʳ (Magma._≈_ M.magma) M.identityʳ
      }
    } where module M = Monoid M

  commutativeMonoid : CommutativeMonoid a ℓ
                    → CommutativeMonoid a (a ⊔ ℓ)
  commutativeMonoid M = record
    { isCommutativeMonoid = record
      { isMonoid = Monoid.isMonoid (monoid M.monoid)
      ; comm = zipWith-comm (Magma._≈_ M.magma) M.comm
      }
    } where module M = CommutativeMonoid M
