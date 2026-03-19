---
source_branch: master
source_path: src/Ledger/Conway/Foreign/Core.lagda.md
---
```agda
module Ledger.Conway.Foreign.Core where

open import Ledger.Prelude hiding (ε) renaming (fromList to fromListˢ) public

open Computational public

open import Algebra.Construct.DirectProduct using (commutativeMonoid)
open import Algebra.Morphism    using (module MonoidMorphisms)
open import Data.Nat.Properties using (+-0-commutativeMonoid) public
import      Data.Integer as ℤ
import      Data.Rational as ℚ

open import Foreign.Convertible           public
open import Foreign.Convertible.Deriving  public
open import Foreign.HaskellTypes          public
open import Foreign.HaskellTypes.Deriving public

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch

open import Ledger.Conway.Specification.Transaction renaming (Vote to VoteTag) public

open import Ledger.Prelude.Foreign.Util public

open import Tactic.Derive.Show

module Implementation where
  Network          = ℕ
  SlotsPerEpochᶜ   = 4320 -- TODO pass this externally instead of hardcoding
  ActiveSlotCoeff  = ℤ.1ℤ ℚ./ 20  
  StabilityWindowᶜ = 10
  RandomnessStabilisationWindowᶜ = 10
  MaxLovelaceSupplyᶜ = 1
  Quorum           = 1
  NetworkId        = 0 -- Testnet

  SKey = ℕ
  Sig  = ℕ
  Ser  = ℕ

  sign       = _+_
  ScriptHash = ℕ

  Data         = ℕ
  toData : ∀ {A : Type} → A → Data
  toData _ = 0

  ExUnits      = ℕ × ℕ
  ExUnit-CommutativeMonoid =
    Conversion.fromBundle (commutativeMonoid +-0-commutativeMonoid +-0-commutativeMonoid)
  ≥ᵉ-Dec = _≡_ {A = ExUnits} ⁇² ∋ it
  _≥ᵉ_ : ExUnits → ExUnits → Type
  _≥ᵉ_ = _≡_

  instance
    Show-ExUnits : Show ExUnits
    Show-ExUnits = Show-×

  CostModel    = ⊤
  LangDepView  = ⊤
  Prices       = ⊤

  TxId            = ℕ
  Ix              = ℕ
  AuxiliaryData   = ℕ
  DocHash         = ℕ
  tokenAlgebra    = Coin-TokenAlgebra
    where open import Ledger.Conway.Specification.TokenAlgebra.Coin ScriptHash
            using (Coin-TokenAlgebra)
```
