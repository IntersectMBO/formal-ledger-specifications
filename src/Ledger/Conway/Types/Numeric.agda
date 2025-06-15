{-# OPTIONS --safe #-}

-- Subsets of number types useful for the ledger specification.
module Ledger.Conway.Types.Numeric where

open import Ledger.Conway.Types.Numeric.PositiveNat public
  renaming (PosNat to ℕ⁺; fromPosNat to fromℕ⁺; mkPosNat to mkℕ⁺
           ; PosNat-Is>0 to ℕ⁺->0)
open import Ledger.Conway.Types.Numeric.UnitInterval public
