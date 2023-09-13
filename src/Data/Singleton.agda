{-# OPTIONS --safe #-}

module Data.Singleton where

data Is {ℓ} {A : Set ℓ} : A → Set ℓ where
  ⟫_ : (x : A) → Is x
infix -100 ⟫_
