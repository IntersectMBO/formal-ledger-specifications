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
newtype T_HasDonations_20 = C_constructor_30 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasDonations.DonationsOf
d_DonationsOf_28 :: T_HasDonations_20 -> AgdaAny -> Integer
d_DonationsOf_28 v0
  = case coe v0 of
      C_constructor_30 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.DonationsOf
d_DonationsOf_34 :: T_HasDonations_20 -> AgdaAny -> Integer
d_DonationsOf_34 v0 = coe d_DonationsOf_28 (coe v0)
-- Ledger.Prelude.Base.HasFees
d_HasFees_40 a0 a1 = ()
newtype T_HasFees_40 = C_constructor_50 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasFees.FeesOf
d_FeesOf_48 :: T_HasFees_40 -> AgdaAny -> Integer
d_FeesOf_48 v0
  = case coe v0 of
      C_constructor_50 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.FeesOf
d_FeesOf_54 :: T_HasFees_40 -> AgdaAny -> Integer
d_FeesOf_54 v0 = coe d_FeesOf_48 (coe v0)
-- Ledger.Prelude.Base.HasReserves
d_HasReserves_60 a0 a1 = ()
newtype T_HasReserves_60 = C_constructor_70 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasReserves.ReservesOf
d_ReservesOf_68 :: T_HasReserves_60 -> AgdaAny -> Integer
d_ReservesOf_68 v0
  = case coe v0 of
      C_constructor_70 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.ReservesOf
d_ReservesOf_74 :: T_HasReserves_60 -> AgdaAny -> Integer
d_ReservesOf_74 v0 = coe d_ReservesOf_68 (coe v0)
-- Ledger.Prelude.Base.HasTreasury
d_HasTreasury_80 a0 a1 = ()
newtype T_HasTreasury_80 = C_constructor_90 (AgdaAny -> Integer)
-- Ledger.Prelude.Base.HasTreasury.TreasuryOf
d_TreasuryOf_88 :: T_HasTreasury_80 -> AgdaAny -> Integer
d_TreasuryOf_88 v0
  = case coe v0 of
      C_constructor_90 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Base._.TreasuryOf
d_TreasuryOf_94 :: T_HasTreasury_80 -> AgdaAny -> Integer
d_TreasuryOf_94 v0 = coe d_TreasuryOf_88 (coe v0)
