{-# OPTIONS --safe #-}
module iog-prelude.Prelude.InferenceRules where

open import Prelude.Init

open import Prelude.InferenceRules public
  hiding (_∙_)
  renaming (_────────────────────────────────_ to infix -500 _────────────────────────────────_
           ;_───────────────────────────────────────_ to infix -500 _───────────────────────────────────────_
           ;────────────────────────────────_ to infix -501 ────────────────────────────────_ 
           ;───────────────────────────────────────_ to infix -501 ───────────────────────────────────────_)

infixr -100 _∙_
_∙_ : Set → Set → Set
A ∙ B = A × B
