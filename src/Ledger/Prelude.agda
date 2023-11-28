{-# OPTIONS --safe #-}

--------------------------------------------------------------------------------
-- Ledger prelude
--
-- Re-exports modules relating to STS, set theory and other
-- miscellaneous things used to write the ledger rules. If something
-- is used in more than two Ledger.* modules, it should probably go
-- here.
--------------------------------------------------------------------------------

module Ledger.Prelude where

open import Prelude public

open import Ledger.Prelude.Base public

open import Data.Product.Ext public
open import Data.Maybe.Properties.Ext public
open import Interface.Functor public
open import Interface.Bifunctor public
open import Interface.DecEq.Ext public
open import Interface.HasAdd public
open import Interface.HasAdd.Instance public
open import Interface.HasSubtract public
open import Interface.HasSubtract.Instance public
open import Interface.HasOrder public
open import Interface.HasOrder.Instance public
open import Interface.Decidable.Instance public
open import Interface.Hashable public
open import Interface.ComputationalRelation public
open import MyDebugOptions public
open import Tactic.DeriveComp public
open import Tactic.Premises public

open import Ledger.Interface.HasCoin public
open import Ledger.Set public
open import Interface.HasSingleton th public
open import Interface.HasEmptySet th public
