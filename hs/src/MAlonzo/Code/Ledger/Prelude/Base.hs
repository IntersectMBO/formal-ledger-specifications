{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.Prelude.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Nat.Base

-- Ledger.Prelude.Base.Coin
d_Coin_6 :: ()
d_Coin_6 = erased
-- Ledger.Prelude.Base.Milliseconds
d_Milliseconds_8 :: ()
d_Milliseconds_8 = erased
-- Ledger.Prelude.Base.durationToSlots
d_durationToSlots_12 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> Integer -> Integer
d_durationToSlots_12 v0 ~v1 v2 = du_durationToSlots_12 v0 v2
du_durationToSlots_12 :: Integer -> Integer -> Integer
du_durationToSlots_12 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'47'__318
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
         (addInt (coe v0) (coe v1)) (1 :: Integer))
      (coe v0)
-- Ledger.Prelude.Base.Donations
d_Donations_18 :: ()
d_Donations_18 = erased
-- Ledger.Prelude.Base.Fees
d_Fees_20 :: ()
d_Fees_20 = erased
-- Ledger.Prelude.Base.Reserves
d_Reserves_22 :: ()
d_Reserves_22 = erased
-- Ledger.Prelude.Base.Treasury
d_Treasury_24 :: ()
d_Treasury_24 = erased
-- Ledger.Prelude.Base.HasDonations
d_HasDonations_30 a0 a1 = ()
newtype T_HasDonations_30 = C_constructor_40 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasDonations.DonationsOf
d_DonationsOf_38 :: T_HasDonations_30 -> AgdaAny -> Integer
d_DonationsOf_38 v0
  = case coe v0 of
      C_constructor_40 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.DonationsOf
d_DonationsOf_44 :: T_HasDonations_30 -> AgdaAny -> Integer
d_DonationsOf_44 v0 = coe d_DonationsOf_38 (coe v0)
-- Ledger.Prelude.Base.HasFees
d_HasFees_50 a0 a1 = ()
newtype T_HasFees_50 = C_constructor_60 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasFees.FeesOf
d_FeesOf_58 :: T_HasFees_50 -> AgdaAny -> Integer
d_FeesOf_58 v0
  = case coe v0 of
      C_constructor_60 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.FeesOf
d_FeesOf_64 :: T_HasFees_50 -> AgdaAny -> Integer
d_FeesOf_64 v0 = coe d_FeesOf_58 (coe v0)
-- Ledger.Prelude.Base.HasReserves
d_HasReserves_70 a0 a1 = ()
newtype T_HasReserves_70 = C_constructor_80 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasReserves.ReservesOf
d_ReservesOf_78 :: T_HasReserves_70 -> AgdaAny -> Integer
d_ReservesOf_78 v0
  = case coe v0 of
      C_constructor_80 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.ReservesOf
d_ReservesOf_84 :: T_HasReserves_70 -> AgdaAny -> Integer
d_ReservesOf_84 v0 = coe d_ReservesOf_78 (coe v0)
-- Ledger.Prelude.Base.HasTreasury
d_HasTreasury_90 a0 a1 = ()
newtype T_HasTreasury_90 = C_constructor_100 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasTreasury.TreasuryOf
d_TreasuryOf_98 :: T_HasTreasury_90 -> AgdaAny -> Integer
d_TreasuryOf_98 v0
  = case coe v0 of
      C_constructor_100 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.TreasuryOf
d_TreasuryOf_104 :: T_HasTreasury_90 -> AgdaAny -> Integer
d_TreasuryOf_104 v0 = coe d_TreasuryOf_98 (coe v0)
