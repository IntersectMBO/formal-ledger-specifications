\subsection{Value Relation}
\label{sec:value-relation}


\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Primitive  using () renaming (Set to Type)

module Ledger.TokenAlgebra.ValueRelation
  (ByteString : Type)
  (PolicyID : Type)
  (AdaName              : ByteString)
  where

open import Algebra                      using (CommutativeMonoid ; Commutative ; Op₂)
open import Algebra.Morphism             using (IsMonoidMorphism ; IsSemigroupMorphism)
open import Data.Nat.Properties                        hiding (_≟_) --        using (+-identityˡ ; +-identityʳ ; +-comm ; +-assoc ; +-0-commutativeMonoid)
open import Data.Nat using (_≤_)

open import Data.Product.Base            using (swap)
open import Data.Sum.Base                using ([_,_]′)
open import Ledger.Prelude               hiding (Coin ; Rel ; _>_)
open import Ledger.TokenAlgebra ByteString PolicyID AdaName using (AssetID ; Quantity ; TokenAlgebraPoly)
open import Prelude
open import Relation.Binary              using (REL ; Rel ; _⇒_ ; IsEquivalence ; Decidable) renaming (_⇔_ to _⇐⇒_ )
open import Relation.Binary.Definitions  using (Decidable ; DecidableEquality)
open import Relation.Binary.PropositionalEquality.Core using ( module ≡-Reasoning )

private
  variable
    A B : Type
    C : REL A B 0ℓ → Type 0ℓ

open ≡-Reasoning

\end{code}

\subsection{The identity of the value monoid}

We'll use \AgdaBound{ι} to denote the identity for the Value monoid.

\begin{code}
ι : REL AssetID Quantity 0ℓ
ι _ q = q ≡ 0

I : AssetID ⇀ Quantity
I = ι , λ 0b 0b' → trans 0b (sym 0b')

_⊕₁_ : Op₂ (REL AssetID Quantity 0ℓ)
Ru ⊕₁ Rv = λ aid q → ∃[ qu ] (∃[ qv ] (Ru aid qu × Rv aid qv × (q ≡ qu + qv)))

ι-left⇒R : ∀{R} → ι ⊕₁ R ⇒ R
ι-left⇒R {R} {aid} {q} (qι , qu , h) = subst (R aid) ι-left-lemma (proj₁ (proj₂ h))
 where
 ι-left-lemma : qu ≡ q
 ι-left-lemma = begin
    qu       ≡˘⟨ +-identityˡ qu ⟩
    0 + qu   ≡˘⟨ cong (λ x → x + qu) (proj₁ h) ⟩
    qι + qu  ≡˘⟨ proj₂ (proj₂ h) ⟩
    q        ∎

R⇒ι-left : ∀{R} → R ⇒ ι ⊕₁ R
R⇒ι-left {R} Rh = 0 , _ , refl , Rh , sym (+-identityˡ _)

ι-right⇒R : ∀{R} → R ⊕₁ ι ⇒ R
ι-right⇒R {R} {aid} {q} (qu , qι , h) = subst (R aid) ι-right-lemma (proj₁ h)
 where
 ι-right-lemma : qu ≡ q
 ι-right-lemma = begin
    qu       ≡˘⟨ +-identityʳ qu ⟩
    qu + 0   ≡˘⟨ cong (λ x → qu + x) (proj₁ (proj₂ h)) ⟩
    qu + qι  ≡˘⟨ proj₂ (proj₂ h) ⟩
    q        ∎

R⇒ι-right : ∀{R} → R ⇒ R ⊕₁ ι
R⇒ι-right {R} Rh = _ , 0 , Rh , refl , sym (+-identityʳ _)

\end{code}

\subsection{Equivalence on the value monoid}

\begin{code}
-- the following probably belongs somewhere else
⇐⇒-isEquivalence : IsEquivalence {A = REL A B 0ℓ} _⇐⇒_
IsEquivalence.refl ⇐⇒-isEquivalence = id , id
IsEquivalence.sym ⇐⇒-isEquivalence = swap
proj₁ (IsEquivalence.trans ⇐⇒-isEquivalence ij jk) ixy = (proj₁ jk) ((proj₁ ij) ixy)
proj₂ (IsEquivalence.trans ⇐⇒-isEquivalence ij jk) kxy = (proj₂ ij) ((proj₂ jk) kxy)

