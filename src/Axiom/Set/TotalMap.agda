{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Axiom.Set

module Axiom.Set.TotalMap (th : Theory)  where

open import Prelude hiding (lookup)

open import Agda.Primitive        using     ()
                                  renaming  ( Set to Type )
open import Axiom.Set.Map th      using     ( Map ; left-unique ; module Unionᵐ ; ❴_❵ᵐ ; _≡ᵐ_
                                            ; mapWithKey-uniq ; mapValues ; left-unique-mapˢ )
                                  renaming  ( _ˢ to _ᵐ )

open import Axiom.Set.Properties th
open import Axiom.Set.Rel th

open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Relation.Unary.Any
  using (Any; index; map; here; there)


open import Tactic.AnyOf
open import Interface.DecEq
open import Tactic.Defaults
open import Relation.Binary.PropositionalEquality using ( _≡_ ; cong)
open import Relation.Binary using () renaming (Decidable to Dec₂)
open import Relation.Nullary.Decidable using (Dec ; yes ; no)
open import Relation.Unary using () renaming (Decidable to Dec₁)


open Theory th  renaming (map to mapˢ) -- _⟦_⟧)
open Equivalence
private
  variable  A B C D : Type
            -- R R' : Rel A B

-- Because of missing macro hygiene, we have to copy&paste this. https://github.com/agda/agda/issues/3819
private macro
  ∈⇒P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ [])
  P⇒∈ = anyOfⁿᵗ (quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])
  ∈⇔P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])


-----------------------------------
-- Representations of total maps --

-- Test if a set relation is total.
total : Rel A B → Type
total R = ∀{a} → a ∈ dom R

total₂ : Rel A B → Type
total₂ R = ∀{a} → ∃[ b ]((a , b) ∈ R)

total⇒total₂ : {R : Rel A B} → total R → total₂ R
total⇒total₂ totR = to dom∈ totR

total₂⇒total : {R : Rel A B} → total₂ R → total R
total₂⇒total totR₂ = ∈-map′ (proj₂ totR₂)

total⇔total₂ : ∀{A}{B}{R : Rel A B} → total R ⇔ total₂ R
total⇔total₂ .to         = total⇒total₂
total⇔total₂ .from       = total₂⇒total
total⇔total₂ .to-cong    = cong (to total⇔total₂)
total⇔total₂ .from-cong  = cong (from total⇔total₂)


-- Test if a set relation is total (alternative syntax)
_Total : Rel A B → Type
R Total = total R

-- Test if a set relation is defined on all of X : Set A.
_TotalOn_ : Rel A B → Set A → Type
R TotalOn X = X ⊆ dom R

_TotalOn₂_ : ∀{A}{B} → Rel A B → Set A → Type
R TotalOn₂ X = ∀{a} → a ∈ X → ∃[ b ]((a , b) ∈ R)

TotalOn₂⇒TotalOn : {R : Rel A B}{X : Set A} → R TotalOn₂ X → R TotalOn X
TotalOn₂⇒TotalOn RtotX a∈X = ∈-map′ (proj₂ (RtotX a∈X))

TotalOn⇒TotalOn₂ : {R : Rel A B}{X : Set A} → R TotalOn X → R TotalOn₂ X
TotalOn⇒TotalOn₂ RtotX a∈X = to dom∈ (RtotX a∈X)

TotalOn⇔TotalOn₂ : {R : Rel A B}{X : Set A} → R TotalOn₂ X ⇔ R TotalOn X
TotalOn⇔TotalOn₂ .to         = TotalOn₂⇒TotalOn
TotalOn⇔TotalOn₂ .from       = TotalOn⇒TotalOn₂
TotalOn⇔TotalOn₂ .to-cong    = cong (to TotalOn⇔TotalOn₂)
TotalOn⇔TotalOn₂ .from-cong  = cong (from TotalOn⇔TotalOn₂)


-- Test if a set relation is total (alternative syntax)
TotalSet : Rel A B → Type
TotalSet R = total R

record IsTotalMap (R : Rel A B) : Type where
  field  isLeftUnique  : left-unique R
         isTotal       : total R

-- define a map that's left-unique and total (on all of A)
TotalMap : Type → Type → Type
TotalMap A B = Σ (Rel A B) (λ R → left-unique R × total R)

-- define a map that's left-unique and total on X : Set A
TotalMapOn : {A : Type}(X : Set A)(B : Type) → Type
TotalMapOn {A} X B = Σ (Rel A B) (λ R → left-unique R × R TotalOn X)

