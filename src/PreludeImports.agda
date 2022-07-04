module PreludeImports where

open import Prelude.DecEq.Derive using (``yes; ``no) public
open import Prelude.Generics using (TypeView; mapVars; _∙; _∙⟦_⟧; _∙⟦_∣_⟧; _∙⟦_∣_∣_⟧; _∙⟦_∣_∣_∣_⟧; _◆; _◆⟦_⟧; `λ∅; `λ⟦_∣_∣_⇒_⟧; `λ⟦_⇒_⟧; viewTy; mapVariables; viewTy′; hArg?; vArg?; iArg?; `λ_⇒_; argTys; ♯; `_) public
