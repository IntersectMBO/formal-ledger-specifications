\section{Token Algebra}
\begin{code}[hide]
{-# OPTIONS --safe #-}


open import Agda.Primitive renaming (Set to Type)

module Ledger.TokenAlgebra
 (PolicyID : Type)       -- identifies monetary policies
 (ByteString : Type)     -- could postulate `ByteString` here, but then we'd have to drop `--safe` pragma
 (AdaName : ByteString)  -- the asset name for Ada
 where

open import Ledger.Prelude hiding (Coin ; Rel)
open import Algebra using (CommutativeMonoid)
open import Algebra.Morphism using (IsCommutativeMonoidMorphism-syntax)
open import Data.Integer using (ℤ)
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
-- Derived types (See Fig 3 of Mary spec [1].) --------------------------

record TokenAlgebraRel {ℓ : Level} : Type (lsuc ℓ) where
  field Value-CommutativeMonoid : CommutativeMonoid ℓ ℓ

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
-- Derived types (See Fig 3 of Mary spec [1].) --------------------------


-- AssetName is a byte string used to distinguish different assets with the same PolicyID. Each
AssetName : Type
AssetName = ByteString

AssetID : Type
AssetID = PolicyID × AssetName
{- AssetID could be either `AdaIDType` or a pair of `PolicyId` and `AssetName`, like this,
   ```agda
   AssetID = AdaIDType ⊎ (PolicyId × AssetName)
   ```
   but here we are instead treating Ada as a generic asset. -}

-- AdaID is a special asset ID for Ada, different to all other asset IDs.
-- It is a term of the single-term type AdaIDType.
record AdaIDType : Type where
  instance constructor AdaID

-- `Quantity` is the type of amounts of assets.
Quantity : Type
Quantity = ℕ

\end{code}


[1] https://github.com/input-output-hk/cardano-ledger/releases/latest/download/mary-ledger.pdf
