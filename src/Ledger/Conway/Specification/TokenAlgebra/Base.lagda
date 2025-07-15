\section{Token Algebras}
\label{sec:token-algebra}
\modulenote{\ConwayModule{TokenAlgebra}}.

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Prelude using (Type)
module Ledger.Conway.Specification.TokenAlgebra.Base (
\end{code}
\emph{Abstract types}
\AgdaTarget{PolicyId}
\begin{code}
  PolicyId

\end{code}
\begin{code}[hide]
  : Type) where
open import Ledger.Prelude

open import Algebra              using (Monoid)
open import Algebra.Morphism     using (module MonoidMorphisms )
open import Data.Nat.Properties  using (+-0-monoid)
open import Relation.Binary      using (Rel)
open import Relation.Unary       using (Pred)

MemoryEstimate : Set
MemoryEstimate = ℕ
\end{code}

\emph{Derived types}
\AgdaTarget{TokenAlgebra}
\begin{code}
record TokenAlgebra : Type₁ where
  field
    Value : Set
    ⦃ Value-CommutativeMonoid ⦄ : CommutativeMonoid 0ℓ 0ℓ Value

\end{code}
\begin{code}[hide]
  open Algebra.CommutativeMonoid (Conversion.toBundle Value-CommutativeMonoid) public
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
    _≤ᵗ_                      : Value → Value → Type
    coin∘inject≗id            : coin ∘ inject ≗ id
    coinIsMonoidHomomorphism  : IsMonoidHomomorphism coin

\end{code}
\begin{code}[hide]
    ⦃ DecEq-Value ⦄ : DecEq Value
    ⦃ Dec-≤ᵗ ⦄      : _≤ᵗ_ ⁇²

  instance
    addValue : HasAdd Value
    addValue = record { _+_ = _+ᵛ_ }

  coin-inject-lemma : ∀ {val} {c} → coin (val + inject c) ≡ coin val + c
  coin-inject-lemma {val} {c} = begin
    coin (val + inject c)         ≡⟨ homo coinIsMonoidHomomorphism val (inject c) ⟩
    coin val + (coin ∘ inject) c  ≡⟨ cong (coin val +_) (coin∘inject≗id c) ⟩
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
\end{AgdaMultiCode}
\caption{Token algebras, used for multi-assets}
\end{figure*}
