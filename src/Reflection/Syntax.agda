module Reflection.Syntax where

open import Prelude

open import Reflection.AST.Argument using (vArg; hArg; iArg)
open import Reflection using (Term; Type; Name; data-cons; pi; abs; Abs; Arg; Clause; vArg; data-type; record-type; var; con; def; lam; pat-lam; arg; agda-sort; lit; meta; unknown; Pattern; strErr; ErrorPart) public

pattern ⟦_∣_∣_⇒_⟧ x y z k = Clause.clause [] (vArg x ∷ vArg y ∷ vArg z ∷ []) k
pattern ⟦_∣_∣_⦅_⦆⇒_⟧ x y z tel k = Clause.clause tel (vArg x ∷ vArg y ∷ vArg z ∷ []) k

private variable a : Level
                 A : Set a

getName : Abs A → String
getName (abs s x) = s
