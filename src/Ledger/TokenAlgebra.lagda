\section{Token algebras}
\label{sec:token-algebra}
\begin{figure*}[h]
\begin{AgdaAlign}
\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.TokenAlgebra (
\end{code}
\emph{Abstract types}
\begin{code}
  PolicyId
\end{code}
\begin{code}[hide]
  : Set) where
open import Ledger.Prelude

open import Algebra              using (CommutativeMonoid ; Monoid)
open import Algebra.Morphism     using (module MonoidMorphisms )
open import Data.Nat.Properties  using (+-0-monoid)
open import Relation.Binary      using (Rel)
open import Relation.Unary       using (Pred)

MemoryEstimate : Set
MemoryEstimate = ℕ
\end{code}
\emph{Derived types}
\AgdaTarget{TokenAlgebra}
\begin{AgdaSuppressSpace}
\begin{code}
record TokenAlgebra : Set₁ where
\end{code}
\begin{code}[hide]
  field
\end{code}
\begin{code}
    Value : Set
    ⦃ Value-IsCommutativeMonoid' ⦄ : IsCommutativeMonoid' 0ℓ 0ℓ Value

\end{code}
\begin{code}[hide]
  Value-CommutativeMonoid = fromCommMonoid' Value-IsCommutativeMonoid'
  open CommutativeMonoid Value-CommutativeMonoid public
    using (_≈_ ; ε ; monoid ; rawMonoid)
    renaming (_∙_ to _+ᵛ_)

  open MonoidMorphisms (rawMonoid) (Monoid.rawMonoid +-0-monoid) public
  field
\end{code}
\begin{code}
    coin                      : Value → Coin
    inject                    : Coin → Value
    policies                  : Value → ℙ PolicyId
    size                      : Value → MemoryEstimate
    _≤ᵗ_                      : Value → Value → Set
    AssetName                 : Set
    specialAsset              : AssetName
    property                  : coin ∘ inject ≗ id -- FIXME: rename!
    coinIsMonoidHomomorphism  : IsMonoidHomomorphism coin
\end{code}
\end{AgdaSuppressSpace}
\begin{code}[hide]
    ⦃ DecEq-Value ⦄ : DecEq Value
    ⦃ Dec-≤ᵗ ⦄      : _≤ᵗ_ ⁇²

  instance
    addValue : HasAdd Value
    addValue = record { _+_ = _+ᵛ_ }

  coin-inject-lemma : ∀ {val} {c} → coin (val + inject c) ≡ coin val + c
  coin-inject-lemma {val} {c} = begin
    coin (val + inject c)         ≡⟨ homo coinIsMonoidHomomorphism val (inject c) ⟩
    coin val + (coin ∘ inject) c  ≡⟨ cong (coin val +_) (property c) ⟩
    coin val + c                  ∎
    where
    open ≡-Reasoning
    open MonoidMorphisms.IsMonoidHomomorphism
\end{code}
\emph{Helper functions}
\AgdaTarget{sumᵛ}
\begin{code}
  sumᵛ : List Value → Value
  sumᵛ [] = inject 0
  sumᵛ (x ∷ l) = x + sumᵛ l
\end{code}
\end{AgdaAlign}
\caption{Token algebras, used for multi-assets}
\end{figure*}
