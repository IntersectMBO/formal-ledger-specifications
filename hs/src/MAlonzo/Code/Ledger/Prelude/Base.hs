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
import qualified MAlonzo.Code.Agda.Primitive

-- Ledger.Prelude.Base.Coin
d_Coin_6 :: ()
d_Coin_6 = erased
-- Ledger.Prelude.Base.Donations
d_Donations_8 :: ()
d_Donations_8 = erased
-- Ledger.Prelude.Base.Fees
d_Fees_10 :: ()
d_Fees_10 = erased
-- Ledger.Prelude.Base.Reserves
d_Reserves_12 :: ()
d_Reserves_12 = erased
-- Ledger.Prelude.Base.Treasury
d_Treasury_14 :: ()
d_Treasury_14 = erased
-- Ledger.Prelude.Base.HasDonations
d_HasDonations_20 a0 a1 = ()
newtype T_HasDonations_20
  = C_HasDonations'46'constructor_9 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasDonations.DonationsOf
d_DonationsOf_28 :: T_HasDonations_20 -> AgdaAny -> Integer
d_DonationsOf_28 v0
  = case coe v0 of
      C_HasDonations'46'constructor_9 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.DonationsOf
d_DonationsOf_32 :: T_HasDonations_20 -> AgdaAny -> Integer
d_DonationsOf_32 v0 = coe d_DonationsOf_28 (coe v0)
-- Ledger.Prelude.Base.HasFees
d_HasFees_38 a0 a1 = ()
newtype T_HasFees_38
  = C_HasFees'46'constructor_63 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasFees.FeesOf
d_FeesOf_46 :: T_HasFees_38 -> AgdaAny -> Integer
d_FeesOf_46 v0
  = case coe v0 of
      C_HasFees'46'constructor_63 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.FeesOf
d_FeesOf_50 :: T_HasFees_38 -> AgdaAny -> Integer
d_FeesOf_50 v0 = coe d_FeesOf_46 (coe v0)
-- Ledger.Prelude.Base.HasReserves
d_HasReserves_56 a0 a1 = ()
newtype T_HasReserves_56
  = C_HasReserves'46'constructor_117 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasReserves.ReservesOf
d_ReservesOf_64 :: T_HasReserves_56 -> AgdaAny -> Integer
d_ReservesOf_64 v0
  = case coe v0 of
      C_HasReserves'46'constructor_117 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.ReservesOf
d_ReservesOf_68 :: T_HasReserves_56 -> AgdaAny -> Integer
d_ReservesOf_68 v0 = coe d_ReservesOf_64 (coe v0)
-- Ledger.Prelude.Base.HasTreasury
d_HasTreasury_74 a0 a1 = ()
newtype T_HasTreasury_74
  = C_HasTreasury'46'constructor_171 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasTreasury.TreasuryOf
d_TreasuryOf_82 :: T_HasTreasury_74 -> AgdaAny -> Integer
d_TreasuryOf_82 v0
  = case coe v0 of
      C_HasTreasury'46'constructor_171 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.TreasuryOf
d_TreasuryOf_86 :: T_HasTreasury_74 -> AgdaAny -> Integer
d_TreasuryOf_86 v0 = coe d_TreasuryOf_82 (coe v0)
