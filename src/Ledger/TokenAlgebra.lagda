\section{Token algebras}
\begin{code}[hide]
{-# OPTIONS --safe #-}
module Ledger.TokenAlgebra where

open import Ledger.Prelude

open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism
open import Data.Integer
open import Data.Nat.Properties using (+-0-commutativeMonoid)
\end{code}

\begin{figure*}
\begin{code}
record TokenAlgebra : Set₁ where
  field PolicyId : Set
        Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ

  MemoryEstimate = ℕ
\end{code}
\begin{code}[hide]
  open CommutativeMonoid Value-CommutativeMonoid using (_≈_; ε)
       renaming (Carrier to Value; refl to reflᵛ; _∙_ to _+ᵛ_) public
\end{code}
\begin{code}
  field coin      : Value → Coin
        inject    : Coin → Value
        policies  : Value → ℙ PolicyId
        size      : Value → MemoryEstimate
        _≥ᵗ_      : Value → Value → Set

        property             : coin ∘ inject ≗ id
        coinIsMonoidMorphism : coin Is Value-CommutativeMonoid -CommutativeMonoid⟶ +-0-commutativeMonoid
\end{code}
\begin{code}[hide]
        instance DecEq-Value : DecEq Value
\end{code}
\begin{code}
  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)
\end{code}
\caption{Token algebras, used for multi-assets}
\end{figure*}