TotalMapOn₂ : {A : Type}(X : Set A)(B : Type) → Type
TotalMapOn₂ {A} X B = Σ (Rel A B) (λ R → left-unique R × R TotalOn₂ X)


TotalMapOn₂⇒TotalMapOn : {X : Set A} → TotalMapOn₂ X B → TotalMapOn X B
TotalMapOn₂⇒TotalMapOn (R , luR , totR) = R , luR , TotalOn₂⇒TotalOn totR

TotalMapOn⇒TotalMapOn₂ : {X : Set A} → TotalMapOn X B → TotalMapOn₂ X B
TotalMapOn⇒TotalMapOn₂ (R , luR , totR) = R , luR , TotalOn⇒TotalOn₂ totR

TotalMapOn⇔TotalMapOn₂ : {X : Set A} → TotalMapOn X B ⇔ TotalMapOn₂ X B
TotalMapOn⇔TotalMapOn₂ .to         = TotalMapOn⇒TotalMapOn₂
TotalMapOn⇔TotalMapOn₂ .from       = TotalMapOn₂⇒TotalMapOn
TotalMapOn⇔TotalMapOn₂ .to-cong    = cong (TotalMapOn⇔TotalMapOn₂ .to)
TotalMapOn⇔TotalMapOn₂ .from-cong  = cong (TotalMapOn⇔TotalMapOn₂ .from)


------------------------------------------------------
-- Correspondences between total maps and functions --

-- function to map
Function⇒MapOn : ∀{A B}{f : A → B} (X : Set A) → Map A B
Function⇒MapOn {A}{B}{f = f} X = mapˢ (λ x → (x , f x)) X , left-unique-mapˢ X

-- function to total map (alternative representation)
Function⇒TotalMapOn₂ : ∀{A B}(f : A → B)(X : Set A) → TotalMapOn₂ X B
Function⇒TotalMapOn₂{A}{B} f X = R , left-unique-mapˢ X , tot₂
  where
  R : Rel A B
  R = mapˢ (λ x → x , f x) X

  tot₂ : R TotalOn₂ X
  tot₂ {a} a∈X = f a , ∈-map′ a∈X

-- function to total map
Function⇒TotalMapOn : (f : A → B) (X : Set A) → TotalMapOn X B
Function⇒TotalMapOn f X = TotalMapOn₂⇒TotalMapOn (Function⇒TotalMapOn₂ f X)


module _  {A B : Type}
          ⦃ _ : DecEq A ⦄
          { _∈?_ : ⦃ DecEq A ⦄ → Dec₂ (_∈_ {A = A}) } where

  -- from function `f : Σ A (_∈ X) → B` to function `ff : A → B` such that `ff a = z` for all `a ∉ X`.
  FunOn⇒Fun :  {X : Set A}
    →          B              -- default value (used wherever f is not defined)
    →          (Σ A (_∈ X) → B)
               ----------------------
    →          A → B

  FunOn⇒Fun {X = X} z f a with (a ∈? X)
  ... | (yes p) = f (a , p)
  ... | (no  _) = z


  -- from function `f : Σ A (_∈ X) → B` to total map on X.
  FunOn⇒TotalMapOn₂ :  {X : Set A}
    →                  B              -- default value (used wherever f is not defined)
    →                  (Σ A (_∈ X) → B)
                       ----------------------
    →                  TotalMapOn₂ X B

  FunOn⇒TotalMapOn₂ {X = X} z f = R , (luR , tot₂R)
      where
      ff : (a : A) → B
      ff = FunOn⇒Fun z f

      R : Rel A B
      R = mapˢ (λ a → a , ff a ) X

      luR : left-unique R
      luR = left-unique-mapˢ {f = ff} X

      tot₂R : R TotalOn₂ X
      tot₂R {a} a∈X = ff a , ∈-map′ a∈X


  FunOn⇒TotalMapOn : {X : Set A} → (z : B) → (Σ A (_∈ X) → B) → TotalMapOn X B
  FunOn⇒TotalMapOn {X = X} z f = TotalMapOn₂⇒TotalMapOn (FunOn⇒TotalMapOn₂ z f)


-- from function `f : Σ A (_∈ X) → B` to function `ff : A → B` such that `ff a = z` for all `a ∉ X`.
FunOn⇒Fun' :  {X : Set A}
 →            Dec₁ (_∈ X)         -- !!! requires Dec₁ (_∈ X) !!! --
 →            B                   -- default value (used wherever f is not defined)
 →            (Σ A (_∈ X) → B)
              ------------------
 →            A → B

