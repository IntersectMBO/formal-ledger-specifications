{-# OPTIONS --safe #-}

module Interface.Contains where

open import Level
open import Data.Product

private
  variable a b : Level
           A B C : Set a

record _contains_ (A : Set a) (B : Set b) : Set (a ⊔ b) where
  field
    proj : A → B

open _contains_ {{...}} public

instance
  A×BcontainsA : (A × B) contains A
  A×BcontainsA .proj = proj₁

  A×BcontainsB : (A × B) contains B
  A×BcontainsB .proj = proj₂

  contains-trans : ⦃ A contains B ⦄ → ⦃ B contains C ⦄ → A contains C
  contains-trans ⦃ AcontainsB ⦄ ⦃ BcontainsC ⦄ .proj a = proj ⦃ BcontainsC ⦄ (proj ⦃ AcontainsB ⦄ a)
