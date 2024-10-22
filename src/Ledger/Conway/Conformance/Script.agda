
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

module Script = Ledger.Script crypto es
open Script public hiding (P1ScriptStructure-TL; ScriptStructure)

record HashedTimelock : Type where
  field
    timelock : Timelock
    storedHash : ScriptHash

instance
  Hashable-HashedTimelock : Hashable HashedTimelock ScriptHash
  Hashable-HashedTimelock .hash = HashedTimelock.storedHash

unquoteDecl DecEq-HashedTimelock = derive-DecEq ((quote HashedTimelock , DecEq-HashedTimelock) ∷ [])

P1ScriptStructure-TL : P1ScriptStructure
P1ScriptStructure-TL = record
  { P1Script = HashedTimelock
  ; validP1Script = λ x y → evalTimelock x y ∘ HashedTimelock.timelock }

record ScriptStructure : Type₁ where
  p1s : P1ScriptStructure
  p1s = P1ScriptStructure-TL
  open P1ScriptStructure p1s public

  field hashRespectsUnion :
          {A B Hash : Type} → Hashable A Hash → Hashable B Hash → Hashable (A ⊎ B) Hash
        ⦃ Hash-Timelock ⦄ : Hashable P1Script ScriptHash

  field ps : PlutusStructure
  open PlutusStructure ps public
    renaming ( PlutusScript       to P2Script
             ; validPlutusScript  to validP2Script
             )

  Script = P1Script ⊎ P2Script

  instance
    Hashable-Script : Hashable Script ScriptHash
    Hashable-Script = hashRespectsUnion Hashable-P1Script Hashable-PlutusScript