_≋_ : Rel (Σ (REL A B 0ℓ) C) 0ℓ
u ≋ v = proj₁ u ⇐⇒ proj₁ v

≋-isEquivalence : IsEquivalence {A = Σ (REL A B 0ℓ) C} _≋_
IsEquivalence.refl ≋-isEquivalence = IsEquivalence.refl ⇐⇒-isEquivalence
IsEquivalence.sym ≋-isEquivalence xy = IsEquivalence.sym ⇐⇒-isEquivalence xy
IsEquivalence.trans ≋-isEquivalence ij jk = IsEquivalence.trans ⇐⇒-isEquivalence ij jk

_≈_ : Rel (REL A B 0ℓ) 0ℓ
u ≈ v = u ⇐⇒ v

≈-isEquivalence : IsEquivalence {A = REL A B 0ℓ} _≈_
IsEquivalence.refl ≈-isEquivalence = IsEquivalence.refl ⇐⇒-isEquivalence
IsEquivalence.sym ≈-isEquivalence xy = IsEquivalence.sym ⇐⇒-isEquivalence xy
IsEquivalence.trans ≈-isEquivalence ij jk = IsEquivalence.trans ⇐⇒-isEquivalence ij jk
\end{code}

\subsection{Summation of the value monoid and its properties}

