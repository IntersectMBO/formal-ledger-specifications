open import Algebra
open import Data.Product.Relation.Binary.Pointwise.NonDependent
open import Ledger.Prelude
open import Relation.Binary.Core renaming (Rel to BRel)
open import Relation.Binary.Structures

module Ledger.PairOpAlgebra2 (X : Set) (εˣ : X)
                             (Y : Set) (εʸ : Y)
                             (_≈ˣ_ : BRel X zeroˡ) (_≈ʸ_ : BRel Y zeroˡ)
                             (_∙ˣ_ : Op₂ X) (_∙ʸ_ : Op₂ Y) where

_∙ᵖ_ : (X × Y) → (X × Y) → (X × Y)
(a , b) ∙ᵖ (c , d) = (a ∙ˣ c) , (b ∙ʸ d)

_≈ᵖ_ : BRel (X × Y) zeroˡ
_≈ᵖ_ = Pointwise _≈ˣ_ _≈ʸ_

pairOpIdentityˡ : Algebra.LeftIdentity _≈ˣ_ εˣ _∙ˣ_ → Algebra.LeftIdentity _≈ᵖ_ (εˣ , εʸ) _∙ᵖ_
pairOpIdentityˡ idˡ (a , b) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {Y} {_} {_} (idˡ a) (idˡ {!!}) {εˣ , εʸ}

{-
pairOpIdentityˡ : Algebra.LeftIdentity _≈_ ε _∙_ → Algebra.LeftIdentity _≈ᵖ_ (ε , ε) _∙ᵖ_
pairOpIdentityˡ idˡ (a , b) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X} {_} {_} (idˡ a) (idˡ b) {ε , ε}

pairOpIdentityʳ : Algebra.RightIdentity _≈_ ε _∙_ → Algebra.RightIdentity _≈ᵖ_ (ε , ε) _∙ᵖ_
pairOpIdentityʳ idʳ (a , b) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X} {_} {_} (idʳ a) (idʳ b) {ε , ε}

pairOpIdentity : Algebra.Identity _≈_ ε _∙_ → Algebra.Identity _≈ᵖ_ (ε , ε) _∙ᵖ_
pairOpIdentity (idˡ , idʳ) = (pairOpIdentityˡ idˡ) , (pairOpIdentityʳ idʳ)

pairOpAssoc : Algebra.Associative  _≈_ _∙_ →  Algebra.Associative _≈ᵖ_ _∙ᵖ_
pairOpAssoc assoc (a , b) (c , d) (e , f) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X}
                                                    {λ _ _ → ((a ∙ c) ∙ e) ≈ (a ∙ (c ∙ e))}
                                                    {λ _ _ → ((b ∙ d) ∙ f) ≈ (b ∙ (d ∙ f))}
                                                    (assoc a c e) (assoc b d f) {ε , ε}

pairOpIsMonoid : IsMonoid _≈_ _∙_ ε →  IsMonoid _≈ᵖ_ _∙ᵖ_ (ε , ε)
pairOpIsMonoid record { isSemigroup = isSemigroup ; identity = identity } =
  record { isSemigroup =
           record { isMagma = record { isEquivalence = ×-isEquivalence (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                                                                       (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                    ; ∙-cong = λ {(h , h1) (h2 , h3) → IsMagma.∙-cong (IsSemigroup.isMagma isSemigroup) h h2
                                                     , IsMagma.∙-cong (IsSemigroup.isMagma isSemigroup) h1 h3 }}
                    ;assoc = pairOpAssoc (IsSemigroup.assoc isSemigroup) }
         ; identity = pairOpIdentity identity }

pairOpComm : Algebra.Commutative _≈_ _∙_ → Algebra.Commutative _≈ᵖ_ _∙ᵖ_
pairOpComm comm (a , b) (c , d) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X}
                                       {λ _ _ → (a ∙ c) ≈ (c ∙ a)}
                                       {λ _ _ → (b ∙ d) ≈ (d ∙ b)}
                                       (comm a c) (comm b d) {ε , ε}

pairOpRespectsComm : (IsCommutativeMonoid _≈_ _∙_ ε) → IsCommutativeMonoid _≈ᵖ_ _∙ᵖ_ (ε , ε)
pairOpRespectsComm record { isMonoid = isMonoid ; comm = comm } = record { isMonoid = pairOpIsMonoid isMonoid ;
                                                                            comm = pairOpComm comm }

-}
