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
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Morphism.Construct.Identity
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.PairOp
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.Tactic.Derive.Show
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

data HSVKey = MkHSVKey
  { hvkVKey :: Integer
  , hvkStoredHash :: Integer
  }
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_10 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_10
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
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
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v0 ->
            case coe v0 of
              C_MkHSVKey_24 v1 v2
                -> coe
                     (\ v3 ->
                        case coe v3 of
                          C_MkHSVKey_24 v4 v5
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v5)
                                          (coe v2)))
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688 (coe v4)
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2298 erased
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-HSVKey
d_Hashable'45'HSVKey_28 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSVKey_28
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> d_hvkStoredHash_22 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.isHashableSet-HSVKey
d_isHashableSet'45'HSVKey_32 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_isHashableSet'45'HSVKey_32
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      d_DecEq'45'HSVKey_26
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> d_hvkStoredHash_22 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-ℕ
d_Hashable'45'ℕ_34 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'ℕ_34
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> v0))
-- Ledger.Conway.Foreign.HSLedger.Core.isHashableSet-ℕ
d_isHashableSet'45'ℕ_38 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_isHashableSet'45'ℕ_38
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
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
d_SlotsPerEpoch'7580'_46 = coe (100 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_48 :: Integer
d_StabilityWindow'7580'_48 = coe (10 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_50 :: Integer
d_Quorum_50 = coe (1 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_52 :: Integer
d_NetworkId_52 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_54 :: ()
d_SKey_54 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_56 :: ()
d_VKey_56 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_58 :: ()
d_Sig_58 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_60 :: ()
d_Ser_60 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_62 :: Integer -> T_HSVKey_14 -> ()
d_isKeyPair_62 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.sign
d_sign_68 ::
  () ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_68 ~v0 v1 = du_sign_68 v1
du_sign_68 ::
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_68 v0
  = coe MAlonzo.Code.Class.HasAdd.Core.d__'43'__14 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_70 :: ()
d_ScriptHash_70 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Data
d_Data_72 :: ()
d_Data_72 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_74 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_74
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkHashableSet_54
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Class.Show.Core.C_mkShow_18
            (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.toData
d_toData_78 :: () -> AgdaAny -> Integer
d_toData_78 ~v0 ~v1 = du_toData_78
du_toData_78 :: Integer
du_toData_78 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.PlutusScript
d_PlutusScript_80 :: ()
d_PlutusScript_80 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_82 :: ()
d_ExUnits_82 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_84 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_84
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
      (coe
         MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
         (coe MAlonzo.Code.Algebra.PairOp.du__'8729''7510'__12 (coe addInt))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
            (coe (0 :: Integer)))
         (coe
            MAlonzo.Code.Algebra.PairOp.du_pairOpRespectsComm_92
            (coe (0 :: Integer))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'isCommutativeMonoid_3324)))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._≥ᵉ_
d__'8805''7497'__110 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__110 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Show-ExUnits
d_Show'45'ExUnits_112 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_112
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_114 :: ()
d_CostModel_114 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Language
d_Language_116 :: ()
d_Language_116 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_118 :: ()
d_LangDepView_118 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_120 :: ()
d_Prices_120 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_126 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__134 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.AssetName
d_AssetName_136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_136 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_138 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_140 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_140 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_148 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_150 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_154 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_158 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_160 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_160 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_164 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_164 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_166 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_166 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_170 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_170 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_172 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_172 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_238 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_coinTokenAlgebra_238 = coe d_'46'extendedlambda3_244
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._..extendedlambda3
d_'46'extendedlambda3_244 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_'46'extendedlambda3_244
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.C_TokenAlgebra'46'constructor_1987
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (\ v0 -> v0) (\ v0 -> v0)
      (\ v0 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_442
           (coe
              MAlonzo.Code.Axiom.Set.d_th_1470
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
      (\ v0 -> 1 :: Integer) ("Ada" :: Data.Text.Text)
      (coe
         MAlonzo.Code.Algebra.Morphism.Construct.Identity.du_isMonoidHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1032
               (coe
                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                     (coe d_'46'extendedlambda3_244)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_252 :: ()
d_TxId_252 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_254 :: ()
d_Ix_254 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_256 :: ()
d_AuxiliaryData_256 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_258 :: ()
d_DocHash_258 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_260 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_260 = coe d_coinTokenAlgebra_238
