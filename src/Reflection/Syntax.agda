{-# OPTIONS --safe --without-K #-}

module Reflection.Syntax where

open import Prelude

open import Reflection.AST.Argument.Visibility using (Visibility) public
open import Reflection.AST.Abstraction using (unAbs) public
open import Reflection.AST.Argument using (vArg; hArg; iArg; unArg; _⟨∷⟩_; map-Args) public
open import Reflection using (Term; Type; Name; data-cons; pi; abs; Abs; Arg; Clause; data-type; record-type; var; con; def; lam; pat-lam; arg; agda-sort; lit; meta; unknown; Pattern; strErr; ErrorPart; arg-info; visible; Definition) public

open import Generics using (getName; getVisibility; findMetas; isMeta; UnquoteDecl; Tactic) public
