{-# OPTIONS --safe --without-K #-}
module PreludeImports where

open import Generics hiding (Tactic; error; mkRecord) public

open import Data.Bool
open import Relation.Nullary

pattern ``yes x = quote _because_ ◇⟦ quote true ◇  ∣ quote ofʸ ◇⟦ x ⟧ ⟧
pattern ``no x  = quote _because_ ◇⟦ quote false ◇ ∣ quote ofⁿ ◇⟦ x ⟧ ⟧
