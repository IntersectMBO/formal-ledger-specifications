
{-# OPTIONS --safe #-}

open import Algebra.Morphism
open import Data.List.Relation.Unary.All using (All; []; _∷_; all?; uncons)
open import Data.List.Relation.Unary.Any
open import Data.Nat.Properties using (+-0-commutativeMonoid; suc-injective)

open import Data.List.Relation.Unary.MOf

open import Tactic.Derive.DecEq
open import Tactic.Inline

open import Ledger.Prelude hiding (All; Any; all?; any?; _∷ʳ_; uncons; _⊆_)
open import Ledger.Crypto
open import Ledger.Types.Epoch

import Ledger.Script

module Ledger.Conway.Conformance.Script
  (crypto : _) (open Crypto crypto)
  (es     : _) (open EpochStructure es)
  where

open Ledger.Script crypto es

record HashedTimelock : Type where
  field
    timelock : Timelock
    storedHash : ScriptHash

instance
  Hashable-HashedTimelock : Hashable HashedTimelock ScriptHash
  Hashable-HashedTimelock .hash = HashedTimelock.storedHash

unquoteDecl DecEq-HashedTimelock = derive-DecEq ((quote HashedTimelock , DecEq-HashedTimelock) ∷ [])

P1ScriptStructure-HTL : P1ScriptStructure
P1ScriptStructure-HTL = record
  { P1Script = HashedTimelock
  ; validP1Script = λ x y → evalTimelock x y ∘ HashedTimelock.timelock }
