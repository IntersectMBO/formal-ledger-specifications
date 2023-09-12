{-# OPTIONS --overlapping-instances #-}
module MidnightExample.HSLedger where

open import Prelude hiding (_++_)

open import Interface.Hashable
open import Interface.DecEq

open import Data.Integer hiding (show)
import Data.Integer.Show as Z
import Data.Nat.Show as N
import Data.List
import Data.Maybe
open import Data.String using (_++_)

import MidnightExample.Types as F

Hash = ℕ

instance
  Hashable-String = Hashable String Hash ∋ λ where .hash → F.hash
  Hashable-ℤ      = Hashable ℤ Hash      ∋ λ where .hash → hash ∘ Z.show

  Hashable-List : Hashable₁ List Hash
  Hashable-List .hash x = hash $ foldr (λ a acc → N.show (hash a) ++ "," ++ acc) "" x

  Hashable-× : Hashable₂ _×_ Hash
  Hashable-× .hash (a , b) = hash $ N.show (hash a) ++ "," ++ N.show (hash b)

open import MidnightExample.Ledger Hash

open import Foreign.Convertible
open import Foreign.Haskell.Coerce

instance
  Convertible-Point : Convertible Point F.Point
  Convertible-Point = λ where
    .to p → let open Point p in record
      { slot      = slot
      ; blockHash = blockHash }
    .from p → let open F.Point p in record
      { slot      = slot
      ; blockHash = blockHash }

  Convertible-Tx : Convertible Tx F.Tx
  Convertible-Tx = λ where
    .to   inc   → F.inc
    .to   dec   → F.dec
    .from F.inc → inc
    .from F.dec → dec

  Convertible-Header : Convertible Header F.Header
  Convertible-Header = λ where
    .to p → let open Header p in record
      { slotNo    = slotNo
      ; blockNo   = blockNo
      ; blockHash = blockHash
      ; prev      = prev
      ; nodeId    = nodeId }
    .from p → let open F.Header p in record
      { slotNo    = slotNo
      ; blockNo   = blockNo
      ; blockHash = blockHash
      ; prev      = prev
      ; nodeId    = nodeId }

  Convertible-Block : Convertible Block F.Block
  Convertible-Block = λ where
    .to p → let open Block p in record
      { header = to header
      ; body   = Data.List.map to body }
    .from p → let open F.Block p in record
      { header = from header
      ; body   = Data.List.map from body }

  Convertible-LedgerState : Convertible LedgerState F.LedgerState
  Convertible-LedgerState = λ where
    .to p → let open LedgerState p in record
      { tip       = to tip
      ; count     = count
      ; snapshot1 = snapshot1
      ; snapshot2 = snapshot2 }
    .from p → let open F.LedgerState p in record
      { tip       = from tip
      ; count     = count
      ; snapshot1 = snapshot1
      ; snapshot2 = snapshot2 }

ledgerStep : F.LedgerState → F.Block → Maybe F.LedgerState
ledgerStep s b = Data.Maybe.map to $ LEDGER-step _ (from s) (from b)

{-# COMPILE GHC ledgerStep as ledgerStep #-}

addBlockHash' : F.Block → F.Block
addBlockHash' b = to $ addBlockHash (from b)

{-# COMPILE GHC addBlockHash' as addBlockHash #-}
