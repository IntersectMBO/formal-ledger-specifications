\subsection{Value Set}

\begin{code}[hide]
{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive using ( lzero ) renaming (Set to Type)
open import Axiom.Set using ( Theory )


module Ledger.TokenAlgebra.ValueSet (PolicyId : Type)(th : Theory) where


open import Prelude                 using     ( module Equivalence ; _,_ ; _×_ ; _∘_ ; _≗_ ; id )
open import Prelude                 using     ( _≡_ ; 0ℓ; trans ; sym ; proj₁ ; proj₂ ; Σ )

open import Ledger.Prelude          using     ( DecEq ; Coin ; cong ; ∈-sp ; Dec₁ )
open import Ledger.TokenAlgebra     using     ( TokenAlgebra ; Quantity )

open import Axiom.Set.Map th        using     ( module Lookupᵐ ; singletonᵐ ; ❴_❵ᵐ ; left-unique )
                                    renaming  ( Map to _⇀_ ; _ˢ to _ᵐ )

open import Axiom.Set.Rel th        using     ( dom ; Rel ; dom∈ )
open import Axiom.Set.TotalMap th   using     ( module Unionᵗᵐ ; Function⇒TotalMapOn ; FunOn⇒TotalMapOn ; _ᵗᵐ
                                              ; total ; Function⇒TotalMapOn₂ ; TotalMapOn₂⇒TotalMapOn ; _≡ᵗᵐ_
                                              ; lookupOn ; TotalMapOn⇒FunOn )
                                    renaming  ( TotalMapOn to _⇒_ )

open Theory th                      using     ( _∈_ ; singleton ; ∈-singleton ; spec-∈ ; Set )
                                    renaming  ( map to mapˢ )


open import Algebra                 using     ( CommutativeMonoid ; Op₂ ; IsSemigroup ; IsMonoid )
open import Algebra.Morphism        using     ( module MonoidMorphisms ; IsMagmaHomomorphism )
open import Data.Nat                using     ( ℕ ; _≤_ ; _+_ )
open import Data.Nat.Properties     using     ( +-0-commutativeMonoid ; +-comm )
open import Relation.Binary         using     ( IsEquivalence )
                                    renaming  ( Decidable to Dec₂ )

open import Relation.Binary.PropositionalEquality.Core using ( module ≡-Reasoning )

import Relation.Binary.PropositionalEquality as ≡
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
open CommutativeMonoid renaming (_∙_ to _⋆_) hiding (refl ; sym ; trans)
-- open Algebra

Value-TokenAlgebra  :  ( AssetName      : Type                                )
                       ( specialPolicy  : PolicyId                            )
                       ( specialAsset   : AssetName                           )
                       ( X              : Set (PolicyId × AssetName)          )
                       ( spec∈X         : (specialPolicy , specialAsset) ∈ X  )
                       ( size           : X ⇒ Quantity → ℕ                    )

     { decTot  : DecEq (X ⇒ Quantity) }
     ⦃ dec     : DecEq (PolicyId × AssetName) ⦄
     { _∈?_    : ⦃ DecEq (PolicyId × AssetName) ⦄ → Dec₂ (_∈_ {A = PolicyId × AssetName}) }
     ---------------------------------------------------------------------------------------
  →  TokenAlgebra



Value-TokenAlgebra AssetName specialPolicy specialAsset X spec∈X size {decTot} ⦃ dec ⦄ { _∈?_ } =
  record
    { Value-CommutativeMonoid = Vcm
    ; coin = λ R → lookupOn R ((specialPolicy , specialAsset) , spec∈X)
    ; inject = inj
    ; size = size
    ; _≤ᵗ_ = λ u v → ∀ {a : AssetId}{a∈X : a ∈ X} → lookupOn u (a , a∈X) ≤ lookupOn v (a , a∈X)
    ; AssetName = AssetName
    ; specialAsset = specialAsset
    ; property = compose-to-id
    ; coinIsMonoidHomomorphism = CoinMonHom
    ; DecEq-Value = decTot
    }
  where

  AssetId : Type
  AssetId = PolicyId × AssetName

  specId : AssetId
  specId = specialPolicy , specialAsset

  -- sp∈ : spec-∈ AssetId
  -- sp∈ = {!!}  -- ∈-sp ???
  -- QUESTION/PROBLEM.
  -- I seem to need an inhabitant of `spec-∈ AssetId` but
  -- I don't know why and I don't know how to get one.

  -- open Lookupᵐ sp∈

  open ≡-Reasoning
  open Equivalence

  zeroFun : AssetId → Quantity
  zeroFun = λ _ → 0

  zeroMap : X ⇒ Quantity
  zeroMap = Function⇒TotalMapOn zeroFun X


  open Unionᵗᵐ ⦃ dec ⦄

  inj : Coin → X ⇒ Quantity
  inj c = updateOn specId c zeroMap


  compose-to-id : (λ R → lookupOn R (specId , spec∈X)) ∘ inj ≗ id
  compose-to-id = Goal
    where
    Goal : (λ R → lookupOn R (specId , spec∈X)) ∘ inj ≗ id
    Goal q = begin
      ((λ u → lookupOn u (specId , spec∈X)) ∘ inj) q  ≡⟨ ≡.refl ⟩
      (lookupOn (updateOn specId q zeroMap) (specId , spec∈X))  ≡⟨ {!!} ⟩
      q                                                 ∎



  Vcm : CommutativeMonoid 0ℓ 0ℓ
  Vcm =
    record
      { Carrier = X ⇒ Quantity
      ; _≈_ = _≋_
      ; _∙_ = _⊕_
      ; ε = ι
      ; isCommutativeMonoid = record { isMonoid = Vm ; comm = ⊕-comm }
      }
    where
    _≋_ : stdlib.Rel (X ⇒ Quantity) 0ℓ
    _≋_ = _≡ᵗᵐ_

    open IsEquivalence
    ≋-isEquivalence : IsEquivalence {0ℓ} _≋_
    refl ≋-isEquivalence = ≡.refl
    IsEquivalence.sym ≋-isEquivalence x≋y = ≡.sym x≋y
    IsEquivalence.trans ≋-isEquivalence x y = ≡.trans x y


    _⊕_ : Op₂ (X ⇒ Quantity)
    u ⊕ v = FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄}{X = X} 0 f+g
      where
      f g f+g : Σ AssetId (_∈ X) → Quantity
      f = TotalMapOn⇒FunOn u
      g = TotalMapOn⇒FunOn v
      f+g aa = f aa + g aa

    lemma : ∀{u v} → (aa : Σ AssetId (_∈ X))
     →      TotalMapOn⇒FunOn (u ⊕ v) aa ≡ TotalMapOn⇒FunOn u aa + TotalMapOn⇒FunOn v aa
    lemma {u} {v} (a , a∈X) = begin
      TotalMapOn⇒FunOn (u ⊕ v) (a , a∈X) ≡⟨ {!!} ⟩
      TotalMapOn⇒FunOn (FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄ } 0 (λ x → TotalMapOn⇒FunOn u x + TotalMapOn⇒FunOn v x)) (a , a∈X) ≡⟨ {!!} ⟩
      proj₁ (to dom∈ ((proj₂ (proj₂ (u ⊕ v))) a∈X)) ≡⟨ {!!} ⟩
      TotalMapOn⇒FunOn u (a , a∈X) + TotalMapOn⇒FunOn v (a , a∈X) ∎


    ⊕-comm : Algebra.Commutative _≋_ _⊕_
    ⊕-comm u v {aa} = Goal
      where
      subsubgoal :  (λ x → TotalMapOn⇒FunOn u x + TotalMapOn⇒FunOn v x)
                    ≡ (λ x → TotalMapOn⇒FunOn v x + TotalMapOn⇒FunOn u x)
      subsubgoal = {!!}

      subgoal : TotalMapOn⇒FunOn (FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄} 0
                (λ x → TotalMapOn⇒FunOn u x + TotalMapOn⇒FunOn v x)) aa
                ≡  TotalMapOn⇒FunOn (FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄} 0
                   (λ x → TotalMapOn⇒FunOn v x + TotalMapOn⇒FunOn u x)) aa
      subgoal = cong (λ xx → TotalMapOn⇒FunOn (FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄} 0 xx) aa) subsubgoal

      Goal : lookupOn (u ⊕ v) aa ≡ lookupOn (v ⊕ u) aa
      Goal = begin
        lookupOn (u ⊕ v) aa ≡⟨ ≡.refl ⟩
        TotalMapOn⇒FunOn (u ⊕ v) aa ≡⟨ ≡.refl ⟩
        TotalMapOn⇒FunOn (FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄} 0 (λ x → (TotalMapOn⇒FunOn u x) + (TotalMapOn⇒FunOn v x))) aa ≡⟨ subgoal ⟩
        TotalMapOn⇒FunOn (FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄} 0 (λ x → (TotalMapOn⇒FunOn v x) + (TotalMapOn⇒FunOn u x))) aa ≡⟨ ≡.refl ⟩
        lookupOn (v ⊕ u) aa ∎


    ⊕-assoc : Algebra.Associative _≋_ _⊕_
    ⊕-assoc x y z {a} = Goal
      where
      Goal : lookupOn ((x ⊕ y) ⊕ z) a ≡ lookupOn (x ⊕ (y ⊕ z)) a
      Goal = {!!}

    ⊕-cong : Algebra.Congruent₂ _≋_ _⊕_
    ⊕-cong {x} {y} {u} {v} x≋y u≋v {a , a∈X} = Goal
      where
      Goal : lookupOn (x ⊕ u) (a , a∈X) ≡ lookupOn (y ⊕ v) (a , a∈X)
      Goal = {!!}


    ι : X ⇒ Quantity
    ι = FunOn⇒TotalMapOn ⦃ dec ⦄{ _∈?_ ⦃ dec ⦄} 0 (λ _ → 0)


    ι-identity : Algebra.Identity _≋_ ι _⊕_
    proj₁ ι-identity tm {aa} = lid
      where
      ιf : Σ AssetId (_∈ X) → Quantity
      ιf aa = TotalMapOn⇒FunOn ι aa

      tmf : Σ AssetId (_∈ X) → Quantity
      tmf aa = TotalMapOn⇒FunOn tm aa

      ιf+tmf : Σ AssetId (_∈ X) → Quantity
      ιf+tmf aa = ιf aa + tmf aa

      subgoal :  TotalMapOn⇒FunOn (ι ⊕ tm) aa
                 ≡ TotalMapOn⇒FunOn ι aa + TotalMapOn⇒FunOn tm aa
      subgoal = {!!}   -- proj₁ (to dom∈ ((proj₂ (proj₂ (ι ⊕ tm))) a∈X)) ≡⟨ {!≡.refl!} ⟩

      ≡ιf+tmf : TotalMapOn⇒FunOn (ι ⊕ tm) aa ≡ ιf+tmf aa
      ≡ιf+tmf = begin
        TotalMapOn⇒FunOn (ι ⊕ tm) aa ≡⟨  subgoal ⟩
        TotalMapOn⇒FunOn ι aa + TotalMapOn⇒FunOn tm aa ≡⟨ ≡.refl ⟩
        ιf+tmf aa ∎

      lid : lookupOn (ι ⊕ tm) aa ≡ lookupOn tm aa
      lid =
        begin
        lookupOn (ι ⊕ tm) aa ≡⟨ ≡.refl ⟩
        TotalMapOn⇒FunOn (ι ⊕ tm) aa ≡⟨ ≡ιf+tmf ⟩
        ιf+tmf aa ≡⟨ {!!} ⟩
        tmf aa ≡⟨ ≡.refl ⟩
        TotalMapOn⇒FunOn tm aa ≡⟨ ≡.refl ⟩
        lookupOn tm aa ∎


    proj₂ ι-identity tm {aa} = rid
      where
      rid : lookupOn (tm ⊕ ι) aa ≡ lookupOn tm aa
      rid = {!!}

    isSemigrp : IsSemigroup _≋_ _⊕_
    isSemigrp = record
        { isMagma = record
            { isEquivalence = ≋-isEquivalence
            ; ∙-cong = λ{u}{v}{w}{x} y z → ⊕-cong {u}{v}{w}{x} y z }
        ; assoc = ⊕-assoc }

    Vm : IsMonoid _≋_ _⊕_ ι
    Vm = record { isSemigroup = isSemigrp ; identity = ι-identity }


  open CommutativeMonoid Vcm renaming ( rawMonoid to Vcm-mon ) using ()
  open CommutativeMonoid +-0-commutativeMonoid renaming ( rawMonoid to ℕ-mon) using ( _≈_ )
  open Algebra using (module RawMonoid)
  open RawMonoid Vcm-mon renaming ( _∙_ to _∙_ ; ε to ι )
  open RawMonoid ℕ-mon renaming ( _≈_ to _≈ℕ_ ; _∙_ to _◦_ )

  open IsMagmaHomomorphism using ( isRelHomomorphism ; homo )
  open MonoidMorphisms Vcm-mon ℕ-mon using ( IsMonoidHomomorphism )
  open IsMonoidHomomorphism using ( isMagmaHomomorphism ; ε-homo )

  CoinMonHom : IsMonoidHomomorphism (λ u → lookupOn u (specId , spec∈X))
  isMagmaHomomorphism CoinMonHom .isRelHomomorphism = record { cong = λ x → x }
  isMagmaHomomorphism CoinMonHom .homo x y = Goal
    where
    Goal :  lookupOn (x ∙ y) (specId , spec∈X)
            ≡ lookupOn x (specId , spec∈X) + lookupOn y (specId , spec∈X)
    Goal = {!!}

  CoinMonHom .ε-homo = Goal
    where
    Goal : lookupOn ι (specId , spec∈X) ≈ℕ 0
    Goal = {!!}

  ------------------------------------------------------------------------------------------------------
  -- odds and ends -------------------------------------------------------------------------------------
  coinQzeroAsSet : Set (AssetId × Quantity)
  coinQzeroAsSet = singleton (specId , 0)

  P : AssetId × Quantity → Type
  P ( _ , q) = q ≡ 0

\end{code}
