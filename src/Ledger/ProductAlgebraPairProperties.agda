open import Algebra
open import Data.Product.Relation.Binary.Pointwise.NonDependent
open import Ledger.Prelude
open import Relation.Binary.Core renaming (Rel to BRel)
open import Relation.Binary.Structures

module Ledger.ProductAlgebraPairProperties (X : Set) (ε : X) (_≈_ : BRel X zeroˡ) (_∙_ : Op₂ X) where

_∙ᵖ_ : (X × X) → (X × X) → (X × X)
(a , b) ∙ᵖ (c , d) = (a ∙ c) , (b ∙ d)

_≈ᵖ_ : BRel (X × X) zeroˡ
_≈ᵖ_ = Pointwise _≈_ _≈_

addProdIdentityˡ : Algebra.LeftIdentity _≈_ ε _∙_ → Algebra.LeftIdentity _≈ᵖ_ (ε , ε) _∙ᵖ_
addProdIdentityˡ idˡ (a , b) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X} {_} {_} (idˡ a) (idˡ b) {ε , ε}

addProdIdentityʳ : Algebra.RightIdentity _≈_ ε _∙_ → Algebra.RightIdentity _≈ᵖ_ (ε , ε) _∙ᵖ_
addProdIdentityʳ idʳ (a , b) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X} {_} {_} (idʳ a) (idʳ b) {ε , ε}

addProdIdentity : Algebra.Identity _≈_ ε _∙_ → Algebra.Identity _≈ᵖ_ (ε , ε) _∙ᵖ_
addProdIdentity (idˡ , idʳ) = (addProdIdentityˡ idˡ) , (addProdIdentityʳ idʳ)

addProdAssoc : Algebra.Associative  _≈_ _∙_ →  Algebra.Associative _≈ᵖ_ _∙ᵖ_
addProdAssoc assoc (a , b) (c , d) (e , f) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X} {λ _ _ → ((a ∙ c) ∙ e) ≈ (a ∙ (c ∙ e))} {λ _ _ → ((b ∙ d) ∙ f) ≈ (b ∙ (d ∙ f))} (assoc a c e) (assoc b d f) {ε , ε}

prodAddIsMonoid : IsMonoid _≈_ _∙_ ε →  IsMonoid _≈ᵖ_ _∙ᵖ_ (ε , ε)
prodAddIsMonoid record { isSemigroup = isSemigroup ; identity = identity } =
  record { isSemigroup =
           record { isMagma = record { isEquivalence = ×-isEquivalence (record
                                                                          { refl =
                                                                              IsEquivalence.refl
                                                                              (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                                                                          ; sym =
                                                                              IsEquivalence.sym
                                                                              (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                                                                          ; trans =
                                                                              IsEquivalence.trans
                                                                              (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                                                                          }) (record
                                                                                { refl =
                                                                                    IsEquivalence.refl
                                                                                    (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                                                                                ; sym =
                                                                                    IsEquivalence.sym
                                                                                    (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                                                                                ; trans =
                                                                                    IsEquivalence.trans
                                                                                    (IsMagma.isEquivalence (IsSemigroup.isMagma isSemigroup))
                                                                                })
                    ; ∙-cong = λ {(h , h1) (h2 , h3) → IsMagma.∙-cong (IsSemigroup.isMagma isSemigroup) h h2 , IsMagma.∙-cong (IsSemigroup.isMagma isSemigroup) h1 h3 }}
                    ;assoc = addProdAssoc (IsSemigroup.assoc isSemigroup) }
         ; identity = addProdIdentity identity }

prodComm : Algebra.Commutative _≈_ _∙_ → Algebra.Commutative _≈ᵖ_ _∙ᵖ_
prodComm comm (a , b) (c , d) = ×-refl {zeroˡ} {zeroˡ} {zeroˡ} {zeroˡ} {X} {X} {λ _ _ → (a ∙ c) ≈ (c ∙ a)} {λ _ _ → (b ∙ d) ≈ (d ∙ b)} (comm a c) (comm b d) {ε , ε}

prodAddRespectsComm : (IsCommutativeMonoid _≈_ _∙_ ε) → IsCommutativeMonoid _≈ᵖ_ _∙ᵖ_ (ε , ε)
prodAddRespectsComm record { isMonoid = isMonoid ; comm = comm } = record { isMonoid = prodAddIsMonoid (record
                                                                                                            { isSemigroup =
                                                                                                                record
                                                                                                                { isMagma =
                                                                                                                    record
                                                                                                                    { isEquivalence =
                                                                                                                        record
                                                                                                                        { refl =
                                                                                                                            IsEquivalence.refl
                                                                                                                            (IsMagma.isEquivalence
                                                                                                                             (IsSemigroup.isMagma (IsMonoid.isSemigroup isMonoid)))
                                                                                                                        ; sym =
                                                                                                                            IsEquivalence.sym
                                                                                                                            (IsMagma.isEquivalence
                                                                                                                             (IsSemigroup.isMagma (IsMonoid.isSemigroup isMonoid)))
                                                                                                                        ; trans =
                                                                                                                            IsEquivalence.trans
                                                                                                                            (IsMagma.isEquivalence
                                                                                                                             (IsSemigroup.isMagma (IsMonoid.isSemigroup isMonoid)))
                                                                                                                        }
                                                                                                                    ; ∙-cong =
                                                                                                                        IsMagma.∙-cong
                                                                                                                        (IsSemigroup.isMagma (IsMonoid.isSemigroup isMonoid))
                                                                                                                    }
                                                                                                                ; assoc = IsSemigroup.assoc (IsMonoid.isSemigroup isMonoid)
                                                                                                                }
                                                                                                            ; identity = IsMonoid.identity isMonoid
                                                                                                            }) ; comm = prodComm comm }