FunOn⇒Fun' dec z f a with (dec a)
... | (yes p) = f (a , p)
... | (no  _) = z

-- from function `f : Σ A (_∈ X) → B` to total map on X.
FunOn⇒TotalMapOn₂' :  {X : Set A}
 →                    Dec₁ (_∈ X)       -- !!! requires Dec₁ (_∈ X) !!! --
 →                    B                 -- default value (used wherever f is not defined)
 →                    (Σ A (_∈ X) → B)
                      ------------------
 →                    TotalMapOn₂ X B

FunOn⇒TotalMapOn₂' {X = X} d z f = Function⇒TotalMapOn₂ (FunOn⇒Fun' d z f) X


-- [ requires Dec₁ (_∈ X) ] --
FunctionOn⇒TotalMapOn' : {X : Set A} → Dec₁ (_∈ X) → B → (Σ A (_∈ X) → B) → TotalMapOn X B
FunctionOn⇒TotalMapOn' {X = X} d z f = Function⇒TotalMapOn (FunOn⇒Fun' d z f) X



-- Converses -------------------------------------------------------------------------------------
-- from total map to function
TotalMap⇒Function
  lookup           : TotalMap A B → A → B

TotalMap⇒Function (R , _ , totR) a = proj₁ ξ
  where
  ξ : ∃[ b ] (a , b) ∈ R
  ξ = to dom∈ totR

lookup = TotalMap⇒Function   -- just an alias

lookupIsValid : (tm : TotalMap A B)(a : A) → (a , lookup tm a) ∈ proj₁ tm
lookupIsValid (_ , _ , totR) _ = proj₂ (to dom∈ totR)

-- total map on X to function on X
TotalMapOn⇒FunctionOn
  lookupOn             : {X : Set A} → TotalMapOn X B → Σ A (_∈ X) → B

TotalMapOn⇒FunctionOn (R , luR , totR) (a , a∈X) = proj₁ ξ
  where
  ξ : ∃[ b ] (a , b) ∈ R
  ξ = to dom∈ (totR a∈X)

lookupOn = TotalMapOn⇒FunctionOn  -- just an alias


lookupOnIsValid : (X : Set A){tm : TotalMapOn X B}{a : A}(a∈X : a ∈ X) → (a , lookupOn tm (a , a∈X)) ∈ proj₁ tm
lookupOnIsValid X {(R , luR , totR)} a∈X = proj₂ (to dom∈ (totR a∈X))


-- total map (alt representation) to function
TotalMapOn₂⇒FunctionOn
  lookupOn₂             : {X : Set A} → TotalMapOn₂ X B → Σ A (_∈ X) → B

TotalMapOn₂⇒FunctionOn (_ , _ , tot) (_ , a∈X) = proj₁ (tot a∈X)

lookupOn₂ = TotalMapOn₂⇒FunctionOn


----------------------------
-- Equality of total maps --

_≡ᵗᵐˢ_ : {X : Set A} → TotalMapOn X B → TotalMapOn X B → Type
(x , _) ≡ᵗᵐˢ (y , _) = x ≡ᵉ y

_≡ᵗᵐ_ : {X : Set A} → TotalMapOn X B → TotalMapOn X B → Type
u ≡ᵗᵐ v = ∀{x} → (lookupOn u) x ≡ (lookupOn v) x 

_ᵗᵐ : (R : Rel A B) → ⦃ IsTotalMap R ⦄ → TotalMap A B
_ᵗᵐ R  ⦃ record { isLeftUnique = Rlu ; isTotal = Rt } ⦄ = R , Rlu , Rt

∈-map₂ : ∀(X : Set A) {f : A → B} {a} → a ∈ X → (a , f a) ∈ mapˢ (λ x → (x , f x)) X
∈-map₂ X {f} {a} a∈X = to ∈-map (a , (refl , a∈X))



