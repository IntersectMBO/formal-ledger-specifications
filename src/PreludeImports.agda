module PreludeImports where


open import Prelude.Generics using (TypeView; mapVars; _∙; _∙⟦_⟧; _∙⟦_∣_⟧; _∙⟦_∣_∣_⟧; _∙⟦_∣_∣_∣_⟧; _◆; _◆⟦_⟧; `λ∅) public
open import Prelude.Generics using (viewTy; _◆; mapVariables; mapVars; _∙⟦_∣_⟧; viewTy′; hArg?; vArg?; iArg?; `λ_⇒_; argTys; TypeView; ♯; `_) public

module DecEq where

  open import Prelude.Decidable public
  open import Prelude.DecEq.Derive using (``yes; ``no) public
  open import Prelude.DecEq public
