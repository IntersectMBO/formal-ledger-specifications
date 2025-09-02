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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.DirectProduct
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show

data HSVKey = MkHSVKey
  { hvkVKey :: Integer
  , hvkStoredHash :: Integer
  }
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_10 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_10
  = coe
      MAlonzo.Code.Interface.Hashable.C_constructor_18
      (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer))))
-- Ledger.Conway.Foreign.HSLedger.Core.HSVKey
d_HSVKey_14 = ()
type T_HSVKey_14 = HSVKey
pattern C_MkHSVKey_24 a0 a1 = MkHSVKey a0 a1
check_MkHSVKey_24 :: Integer -> Integer -> T_HSVKey_14
check_MkHSVKey_24 = MkHSVKey
cover_HSVKey_14 :: HSVKey -> ()
cover_HSVKey_14 x
  = case x of
      MkHSVKey _ _ -> ()
-- Ledger.Conway.Foreign.HSLedger.Core.HSVKey.hvkVKey
d_hvkVKey_20 :: T_HSVKey_14 -> Integer
d_hvkVKey_20 v0
  = case coe v0 of
      C_MkHSVKey_24 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Core.HSVKey.hvkStoredHash
d_hvkStoredHash_22 :: T_HSVKey_14 -> Integer
d_hvkStoredHash_22 v0
  = case coe v0 of
      C_MkHSVKey_24 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSLedger.Core.DecEq-HSVKey
d_DecEq'45'HSVKey_26 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSVKey_26
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_24 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_MkHSVKey_24 v4 v5
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
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-HSVKey
d_Hashable'45'HSVKey_28 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSVKey_28
  = coe
      MAlonzo.Code.Interface.Hashable.C_constructor_18
      (coe (\ v0 -> d_hvkStoredHash_22 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.isHashableSet-HSVKey
d_isHashableSet'45'HSVKey_32 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_isHashableSet'45'HSVKey_32
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.C_mkIsHashableSet_34
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_constructor_32
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      d_DecEq'45'HSVKey_26
      (coe
         MAlonzo.Code.Interface.Hashable.C_constructor_18
         (coe (\ v0 -> d_hvkStoredHash_22 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-ℕ
d_Hashable'45'ℕ_34 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'ℕ_34
  = coe
      MAlonzo.Code.Interface.Hashable.C_constructor_18 (coe (\ v0 -> v0))
-- Ledger.Conway.Foreign.HSLedger.Core.isHashableSet-ℕ
d_isHashableSet'45'ℕ_38 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_isHashableSet'45'ℕ_38
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
         MAlonzo.Code.Interface.Hashable.C_constructor_18
         (coe (\ v0 -> v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.Show-HSVKey
d_Show'45'HSVKey_40 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSVKey_40
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_24 v1 v2
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
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Network
d_Network_44 :: ()
d_Network_44 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_46 :: Integer
d_SlotsPerEpoch'7580'_46 = coe (4320 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ActiveSlotCoeff
d_ActiveSlotCoeff_48 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_48 v0
  = coe
      MAlonzo.Code.Data.Rational.Base.du__'47'__156
      (coe MAlonzo.Code.Data.Integer.Base.d_1ℤ_16) (coe (20 :: Integer))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_50 :: Integer
d_StabilityWindow'7580'_50 = coe (10 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_52 :: Integer
d_RandomnessStabilisationWindow'7580'_52 = coe (10 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_54 :: Integer
d_MaxLovelaceSupply'7580'_54 = coe (1 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_56 :: Integer
d_Quorum_56 = coe (1 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_58 :: Integer
d_NetworkId_58 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_60 :: ()
d_SKey_60 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_62 :: ()
d_VKey_62 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_64 :: ()
d_Sig_64 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_66 :: ()
d_Ser_66 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_68 :: Integer -> T_HSVKey_14 -> ()
d_isKeyPair_68 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.sign
d_sign_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_74 ~v0 ~v1 v2 = du_sign_74 v2
du_sign_74 ::
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_74 v0
  = coe MAlonzo.Code.Class.HasAdd.Core.d__'43'__16 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_76 :: ()
d_ScriptHash_76 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Data
d_Data_78 :: ()
d_Data_78 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_80 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_80
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
            MAlonzo.Code.Interface.Hashable.C_constructor_18
            (coe (\ v0 -> v0))))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.toData
d_toData_84 :: () -> AgdaAny -> Integer
d_toData_84 ~v0 ~v1 = du_toData_84
du_toData_84 :: Integer
du_toData_84 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_86 :: ()
d_ExUnits_86 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_88 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_88
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
      (coe
         MAlonzo.Code.Algebra.Construct.DirectProduct.du_commutativeMonoid_1546
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476)
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._≥ᵉ_
d__'8805''7497'__90 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__90 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Show-ExUnits
d_Show'45'ExUnits_92 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_92
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_94 :: ()
d_CostModel_94 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Language
d_Language_96 :: ()
d_Language_96 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_98 :: ()
d_LangDepView_98 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_100 :: ()
d_Prices_100 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_102 :: ()
d_TxId_102 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_104 :: ()
d_Ix_104 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_106 :: ()
d_AuxiliaryData_106 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_108 :: ()
d_DocHash_108 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_110 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_110
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
