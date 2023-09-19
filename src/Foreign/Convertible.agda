{-# OPTIONS --overlapping-instances #-}
module Foreign.Convertible where

open import Ledger.Prelude hiding (map)

open import Data.List using (map)

open import Foreign.Haskell
open import Foreign.Haskell.Coerce

record Convertible (A B : Set) : Set where
  field to   : A → B
        from : B → A

open Convertible ⦃...⦄ public

private variable A B A' B' K K' V V' : Set

Convertible-Refl : Convertible A A
Convertible-Refl = λ where
  .to   → id
  .from → id

instance
  Coercible⇒Convertible : ⦃ Coercible A B ⦄ → Convertible A B
  Coercible⇒Convertible = λ where
    .to   → coerce
    .from → coerce ⦃ TrustMe ⦄ -- coercibility is symmetric, I promise

  Convertible-Pair : ⦃ Convertible A A' ⦄ → ⦃ Convertible B B' ⦄
                   → Convertible (A × B) (Pair A' B')
  Convertible-Pair = λ where
    .to   (a , b) → to a   , to b
    .from (a , b) → from a , from b

  Convertible-FinSet : ⦃ Convertible A A' ⦄ → Convertible (ℙ A) (List A')
  Convertible-FinSet = λ where
    .to   s → map to (setToList s)
    .from l → fromList (map from l)

  Convertible-Map : ⦃ DecEq K ⦄ → ⦃ Convertible K K' ⦄ → ⦃ Convertible V V' ⦄
                  → Convertible (K ⇀ V) (List $ Pair K' V')
  Convertible-Map = λ where
    .to   m → to (proj₁ m)
    .from m → fromListᵐ (map from m)
