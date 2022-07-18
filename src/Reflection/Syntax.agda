{-# OPTIONS --safe --without-K #-}

module Reflection.Syntax where

open import Prelude

open import Reflection.AST.Argument.Visibility using (Visibility) public
open import Reflection.AST.Abstraction using (unAbs) public
open import Reflection.AST.Argument using (vArg; hArg; iArg; unArg; _⟨∷⟩_; map-Args) public
open import Reflection using (Term; Type; Name; data-cons; pi; abs; Abs; Arg; Clause; data-type; record-type; var; con; def; lam; pat-lam; arg; agda-sort; lit; meta; unknown; Pattern; strErr; ErrorPart; arg-info; visible) public

private variable a : Level
                 A : Set a

getName : Abs A → String
getName (abs s x) = s

getVisibility : ∀ {a} {A : Set a} → Arg A → Visibility
getVisibility (arg (arg-info v _) _) = v

findMetas : Term → List Term
findMetas' : List (Arg Term) → List Term
findMetasCl : List Clause → List Term

findMetas (var x args) = findMetas' args
findMetas (con c args) = findMetas' args
findMetas (def f args) = findMetas' args
findMetas (lam v (abs _ x)) = findMetas x
findMetas (pat-lam cs args) = findMetasCl cs ++ findMetas' args
findMetas (pi (arg _ a) (abs _ b)) = findMetas a ++ findMetas b
findMetas (agda-sort s) = []
findMetas (lit l) = []
findMetas m@(meta x args) = m ∷ findMetas' args
findMetas unknown = []

findMetas' [] = []
findMetas' ((arg _ t) ∷ ts) = findMetas t ++ findMetas' ts

findMetasCl [] = []
findMetasCl (Clause.clause tel ps t ∷ c) = findMetas t ++ findMetasCl c
findMetasCl (Clause.absurd-clause tel ps ∷ c) = findMetasCl c

isMeta : Term → Bool
isMeta (meta _ _) = true
isMeta _ = false

UnquoteDecl : Set
UnquoteDecl = Reflection.TC ⊤

Tactic : Set
Tactic = Term → Reflection.TC ⊤
