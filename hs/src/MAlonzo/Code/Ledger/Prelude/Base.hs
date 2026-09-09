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
-- Ledger.Prelude.Base.Milliseconds
d_Milliseconds_8 :: ()
d_Milliseconds_8 = erased
-- Ledger.Prelude.Base.Donations
d_Donations_10 :: ()
d_Donations_10 = erased
-- Ledger.Prelude.Base.Fees
d_Fees_12 :: ()
d_Fees_12 = erased
-- Ledger.Prelude.Base.Reserves
d_Reserves_14 :: ()
d_Reserves_14 = erased
-- Ledger.Prelude.Base.Treasury
d_Treasury_16 :: ()
d_Treasury_16 = erased
-- Ledger.Prelude.Base.HasDonations
d_HasDonations_22 a0 a1 = ()
newtype T_HasDonations_22 = C_constructor_32 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasDonations.DonationsOf
d_DonationsOf_30 :: T_HasDonations_22 -> AgdaAny -> Integer
d_DonationsOf_30 v0
  = case coe v0 of
      C_constructor_32 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.DonationsOf
d_DonationsOf_36 :: T_HasDonations_22 -> AgdaAny -> Integer
d_DonationsOf_36 v0 = coe d_DonationsOf_30 (coe v0)
-- Ledger.Prelude.Base.HasFees
d_HasFees_42 a0 a1 = ()
newtype T_HasFees_42 = C_constructor_52 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasFees.FeesOf
d_FeesOf_50 :: T_HasFees_42 -> AgdaAny -> Integer
d_FeesOf_50 v0
  = case coe v0 of
      C_constructor_52 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.FeesOf
d_FeesOf_56 :: T_HasFees_42 -> AgdaAny -> Integer
d_FeesOf_56 v0 = coe d_FeesOf_50 (coe v0)
-- Ledger.Prelude.Base.HasReserves
d_HasReserves_62 a0 a1 = ()
newtype T_HasReserves_62 = C_constructor_72 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasReserves.ReservesOf
d_ReservesOf_70 :: T_HasReserves_62 -> AgdaAny -> Integer
d_ReservesOf_70 v0
  = case coe v0 of
      C_constructor_72 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.ReservesOf
d_ReservesOf_76 :: T_HasReserves_62 -> AgdaAny -> Integer
d_ReservesOf_76 v0 = coe d_ReservesOf_70 (coe v0)
-- Ledger.Prelude.Base.HasTreasury
d_HasTreasury_82 a0 a1 = ()
newtype T_HasTreasury_82 = C_constructor_92 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasTreasury.TreasuryOf
d_TreasuryOf_90 :: T_HasTreasury_82 -> AgdaAny -> Integer
d_TreasuryOf_90 v0
  = case coe v0 of
      C_constructor_92 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.TreasuryOf
d_TreasuryOf_96 :: T_HasTreasury_82 -> AgdaAny -> Integer
d_TreasuryOf_96 v0 = coe d_TreasuryOf_90 (coe v0)