\begin{code}
_⊕_ : Op₂ (AssetID ⇀ Quantity)
proj₁ ((Ru , _) ⊕ (Rv , _)) = Ru ⊕₁ Rv
proj₂ ((Ru , luu) ⊕ (Rv , luv)) {aid} {q} {q'} = Goal
 where
 Goal : (Ru ⊕₁ Rv) aid q → (Ru ⊕₁ Rv) aid q' → q ≡ q'
 Goal (qu , qv , Ruqu , Rvqv , q≡quqv) (qu' , qv' , Ruqu' , Rvqv' , q'≡qu'qv') = begin
   q           ≡⟨ q≡quqv ⟩
   qu + qv    ≡⟨ cong₂ _+_ (luu Ruqu Ruqu') (luv Rvqv Rvqv') ⟩
   qu' + qv'  ≡˘⟨ q'≡qu'qv' ⟩
   q'          ∎

ι-identity : Algebra.Identity _≋_ I _⊕_
proj₁ ι-identity (R , _) = ι-left⇒R {R} , R⇒ι-left {R}
proj₂ ι-identity (R , _) = ι-right⇒R {R} , R⇒ι-right {R}

⊕-comm : Algebra.Commutative _≋_ _⊕_
⊕-comm (Ru , _) (Rv , _) = i , ii
 where
 i : (Ru ⊕₁ Rv) ⇒ (Rv ⊕₁ Ru)
 i (qu , qv , Rqu , Rqv , q≡quqv) = qv , qu , Rqv , Rqu , trans q≡quqv (+-comm qu qv)

 ii : (Rv ⊕₁ Ru) ⇒ (Ru ⊕₁ Rv)
 ii (qv , qu , Rqv , Rqu , q≡qvqu) = qu , qv , Rqu , Rqv , trans q≡qvqu (+-comm qv qu)


⊕₁-assoc : Algebra.Associative _⇐⇒_ _⊕₁_
⊕₁-assoc Ru Rv Rw = i , ii
 where
 i : ((Ru ⊕₁ Rv) ⊕₁ Rw) ⇒ (Ru ⊕₁ (Rv ⊕₁ Rw))
 i {aid} {q} (quv , qw , (qu , qv , Ruqu , Rvqv , quv≡quqv) , Rwqw , q≡quvqw) = Goal
  where
  assc : q ≡ qu + (qv + qw)
  assc = begin  q               ≡⟨ q≡quvqw ⟩
                quv + qw        ≡⟨ cong (λ x → x + qw) quv≡quqv ⟩
                qu + qv + qw    ≡⟨ +-assoc qu qv qw ⟩
                qu + (qv + qw)  ∎

  Goal : (Ru ⊕₁ (Rv ⊕₁ Rw)) aid q
  Goal = qu , qv + qw , Ruqu , (qv , qw , Rvqv , Rwqw , refl) , assc

 ii : (Ru ⊕₁ (Rv ⊕₁ Rw)) ⇒ ((Ru ⊕₁ Rv) ⊕₁ Rw)
 ii {aid} {q} (qu , qvw , Ruqu , (qv , qw , Rvqv , Rwqw , qvw≡qvqw) , q≡quqvw) = Goal
  where
  assc : qu + qvw ≡ qu + qv + qw
  assc = begin  qu + qvw        ≡⟨ cong (λ x → qu + x) qvw≡qvqw ⟩
                qu + (qv + qw)  ≡˘⟨ +-assoc qu qv qw ⟩
                qu + qv + qw    ∎

  Goal : ((Ru ⊕₁ Rv) ⊕₁ Rw) aid q
  Goal = qu + qv , qw , (qu , qv , Ruqu , Rvqv , refl) , Rwqw , trans q≡quqvw assc


⊕-assoc : Algebra.Associative _≋_ _⊕_
⊕-assoc (Ru , _) (Rv , _) (Rw , _)  = i , ii
 where
 i : (Ru ⊕₁ Rv) ⊕₁ Rw ⇒ Ru ⊕₁ (Rv ⊕₁ Rw)
 i {aid} {q} (quv , qw , (qu , qv , Ruqu , Rvqv , quv≡quqv) , Rwqw , q≡quvqw) = Goal
  where
  assc : quv + qw ≡ qu + (qv + qw)
  assc = begin  quv + qw        ≡⟨ cong (λ x → x + qw) quv≡quqv ⟩
                qu + qv + qw    ≡⟨ +-assoc qu qv qw ⟩
                qu + (qv + qw)  ∎

  Goal : (Ru ⊕₁ (Rv ⊕₁ Rw)) aid q
  Goal = qu , ((qv + qw) , (Ruqu , ((qv , qw , Rvqv , Rwqw , refl) , trans q≡quvqw assc )))


 ii : Ru ⊕₁ (Rv ⊕₁ Rw) ⇒ (Ru ⊕₁ Rv) ⊕₁ Rw
 ii {aid} {q} (qu , qvw , Ruqu , (qv , qw , Rvqv , Rwqw , qvw≡qvqw) , q≡quqvw) = Goal
  where
  tras : q ≡ qu + qv + qw
  tras = begin  q               ≡⟨ q≡quqvw ⟩
                qu + qvw        ≡⟨ cong (λ x → qu + x) qvw≡qvqw ⟩
                qu + (qv + qw)  ≡˘⟨ +-assoc qu qv qw ⟩
                qu + qv + qw    ∎

  Goal : ((Ru ⊕₁ Rv) ⊕₁ Rw) aid q
  Goal = (qu + qv) , (qw , ((qu , qv , Ruqu , Rvqv , refl) , (Rwqw , tras)))


⊕-cong : Algebra.Congruent₂ _≋_ _⊕_
⊕-cong {Ru , _} {Rv , _} {Ru' , _} {Rv' , _} (Ru⇒Rv , Rv⇒Ru) (Ru'⇒Rv' , Rv'⇒Ru') = i , ii
 where
 i : (Ru ⊕₁ Ru') ⇒ (Rv ⊕₁ Rv')
 i (qu , qu' , Ruqu , Ru'qu' , q≡ququ') = qu , qu' , Ru⇒Rv Ruqu , Ru'⇒Rv' Ru'qu' , q≡ququ'

 ii : (Rv ⊕₁ Rv') ⇒ (Ru ⊕₁ Ru')
 ii (qv , qv' , Rvqv , Rv'qv' , q≡qvqv') = qv , qv' , Rv⇒Ru Rvqv , Rv'⇒Ru' Rv'qv' , q≡qvqv'
\end{code}

\subsection{Definition of the value monoid}

An inhabitant of `Value` is a map denoting a finite collection of quantities of assets.

\begin{code}
open TokenAlgebraPoly
open CommutativeMonoid renaming (_∙_ to _⋆_) hiding (trans ; sym)
open Algebra

module _
  {AdaPolicy   : PolicyID}
  {DecEqValue  : DecidableEquality (AssetID ⇀ Quantity) }
  {Size        : AssetID ⇀ Quantity → ℕ}
  {AdaForAll   : (R : AssetID ⇀ Quantity) → ∃[ q ] (proj₁ R) (AdaPolicy , AdaName) q}
  where

  contr : ⊥
  contr = proj₂ $ AdaForAll ((λ _ _ → ⊥) , λ where () ())

  VAda : Quantity → AssetID ⇀ Quantity
  VAda x = ((λ a q' → a ≡ (AdaPolicy , AdaName) × x ≡ q') , λ x y → trans (sym (proj₂ x)) (proj₂ y))

  _hasHowMuchAda : AssetID ⇀ Quantity → Quantity
  R hasHowMuchAda = proj₁ (AdaForAll R)

  VAdaHasAda : ∀{x} → ((VAda x) hasHowMuchAda) ≡ x
  VAdaHasAda {x} = (proj₂ (VAda x){(AdaPolicy , AdaName)})(proj₂ (AdaForAll (VAda x)))(_≡_.refl , _≡_.refl)

  Value-TokenAlgebra : TokenAlgebraPoly
  Value-TokenAlgebra =
    record
      { Value-CommutativeMonoid = Vcm
      ; coin = λ R → R hasHowMuchAda
      ; inject = VAda
      ; policies = λ (V , _) → λ pid → ∃[ a ] ∃[ q ] V (pid , a) q
      ; size = Size
      ; _≤ᵗ_ = λ (Ru , _) (Rv , _) → ∀ qu qv aid → (Ru aid qu × Rv aid qv) → qu ≤ qv
      ; property = λ x → VAdaHasAda
      ; coinIsMonoidMorphism = record { mn-homo = mh }
      ; DecEq-Value = record { _≟_ = DecEqValue }
      }
    where

    Vcm : CommutativeMonoid 1ℓ 0ℓ
    Vcm = record
        { Carrier = AssetID ⇀ Quantity
        ; _≈_ = _≋_
        ; _∙_ = _⊕_
        ; ε = I
        ; isCommutativeMonoid = record { isMonoid = Vm ; comm = ⊕-comm } }
        where
        isSemigrp : IsSemigroup _≋_ _⊕_
        isSemigrp = record
            { isMagma = record
                { isEquivalence = ≋-isEquivalence
                ; ∙-cong = λ{u}{v}{w}{x} y z → ⊕-cong {u}{v}{w}{x} y z }
            ; assoc = ⊕-assoc }

        Vm : IsMonoid _≋_ _⊕_ I
        Vm = record { isSemigroup = isSemigrp ; identity = ι-identity }


    mh : IsMonoidMorphism (monoid Vcm) (monoid +-0-commutativeMonoid) _hasHowMuchAda
    IsSemigroupMorphism.⟦⟧-cong (IsMonoidMorphism.sm-homo mh) {R} {R'} (_ , R'⇒R) = begin
      R hasHowMuchAda ≡⟨ proj₂ R Rq Rq' ⟩ R' hasHowMuchAda ∎
      where
      q = R hasHowMuchAda
      q' = R' hasHowMuchAda

      Rq : (proj₁ R) (AdaPolicy , AdaName) q
      Rq = proj₂ (AdaForAll R)

      Rq' : (proj₁ R) (AdaPolicy , AdaName) q'
      Rq' = R'⇒R (proj₂ (AdaForAll R'))

    IsSemigroupMorphism.∙-homo (IsMonoidMorphism.sm-homo mh) Ru Rv = begin
          q                          ≡⟨ proj₂ (proj₂ (proj₂ (proj₂ ξ))) ⟩
          proj₁ ξ + proj₁ (proj₂ ξ)  ≡˘⟨ cong (proj₁ ξ +_) qvξ ⟩
          proj₁ ξ + qv               ≡˘⟨ cong (_+ qv )     quξ ⟩
          qu + qv                    ∎
     where
     q qu qv : Quantity
     q = (Ru ⊕ Rv) hasHowMuchAda
     qu = Ru hasHowMuchAda
     qv = Rv hasHowMuchAda

     ξ : (proj₁ (Ru ⊕ Rv)) (AdaPolicy , AdaName) q
     ξ = proj₂ (AdaForAll (Ru ⊕ Rv))

     α : proj₁ Ru (AdaPolicy , AdaName) (proj₁ ξ)
     α = proj₁ (proj₂ (proj₂ (proj₂ (AdaForAll (Ru ⊕ Rv)))))
     β : proj₁ Rv (AdaPolicy , AdaName) (proj₁ (proj₂ ξ))
     β = proj₁ (proj₂ (proj₂ (proj₂ (proj₂ (AdaForAll (Ru ⊕ Rv))))))

     quξ : qu ≡ proj₁ ξ
     quξ = proj₂ Ru (proj₂ (AdaForAll Ru)) α
     qvξ : qv ≡ proj₁ (proj₂ ξ)
     qvξ = proj₂ Rv (proj₂ (AdaForAll Rv)) β

    IsMonoidMorphism.ε-homo mh = proj₂ (AdaForAll I)

\end{code}

`Val` is a finitely supported map. If `aid` is an `AssetID` and `v : Val`, then the quantity
of assets contained in `v` with `AssetID` `aid` is `v aid`. Elements of `Val` are also
referred to as asset bundles.

Remarks.

In the fls, `Val` is assumed to be a finitely supported map.  There are a number of ways we
could manifest this assumption.
1. Take the domain type to be finite and let `Val` be a total function on that domain.
2. Let `Val` be a partial function `AssetID ⇀ Quantity` and either let
   - `Quantity = ℤ ⊎ {⊥}` and `Val aid = ⊥` for all but finitely many `aid : AssetID` OR
   - `Quantity = Maybe ℤ` and `Val aid = nothing` for all but finitely many `aid : AssetID`
   (The two options are equivalent.)
3. Use the fact that the set theory, as Andre has defined it, is inherently finite.

In my view the first option, with a finite domain, seems the easiest to express and work with.

Here are two alternative approaches that might be better:

---------------------

1. ValTrees

Use an inductive type for vals, called ValTree, and have two constructors:

  - Empty for the zero (identity) value
  - NonEmpty : (AssetID , Quantity) → ValTree → ValTree → ValTree

assuming (AssetID , Quantity) can be ordered (could just order by first component, AssetID).

We would have functions for inserting a new (AssetID , Quantity) into a ValTree and for
checking whether a ValTree contains a given (AssetID , Quantity).

\begin{code}

data ValTree : Type where
 Empty : ValTree
 NonEmpty : AssetID → Quantity → ValTree → ValTree → ValTree

isEmpty : ValTree → Bool
isEmpty Empty = true
isEmpty (NonEmpty _ _ _ _ ) = false

contains' : ValTree → AssetID → Bool
contains' Empty _ = false
contains' (NonEmpty a q l r) aid = contains' r aid

  -- if (aid < a) then
  --   return contains l aid
  -- else if (a < aid) then
  --   return contains r aid
  -- else return true

addAsset : ValTree → AssetID → Quantity → ValTree
addAsset Empty aid q = NonEmpty aid q Empty Empty
addAsset (NonEmpty a q₁ l r) aid q₂ = r

  -- if (aid < a) then
  --   return NonEmpty a q₁ (addAsset l aid q₂) r
  -- else if (a < aid) then
  --   return NonEmpty a q₁ l (addAsset r aid q₂)
  -- else
  --   return NonEmpty a (q₁ + q₂) l r
\end{code}

-----------------------

2. Key-value pairs

Viewing the Value type as a collection of key-value pairs (with "unique" keys because of the left-unique constraint),

Addition could be performed with an "outer join" followed by a "map values".

This might be the most performant approach.

Some remarks about how this works:

outerJoin : ∀{A B C} → REL A B → REL A C → REL A (Maybe B × Maybe C)

mapValues : ∀{A B C} → REL A B → (B → C) → REL A C

\begin{code}

combineValues : Maybe Quantity × Maybe Quantity → Maybe Quantity
combineValues (x        , nothing)  = x
combineValues (nothing  , just y)   = just y
combineValues (just x   , just y)   = just (x + y)

zeroMaybe : Maybe Quantity → Quantity
zeroMaybe (just x) = x
zeroMaybe nothing = 0

contains : (AssetID ↛ Quantity) → AssetID → Type
contains (R , _) aid = ∃[ q ] (aid , q) ∈ R

getQuantity : ∀{aid} → (m : AssetID ↛ Quantity) → contains m aid → Quantity
getQuantity _ (q , _) = q

makeTotal : (AssetID ↛ Quantity) → AssetID → Maybe Quantity
makeTotal m aid = helper (contains m aid)
 where
 helper : Type → Maybe Quantity
 helper x = nothing
 -- helper false = nothing

\end{code}


[1] https://github.com/input-output-hk/cardano-ledger/releases/latest/download/mary-ledger.pdf
