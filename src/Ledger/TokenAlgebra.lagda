\section{Token algebras}
\label{sec:token-algebra}

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.TokenAlgebra where

open import Ledger.Prelude       using (Level ; 0ℓ ; sucˡ ; _⊔ˡ_ ; DecEq ; ℕ )
open import Ledger.Prelude       using ( Coin ; _∘_ ; _≗_ ; id ; List ; foldr)

open import Agda.Primitive       using() renaming (Set to Type)
open import Algebra              using (CommutativeMonoid ; Monoid)
open import Algebra.Morphism     using (module MonoidMorphisms )
open import Data.Nat.Properties  using (+-0-monoid)
open import Relation.Binary      using (Rel)
open import Relation.Unary       using (Pred)
\end{code}

\begin{figure*}
\begin{code}
record TokenAlgebra : Set₁ where
  field -- PolicyId : Set
        Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ

  MemoryEstimate : Type
  MemoryEstimate = ℕ
\end{code}
\begin{code}[hide]
  open CommutativeMonoid Value-CommutativeMonoid public
    using ( _≈_ ; ε ; monoid )
    renaming  ( Carrier  to Value
              ; refl     to reflᵛ
              ; _∙_      to _+ᵛ_
              )
  open MonoidMorphisms (Monoid.rawMonoid monoid) (Monoid.rawMonoid +-0-monoid)
\end{code}
\begin{code}
  field  coin      : Value → Coin
         inject    : Coin → Value

         -- policies  : Value → ℙ PolicyId     -- TODO: determine whether we need a policies field

         size      : Value → MemoryEstimate
         _≤ᵗ_      : Value → Value → Set
         AssetName             : Type
         specialAsset          : AssetName
         property                  : coin ∘ inject ≗ id
         coinIsMonoidHomomorphism  : IsMonoidHomomorphism coin
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



\subsection{An alternative representation}
\label{sec:token-algebra}

Here is an altearntive manifestation of the token algebra which uses the \AgdaBound{REL}
type from the Agda Standard Library instead of the \AgdaBound{Set} type.

\begin{code}
record TokenAlgebraPoly {ℓ ℓ' : Level} : Type ((sucˡ ℓ) ⊔ˡ (sucˡ ℓ')) where
  field Value-CommutativeMonoid : CommutativeMonoid ℓ ℓ'

  MemoryEstimate : Type
  MemoryEstimate = ℕ

  open CommutativeMonoid Value-CommutativeMonoid using (_≈_; ε ; monoid)
       renaming (Carrier to Value; refl to reflᵛ; _∙_ to _+ᵛ_) public
  open MonoidMorphisms (Monoid.rawMonoid monoid) (Monoid.rawMonoid +-0-monoid)

  field coin               : Value → Coin
        inject             : Coin → Value
        -- policies           : Value → Pred PolicyId 0ℓ  -- (remove policies: here we take Value to be total)
        size               : Value → MemoryEstimate
        _≤ᵗ_               : Rel Value 0ℓ
        AssetName          : Type
        specialAsset       : AssetName
        composeToIdentity  : coin ∘ inject ≗ id
        coinIsMonoidHom    : IsMonoidHomomorphism coin

        -- coinIsMonoidMorphism  : coin Is Value-CommutativeMonoid -CommutativeMonoid⟶ +-0-commutativeMonoid
        -- (this way of checking that `coin` is a monoid hom from Value to ℕ is deprecated)

  sumᵛ : List Value → Value
  sumᵛ = foldr _+ᵛ_ (inject 0)
\end{code}

\caption{Token algebras, used for multi-assets}
\end{figure*}

\begin{code}
Quantity : Type
Quantity = ℕ
\end{code}
