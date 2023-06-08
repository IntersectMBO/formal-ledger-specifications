\section{Token Algebra}
\label{sec:token-algebra}

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.TokenAlgebra.Base where

open import Agda.Primitive       using() renaming (Set to Type)
open import Algebra              using (CommutativeMonoid)
open import Algebra.Morphism     using (IsCommutativeMonoidMorphism-syntax)
open import Data.Nat.Properties  using (+-0-commutativeMonoid)
open import Ledger.Prelude       hiding (Rel)
open import Relation.Binary      using (Rel)
open import Relation.Unary       using (Pred)
\end{code}

\begin{figure*}
\begin{code}
record TokenAlgebra : Type₁ where
  field Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ

  MemoryEstimate : Type
  MemoryEstimate = ℕ
\end{code}
\begin{code}[hide]
  open CommutativeMonoid Value-CommutativeMonoid using (_≈_; ε)
       renaming (Carrier to Value; refl to reflᵛ; _∙_ to _+ᵛ_) public
\end{code}
\begin{code}

  field coin     : Value → Coin
        inject   : Coin → Value
        size                  : Value → MemoryEstimate
        _≤ᵗ_                  : Rel Value 0ℓ
        AssetNameType         : Type
        property              : coin ∘ inject ≗ id
        coinIsMonoidMorphism  : coin Is Value-CommutativeMonoid -CommutativeMonoid⟶ +-0-commutativeMonoid
        instance DecEq-Value  : DecEq Value
\end{code}
\begin{code}[hide]
        -- policies : Value → ℙ PolicyId

  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)

\end{code}
\caption{Token algebras, used for multi-assets}
\end{figure*}


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

  field coin                  : Value → Coin
        inject                : Coin → Value
        -- policies              : Value → Pred PolicyId 0ℓ
        -- (removing policies since here we take Value to be total)
        size                  : Value → MemoryEstimate
        _≤ᵗ_                  : Rel Value 0ℓ
        AssetNameType         : Type
        specialAsset          : AssetNameType
        composeToIdentity     : coin ∘ inject ≗ id
        coinIsMonoidMorphism  : coin Is Value-CommutativeMonoid -CommutativeMonoid⟶ +-0-commutativeMonoid

        -- instance DecEq-AssetName  : DecEq AssetName

  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)
\end{code}
\caption{Token algebras, used for multi-assets}
\end{figure*}


\begin{code}
Quantity : Type
Quantity = ℕ
\end{code}
