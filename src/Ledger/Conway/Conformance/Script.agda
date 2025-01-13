
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

record HSTimelock : Type where
  field
    timelock     : Timelock
    tlScriptHash : ScriptHash
    tlScriptSize : ℕ

instance
  Hashable-HSTimelock : Hashable HSTimelock ScriptHash
  Hashable-HSTimelock .hash = HSTimelock.tlScriptHash

unquoteDecl DecEq-HSTimelock = derive-DecEq ((quote HSTimelock , DecEq-HSTimelock) ∷ [])

record HSPlutusScript : Type where
  constructor MkHSPlutusScript
  field psScriptHash : ScriptHash
        psScriptSize : ℕ

instance
  Hashable-HSPlutusScript : Hashable HSPlutusScript ScriptHash
  Hashable-HSPlutusScript .hash = HSPlutusScript.psScriptHash

P1ScriptStructure-HTL : P1ScriptStructure
P1ScriptStructure-HTL = record
  { P1Script = HSTimelock
  ; validP1Script = λ x y → evalTimelock x y ∘ HSTimelock.timelock }

