{-# OPTIONS --overlapping-instances #-}
module MidnightExample.HSLedger where

open import Data.Integer        using (ℤ)
open import Data.String         using (_++_)
open import Interface.DecEq     using (DecEq)
open import Interface.Hashable  using (Hashable; hash; Hashable₁; Hashable₂)
open import Prelude             using (ℕ; String; List; _$_; foldr; _×_; _,_; Maybe)

import Data.Integer.Show as Z
import Data.List as L
import Data.Maybe as M
import Data.Nat.Show as N
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

open import MidnightExample.Ledger Hash using (Point; Tx; inc; dec; Header; Block; LedgerState; LEDGER-step; addBlockHash)

open import Foreign.Convertible using (Convertible; to; from)

-- open import Foreign.Haskell.Coerce -- (It seems we're not using this...?)

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
        ; body   = L.map to body }

      from' : F.Block → Block
      from' p = let open F.Block p in record
        { header = from header
        ; body   = L.map from body }

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
ledgerStep s b = M.map to (LEDGER-step _ (from s) (from b))

{-# COMPILE GHC ledgerStep as ledgerStep #-}

addBlockHash' : F.Block → F.Block
addBlockHash' b = to $ addBlockHash (from b)

{-# COMPILE GHC addBlockHash' as addBlockHash #-}
