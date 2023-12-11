{-# OPTIONS --safe #-}
module Data.List.Relation.Unary.MOf where

open import Level using (Level; _⊔_) renaming (suc to lsuc)
open import Function using (_$_)

open import Data.Empty using (⊥-elim)
open import Data.List using (List; []; _∷_; length)
open import Data.List.Relation.Unary.All using (All; []; _∷_)
open import Data.Nat using (ℕ; zero; suc)
open import Data.Nat.Properties using (suc-injective)

open import Relation.Nullary using (Dec; yes; no)
open import Relation.Nullary.Decidable using () renaming (map′ to mapDec)
open import Relation.Unary using (Decidable; Pred)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; cong)

open import Data.List.Relation.Binary.Sublist.Ext

-- States that "m-of-n" elements of a n-element list satisfy a given predicate.
data MOf {ℓ ℓ′}{A : Set ℓ} (m : ℕ) (P : Pred A ℓ′) (xs : List A) : Set (ℓ ⊔ ℓ′) where
  mOf : ∀ ys
    → m ≡ length ys
    → ys ⊆ xs
    → All P ys
    → MOf m P xs

module _ {ℓ ℓ′} {A : Set ℓ} {P : Pred A ℓ′} (P? : Decidable P) where
  MOf? : ∀ m xs → Dec (MOf m P xs)
  MOf? zero        _        = yes (mOf [] refl []⊆ [])
  MOf? (suc _)     []       = no λ where (mOf (_ ∷ _) len≡ () _)
  MOf? m@(suc m-1) (x ∷ xs)
    with MOf? m xs
  ... | yes (mOf _ len≡ ⊆xs        Pxs')
      = yes (mOf _ len≡ (x ∷ʳ ⊆xs) Pxs')
  ... | no ¬p
    with P? x
  ... | no ¬Px
      = no λ where (mOf _ _    (refl ∷ _) (Px ∷ _)) → ¬Px Px
                   (mOf _ len≡ (_ ∷ʳ ⊆xs) Pxs')     → ¬p (mOf _  len≡ ⊆xs Pxs')
  ... | yes Px
      = mapDec
        (λ where (mOf _ len≡ ⊆xs Pxs')
                  → mOf _ (cong suc len≡) (refl ∷ ⊆xs) (Px ∷ Pxs'))
        (λ where (mOf _ len≡ (_ ∷  ⊆xs) (_ ∷ Pxs'))
                  → mOf _ (suc-injective len≡) ⊆xs Pxs'
                 (mOf _ len≡ (_ ∷ʳ ⊆xs) Pxs)
                  → ⊥-elim $ ¬p (mOf _ len≡ ⊆xs Pxs))
        (MOf? m-1 xs)
