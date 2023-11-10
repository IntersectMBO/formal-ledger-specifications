module MidnightExample.HSLedger where

open import Prelude hiding (_++_; dec)

open import Interface.Hashable

open import Data.Integer hiding (show)
open import Data.String using (_++_)

import MidnightExample.Types as F
open F using (Hash)

private variable A B : Set
instance
  _ : Hashable String Hash
  _ = λ where .hash → F.hash; .hashInj → F.hash-inj
private
  Show⇒Hashable : ⦃ Show A ⦄ → Hashable A Hash
  Show⇒Hashable .hash = hash ∘ show
  Show⇒Hashable .hashInj = hash-inj where postulate hash-inj : _
instance
  _ : ⦃ Hashable A Hash ⦄ → Show (List A)
  _ = λ where .show → foldr (λ a acc → show (hash a) ++ "," ++ acc) ""

  _ : ⦃ Hashable A Hash ⦄ → ⦃ Hashable B Hash ⦄ → Show (A × B)
  _ = λ where .show (a , b) → show (hash a) ++ "," ++ show (hash b)

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
ledgerStep s b = to <$> LEDGER-step _ (from s) (from b)

{-# COMPILE GHC ledgerStep as ledgerStep #-}

addBlockHash' : F.Block → F.Block
addBlockHash' b = to $ addBlockHash (from b)

{-# COMPILE GHC addBlockHash' as addBlockHash #-}
