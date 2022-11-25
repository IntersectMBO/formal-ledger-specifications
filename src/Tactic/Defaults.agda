{-# OPTIONS --safe --without-K #-}
module Tactic.Defaults where

open import Reflection.Debug

-- There should only ever be one instance, with this being convenient
-- to tweak all at once
instance
  defaultDebugOptionsI = record defaultDebugOptions { selection = All ; filter = Filter.⊥ }
