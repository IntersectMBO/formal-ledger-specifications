\subsection{Value Relation}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Primitive renaming (Set to Type)

module Ledger.TokenAlgebra.ValueRelation

       -- TODO: determine how these three parameters should be defined in modules that depend on this one.
       {PolicyID : Type}    -- identifies monetary policies
       {ByteString : Type}  -- could postulate `ByteString` here, but then we'd have to drop `--safe` pragma
       {AdaName : ByteString}
 where

open import Ledger.Prelude               hiding (Coin ; Rel ; _>_)

open import Ledger.TokenAlgebra {PolicyID}{ByteString}{AdaName}
                                         using (AssetID ; AssetName ; Quantity ; TokenAlgebraRel)

open import Algebra                      using (CommutativeMonoid ; Commutative)
open import Algebra.Core                 using (Op₂)
open import Algebra.Morphism             using (IsMonoidMorphism ; IsSemigroupMorphism)
open import Data.Nat                     using (ℕ ; _≤_ ; _>_)
                                         renaming (zero to 0ℕ ; _+_ to _+ℕ_)
open import Data.Nat.Properties          using ( +-identityˡ ; +-identityʳ ; +-comm ; +-assoc ; +-0-commutativeMonoid )
open import Data.Product.Base            using (swap)
open import Data.Sum.Base                using ([_,_]′)

open import Relation.Binary              using (REL ; Rel ; _⇒_ ; IsEquivalence ; Decidable)
                                         renaming (_⇔_ to _⇐⇒_ )
open import Relation.Binary.Definitions  using (Decidable ; DecidableEquality)

open import Relation.Binary.PropositionalEquality.Core using ( module ≡-Reasoning )


private
  variable
    A B : Type
    C : REL A B 0ℓ → Type 0ℓ

_⊕₁_ : Op₂ (REL AssetID Quantity 0ℓ)
Ru ⊕₁ Rv = λ aid q → ∃[ qu ] (∃[ qv ] (Ru aid qu × Rv aid qv × (q ≡ qu +ℕ qv)))

_⊕_ : Op₂ (AssetID ⇀ Quantity)

-- the summed relation
proj₁ ((Ru , _) ⊕ (Rv , _)) = Ru ⊕₁ Rv

