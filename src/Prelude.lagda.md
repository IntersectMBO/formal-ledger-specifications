---
source_branch: master
source_path: src/Prelude.lagda.md
---

```agda
{-# OPTIONS --safe --without-K #-}

module Prelude where

open import Agda.Primitive using (lzero) renaming (Set to Type) public

open import Level public
  hiding (lower)
  renaming (_⊔_ to _⊔ˡ_; suc to sucˡ; zero to zeroˡ)
open import Function public

open import Data.Bool public
  hiding (_≟_; _≤_; _≤?_; _<_; _<?_; if_then_else_)
open import Data.Bool.ListAction public
open import Data.Empty public
open import Data.List public
  hiding (all; and; any; align; alignWith; filter; fromMaybe; map; or; product; sum; zip; zipWith)
open import stdlib.Data.List public
  using (Is-[])
open import Data.List.Membership.Propositional public
  using () renaming (_∈_ to _∈ˡ_; _∉_ to _∉ˡ_)
open import Data.Maybe public
  hiding (_>>=_; align; alignWith; ap; fromMaybe; map; zip; zipWith)
open import Data.Unit public
  using (⊤; tt)
open import Data.Unit.Polymorphic public
  using ()
  renaming (⊤ to ⊤↑; tt to tt↑)
instance Poly-tt = tt↑
open import Data.Sum public
  hiding (assocʳ; assocˡ; map; map₁; map₂; reduce; swap)
open import Data.Product public
  hiding (assocʳ; assocˡ; map; map₁; map₂; map₂′; swap; _<*>_)
open import Data.Nat public
  hiding (_≟_; _≤_; _≤?_; _<_; _<?_; _≤ᵇ_; _≡ᵇ_; _≥_; _>_; less-than-or-equal)
  renaming (_+_ to _+ℕ_)
open import Data.Nat.ListAction public
open import Data.Integer as ℤ public
  using (ℤ)
  renaming (_+_ to _+ℤ_)
open import Data.String public
  using (String; _<+>_)

open import Relation.Nullary public
open import Relation.Nullary.Negation public
open import Relation.Nullary.Decidable public
  using (Dec; yes; no; dec-yes; dec-no; ⌊_⌋; ¬?; toWitness; fromWitness)
  renaming (map′ to mapDec)
open import Relation.Unary public
  using (Pred) renaming (Decidable to Decidable¹)
open import Relation.Binary public
  using () renaming (Decidable to Decidable²)
open import Relation.Binary.PropositionalEquality public
  hiding (preorder; isPreorder; setoid; [_])

open import Class.Core public
  using (Type↑)
open import Class.Functor public
  renaming (fmap to map)
open import Class.Bifunctor public
open import Class.Semigroup public
open import Class.Monoid public
open import Class.CommutativeMonoid public
open import Class.Applicative public
open import Class.Monad public
open import Class.DecEq public; instance DecEq-×′ = DecEq-×
open import Class.Decidable public
∃⁇ : ∀ {ℓ} → Set (sucˡ ℓ)
∃⁇ {ℓ} = Σ (Set ℓ) _⁇
open import Class.Show public

∃₂-syntax : ∀ {a b c} {A : Set a} {B : Set b}
     (C : A → B → Set c) → Set _
∃₂-syntax C = ∃ λ a → ∃ λ b → C a b

infix 2 ∃₂-syntax
syntax ∃₂-syntax (λ x y → C) = ∃₂[ x , y ] C

-- Instance for number literals, not enabled by default
import Data.Nat.Literals as ℕ
import Data.Integer.Literals as ℤ
import Data.Rational.Literals as ℚ

instance Number-ℕ = ℕ.number
instance Number-ℤ = ℤ.number
instance Number-ℚ = ℚ.number

-- (Pseudo)equality (for Maybe)
open import Data.Maybe.Relation.Binary.Connected
  using (Connected; connected?)

_~_ : {A : Type} → Maybe A → Maybe A → Type
_~_ = Connected _≡_

instance
  ~? : {A : Type} {x y : Maybe A} → ⦃ DecEq A ⦄ → (x ~ y) ⁇
  ~? {A} {x} {y} ⦃ deqEq ⦄ = ⁇ (connected? (DecEq._≟_ deqEq) x y)

-- Positive and negative part of integers
open import Data.Integer using (_⊖_) public
open import Data.Integer using (sign; ∣_∣)
open import Data.Integer.Properties using ([1+m]⊖[1+n]≡m⊖n)
open import Data.Sign using (Sign)

open import Data.Nat.Properties using (m+[n∸m]≡n; m≤n⇒m∸n≡0; ≤-total; +-identityʳ)

posPart : ℤ → ℕ
posPart x with sign x
... | Sign.+ = ∣ x ∣
... | Sign.- = 0

negPart : ℤ → ℕ
negPart x with sign x
... | Sign.- = ∣ x ∣
... | Sign.+ = 0

∸≡posPart⊖ : {m n : ℕ} → (m ∸ n) ≡ posPart (m ⊖ n)
∸≡posPart⊖ {zero} {zero} = _≡_.refl
∸≡posPart⊖ {zero} {ℕ.suc n} = _≡_.refl
∸≡posPart⊖ {ℕ.suc m} {zero} = _≡_.refl
∸≡posPart⊖ {ℕ.suc m} {ℕ.suc n} = trans (∸≡posPart⊖{m}{n}) (sym (cong posPart (([1+m]⊖[1+n]≡m⊖n m n))))

∸≡negPart⊖ : {m n : ℕ} → (n ∸ m) ≡ negPart (m ⊖ n)
∸≡negPart⊖ {zero}  {zero}  = refl
∸≡negPart⊖ {zero}  {ℕ.suc n} = refl
∸≡negPart⊖ {ℕ.suc m} {zero}  = refl
∸≡negPart⊖ {ℕ.suc m} {ℕ.suc n} =
  trans (∸≡negPart⊖ {m} {n})
        (sym (cong negPart ([1+m]⊖[1+n]≡m⊖n m n)))

+∸≡∸+ : (a b : ℕ) → a +ℕ (b ∸ a) ≡ b +ℕ (a ∸ b)
+∸≡∸+ a b with ≤-total a b
... | inj₁ a≤b =
  trans (m+[n∸m]≡n a≤b)
        (sym (trans (cong (b +ℕ_) (m≤n⇒m∸n≡0 a≤b)) (+-identityʳ b)))
... | inj₂ b≤a =
  trans (cong (a +ℕ_) (m≤n⇒m∸n≡0 b≤a))
        (trans (+-identityʳ a) (sym (m+[n∸m]≡n b≤a)))

-- y + posPart (x ⊖ y) ≡ x + negPart (x ⊖ y)
posPart-negPart-sym : ∀ x y → y +ℕ posPart (x ⊖ y) ≡ x +ℕ negPart (x ⊖ y)
posPart-negPart-sym x y = let _+_ = _+ℕ_ in
  begin
    y + posPart (x ⊖ y)  ≡⟨ cong (y +_) (sym (∸≡posPart⊖ {x} {y})) ⟩
    y + (x ∸ y)          ≡⟨ +∸≡∸+ y x ⟩
    x + (y ∸ x)          ≡⟨ cong (x +_) (∸≡negPart⊖ {x} {y}) ⟩
    x + negPart (x ⊖ y)  ∎
  where open ≡-Reasoning

instance
  Dec-NonZero : ∀ {n} → NonZero n ⁇
  Dec-NonZero {zero} .dec = no λ ()
  Dec-NonZero {suc n} .dec = yes (record { nonZero = tt })
```
