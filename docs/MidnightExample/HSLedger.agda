module MidnightExample.HSLedger where

open import Prelude hiding (_++_; dec; Show-List; Show-×)

open import Interface.Hashable
open import Interface.ComputationalRelation

open import Data.Integer hiding (show)
open import Data.String using (_++_)

import MidnightExample.Types as F
open F using (Hash)

private variable A B : Type
instance
  _ : Hashable String Hash
  _ = λ where .hash → F.hash
private
  Show⇒Hashable : ⦃ Show A ⦄ → Hashable A Hash
  Show⇒Hashable .hash = hash ∘ show
instance
  Show-List : ⦃ Hashable A Hash ⦄ → Show (List A)
  Show-List .show = foldr (λ a acc → show (hash a) ++ "," ++ acc) ""

  Show-× : ⦃ Hashable A Hash ⦄ → ⦃ Hashable B Hash ⦄ → Show (A × B)
  Show-× .show (a , b) = show (hash a) ++ "," ++ show (hash b)

  _ = Hashable ℤ Hash ∋ Show⇒Hashable
  _ : Hashable₁ List Hash
  _ = Show⇒Hashable
  _ : Hashable₂ _×_ Hash
  _ = Show⇒Hashable

open import MidnightExample.Ledger Hash

open import Foreign.Convertible

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
      ; body   = to <$> body }
    .from p → let open F.Block p in record
      { header = from header
      ; body   = from <$> body }

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
ledgerStep s b = to ∘ success-maybe $ LEDGER-step _ (from s) (from b)

{-# COMPILE GHC ledgerStep as ledgerStep #-}

addBlockHash' : F.Block → F.Block
addBlockHash' b = to $ addBlockHash (from b)

{-# COMPILE GHC addBlockHash' as addBlockHash #-}
