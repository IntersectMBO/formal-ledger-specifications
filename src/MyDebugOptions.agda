{-# OPTIONS --safe --without-K #-}
module MyDebugOptions where

open import Prelude

open import Reflection.Debug

instance
  defaultDebugOptionsI : DebugOptions
  defaultDebugOptionsI = record defaultDebugOptions
    { selection = All
    ; filter = Filter.⊥ }
