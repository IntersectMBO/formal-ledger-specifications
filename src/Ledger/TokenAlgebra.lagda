\section{Token Algebra}
\label{sec:token-algebra}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Primitive  using() renaming (Set to Type)
open import Ledger.Epoch    using (GlobalConstants)

module Ledger.TokenAlgebra
  (gc        : GlobalConstants)
  (PolicyID  : Type)
  where

open import Ledger.Prelude hiding (Coin ; Rel)
open GlobalConstants gc

open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism using (IsCommutativeMonoidMorphism-syntax)
open import Data.Nat.Properties using (+-0-commutativeMonoid)
open import Relation.Binary using (Rel)
open import Relation.Unary using (Pred)

record TokenAlgebra : Type 1ℓ where
  field Value-CommutativeMonoid : CommutativeMonoid 0ℓ 0ℓ

  Coin : Type
  Coin = ℕ

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


\begin{code}
record TokenAlgebraRel {ℓ ℓ' : Level} : Type ((sucˡ ℓ) ⊔ˡ (sucˡ ℓ')) where
  field Value-CommutativeMonoid : CommutativeMonoid ℓ ℓ'

  Coin : Type
  Coin = ℕ

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

\subsection{Derived types}

(See Fig 3 of the
\href{https://github.com/input-output-hk/cardano-ledger/releases/latest/download/mary-ledger.pdf}%
{Mary ledger specification}.)

\begin{itemize}
\item \AgdaBound{AssetName} is a byte string used to distinguish different assets with the same \AgdaBound{PolicyID}.
\item \AgdaBound{AssetID} is a product type consisting of a \AgdaBound{PolicyId} and an \AgdaBound{AssetName}.
\item \AgdaBound{AdaID} is the ID for the asset Ada.
\item \AgdaBound{Quantity} is the type of amounts of assets.
\end{itemize}

In the formal ledger specification \AgdaBound{AssetID} is sometimes viewed as a direct sum type,
the inhabitants of which belong to either \AgdaBound{AdaIDType} or the product
\AgdaBound{PolicyId}~\AgdaBound{×}~\AgdaBound{AssetName}; if we were adhering to that point of view,
then we would have defined
\AgdaBound{AssetID}
  = \AgdaBound{AdaIDType}~\AgdaBound{⊎}~(\AgdaBound{PolicyId}~\AgdaBound{×}~\AgdaBound{AssetName}).

\begin{code}
AssetName : Type
AssetName = ByteString

AssetID : Type
AssetID = PolicyID × AssetName

Quantity : Type
Quantity = ℕ
\end{code}

Finally, we define a record type with a single inhabitant with which we may wish to
represent the type of Ada (rather than viewing Ada as just another asset).

\begin{code}
record AdaIDType : Type where
  instance constructor AdaID
\end{code}