-- proof that the summed relation is a left-unique relation
proj₂ ((Ru , luu) ⊕ (Rv , luv)) {aid} {q} {q'} = Goal
 where
 Goal : (Ru ⊕₁ Rv) aid q → (Ru ⊕₁ Rv) aid q' → q ≡ q'
 Goal (qu , qv , Ruqu , Rvqv , q≡quqv) (qu' , qv' , Ruqu' , Rvqv' , q'≡qu'qv') = γ
  where
  qu≡qu' = luu Ruqu Ruqu'
  qv≡qv' = luv Rvqv Rvqv'

  quqv≡qu'qv' : qu +ℕ qv ≡ qu' +ℕ qv'
  quqv≡qu'qv' = trans (cong (λ b → qu +ℕ b) qv≡qv') (cong (λ a → a +ℕ qv') qu≡qu')

  γ : q ≡ q'
  γ = trans q≡quqv (trans quqv≡qu'qv' (sym q'≡qu'qv'))

-- the identity for the Value monoid
ι : REL AssetID Quantity 0ℓ
ι aid q = q ≡ 0ℕ

-- the identity is a left-unique relation
ι-left-unique : left-unique-rel ι
ι-left-unique {a} {b} {b'} 0b 0b' = trans 0b (sym 0b')

-- the following is useful (but probably belongs somewhere else)
⇐⇒-isEquivalence : IsEquivalence {A = REL A B 0ℓ} _⇐⇒_
IsEquivalence.refl ⇐⇒-isEquivalence = id , id
IsEquivalence.sym ⇐⇒-isEquivalence = swap
proj₁ (IsEquivalence.trans ⇐⇒-isEquivalence ij jk) ixy = (proj₁ jk) ((proj₁ ij) ixy)
proj₂ (IsEquivalence.trans ⇐⇒-isEquivalence ij jk) kxy = (proj₂ ij) ((proj₂ jk) kxy)

_≋_ : Rel (Σ (REL A B 0ℓ) C) 1ℓ
u ≋ v = Lift 1ℓ (proj₁ u ⇐⇒ proj₁ v)

≋-isEquivalence : IsEquivalence {A = Σ (REL A B 0ℓ) C} _≋_
IsEquivalence.refl ≋-isEquivalence = lift (IsEquivalence.refl ⇐⇒-isEquivalence)
Lift.lower (IsEquivalence.sym ≋-isEquivalence (lift xy)) = IsEquivalence.sym ⇐⇒-isEquivalence xy
Lift.lower (IsEquivalence.trans ≋-isEquivalence (lift ij) (lift jk)) = IsEquivalence.trans ⇐⇒-isEquivalence ij jk


_≋'_ : Rel (Σ (REL A B 0ℓ) C) 1ℓ
u ≋' v = Lift 1ℓ (proj₁ u ⇐⇒ proj₁ v)


≋'-isEquivalence : IsEquivalence {A = Σ (REL A B 0ℓ) C} _≋'_
IsEquivalence.refl ≋'-isEquivalence = lift (IsEquivalence.refl ⇐⇒-isEquivalence)
Lift.lower (IsEquivalence.sym ≋'-isEquivalence (lift xy)) = IsEquivalence.sym ⇐⇒-isEquivalence xy
Lift.lower (IsEquivalence.trans ≋'-isEquivalence (lift ij) (lift jk)) = IsEquivalence.trans ⇐⇒-isEquivalence ij jk

-- an alternative  equivalence
_≈_ : Rel (REL A B 0ℓ) 1ℓ
u ≈ v = Lift 1ℓ (u ⇐⇒ v)


≈-isEquivalence : IsEquivalence {A = REL A B 0ℓ} _≈_
IsEquivalence.refl ≈-isEquivalence = lift (IsEquivalence.refl ⇐⇒-isEquivalence)
Lift.lower (IsEquivalence.sym ≈-isEquivalence (lift xy)) = IsEquivalence.sym ⇐⇒-isEquivalence xy
Lift.lower (IsEquivalence.trans ≈-isEquivalence (lift ij) (lift jk)) = IsEquivalence.trans ⇐⇒-isEquivalence ij jk




ι-left : REL AssetID Quantity 0ℓ → REL AssetID Quantity 0ℓ
ι-left Ru aid q = ∃[ qι ] (∃[ qu ] ι aid qι × Ru aid qu × q ≡ qι +ℕ qu)

ι-right : REL AssetID Quantity 0ℓ → REL AssetID Quantity 0ℓ
ι-right Ru aid q = ∃[ qu ] (∃[ qι ] Ru aid qu × ι aid qι × q ≡ qu +ℕ qι)

ι-left-lemma1 : ∀{Ru aid q} → (h : ι-left Ru aid q) → proj₁ h ≡ 0ℕ
ι-left-lemma1 {aid} {q} h = (proj₁ (proj₂ (proj₂ h)))

open ≡-Reasoning

ι-left-lemma2 : ∀{Ru aid q} → (h : ι-left Ru aid q) → q ≡ proj₁ (proj₂ h)
ι-left-lemma2 {Ru}{aid}{q} h = let qι = proj₁ h ; qu = proj₁ (proj₂ h) in
 begin
   q         ≡⟨ proj₂ (proj₂ (proj₂ (proj₂ h))) ⟩
   qι +ℕ qu  ≡⟨ cong (λ x → x +ℕ qu) (ι-left-lemma1 {Ru} h) ⟩
   0ℕ +ℕ qu  ≡⟨ +-identityˡ qu ⟩
   qu        ∎

ι-right-lemma1 : ∀{Ru aid q} → (h : ι-right Ru aid q) → proj₁ (proj₂ h) ≡ 0ℕ
ι-right-lemma1 {aid} {q} h = proj₁ (proj₂ (proj₂ (proj₂ h)))

ι-right-lemma2 : ∀{Ru aid q} → (h : ι-right Ru aid q) → q ≡ proj₁ h
ι-right-lemma2 {Ru}{aid}{q} h = let qu = proj₁ h ; qι = proj₁ (proj₂ h) in
 begin
   q         ≡⟨ proj₂ (proj₂ (proj₂ (proj₂ h))) ⟩
   qu +ℕ qι  ≡⟨ cong (λ x → qu +ℕ x) (ι-right-lemma1 {Ru} h) ⟩
   qu +ℕ 0ℕ  ≡⟨ +-identityʳ qu ⟩
   qu        ∎

ι-left⇒Ru : ∀{Ru} → ι-left Ru ⇒ Ru
ι-left⇒Ru {Ru} {aid} {q} h = Goal
 where
 qu≡q : proj₁ (proj₂ h) ≡ q
 qu≡q = sym (ι-left-lemma2 {Ru} h)

 Goal : Ru aid q
 Goal = subst (λ x → Ru aid x) qu≡q (proj₁ (proj₂ (proj₂ (proj₂ h))))

Ru⇒ι-left : ∀{Ru} → Ru ⇒ ι-left Ru
Ru⇒ι-left {Ru} {aid} {q} Ruh = 0ℕ , q , refl , Ruh , sym (+-identityˡ q)

ι-right⇒Ru : ∀{Ru} → ι-right Ru ⇒ Ru
ι-right⇒Ru {Ru} {aid} {q} h = subst (λ x → Ru aid x) qu≡q (proj₁ (proj₂ (proj₂ h)))
 where
 qu≡q : proj₁ h ≡ q
 qu≡q = sym (ι-right-lemma2 {Ru} h)

Ru⇒ι-right : ∀{Ru} → Ru ⇒ ι-right Ru
Ru⇒ι-right {Ru} {aid} {q} Ruh = q , 0ℕ , Ruh , refl , sym (+-identityʳ q)


ι-identity : Algebra.Identity _≋_ (ι , λ{a b b'} → ι-left-unique {a}{b}{b'}) _⊕_
Lift.lower (proj₁ ι-identity (Ru , _)) = ι-left⇒Ru {Ru} , Ru⇒ι-left {Ru}
Lift.lower (proj₂ ι-identity (Ru , _)) = ι-right⇒Ru {Ru} , Ru⇒ι-right {Ru}


⊕-comm : Algebra.Commutative _≋_ _⊕_
Lift.lower (⊕-comm (Ru , lu) (Rv , lv)) = i , ii
 where
 i : (Ru ⊕₁ Rv) ⇒ (Rv ⊕₁ Ru)
 i (qu , qv , Rqu , Rqv , q≡quqv) = qv , qu , Rqv , Rqu , trans q≡quqv (+-comm qu qv)

 ii : (Rv ⊕₁ Ru) ⇒ (Ru ⊕₁ Rv)
 ii (qv , qu , Rqv , Rqu , q≡qvqu) = qu , qv , Rqu , Rqv , trans q≡qvqu (+-comm qv qu)


-- _⊕₁_ : Op₂ (REL AssetID Quantity 0ℓ)
-- Ru ⊕₁ Rv = λ aid q → ∃[ qu ] (∃[ qv ] (Ru aid qu × Rv aid qv × (q ≡ qu +ℕ qv)))

⊕₁-assoc : Algebra.Associative _⇐⇒_ _⊕₁_
⊕₁-assoc Ru Rv Rw = i , ii
 where
 i : ((Ru ⊕₁ Rv) ⊕₁ Rw) ⇒ (Ru ⊕₁ (Rv ⊕₁ Rw))
 i {aid} {q} (quv , qw , (qu , qv , Ruqu , Rvqv , quv≡quqv) , Rwqw , q≡quvqw) = Goal
  where
  assc : q ≡ qu +ℕ (qv +ℕ qw)
  assc = begin  q                 ≡⟨ q≡quvqw ⟩
                quv +ℕ qw         ≡⟨ cong (λ x → x +ℕ qw) quv≡quqv ⟩
                qu +ℕ qv +ℕ qw    ≡⟨ +-assoc qu qv qw ⟩
                qu +ℕ (qv +ℕ qw)  ∎

  Goal : (Ru ⊕₁ (Rv ⊕₁ Rw)) aid q
  Goal = qu , qv +ℕ qw , Ruqu , (qv , qw , Rvqv , Rwqw , refl) , assc

 ii : (Ru ⊕₁ (Rv ⊕₁ Rw)) ⇒ ((Ru ⊕₁ Rv) ⊕₁ Rw)
 ii {aid} {q} (qu , qvw , Ruqu , (qv , qw , Rvqv , Rwqw , qvw≡qvqw) , q≡quqvw) = Goal
  where
  assc : qu +ℕ qvw ≡ qu +ℕ qv +ℕ qw
  assc = begin  qu +ℕ qvw         ≡⟨ cong (λ x → qu +ℕ x) qvw≡qvqw ⟩
                qu +ℕ (qv +ℕ qw)  ≡⟨ sym (+-assoc qu qv qw) ⟩
                qu +ℕ qv +ℕ qw    ∎

  Goal : ((Ru ⊕₁ Rv) ⊕₁ Rw) aid q
  Goal = qu +ℕ qv , qw , (qu , qv , Ruqu , Rvqv , refl) , Rwqw , trans q≡quqvw assc


⊕-assoc : Algebra.Associative _≋_ _⊕_
⊕-assoc (Ru , luu) (Rv , lvu) (Rw , lwu)  = lift (i , ii)
 where
 i : (Ru ⊕₁ Rv) ⊕₁ Rw ⇒ Ru ⊕₁ (Rv ⊕₁ Rw)
 i {aid} {q} (quv , qw , (qu , qv , Ruqu , Rvqv , quv≡quqv) , Rwqw , q≡quvqw) = Goal
  where
  assc : quv +ℕ qw ≡ qu +ℕ (qv +ℕ qw)
  assc = begin  quv +ℕ qw         ≡⟨ cong (λ x → x +ℕ qw) quv≡quqv ⟩
                qu +ℕ qv +ℕ qw    ≡⟨ +-assoc qu qv qw ⟩
                qu +ℕ (qv +ℕ qw)  ∎

  Goal : (Ru ⊕₁ (Rv ⊕₁ Rw)) aid q
  Goal = qu , ((qv +ℕ qw) , (Ruqu , ((qv , qw , Rvqv , Rwqw , refl) , trans q≡quvqw assc )))


 ii : Ru ⊕₁ (Rv ⊕₁ Rw) ⇒ (Ru ⊕₁ Rv) ⊕₁ Rw
 ii {aid} {q} (qu , qvw , Ruqu , (qv , qw , Rvqv , Rwqw , qvw≡qvqw) , q≡quqvw) = Goal
  where
  tras : q ≡ qu +ℕ qv +ℕ qw
  tras = begin  q                 ≡⟨ q≡quqvw ⟩
                qu +ℕ qvw         ≡⟨ cong (λ x → qu +ℕ x) qvw≡qvqw ⟩
                qu +ℕ (qv +ℕ qw)  ≡⟨ sym (+-assoc qu qv qw) ⟩
                qu +ℕ qv +ℕ qw    ∎

  Goal : ((Ru ⊕₁ Rv) ⊕₁ Rw) aid q
  Goal = (qu +ℕ qv) , (qw , ((qu , qv , Ruqu , Rvqv , refl) , (Rwqw , tras)))


⊕-cong : Algebra.Congruent₂ _≋_ _⊕_
Lift.lower (⊕-cong {Ru , luu} {Rv , lvu} {Ru' , luu'} {Rv' , lvu'} (lift (Ru⇒Rv , Rv⇒Ru)) (lift (Ru'⇒Rv' , Rv'⇒Ru'))) = i , ii
 where
 i : (Ru ⊕₁ Ru') ⇒ (Rv ⊕₁ Rv')
 i {aid} {q} (qu , qu' , Ruqu , Ru'qu' , q≡ququ') = qu , qu' , Ru⇒Rv Ruqu , Ru'⇒Rv' Ru'qu' , q≡ququ'

 ii : (Rv ⊕₁ Rv') ⇒ (Ru ⊕₁ Ru')
 ii {aid} {q} (qv , qv' , Rvqv , Rv'qv' , q≡qvqv') = qv , qv' , Rv⇒Ru Rvqv , Rv'⇒Ru' Rv'qv' , q≡qvqv'


-- An inhabitant of `Value` is a map denoting a finite collection of quantities of assets.
open TokenAlgebraRel
open CommutativeMonoid renaming (_∙_ to _⋆_) hiding (trans ; sym)
open Algebra

module _
         {AdaPolicy : PolicyID}
         {DecEqValue : DecidableEquality (AssetID ⇀ Quantity) }
         {Size : AssetID ⇀ Quantity → ℕ}
         {AdaForAll : (R : AssetID ⇀ Quantity) → ∃[ q ] (proj₁ R) (AdaPolicy , AdaName) q}
  where

  VAda : Quantity → AssetID ⇀ Quantity
  VAda x = ((λ (p , a) q' → a ≡ AdaName × x ≡ q') , λ x y → trans (sym (proj₂ x)) (proj₂ y))


  _hasHowMuchAda : AssetID ⇀ Quantity → Quantity
  R hasHowMuchAda = proj₁ (AdaForAll R)

  VAdaHasAda : ∀{x} → ((VAda x) hasHowMuchAda) ≡ x
  VAdaHasAda {x} = q≡x
   where
   q : Quantity
   q = proj₁ (AdaForAll (VAda x))
   q≡x : (VAda x hasHowMuchAda) ≡ x
   q≡x = (proj₂ (VAda x) {(AdaPolicy , AdaName)}) (proj₂ (AdaForAll (VAda x))) (_≡_.refl , _≡_.refl)

  Value-TokenAlgebra : TokenAlgebraRel
  Value-TokenAlgebra = record
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

   Vcm : CommutativeMonoid 1ℓ 1ℓ
   Vcm = record
           { Carrier = AssetID ⇀ Quantity
           ; _≈_ = _≋_
           ; _∙_ = _⊕_
           ; ε = ι , (λ 0b 0b' → trans 0b (sym 0b'))
           ; isCommutativeMonoid = record { isMonoid = Vm ; comm = ⊕-comm }
           }
           where
           isSemigrp : IsSemigroup _≋_ _⊕_
           isSemigrp = record
                         { isMagma = record
                                       { isEquivalence = ≋-isEquivalence
                                       ; ∙-cong = λ{u}{v}{w}{x} y z → ⊕-cong {u}{v}{w}{x} y z
                                       }
                         ; assoc = ⊕-assoc
                         }

           Vm : IsMonoid _≋_ _⊕_ (ι , (λ 0b 0b' → trans 0b (sym 0b')))
           Vm = record { isSemigroup = isSemigrp ; identity = ι-identity }

   mh : IsMonoidMorphism (monoid Vcm) (monoid +-0-commutativeMonoid) _hasHowMuchAda
   IsSemigroupMorphism.⟦⟧-cong (IsMonoidMorphism.sm-homo mh) {R} {R'} R⇔R' = goal
    where
    q q' : Quantity
    q = R hasHowMuchAda
    q' = R' hasHowMuchAda

    RR' : (proj₁ R) ⇐⇒ (proj₁ R')
    RR' = Lift.lower R⇔R'

    Rq : (proj₁ R) (AdaPolicy , AdaName) q
    Rq = proj₂ (AdaForAll R)

    R'q' : (proj₁ R') (AdaPolicy , AdaName) q'
    R'q' = proj₂ (AdaForAll R')

    Rq' : (proj₁ R) (AdaPolicy , AdaName) q'
    Rq' = proj₂ RR' R'q'

    goal : R hasHowMuchAda ≡ R' hasHowMuchAda
    goal = proj₂ R Rq Rq'



   IsSemigroupMorphism.∙-homo (IsMonoidMorphism.sm-homo mh) Ru Rv = goal
    where
    q qu qv : Quantity
    q = (Ru ⊕ Rv) hasHowMuchAda
    ξ : (proj₁ (Ru ⊕ Rv)) (AdaPolicy , AdaName) q
    ξ = proj₂ (AdaForAll (Ru ⊕ Rv))
    qu = Ru hasHowMuchAda
    qv = Rv hasHowMuchAda

    α : proj₁ Ru (AdaPolicy , AdaName) (proj₁ ξ)
    α = proj₁ (proj₂ (proj₂ (proj₂ (AdaForAll (Ru ⊕ Rv)))))
    β : proj₁ Rv (AdaPolicy , AdaName) (proj₁ (proj₂ ξ))
    β = proj₁ (proj₂ (proj₂ (proj₂ (proj₂ (AdaForAll (Ru ⊕ Rv))))))


    quξ : qu ≡ proj₁ ξ
    quξ = proj₂ Ru (proj₂ (AdaForAll Ru)) α
    qvξ : qv ≡ proj₁ (proj₂ ξ)
    qvξ = proj₂ Rv (proj₂ (AdaForAll Rv)) β

    γ : proj₁ ξ +ℕ proj₁ (proj₂ ξ) ≡ qu +ℕ qv
    γ = begin
         proj₁ ξ +ℕ proj₁ (proj₂ ξ)  ≡⟨ cong (λ x → proj₁ ξ + x) (sym qvξ) ⟩
         proj₁ ξ +ℕ qv               ≡⟨ cong (λ x → x + qv ) (sym quξ) ⟩
         qu +ℕ qv                    ∎

    ξ' : q ≡ proj₁ ξ +ℕ proj₁ (proj₂ ξ)
    ξ' = proj₂ (proj₂ (proj₂ (proj₂ ξ)))

    goal : q ≡ qu +ℕ qv
    goal = trans ξ' γ

   IsMonoidMorphism.ε-homo mh = goal
    where
    I : AssetID ⇀ Quantity
    I = ι , (λ 0b 0b' → trans 0b (sym 0b'))

    q : Quantity
    q = I hasHowMuchAda

    dichlem : ∀{q : ℕ} → q ≡ 0ℕ ⊎ ¬(q ≡ 0ℕ)
    dichlem {zero} = inj₁ _≡_.refl
    dichlem {suc q} = inj₂ (λ ())

    PQ : q ≡ 0ℕ ⊎ ¬(q ≡ 0ℕ)
    PQ = dichlem

    taut : (q ≡ 0ℕ) → (q ≡ 0ℕ)
    taut = λ z → z

    contr : ¬ (q ≡ 0ℕ) → (q ≡ 0ℕ)
    contr np = ι-left-unique{AdaPolicy , AdaName} (proj₂ (AdaForAll I)) _≡_.refl

    goal : q ≡ 0ℕ
    goal = [ taut , contr ]′ PQ






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
  --   return NonEmpty a (q₁ +ℕ q₂) l r
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
combineValues (just x   , just y)   = just (x +ℕ y)

zeroMaybe : Maybe Quantity → Quantity
zeroMaybe (just x) = x
zeroMaybe nothing = 0ℕ

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
