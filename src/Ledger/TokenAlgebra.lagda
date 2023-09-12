\section{Token algebras}
\label{sec:token-algebra}

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.TokenAlgebra (PolicyId : Set) where

open import Ledger.Prelude

open import Algebra              using (CommutativeMonoid ; Monoid)
open import Algebra.Morphism     using (module MonoidMorphisms )
open import Data.Nat.Properties  using (+-0-monoid)
open import Relation.Binary      using (Rel)
open import Relation.Unary       using (Pred)
\end{code}

\begin{figure*}
\begin{code}
record TokenAlgebra : Set₁ where
  field  Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ

  MemoryEstimate : Set
  MemoryEstimate = ℕ
\end{code}
\begin{code}[hide]
  open CommutativeMonoid Value-CommutativeMonoid public
    using (_≈_ ; ε ; monoid ; rawMonoid)
    renaming (Carrier to Value ; refl to reflᵛ ; _∙_ to _+ᵛ_)

  open MonoidMorphisms (rawMonoid) (Monoid.rawMonoid +-0-monoid) public
\end{code}
\begin{code}
  field  coin                      : Value → Coin
         inject                    : Coin → Value
         policies                  : Value → ℙ PolicyId
         size                      : Value → MemoryEstimate
         _≤ᵗ_                      : Value → Value → Set
         AssetName                 : Set
         specialAsset              : AssetName
         property                  : coin ∘ inject ≗ id
         coinIsMonoidHomomorphism  : IsMonoidHomomorphism coin
\end{code}
\begin{code}[hide]
         ⦃ DecEq-Value ⦄ : DecEq Value

  instance
    addValue : HasAdd Value
    addValue = record { _+_ = _+ᵛ_ }


\end{code}
\begin{code}
  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)
\end{code}
\caption{Token algebras, used for multi-assets}
\end{figure*}
