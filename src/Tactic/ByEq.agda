{-# OPTIONS --safe --without-K #-}
module Tactic.ByEq where

open import Prelude
open import Interface.Functor using (map; _<&>_)

open import Agda.Builtin.Reflection using (clause; dot)
open import Reflection
open import Generics

-- Introduce as many arguments as possible and then:
--   1. for those of type `_ ≡ _`, unify with  `refl`
--   2. ignore the rest of the arguments (unify with `_`)
--   3. unify the hole with `refl`
by-eq : Hole → TC ⊤
by-eq hole = do
  ty ← withNormalisation true $ inferType hole
  let ps : Args Pattern
      ps = argTys ty <&> map λ {(def (quote _≡_) _) → quote refl ◇; _ → dot unknown}
  unify hole $ pat-lam [ clause [] ps (quote refl ◆) ] []

macro $by-eq = by-eq

private
  -- test that macro works
  _ : ∀ {n m k : ℕ} → n ≡ m → m ≡ k → n ≡ k
  _ = $by-eq

  _ : ∀ {n m k x y : ℕ} → n ≡ m → x ≡ y → m ≡ n
  _ = $by-eq

  -- test that tactic arguments work
  f : {@(tactic by-eq) _ : ∀ {n m : ℕ} → n ≡ m → m ≡ n} → Bool → Bool
  f = id

  _ : f {λ where refl → refl} true ≡ true
  _ = refl

  _ : f {$by-eq} true ≡ true
  _ = refl

  _ : f true ≡ true
  _ = refl

  -- test that normalisation works
  Sym = ∀ {n m : ℕ} → n ≡ m → m ≡ n

  g : {@(tactic by-eq) _ : Sym} → Bool → Bool
  g = id

  _ : g {λ where refl → refl} true ≡ true
  _ = refl

  _ : g {$by-eq} true ≡ true
  _ = refl

  _ : g true ≡ true
  _ = refl
