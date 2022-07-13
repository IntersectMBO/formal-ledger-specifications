module PreludeImports where

open import Prelude.Generics using (TypeView; mapVars; viewTy; mapVariables; viewTy′; argTys; _◇; _◇⟦_⟧; _◇⟦_∣_⟧; _∙; _∙⟦_⟧; _∙⟦_∣_⟧; _∙⟦_∣_∣_⟧; _∙⟦_∣_∣_∣_⟧; _◆; _◆⟦_⟧; `λ∅; `λ⟦_∣_∣_⇒_⟧; `λ⟦_⇒_⟧; hArg?; vArg?; iArg?; `λ_⇒_; ♯; `_) public

open import Data.Bool
open import Relation.Nullary

pattern ``yes x = quote _because_ ◇⟦ quote true ◇  ∣ quote ofʸ ◇⟦ x ⟧ ⟧
pattern ``no x  = quote _because_ ◇⟦ quote false ◇ ∣ quote ofⁿ ◇⟦ x ⟧ ⟧

open import Data.List
open import Reflection

pattern ⟦_∣_∣_⇒_⟧ x y z k = Clause.clause [] (vArg x ∷ vArg y ∷ vArg z ∷ []) k
pattern ⟦_∣_∣_⦅_⦆⇒_⟧ x y z tel k = Clause.clause tel (vArg x ∷ vArg y ∷ vArg z ∷ []) k
