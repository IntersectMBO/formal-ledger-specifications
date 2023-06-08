n\subsection{Value Set}
\begin{code}[hide]

-- !!!!!!! TODO: REMOVE THE NEXT LINE WHEN ALL HOLES ARE FILLED!!!!!!!!
{-# OPTIONS --allow-unsolved-metas #-}

-- !!!!!!! TODO: UNCOMMENT THE NEXT TWO LINES WHEN ALL HOLES ARE FILLED!!!!!!!!
-- {-# OPTIONS --safe --no-import-sorts #-}
-- {-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive using (lzero) renaming (Set to Type)
open import Axiom.Set using (Theory)

module Ledger.TokenAlgebra.ValueSet (PolicyId : Type)(th : Theory {lzero}) where

open import Algebra                       using (CommutativeMonoid ; Commutative ; Op₂ ; Monoid)
open import Algebra.Morphism              using ( IsMonoidMorphism ; IsSemigroupMorphism )

open import Axiom.Set.Map th              using (_ˢ ; module Lookupᵐ ; singletonᵐ ; ❴_❵ᵐ)
                                          renaming ( Map to _⇀_ )
open import Axiom.Set.Rel th              using ( dom )

open import Data.Nat                      using (ℕ ; _≤_ ; _+_)
open import Data.Nat.Properties           using (+-0-commutativeMonoid)

open import Ledger.Prelude                using ( DecEq )
open import Ledger.TokenAlgebra.Base      using ( TokenAlgebra ; Quantity)

open import Prelude                       using ( _,_ ; _×_ ; module Equivalence; _∘_ ; _≗_ ; id )
open import Prelude                       using ( _≡_ ; refl ; 0ℓ; trans ; sym)

open import Relation.Binary               using (IsEquivalence )

open Theory th                            using (_∈_ ; spec-∈ ; singleton ; ∈-singleton)
                                          renaming (map to mapˢ ; Set to Set' )
open import Relation.Binary.PropositionalEquality.Core using ( module ≡-Reasoning )
import Relation.Binary.Core  as stdlib

\end{code}

\subsubsection{Derived types}

(See Fig 3 of the
\href{https://github.com/input-output-hk/cardano-ledger/releases/latest/download/mary-ledger.pdf}%
{Mary ledger specification}.)

\begin{itemize}
\item \AgdaBound{AssetName} is a byte string used to distinguish different assets with the same \AgdaBound{PolicyId}.
\item \AgdaBound{AssetId} is a product type consisting of a \AgdaBound{PolicyId} and an \AgdaBound{AssetName}.
\item \AgdaBound{AdaId} is the Id for the asset Ada.
\item \AgdaBound{Quantity} is the type of amounts of assets.
\end{itemize}

In the formal ledger specification \AgdaBound{AssetId} is sometimes viewed as a direct sum type,
the inhabitants of which belong to either \AgdaBound{AdaIdType} or the product
\AgdaBound{PolicyId}~\AgdaBound{×}~\AgdaBound{AssetName}; if we were adhering to that point of view,
then we would have defined
\AgdaBound{AssetId}
  = \AgdaBound{AdaIdType}~\AgdaBound{⊎}~(\AgdaBound{PolicyId}~\AgdaBound{×}~\AgdaBound{AssetName}).

Finally, we define a record type with a single inhabitant with which we may wish to
represent the type of Ada (rather than viewing Ada as just another asset).

\begin{code}
record AdaIdType : Type where
  instance constructor AdaId
\end{code}


\subsection{Definition of the value monoid}

An inhabitant of `Value` is a map denoting a finite collection of quantities of assets.

\begin{code}
open TokenAlgebra
open CommutativeMonoid renaming (_∙_ to _⋆_) hiding (refl ; sym ; trans)
open Algebra


Value-TokenAlgebra :  (assetNameType  : Type                                       )
                      (isTotal        : ∀ x {m : (PolicyId × assetNameType) ⇀ Quantity} → x ∈ dom (m ˢ))
                      (specialPolicy  : PolicyId                                   )
                      (specialAsset   : assetNameType                              )
                      (decEqVal       : DecEq ((PolicyId × assetNameType) ⇀ Quantity))
                      (sz             : (PolicyId × assetNameType) ⇀ Quantity → ℕ  )
                      -----------------------------------------------------------------------
  →                   TokenAlgebra


Value-TokenAlgebra assetNameType isTotal specialPolicy specialAsset decEqVal sz =
  record
    { Value-CommutativeMonoid = Vcm
    ; coin = λ u → lookupᵐ u specId {isTotal specId {u} }
    ; inject = λ c → ❴ specId , c ❵ᵐ
    -- ; policies = {!!}
    ; size = sz
    ; _≤ᵗ_ = _≤'_
    ; AssetNameType = assetNameType
    ; property = compose-to-id
    ; coinIsMonoidMorphism = CoinMM
    ; DecEq-Value = decEqVal
    }
  where

  AssetId : Type
  AssetId = PolicyId × assetNameType

  sp∈ : spec-∈ AssetId
  sp∈ {X} = {!!}
  -- QUESTION/PROBLEM.
  -- I seem to need an inhabitant of `spec-∈ AssetId` but
  -- I don't know why and I don't know how to get one.

  open Lookupᵐ sp∈

  specId : AssetId
  specId = specialPolicy , specialAsset

  open ≡-Reasoning
  open Equivalence

  compose-to-id : (λ u → lookupᵐ u specId {isTotal specId {u}} ) ∘ (singletonᵐ specId) ≗ id
  compose-to-id = goal
    where
    goal : (λ u → lookupᵐ u specId {isTotal specId {u}} ) ∘ singletonᵐ specId ≗ id
    goal q = begin
      ((λ u → lookupᵐ u specId {isTotal specId {u}}) ∘ singletonᵐ specId) q  ≡⟨ refl ⟩
      (λ u → lookupᵐ u specId {isTotal specId {u}}) (singletonᵐ specId q)  ≡⟨ {!!} ⟩
      -- proj₁ (to {!!} {!!}) (singletonᵐ specId q) specId    ≡⟨ {!!} ⟩
      q                                                 ∎



  _≤'_ : (u v : AssetId ⇀ Quantity) → Type
  u ≤' v = ∀ {x : AssetId} → uval x ≤ vval x
   where
   uval vval :  AssetId → Quantity
   uval = λ aid → lookupᵐ u aid {isTotal aid {u} }
   vval = λ aid → lookupᵐ v aid {isTotal aid {v} }


  open CommutativeMonoid hiding (refl ; sym ; trans)
  open Algebra

  Vcm : CommutativeMonoid 0ℓ 0ℓ
  Vcm =
    record
      { Carrier = AssetId ⇀ Quantity
      ; _≈_ = _≋_
      ; _∙_ = _⊕_
      ; ε = ι
      ; isCommutativeMonoid = record { isMonoid = Vm ; comm = ⊕-comm }
      }
    where
    _≋_ : stdlib.Rel (AssetId ⇀ Quantity) 0ℓ
    u ≋ v = ∀ {a} → lookupᵐ u a {isTotal a {u} } ≡ lookupᵐ v a {isTotal a {v} }

    ≋-isEquivalence : IsEquivalence {0ℓ} _≋_
    IsEquivalence.refl ≋-isEquivalence = refl
    IsEquivalence.sym ≋-isEquivalence {x} {y} x≋y {a} = sym x≋y
    IsEquivalence.trans ≋-isEquivalence x y = trans x y

    _⊕_ : Op₂ (AssetId ⇀ Quantity)
    u ⊕ v = m , lu
      where

      m : Set'(AssetId × Quantity)
      m = {!!}
      -- PROBLEM/QUESTION.
      -- I want an `m` such that `lookupᵐ m a` is the function:
      --
      --    λ u v → ∀ {a} → (lookupᵐ u a {isTotal a {u} }) + (lookupᵐ v a {isTotal a {v} })
      --
      -- How to acheive this?

      lu : ∀{a}{b}{b'} → ((a , b) ∈ m → (a , b') ∈ m → b ≡ b')
      lu {a}{b}{b'} h₀ h₁ = {!!}

    ⊕-comm : Algebra.Commutative _≋_ _⊕_
    ⊕-comm x y {a} = {!!}                   -- old proof: +-comm (x a) (y a)

    ⊕-assoc : Algebra.Associative _≋_ _⊕_
    ⊕-assoc x y z {a} = {!!}                -- old proof: +-assoc (x a) (y a) (z a)

    ⊕-cong : Algebra.Congruent₂ _≋_ _⊕_
    ⊕-cong xy uv = {!!}                     -- old proof: cong₂ _+_ xy uv


    ι : AssetId ⇀ Quantity
    ι = mapˢ f {!!} , {!!}
      where
      f : AssetId × Quantity → AssetId × Quantity
      f (aid , q) = aid , 0


    ι-identity : Algebra.Identity _≋_ ι _⊕_
    ι-identity = lid , rid
     where
     lid : ∀ x {a} → (lookupᵐ (ι ⊕ x) a {isTotal a}) ≡ (lookupᵐ x a {isTotal a})
     lid x {a} = {!!} -- cong (λ u → lookupᵐ u a {isTotal a}) {!!}
     rid : ∀ x {a} → (lookupᵐ (x ⊕ ι) a {isTotal a}) ≡ (lookupᵐ x a {isTotal a})
     rid x {a} = {!!}

     -- OLD PROOF
     -- ι-identity : Algebra.Identity _≋_ ι _⊕_
     -- proj₁ ι-identity = λ x → refl
     -- proj₂ ι-identity x {a} =  begin
     --   x a + ι a  ≡⟨ cong (λ z → x a + z) refl ⟩
     --   x a + 0    ≡⟨ +-comm (x a) 0 ⟩
     --   x a        ∎


    isSemigrp : IsSemigroup _≋_ _⊕_
    isSemigrp = record
        { isMagma = record
            { isEquivalence = ≋-isEquivalence
            ; ∙-cong = λ{u}{v}{w}{x} y z → ⊕-cong {u}{v}{w}{x} y z }
        ; assoc = ⊕-assoc }

    Vm : IsMonoid _≋_ _⊕_ ι
    Vm = record { isSemigroup = isSemigrp ; identity = ι-identity }



  open Algebra.Morphism
  open IsSemigroupMorphism
  open IsMonoidMorphism
  open IsCommutativeMonoidMorphism

  CoinMM :  IsCommutativeMonoidMorphism-syntax Vcm +-0-commutativeMonoid
         λ u → lookupᵐ u specId {isTotal specId {u}}

  ⟦⟧-cong  (sm-homo (mn-homo CoinMM)) = λ z → z
  ∙-homo   (sm-homo (mn-homo CoinMM)) (x , xlu) (y , ylu) = {!!} -- old proof: λ _ _ → refl
  ε-homo   (mn-homo CoinMM) = {!!}                               -- old proof: refl



  ------------------------------------------------------------------------------------------------------
  -- odds and ends -------------------------------------------------------------------------------------
  coinQzeroAsSet : Set'(AssetId × Quantity)
  coinQzeroAsSet = singleton (specId , 0)


  P : AssetId × Quantity → Type
  P ( _ , q) = q ≡ 0

\end{code}

