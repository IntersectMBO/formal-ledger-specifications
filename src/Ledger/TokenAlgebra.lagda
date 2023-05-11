\section{Token Algebra}
\label{sec:token-algebra}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Primitive  using() renaming (Set to Type)

module Ledger.TokenAlgebra
  -- (ByteString  : Type)
  (PolicyID    : Type)
  -- (AdaName     : ByteString)
  where

open import Ledger.Prelude hiding (Rel)

open import Algebra              using (CommutativeMonoid)
open import Algebra.Morphism     using (IsCommutativeMonoidMorphism-syntax)
open import Data.Nat.Properties  using (+-0-commutativeMonoid)
open import Relation.Binary      using (Rel)
open import Relation.Unary       using (Pred)

record TokenAlgebra : Type₁ where
  field Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ

  MemoryEstimate : Type
  MemoryEstimate = ℕ

  open CommutativeMonoid Value-CommutativeMonoid using (_≈_; ε)
       renaming (Carrier to Value; refl to reflᵛ; _∙_ to _+ᵛ_) public

  field coin     : Value → Coin
        inject   : Coin → Value
        policies : Value → ℙ PolicyID
        size     : Value → MemoryEstimate
        _≤ᵗ_      : Rel Value 0ℓ

        property             : coin ∘ inject ≗ id
        coinIsMonoidMorphism : coin Is Value-CommutativeMonoid -CommutativeMonoid⟶ +-0-commutativeMonoid

        instance DecEq-Value : DecEq Value

  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)

\end{code}

\subsection{An alternative representation}
\label{sec:token-algebra}

Here is an altearntive manifestation of the token algebra which uses the \AgdaBound{REL}
type from the Agda Standard Library instead of the \AgdaBound{Set} type.

\begin{code}
record TokenAlgebraPoly {ℓ ℓ' : Level} : Type ((sucˡ ℓ) ⊔ˡ (sucˡ ℓ')) where
  field Value-CommutativeMonoid : CommutativeMonoid ℓ ℓ'

  MemoryEstimate : Type
  MemoryEstimate = ℕ

  open CommutativeMonoid Value-CommutativeMonoid using (_≈_; ε)
       renaming (Carrier to Value; refl to reflᵛ; _∙_ to _+ᵛ_) public

  field coin     : Value → Coin
        inject   : Coin → Value
        policies : Value → Pred PolicyID 0ℓ
        size     : Value → MemoryEstimate
        _≤ᵗ_      : Rel Value 0ℓ

        property             : coin ∘ inject ≗ id
        coinIsMonoidMorphism : coin Is Value-CommutativeMonoid -CommutativeMonoid⟶ +-0-commutativeMonoid

        instance DecEq-Value : DecEq Value

  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)
\end{code}


