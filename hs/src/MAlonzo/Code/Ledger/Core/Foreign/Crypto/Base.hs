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

module MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show

import GHC.Generics (Generic)
data HSVKey = MkHSVKey {hvkVKey :: Integer, hvkStoredHash :: Integer}
 deriving (Show, Eq, Generic)
-- Ledger.Core.Foreign.Crypto.Base.HSVKey
d_HSVKey_10 = ()
data T_HSVKey_10 = C_MkHSVKey_20 Integer Integer
-- Ledger.Core.Foreign.Crypto.Base.HSVKey.hvkVKey
d_hvkVKey_16 :: T_HSVKey_10 -> Integer
d_hvkVKey_16 v0
  = case coe v0 of
      C_MkHSVKey_20 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Foreign.Crypto.Base.HSVKey.hvkStoredHash
d_hvkStoredHash_18 :: T_HSVKey_10 -> Integer
d_hvkStoredHash_18 v0
  = case coe v0 of
      C_MkHSVKey_20 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Foreign.Crypto.Base.DecEq-HSVKey
d_DecEq'45'HSVKey_22 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSVKey_22
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_20 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_MkHSVKey_20 v4 v5
                            -> let v6
                                     = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                         (coe v1) (coe v4) in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then let v9
                                                      = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                          (coe v2) (coe v5) in
                                                coe
                                                  (case coe v9 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                                       -> if coe v10
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v10)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v10)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Crypto.Base.Hashable-HSVKey
d_Hashable'45'HSVKey_24 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSVKey_24
  = coe
      MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
      (coe (\ v0 -> d_hvkStoredHash_18 (coe v0)))
-- Ledger.Core.Foreign.Crypto.Base.isHashableSet-HSVKey
d_isHashableSet'45'HSVKey_28 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_isHashableSet'45'HSVKey_28
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.C_mkIsHashableSet_34
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      d_DecEq'45'HSVKey_22
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v0 -> d_hvkStoredHash_18 (coe v0))))
-- Ledger.Core.Foreign.Crypto.Base.Hashable-ℕ
d_Hashable'45'ℕ_30 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ℕ_30
  = coe
      MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
      (coe (\ v0 -> v0))
-- Ledger.Core.Foreign.Crypto.Base.isHashableSet-ℕ
d_isHashableSet'45'ℕ_34 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_isHashableSet'45'ℕ_34
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.C_mkIsHashableSet_34
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
         (coe (\ v0 -> v0)))
-- Ledger.Core.Foreign.Crypto.Base.HashableSet-ℕ
d_HashableSet'45'ℕ_36 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_HashableSet'45'ℕ_36
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.C_mkHashableSet_58
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.C_mkIsHashableSet_34
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Class.Show.Core.C_mkShow_18
            (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_constructor_32
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
         (coe
            MAlonzo.Code.Interface.TypeClasses.Hashable.C_constructor_20
            (coe (\ v0 -> v0))))
-- Ledger.Core.Foreign.Crypto.Base.HsTy-HSVKey
d_HsTy'45'HSVKey_38 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSVKey_38 = erased
-- Ledger.Core.Foreign.Crypto.Base.Conv-HSVKey
d_Conv'45'HSVKey_40 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSVKey_40
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_20 v1 v2 -> coe C_MkHSVKey_8383 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_8383 v1 v2 -> coe C_MkHSVKey_20 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Crypto.Base.Show-HSVKey
d_Show'45'HSVKey_42 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSVKey_42
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_20 v1 v2
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                        (coe ("MkHSVKey" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v1)))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Data.Nat.Show.d_show_56 v2))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Crypto.Base.HSVKey
d_HSVKey_8381 = ()
type T_HSVKey_8381 = HSVKey
pattern C_MkHSVKey_8383 a0 a1 = MkHSVKey a0 a1
check_MkHSVKey_8383 :: Integer -> Integer -> T_HSVKey_8381
check_MkHSVKey_8383 = MkHSVKey
cover_HSVKey_8381 :: HSVKey -> ()
cover_HSVKey_8381 x
  = case x of
      MkHSVKey _ _ -> ()
