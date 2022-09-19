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
  Hashable-String : Hashable String Hash
  Hashable-String .hash = F.hash

  Hashable-ℤ : Hashable ℤ Hash
  Hashable-ℤ .hash x = hash (Z.show x)

  Hashable-List : Hashable₁ List Hash
  Hashable-List .hash x = hash $ foldr (λ a acc → N.show (hash a) ++ "," ++ acc) "" x

  Hashable-× : Hashable₂ _×_ Hash
  Hashable-× .hash (a , b) = hash (N.show (hash a) ++ "," ++ N.show (hash b))

open import MidnightExample.Ledger Hash

open import Foreign.Convertible
open import Foreign.Haskell.Coerce

instance
  Convertible-Point : Convertible Point F.Point
  Convertible-Point = record { to = to' ; from = from' }
    where
      to' : Point → F.Point
      to' p = let open Point p in record
        { slot      = slot
        ; blockHash = blockHash }

      from' : F.Point → Point
      from' p = let open F.Point p in record
        { slot      = slot
        ; blockHash = blockHash }

  Convertible-Tx : Convertible Tx F.Tx
  Convertible-Tx .to   inc   = F.inc
  Convertible-Tx .to   dec   = F.dec
  Convertible-Tx .from F.inc = inc
  Convertible-Tx .from F.dec = dec

  Convertible-Header : Convertible Header F.Header
  Convertible-Header = record { to = to' ; from = from' }
    where
      to' : Header → F.Header
      to' p = let open Header p in record
        { slotNo    = slotNo
        ; blockNo   = blockNo
        ; blockHash = blockHash
        ; prev      = prev
        ; nodeId    = nodeId }

      from' : F.Header → Header
      from' p = let open F.Header p in record
        { slotNo    = slotNo
        ; blockNo   = blockNo
        ; blockHash = blockHash
        ; prev      = prev
        ; nodeId    = nodeId }

  Convertible-Block : Convertible Block F.Block
  Convertible-Block = record { to = to' ; from = from' }
    where
      to' : Block → F.Block
      to' p = let open Block p in record
        { header = to header
        ; body   = Data.List.map to body }

      from' : F.Block → Block
      from' p = let open F.Block p in record
        { header = from header
        ; body   = Data.List.map from body }

  Convertible-LedgerState : Convertible LedgerState F.LedgerState
  Convertible-LedgerState = record { to = to' ; from = from' }
    where
      to' : LedgerState → F.LedgerState
      to' p = let open LedgerState p in record
        { tip       = to tip
        ; count     = count
        ; snapshot1 = snapshot1
        ; snapshot2 = snapshot2 }

      from' : F.LedgerState → LedgerState
      from' p = let open F.LedgerState p in record
        { tip       = from tip
        ; count     = count
        ; snapshot1 = snapshot1
        ; snapshot2 = snapshot2 }

ledgerStep : F.LedgerState → F.Block → Maybe F.LedgerState
ledgerStep s b = Data.Maybe.map to (LEDGER-step _ (from s) (from b))

{-# COMPILE GHC ledgerStep as ledgerStep #-}

addBlockHash' : F.Block → F.Block
addBlockHash' b = to $ addBlockHash (from b)

{-# COMPILE GHC addBlockHash' as addBlockHash #-}