module Unionᵗᵐ {B : Type} ⦃ _ : DecEq A ⦄ where

  mapWithKeyTotal : ∀{B'}{f : A → B → B'}{R : Rel A B} → total R → total (mapˢ (λ { (x , y) → x , f x y }) R)
  mapWithKeyTotal {f = f}{R} tot {a} = ψ (ϕ tot)
    where
    ϕ : a ∈ dom R → Σ (Σ A (λ x₁ → B)) (λ a₁ → a ≡ proj₁ a₁ × a₁ ∈ R)
    ϕ = from ∈-map
    ψ : Σ (Σ A (λ _ → B)) (λ uv → a ≡ proj₁ uv × uv ∈ R) → a ∈ dom (mapˢ (λ {(x , y) → x , f x y}) R)
    ψ (_ , refl , aRb) = ∈-map′ (∈-map′ aRb)

  mapWithKeyTotalOn : ∀{B'}(X : Set A){f : A → B → B'}{R : Rel A B} → R TotalOn X →  (mapˢ (λ { (x , y) → x , f x y }) R) TotalOn X
  mapWithKeyTotalOn {B' = B'} X {f}{R} tot {a} a∈X = Goal
    where
    R' : Rel A B'
    R' = mapˢ (λ { (x , y) → x , f x y }) R

    h : ∃[ b ] (a , b) ∈ R
    h = TotalOn⇒TotalOn₂ tot a∈X

    h' : ∃[ b ] (a , b) ∈ R'
    h' = (f a (proj₁ h)) , (∈-map′ (proj₂ h))

    Goal : a ∈ dom R'
    Goal = ∈-map′ (proj₂ h')

  mapWithKeyTotalOn₂⇒TotalOn : ∀{B'}(X : Set A){f : A → B → B'}{R : Rel A B} → R TotalOn₂ X → (mapˢ (λ { (x , y) → x , f x y }) R) TotalOn X
  mapWithKeyTotalOn₂⇒TotalOn {B' = B'} X {f}{R} tot {a} a∈X = Goal
    where
    R' : Rel A B'
    R' = mapˢ (λ { (x , y) → x , f x y }) R

    h : ∃[ b ] (a , b) ∈ R
    h = tot a∈X

    h' : ∃[ b ] (a , b) ∈ R'
    h' = f a (proj₁ h) , ∈-map′ (proj₂ h)

    Goal : a ∈ dom R'
    Goal = ∈-map′ (proj₂ h')

  mapWithKeyTotalOn₂ : ∀{B'}(X : Set A){f : A → B → B'}{R : Rel A B} → R TotalOn₂ X → (mapˢ (λ { (x , y) → x , f x y }) R) TotalOn₂ X
  mapWithKeyTotalOn₂ {B' = B'} X {f}{R} tot {a} a∈X = Goal
    where
    R' : Rel A B'
    R' = mapˢ (λ { (x , y) → x , f x y }) R

    h : ∃[ b ] (a , b) ∈ R
    h = tot a∈X

    Goal : ∃[ b ] (a , b) ∈ R'
    Goal = f a (proj₁ h) , ∈-map′ (proj₂ h)

  mapWithKey : ∀{B'} → (A → B → B') → TotalMap A B → TotalMap A B'
  mapWithKey {B'} f (r , lur , tr) = R , mapWithKey-uniq lur , mapWithKeyTotal tr
    where
    R : Rel A B'
    R = mapˢ (λ { (x , y) → x , f x y}) r

  mapWithKeyOn : ∀{B'}(X : Set A) → (A → B → B') → TotalMapOn X B → TotalMapOn X B'
  mapWithKeyOn {B'} X f (r , lur , tr) = R , mapWithKey-uniq lur , mapWithKeyTotalOn X tr
    where
    R : Rel A B'
    R = mapˢ (λ { (x , y) → x , f x y}) r

  mapWithKeyOn₂ : ∀{B'}(X : Set A) → (A → B → B') → TotalMapOn₂ X B → TotalMapOn₂ X B'
  mapWithKeyOn₂ {B' = B'} X f (r , lur , tr) = R , mapWithKey-uniq lur , mapWithKeyTotalOn₂ X tr
    where
    R : Rel A B'
    R = mapˢ (λ { (x , y) → x , f x y}) r

  update : A → B → TotalMap A B → TotalMap A B
  update a b t = mapWithKey f t
   where
   f : A → B → B
   f x y with (x ≟ a)
   ... | yes _ = b
   ... | no _ = y

  updateOn : {X : Set A} → A → B → TotalMapOn X B → TotalMapOn X B
  updateOn {X} a b t = mapWithKeyOn X f t
   where
   f : A → B → B
   f x y with (x ≟ a)
   ... | yes _ = b
   ... | no _ = y

  updateOn₂ : (X : Set A) → A → B → TotalMapOn₂ X B → TotalMapOn₂ X B
  updateOn₂ X a b t = mapWithKeyOn₂ X f t
   where
   f : A → B → B
   f x y with (x ≟ a)
   ... | yes _ = b
   ... | no _ = y


