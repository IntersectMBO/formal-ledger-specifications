module Ledger.ExampleExUnit where

open import Ledger.Script
open import Ledger.Prelude
open import Data.Nat.Properties
open import Algebra
open PlutusStructure
open import Ledger.PairOpAlgebra ℕ zero _≡_ _+_

ExUnitExample : CommutativeMonoid 0ℓ 0ℓ
ExUnitExample = record
                  { Carrier = ℕ × ℕ
                  ; _≈_ = _≈ᵖ_
                  ; _∙_ = _∙ᵖ_
                  ; ε = zero , zero
                  ; isCommutativeMonoid = pairOpRespectsComm +-0-isCommutativeMonoid
                  }

{-
HSP2ScriptStructure : PlutusStructure ℕ ℕ ℕ
HSP2ScriptStructure = record
  { Dataʰ = {!!}
    ; PlutusScript = {!!}
    ; CostModel = {!!}
    ; ExUnit-CommutativeMonoid = ExUnitExample
    ; Hashable-PlutusScript = {!!}
    ; DecEq-PlutusScript = {!!}
    ; _≥ᵉ_ = {!!}
    ; validPlutusScript = {!!}
    ; validPlutusScript? = {!!}
  }
-}
