{-# OPTIONS --safe #-}
{-# OPTIONS -v tc.unquote:10 #-}
{-# OPTIONS -v tactic.inline:100 #-}

module Tactic.Inline where

open import Prelude hiding (_∷ʳ_; uncons)
open import Interface.ToBool
-- open import Data.Bool using (if_then_else_)
import Data.Nat as ℕ; import Data.Nat.Properties as ℕ
import Data.List as L
import Data.Fin as F
open import PreludeMeta hiding (All)

open Debug ("tactic.inline" , 100)
open import Class.Show

private variable ℓ : Level; A B : Set ℓ; F : Type↑

open import Algebra.Core using (Op₁)

-- ** Utilities

_⁉_ : ∀ {A : Set} → List A → ℕ → Maybe A
[] ⁉ _ = nothing
(x ∷ _)  ⁉ zero  = just x
(_ ∷ xs) ⁉ suc n = xs ⁉ n

apply∗ : Term → Args Term → Term
apply∗ f xs = case f of λ where
  (def n as)      → def n (as ++ xs)
  (con c as)      → con c (as ++ xs)
  (var x as)      → var x (as ++ xs)
  (pat-lam cs as) → pat-lam cs (as ++ xs)
  (meta x as)     → meta x (as ++ xs)
  f               → f

-- ** Inlining

open import Agda.Builtin.Reflection using (withExpandLast; withReconstructed)

private
  $inline : Bool → Name → Term → TC ⊤
  $inline genType n' `e = withReconstructed true $ do
    e@(def n xs) ← return `e
      where _ → _IMPOSSIBLE_
    printLn $ "** Inlining " ◇ show n ◇ "(" ◇ show xs ◇ ")"
    if genType then (declareDef (vArg n') =<< inferType e) else return tt
    function cs ← getDefinition n
      where _ → _IMPOSSIBLE_
    print $ show n ◇ "'s clauses: "
    void $ forM cs λ c → print $ " - " ◇ show c
    print ""
    let cs' = goᶜ n n' xs <$> cs
    print $ "\n" ◇ show n' ◇ "'s clauses: "
    void $ forM cs' λ c → print $ " - " ◇ show c
    print ""
    defineFun n' cs'
   where module _ (n n' : Name) (xs : Args Term) (let ∣xs∣ = length xs) where
    lookupVar : ℕ → ℕ → Maybe Term
    lookupVar lvl x
      with x ℕ.<? lvl
    ... | yes _  = nothing
    ... | no  x≮ =
      let k , _ = ℕ.≤⇒≤″ (ℕ.≮⇒≥ x≮)
      in unArg <$> xs ⁉ (∣xs∣ ∸ suc k)

    mutual
      go : ℕ →  Op₁ Term
      go lvl = λ where
        (var x as) → let as′ = go∗ lvl as in case lookupVar lvl x of λ where
          nothing  → var x as′
          (just t) → apply∗ t as′
        (con c as) → con c (go∗ lvl as)
        (def 𝕟 as) → let as′ = go∗ lvl as in
          if 𝕟 == n then
            def n' (drop ∣xs∣ as′)
          else
            def 𝕟 as′
        (pi (arg i ty) (abs x t)) → pi (arg i $ go lvl ty) (abs x $ go (suc lvl) t)
        (lam v (abs x t)) → lam v (abs x $ go (suc lvl) t)
        (pat-lam cs as) → pat-lam (goCls lvl cs) (go∗ lvl as)
        (agda-sort s) → agda-sort (goSort lvl s)
        (meta x as) → meta x (go∗ lvl as)
        t → t

      go∗ : ℕ → Op₁ (Args Term)
      go∗ lvl = λ where
        [] → []
        (arg i x ∷ as) → arg i (go lvl x) ∷ go∗ lvl as

      goSort : ℕ → Op₁ Sort
      goSort lvl = λ where
        (set t)  → set  $ go lvl t
        (prop t) → prop $ go lvl t
        s → s

      goC : ℕ → Op₁ Clause
      goC lvl = λ where
        (clause tel ps t) →
          let lvl' = lvl ℕ.+ length tel
          in clause (goTel lvl tel) (goPs lvl' ps) (go lvl' t)
        (absurd-clause tel ps) →
          let lvl' = lvl ℕ.+ length tel
          in absurd-clause (goTel lvl tel) (goPs lvl' ps)

      goCls : ℕ → Op₁ (List Clause)
      goCls lvl = λ where
        [] → []
        (c ∷ cs) → goC lvl c ∷ goCls lvl cs

      goP : ℕ → Op₁ Pattern
      goP lvl = λ where
        (con c ps) → con c (goPs lvl ps)
        (dot t) → dot (go lvl t)
        (var x) → case lookupVar lvl x of λ where
          nothing → var x
          (just t) → dot t
        -- (absurd x) → {!!}
        p → p

      goPs : ℕ → Op₁ (Args Pattern)
      goPs lvl = λ where
        [] → []
        (arg i p ∷ ps) → arg i (goP lvl p) ∷ goPs lvl ps

      goTel : ℕ → Op₁ Telescope
      goTel lvl = λ where
        [] → []
        ((x , arg i t) ∷ tel) → (x , arg i (go lvl t)) ∷ goTel (suc lvl) tel

    instTel : Op₁ Telescope
    instTel = goTel 0 ∘ drop ∣xs∣

    instPs : ℕ → Op₁ (Args Pattern)
    instPs n = goPs n ∘ drop ∣xs∣

    goᶜ : Clause → Clause
    goᶜ = λ where
      (clause tel ps t) → let n = length tel ∸ ∣xs∣ in
        clause (instTel tel) (instPs n ps) (go n t)
      (absurd-clause tel ps) → let n = length tel ∸ ∣xs∣ in
        absurd-clause (instTel tel) (instPs n ps)

inline inlineDecl : Name → Term → TC ⊤
inline     = $inline false -- for use with `unquoteDef`
inlineDecl = $inline true  -- for use with `unquoteDecl`

private
  -- (1) specializing the function to be applied by `map`
  unquoteDecl sucs = inlineDecl sucs (quoteTerm (L.map suc))
  {-
  sucs : List ℕ → List ℕ
  sucs [] = [] {_} {_}
  sucs (x ∷ xs) = _∷_ {_} {_} (suc x) (sucs xs)
  -}
  _ = sucs (0 ∷ 1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ 4 ∷ [])
    ∋ refl

  -- (2) specializing the predicate to be checked by `all?`)
  data Even : ℕ → Set where
    zero : Even 0
    suc  : ∀ {n} → Even n → Even (suc (suc n))

  even? : Decidable¹ Even
  even? = λ where
    0 → yes zero
    1 → no λ ()
    (suc (suc n)) → mapDec suc (λ where (suc p) → p) (even? n)

  open import Data.List.Relation.Unary.All using (All; []; _∷_; all?)

  unquoteDecl evens? = inlineDecl evens? (quoteTerm (all? even?))
  {-
  evens? : Decidable¹ (All Even)
  evens? []       = yes []
  evens? (x ∷ xs) = mapDec (uncurry _∷_) uncons (even? x ×-dec evens? xs)
  -}
  _ = evens? (0 ∷ 2 ∷ []) ≡ yes (zero ∷ suc zero ∷ [])
    ∋ refl

  -- (3) works under module parameters
  module _ (n m : ℕ) where
    unquoteDecl ⟫evens? = inlineDecl ⟫evens? (quoteTerm (all? even?))
    _ = ⟫evens? (0 ∷ 2 ∷ []) ≡ yes (zero ∷ suc zero ∷ [])
      ∋ refl

  module _ {A B : Set} (f : A → B) where
    map' : List A → List B
    map' [] = []
    map' (x ∷ xs) = f x ∷ map' xs

  unquoteDecl sucs' = inlineDecl sucs' (quoteTerm (map' {B = ℕ} suc))
  _ = sucs' (0 ∷ 1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ 4 ∷ [])
    ∋ refl

  -- (4) works under mutual blocks
  data Odd : ℕ → Set where
    one : Odd 1
    suc : ∀ {n} → Odd n → Odd (suc (suc n))

  mutual
    odd? : Decidable¹ Odd
    odd? = λ where
      0 → no λ ()
      1 → yes one
      (suc (suc n)) → mapDec suc (λ where (suc p) → p) (odd? n)

    unquoteDecl mevens? = inlineDecl mevens? (quoteTerm (all? even?))
    unquoteDecl modds?  = inlineDecl modds?  (quoteTerm (all? odd?))
    _ = mevens? (0 ∷ 2 ∷ []) ≡ yes (zero ∷ suc zero ∷ [])
      ∋ refl

    -- [BUG] `_ = ⋯ ∋ ⋯` doesn't work here!
    _ : modds? (1 ∷ 3 ∷ []) ≡ yes (one ∷ suc one ∷ [])
    _ = refl

  -- (5) works with `with`-statements (e.g. for specializing `mapMaybe`)
  toEvenOdd : ℕ → ℕ {- even part -} × Maybe ℕ {- odd part -}
  toEvenOdd n with even? n
  ... | yes _ = n , nothing
  ... | no  _ = pred n , just 1

  toOdd : ℕ → Maybe ℕ
  toOdd = proj₂ ∘ toEvenOdd


  unquoteDecl toOdds = inlineDecl toOdds (quoteTerm (L.mapMaybe toOdd))
  {-
  toOdds : List ℕ → List ℕ
  toOdds []       = []
  toOdds (x ∷ xs) with toOdd x
  ... | just y  = y ∷ toOdds xs
  ... | nothing = toOdds xs
  -}
  _ = toOdds (0 ∷ 1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 1 ∷ [])
    ∋ refl

  -- (6) test for `MOf?`
  open import Data.List.Relation.Unary.MOf using (MOf; mOf; MOf?)

  unquoteDecl MOf-even? = inlineDecl MOf-even? (quoteTerm (MOf? even?))
  {-
  MOf?-even? : ∀ m xs → Dec (MOf m Even xs)
  MOf?-even? zero    xs = yes done
  MOf?-even? (suc m) [] = no λ where (mOf (_ ∷ _) len≡ () _)
  MOf?-even? (suc m) (x ∷ xs) =
    if even? x then
      (λ {px} → mapDec (cons px) uncons (MOf?-even? m xs))
    else
      (λ {¬px} → mapDec skip (unskip ¬px) (MOf?-even? (suc m) xs))
  -}

  _ = MOf-even? 2 (0 ∷ 1 ∷ 2 ∷ 3 ∷ [])
    ≡ yes (mOf (0 ∷ 2 ∷ []) refl (refl ∷ 1 ∷ʳ refl ∷ 3 ∷ʳ []) (zero ∷ suc zero ∷ []))
    ∋ refl
    where open import Data.List.Relation.Binary.Sublist.Ext
