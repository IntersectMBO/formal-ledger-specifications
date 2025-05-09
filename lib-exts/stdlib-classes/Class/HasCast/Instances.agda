{-# OPTIONS --safe #-}
module stdlib-classes.Class.HasCast.Instances where

open import stdlib-classes.Class.HasCast.Base

open import abstract-set-theory.FiniteSetTheory
open import Data.Product using (proj₁)

instance
  HasCast-A⇀B-RelAB : ∀ {A}{B} → HasCast (A ⇀ B) (Rel A B)
  HasCast-A⇀B-RelAB .cast = proj₁ 
