{-# OPTIONS --safe --without-K #-}

module Interface.Functor where

open import Agda.Primitive renaming (Set to Type; Setω to Typeω)

open import Function
open import Relation.Binary.PropositionalEquality

Type↑ : Typeω
Type↑ = ∀ {ℓ} → Type ℓ → Type ℓ

private variable
  ℓ ℓ′ ℓ″ : Level
  A : Type ℓ; B : Type ℓ′; C : Type ℓ″

record Functor (F : Type↑) : Typeω where
  infixl 4 _<$>_ _<$_
  infixl 1 _<&>_

  field _<$>_ : (A → B) → F A → F B
  map = _<$>_

  _<$_ : A → F B → F A
  x <$ y = const x <$> y

  _<&>_ : F A → (A → B) → F B
  _<&>_ = flip _<$>_

open Functor ⦃...⦄ public

record FunctorLaws (F : Type↑) ⦃ _ : Functor F ⦄ : Typeω where
  field
    -- preserves identity morphisms
    map-id : ∀ {A : Type ℓ} (x : F A) →
      map id x ≡ x
    -- preserves composition of morphisms
    map-∘  : ∀ {A : Type ℓ} {B : Type ℓ′} {C : Type ℓ″}
                {f : B → C} {g : A → B} (x : F A) →
      map (f ∘ g) x ≡ (map f ∘ map g) x

-- ** instances
open import Data.Maybe         as M   using (Maybe; just; nothing)
open import Data.List          as L   using (List; _∷_; [])
open import Data.List.NonEmpty as LNE using (List⁺; _∷_)
open import Data.Vec           as V   using (Vec; _∷_; [])
open import Data.Product       as P   using (_×_; _,_; ∃; -,_)

instance
  Functor-List : Functor List
  Functor-List ._<$>_ = L.map

  FunctorLaws-List : FunctorLaws List
  FunctorLaws-List = record {go} where private module go {A : Type ℓ} where
    map-id : (xs : List A) → map id xs ≡ xs
    map-id = λ where
      [] → refl
      (x ∷ xs) → cong (x ∷_) (map-id xs)

    map-∘ : ∀ {B : Type ℓ′} {C : Type ℓ″} {f : B → C} {g : A → B} (xs : List A)
      → map (f ∘ g) xs ≡ (map f ∘ map g) xs
    map-∘ {f = f}{g} = λ where
      [] → refl
      (x ∷ xs) → cong (f (g x) ∷_) (map-∘ xs)

  Functor-List⁺ : Functor List⁺
  Functor-List⁺ ._<$>_ = LNE.map

  Functor-Vec : ∀ {n} → Functor (flip Vec n)
  Functor-Vec ._<$>_ = V.map

  Functor-∃Vec : Functor (∃ ∘ Vec)
  Functor-∃Vec ._<$>_ f (_ , xs) = -, (f <$> xs)

  Functor-Maybe : Functor Maybe
  Functor-Maybe ._<$>_ = M.map

  FunctorLaws-Maybe : FunctorLaws Maybe
  FunctorLaws-Maybe = record
    { map-id = λ where (just _) → refl; nothing → refl
    ; map-∘  = λ where (just _) → refl; nothing → refl
    }

  open import Reflection

  Functor-TC : Functor TC
  Functor-TC = record {R}
    where import Reflection.TCM.Syntax as R

  Functor-Abs : Functor Abs
  Functor-Abs = record {R}
    where import Reflection.AST.Abstraction as R renaming (map to _<$>_)

  Functor-Arg : Functor Arg
  Functor-Arg = record {R}
    where import Reflection.AST.Argument as R renaming (map to _<$>_)

private
  open import Data.Nat using (ℕ; suc)

  _ = map suc (just 0) ≡ just 1
    ∋ refl

  _ = map suc (List ℕ ∋ 0 ∷ 1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ [])
    ∋ refl

  _ = map suc (List⁺ ℕ ∋ 0 ∷ 1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ [])
    ∋ refl

  _ = map suc (Vec ℕ 3 ∋ 0 ∷ 1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ [])
    ∋ refl

  _ = map suc (∃ (Vec ℕ) ∋ -, 0 ∷ 1 ∷ 2 ∷ []) ≡ (-, 1 ∷ 2 ∷ 3 ∷ [])
    ∋ refl

open FunctorLaws ⦃...⦄ public
