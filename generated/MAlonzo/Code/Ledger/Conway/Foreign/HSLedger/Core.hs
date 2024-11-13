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
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
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
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasOrder.Instance
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Util
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Conway.Foreign.HSLedger.Core._.∀Hashable
d_'8704'Hashable_20 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_'8704'Hashable_20 ~v0 ~v1 ~v2 = du_'8704'Hashable_20
du_'8704'Hashable_20 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_'8704'Hashable_20
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.∀isHashableSet
d_'8704'isHashableSet_24 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_'8704'isHashableSet_24 ~v0 v1 v2
  = du_'8704'isHashableSet_24 v1 v2
du_'8704'isHashableSet_24 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_'8704'isHashableSet_24 v0 v1
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30 v0 v1 v0
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v2 -> v2)))
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_26 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_26
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer))))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Network
d_Network_32 :: ()
d_Network_32 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_34 :: Integer
d_SlotsPerEpoch'7580'_34 = coe (100 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_36 :: Integer
d_StabilityWindow'7580'_36 = coe (10 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_38 :: Integer
d_Quorum_38 = coe (1 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_40 :: Integer
d_NetworkId_40 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_42 :: ()
d_SKey_42 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_44 :: ()
d_VKey_44 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_46 :: ()
d_Sig_46 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_48 :: ()
d_Ser_48 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_50 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.sign
d_sign_52 ::
  () ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_52 ~v0 v1 = du_sign_52 v1
du_sign_52 ::
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_52 v0
  = coe MAlonzo.Code.Class.HasAdd.Core.d__'43'__14 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_54 :: ()
d_ScriptHash_54 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Data
d_Data_56 :: ()
d_Data_56 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_58 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_58
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkHashableSet_54
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.toData
d_toData_62 :: () -> AgdaAny -> Integer
d_toData_62 ~v0 ~v1 = du_toData_62
du_toData_62 :: Integer
du_toData_62 = coe (0 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.PlutusScript
d_PlutusScript_64 :: ()
d_PlutusScript_64 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_66 :: ()
d_ExUnits_66 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_68 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_68
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
d__'8805''7497'__94 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__94 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Show-ExUnits
d_Show'45'ExUnits_96 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_96
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_98 :: ()
d_CostModel_98 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Language
d_Language_100 :: ()
d_Language_100 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_102 :: ()
d_LangDepView_102 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_104 :: ()
d_Prices_104 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_110 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__118 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.AssetName
d_AssetName_120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_120 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_122 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_124 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_132 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_134 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_138 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_142 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_144 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_148 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_150 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_154 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_156 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_222 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_coinTokenAlgebra_222 = coe d_'46'extendedlambda1_228
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._..extendedlambda1
d_'46'extendedlambda1_228 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_'46'extendedlambda1_228
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
                     (coe d_'46'extendedlambda1_228)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_236 :: ()
d_TxId_236 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_238 :: ()
d_Ix_238 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_240 :: ()
d_AuxiliaryData_240 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_242 :: ()
d_DocHash_242 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_244 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_244 = coe d_coinTokenAlgebra_222
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures.HSGlobalConstants
d_HSGlobalConstants_250 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_HSGlobalConstants_250 ~v0 = du_HSGlobalConstants_250
du_HSGlobalConstants_250 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
du_HSGlobalConstants_250
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.C_GlobalConstants'46'constructor_6069
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      d_SlotsPerEpoch'7580'_34
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_36 d_Quorum_38 d_NetworkId_40
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures.HSEpochStructure
d_HSEpochStructure_252 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_HSEpochStructure_252 ~v0 = du_HSEpochStructure_252
du_HSEpochStructure_252 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
du_HSEpochStructure_252
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe du_HSGlobalConstants_250)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures.HSCrypto
d_HSCrypto_254 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_HSCrypto_254 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2419
      (d_HSPKKScheme_264 (coe v0))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v1 -> v1))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HSPKKScheme
d_HSPKKScheme_264 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_HSPKKScheme_264 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1827
      (\ v1 v2 -> 0 :: Integer)
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
           (coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_extIsSigned_12
                 v0 v1 v2 v3)
              (coe
                 MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
                 ("Dec-isSigned evaluated" :: Data.Text.Text))))
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
         ("isSigned-correct evaluated" :: Data.Text.Text))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure
d_PlutusStructure_292 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure
d_ScriptStructure_306 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__338 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__338 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_340 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_340 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_346 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_346 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_350 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_350 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_352 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_354 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_354 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_356 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_356 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_358 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_358 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_360 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_366 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_368 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_370 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_372 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Language
d_Language_374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_374 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_376 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_378 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_380 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_382 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Prices
d_Prices_384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_384 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_388 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_390 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_392 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.language
d_language_400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_400 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.toData
d_toData_402 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_402 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_404 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_404 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Hash-P1Script
d_Hash'45'P1Script_444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_444 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_484 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.p1s
d_p1s_488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_488 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.ps
d_ps_490 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_490 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_528 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HashedTimelock_350
      (coe d_HSCrypto_254 (coe v0)) (coe du_HSEpochStructure_252)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_530 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_530 ~v0
  = du_Hashable'45'HashedTimelock_530
du_Hashable'45'HashedTimelock_530 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'HashedTimelock_530
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_348
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HashedTimelock
d_HashedTimelock_532 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_534 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'HTL_534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_352
      (coe d_HSCrypto_254 (coe v0)) (coe du_HSEpochStructure_252)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HashedTimelock.storedHash
d_storedHash_538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  Integer
d_storedHash_538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_storedHash_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HashedTimelock.timelock
d_timelock_540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264
d_timelock_540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures.HSScriptStructure
d_HSScriptStructure_542 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_HSScriptStructure_542 v0
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_72139
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_352
         (coe d_HSCrypto_254 (coe v0)) (coe du_HSEpochStructure_252))
      (\ v1 v2 v3 v4 v5 -> coe du_hashRespectsUnion_554 v4 v5)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_348)
      (coe du_HSP2ScriptStructure_564)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_554 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_554 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_hashRespectsUnion_554 v4 v5
du_hashRespectsUnion_554 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_554 v0 v1
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
                -> coe MAlonzo.Code.Interface.Hashable.d_hash_16 v0 v3
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
                -> coe MAlonzo.Code.Interface.Hashable.d_hash_16 v1 v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_564 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_HSP2ScriptStructure_564 ~v0 = du_HSP2ScriptStructure_564
du_HSP2ScriptStructure_564 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
du_HSP2ScriptStructure_564
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_4253
      d_Data'688'_58 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      d_ExUnit'45'CommutativeMonoid_68
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer)))))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      d_Show'45'ExUnits_96
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 -> coe du_toData_62)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_580 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_580 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
      (let v1 = coe du_HSGlobalConstants_250 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (\ v2 ->
               mulInt
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
               (coe v1))
            (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
      (coe d_HSScriptStructure_542 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams
d_GovParams_586 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams
d_PParams_594 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-PParams
d_Show'45'PParams_604 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_604 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
      (let v1 = coe du_HSGlobalConstants_250 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (\ v2 ->
               mulInt
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
               (coe v1))
            (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
      (coe d_HSScriptStructure_542 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_620 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_620 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_638 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_638 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.ppHashingScheme
d_ppHashingScheme_650 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_650 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.ppUpd
d_ppUpd_652 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_652 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.Emax
d_Emax_674 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_Emax_674 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.a
d_a_676 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_676 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.a0
d_a0_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_678 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.b
d_b_680 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_680 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_688 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.costmdls
d_costmdls_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.drepActivity
d_drepActivity_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepActivity_692 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_702 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_704 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_704 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_706 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_706 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_708 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_708 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_712 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_714 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_716 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_716 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_718 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_718 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxValSize
d_maxValSize_720 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_722 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_722 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_724 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_724 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.nopt
d_nopt_726 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_726 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_728 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_728 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_730 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.prices
d_prices_732 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_732 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.pv
d_pv_734 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_734 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_736 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_736 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_738 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_738 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_742 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> ()
d_UpdateT_742 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_744 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_744 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_746 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_746 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_750 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1298 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_756 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_756 v0
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
      (let v1 = coe du_HSGlobalConstants_250 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (\ v2 ->
               mulInt
                 (coe v2)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v1)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
               (coe v1))
            (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
      (coe d_HSScriptStructure_542 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_758 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_760 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_760 ~v0 = du_applyPParamsUpdate_760
du_applyPParamsUpdate_760 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_applyPParamsUpdate_760
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_780 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_Emax_780 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_782 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_a_782 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_784 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_784 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_b_786 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_788 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_788 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_790 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_792 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_coinsPerUTxOByte_792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_794 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_collateralPercentage_794 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_796 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_798 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepActivity_798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_800 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_802 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_804 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionDeposit_804 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_806 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionLifetime_806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_808 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_keyDeposit_808 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_810 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_812 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxBlockSize_812 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_814 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxCollateralInputs_814 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_816 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxHeaderSize_816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_818 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerBlock_818 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_820 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerTx_820 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_822 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_822 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_824 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxTxSize_824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_826 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxValSize_826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_828 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_828 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_830 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_minUTxOValue_830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_832 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_nopt_832 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_834 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_poolDeposit_834 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_836 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_836 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_838 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_838 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_606 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_840 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_840 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_842 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_842 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_844 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_refScriptCostStride_844 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures.HsGovParams
d_HsGovParams_852 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312
d_HsGovParams_852 v0
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1472151
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1471359
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1016)
         (\ v1 -> coe du_ppWF_862 (coe v1)))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
            (let v1 = coe du_HSGlobalConstants_250 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v2 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v1)))
                  (\ v2 ->
                     mulInt
                       (coe v2)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v1)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                     (coe v1))
                  (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
            (coe d_HSScriptStructure_542 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
            (let v1 = coe du_HSGlobalConstants_250 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v2 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v1)))
                  (\ v2 ->
                     mulInt
                       (coe v2)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v1)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                     (coe v1))
                  (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
            (coe d_HSScriptStructure_542 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
            (let v1 = coe du_HSGlobalConstants_250 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v2 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v1)))
                  (\ v2 ->
                     mulInt
                       (coe v2)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v1)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                     (coe v1))
                  (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
            (coe d_HSScriptStructure_542 (coe v0)))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v1 -> v1))))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
         (let v1 = coe du_HSGlobalConstants_250 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
               MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v2 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                       (coe v1)))
               (\ v2 ->
                  mulInt
                    (coe v2)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                       (coe v1)))
               (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                  (coe v1))
               (\ v2 -> addInt (coe (1 :: Integer)) (coe v2)) addInt))
         (coe d_HSScriptStructure_542 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ppWF
d_ppWF_862 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_862 ~v0 v1 = du_ppWF_862 v1
du_ppWF_862 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_ppWF_862 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_428
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_638
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)))
                else coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._.trustMe
d_trustMe_878
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._.trustMe
d_trustMe_888
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures.HSTransactionStructure
d_HSTransactionStructure_894 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_894 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_14107
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v1 -> v1))))
      (coe du_HSGlobalConstants_250) (d_HSCrypto_254 (coe v0))
      (coe du_HSEpochStructure_252) (d_HSScriptStructure_542 (coe v0))
      (d_HsGovParams_852 (coe v0)) d_tokenAlgebra_244 (\ v1 -> v1)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._+ᵉ_
d__'43''7497'__898 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'__898 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._+ᵉ'_
d__'43''7497'''__900 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'43''7497'''__900 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._∙_
d__'8729'__902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d__'8729'__902 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._≈_
d__'8776'__904 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8776'__904 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._≤ᵗ_
d__'8804''7511'__906 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d__'8804''7511'__906 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._≥ᵉ_
d__'8805''7497'__908 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__908 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_910 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_910 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.THash
d_THash_912 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_912 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Acnt
d_Acnt_914 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Addr
d_Addr_916 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Addr_916 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Anchor
d_Anchor_918 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AssetName
d_AssetName_920 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AssetName_920 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AuxiliaryData
d_AuxiliaryData_922 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_AuxiliaryData_922 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BaseAddr
d_BaseAddr_924 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BootstrapAddr
d_BootstrapAddr_926 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CostModel
d_CostModel_932 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_CostModel_932 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Credential
d_Credential_934 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.T
d_T_938 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_T_938 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.THash
d_THash_940 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_940 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dataʰ
d_Data'688'_942 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_942 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Datum
d_Datum_944 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Datum_944 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_946 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_946 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dec-isScript
d_Dec'45'isScript_948 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_948 ~v0 = du_Dec'45'isScript_948
du_Dec'45'isScript_948 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_948
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dec-isSigned
d_Dec'45'isSigned_950 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_950 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dec-isVKey
d_Dec'45'isVKey_952 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_952 ~v0 = du_Dec'45'isVKey_952
du_Dec'45'isVKey_952 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_952
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dec-validP1Script
d_Dec'45'validP1Script_954 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_954 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_956 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_956 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_958 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_958 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEQ-Prices
d_DecEQ'45'Prices_960 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_960 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_962 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_962 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_964 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_964 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-CostModel
d_DecEq'45'CostModel_966 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_966 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Credential
d_DecEq'45'Credential_968 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_968 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_970 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_970 ~v0 = du_DecEq'45'DrepThresholds_970
du_DecEq'45'DrepThresholds_970 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_970
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_496
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Epoch
d_DecEq'45'Epoch_972 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_972 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_974 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_974 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-GovRole
d_DecEq'45'GovRole_976 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_976 ~v0 = du_DecEq'45'GovRole_976
du_DecEq'45'GovRole_976 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_976
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Ix
d_DecEq'45'Ix_978 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_978 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_980 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_980 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Language
d_DecEq'45'Language_982 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_982 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Netw
d_DecEq'45'Netw_984 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_984 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-P1Script
d_DecEq'45'P1Script_986 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_986 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_988 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_988 ~v0 = du_DecEq'45'PParamGroup_988
du_DecEq'45'PParamGroup_988 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_988
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_502
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-PParams
d_DecEq'45'PParams_990 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_990 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_992 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_992 ~v0 = du_DecEq'45'PoolThresholds_992
du_DecEq'45'PoolThresholds_992 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_992
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_498
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_994 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_994 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_996 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_996 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Ser
d_DecEq'45'Ser_998 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_998 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Sig
d_DecEq'45'Sig_1000 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1000 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Slot
d_DecEq'45'Slot_1002 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1002 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-T
d_DecEq'45'T_1004 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1004 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-T
d_DecEq'45'T_1006 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1006 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-T
d_DecEq'45'T_1008 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1008 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_1010 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1010 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_1012 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1012 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_1014 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1014 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-THash
d_DecEq'45'THash_1016 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1016 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Timelock
d_DecEq'45'Timelock_1018 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1018 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-TxId
d_DecEq'45'TxId_1020 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1020 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-UpdT
d_DecEq'45'UpdT_1022 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1022 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1372
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_1024 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1024 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Value
d_DecEq'45'Value_1026 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1026 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-Vote
d_DecEq'45'Vote_1028 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1028 ~v0 = du_DecEq'45'Vote_1028
du_DecEq'45'Vote_1028 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1028
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_826
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecPo-Slot
d_DecPo'45'Slot_1030 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_1030 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds
d_DrepThresholds_1032 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Epoch
d_Epoch_1036 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Epoch_1036 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1038 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1038 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ExUnits
d_ExUnits_1040 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ExUnits_1040 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovAction
d_GovAction_1042 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovActionID
d_GovActionID_1044 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1044 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovActionState
d_GovActionState_1046 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams
d_GovParams_1048 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovProposal
d_GovProposal_1050 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovRole
d_GovRole_1052 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovVote
d_GovVote_1054 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_1058 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1058 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2806
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Hash-P1Script
d_Hash'45'P1Script_1060 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_1060 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HashProtected
d_HashProtected_1062 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1062 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Hashable-P1Script
d_Hashable'45'P1Script_1064 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1064 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1066 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1066 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Hashable-Script
d_Hashable'45'Script_1068 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1068 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1074 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1076 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1078 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Ix
d_Ix_1080 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ix_1080 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.THash
d_THash_1082 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1082 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.KeyPair
d_KeyPair_1086 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_KeyPair_1086 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.LangDepView
d_LangDepView_1088 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_LangDepView_1088 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Language
d_Language_1090 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Language_1090 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.MemoryEstimate
d_MemoryEstimate_1092 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_MemoryEstimate_1092 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.NeedsHash
d_NeedsHash_1094 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_NeedsHash_1094 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Network
d_Network_1096 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Network_1096 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.NetworkId
d_NetworkId_1100 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_NetworkId_1100 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1106 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1106 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Number-Epoch
d_Number'45'Epoch_1108 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1108 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1Script
d_P1Script_1110 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_P1Script_1110 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1ScriptStructure
d_P1ScriptStructure_1112 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusScript
d_PlutusScript_1114 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PlutusScript_1114 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.THash
d_THash_1116 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_THash_1116 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamGroup
d_PParamGroup_1118 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams
d_PParams_1120 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff
d_PParamsDiff_1122 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.UpdateT
d_UpdateT_1124 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UpdateT_1124 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure
d_PlutusStructure_1126 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusV1
d_PlutusV1_1128 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1128 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusV2
d_PlutusV2_1130 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1130 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusV3
d_PlutusV3_1132 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1132 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolThresholds
d_PoolThresholds_1134 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Prices
d_Prices_1136 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Prices_1136 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ProposedPPUpdates
d_ProposedPPUpdates_1138 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProposedPPUpdates_1138 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ProtVer
d_ProtVer_1140 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ProtVer_1140 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Quorum
d_Quorum_1142 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_Quorum_1142 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.RdmrPtr
d_RdmrPtr_1144 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_RdmrPtr_1144 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Redeemer
d_Redeemer_1146 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Redeemer_1146 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.RwdAddr
d_RwdAddr_1160 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.SKey
d_SKey_1164 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_SKey_1164 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Script
d_Script_1168 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Script_1168 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptAddr
d_ScriptAddr_1170 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptAddr_1170 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptBaseAddr
d_ScriptBaseAddr_1172 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBaseAddr_1172 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1174 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptBootstrapAddr_1174 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptHash
d_ScriptHash_1176 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_ScriptHash_1176 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure
d_ScriptStructure_1180 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Ser
d_Ser_1184 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Ser_1184 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-CostModel
d_Show'45'CostModel_1186 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1186 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-Credential
d_Show'45'Credential_1188 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1188 ~v0 = du_Show'45'Credential_1188
du_Show'45'Credential_1188 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_1188 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1190 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1190 ~v0
  = du_Show'45'Credential'215'Coin_1190
du_Show'45'Credential'215'Coin_1190 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_1190 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_1192 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1192 ~v0 = du_Show'45'DrepThresholds_1192
du_Show'45'DrepThresholds_1192 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_1192
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_504
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-Epoch
d_Show'45'Epoch_1194 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1194 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-ExUnits
d_Show'45'ExUnits_1196 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1196 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-Network
d_Show'45'Network_1198 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1198 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-PParams
d_Show'45'PParams_1200 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1200 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_1202 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1202 ~v0 = du_Show'45'PoolThresholds_1202
du_Show'45'PoolThresholds_1202 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_1202
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_506
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-Prices
d_Show'45'Prices_1204 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1204 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-ProtVer
d_Show'45'ProtVer_1206 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1206 ~v0 = du_Show'45'ProtVer_1206
du_Show'45'ProtVer_1206 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ProtVer_1206
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-RwdAddr
d_Show'45'RwdAddr_1208 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1208 ~v0 = du_Show'45'RwdAddr_1208
du_Show'45'RwdAddr_1208 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_1208
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-ScriptHash
d_Show'45'ScriptHash_1210 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1210 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-THash
d_Show'45'THash_1212 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1212 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-THash
d_Show'45'THash_1214 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1214 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-THash
d_Show'45'THash_1216 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1216 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-THash
d_Show'45'THash_1218 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1218 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Show-ℚ
d_Show'45'ℚ_1220 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1220 ~v0 = du_Show'45'ℚ_1220
du_Show'45'ℚ_1220 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℚ_1220
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Sig
d_Sig_1222 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Sig_1222 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Slot
d_Slot_1224 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Slot_1224 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1226 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_SlotsPerEpoch'7580'_1226 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Slotʳ
d_Slot'691'_1228 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1228 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.StabilityWindow
d_StabilityWindow_1230 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow_1230 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_1232 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_StabilityWindow'7580'_1232 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.T-Hashable
d_T'45'Hashable_1234 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1234 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.T-Hashable
d_T'45'Hashable_1236 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1236 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.T-Hashable
d_T'45'Hashable_1238 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1238 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.T-Hashable
d_T'45'Hashable_1240 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1240 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.T-isHashable
d_T'45'isHashable_1242 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1242 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_452
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Timelock
d_Timelock_1246 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra
d_TokenAlgebra_1248 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Tx
d_Tx_1254 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody
d_TxBody_1256 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxId
d_TxId_1258 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxId_1258 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxIn
d_TxIn_1260 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxIn_1260 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxOut
d_TxOut_1262 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut_1262 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxOutʰ
d_TxOut'688'_1264 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_TxOut'688'_1264 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxWitnesses
d_TxWitnesses_1266 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.UTxO
d_UTxO_1268 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_UTxO_1268 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Update
d_Update_1270 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Update_1270 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.VDeleg
d_VDeleg_1274 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.VKey
d_VKey_1276 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKey_1276 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.VKeyAddr
d_VKeyAddr_1278 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyAddr_1278 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.VKeyBaseAddr
d_VKeyBaseAddr_1280 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBaseAddr_1280 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1282 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_VKeyBootstrapAddr_1282 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Value
d_Value_1286 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Value_1286 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1288 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1288 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Voter
d_Voter_1290 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1290 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Wdrl
d_Wdrl_1292 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Wdrl_1292 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.actionWellFormed
d_actionWellFormed_1296 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_actionWellFormed_1296 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.actionWellFormed?
d_actionWellFormed'63'_1298 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1298 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_742
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.adHashingScheme
d_adHashingScheme_1300 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1300 ~v0 = du_adHashingScheme_1300
du_adHashingScheme_1300 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_adHashingScheme_1300
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.addEpoch
d_addEpoch_1302 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1302 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.addSlot
d_addSlot_1304 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1304 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.addValue
d_addValue_1306 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1306 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.applyUpdate
d_applyUpdate_1308 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1308 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.coin
d_coin_1314 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_coin_1314 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_1316 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1316 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1318 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1318 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.crypto
d_crypto_1322 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1322 v0 = coe d_HSCrypto_254 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.epoch
d_epoch_1324 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_epoch_1324 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.epochStructure
d_epochStructure_1326 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1326 ~v0 = du_epochStructure_1326
du_epochStructure_1326 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
du_epochStructure_1326 = coe du_HSEpochStructure_252
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.evalTimelock
d_evalTimelock_1340 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.firstSlot
d_firstSlot_1342 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_firstSlot_1342 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.getDRepVote
d_getDRepVote_1344 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1344 ~v0 = du_getDRepVote_1344
du_getDRepVote_1344 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1344
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_830
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.getScriptHash
d_getScriptHash_1346 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_1346 ~v0 = du_getScriptHash_1346
du_getScriptHash_1346 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
du_getScriptHash_1346
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.getValue
d_getValue_1348 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1348 ~v0 = du_getValue_1348
du_getValue_1348 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue_1348
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2688
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.getValueʰ
d_getValue'688'_1350 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1350 ~v0 = du_getValue'688'_1350
du_getValue'688'_1350 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_getValue'688'_1350
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.globalConstants
d_globalConstants_1352 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1352 ~v0 = du_globalConstants_1352
du_globalConstants_1352 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
du_globalConstants_1352 = coe du_HSGlobalConstants_250
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.govParams
d_govParams_1354 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312
d_govParams_1354 v0 = coe d_HsGovParams_852 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.govStructure
d_govStructure_1356 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1356 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.hashRespectsUnion
d_hashRespectsUnion_1358 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1358 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.inject
d_inject_1360 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_inject_1360 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isBootstrapAddr
d_isBootstrapAddr_1362 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isBootstrapAddr?
d_isBootstrapAddr'63'_1364 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1364 ~v0 = du_isBootstrapAddr'63'_1364
du_isBootstrapAddr'63'_1364 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_1364
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isKeyHash
d_isKeyHash_1366 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1366 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isKeyHashObj
d_isKeyHashObj_1368 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1368 ~v0 = du_isKeyHashObj_1368
du_isKeyHashObj_1368 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isKeyHashObj_1368
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1370 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1370 ~v0 = du_isKeyHashObj'7495'_1370
du_isKeyHashObj'7495'_1370 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
du_isKeyHashObj'7495'_1370
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isKeyPair
d_isKeyPair_1372 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> ()
d_isKeyPair_1372 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isP2Script
d_isP2Script_1374 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1374 ~v0 = du_isP2Script_1374
du_isP2Script_1374 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
du_isP2Script_1374
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2804
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isScript
d_isScript_1376 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isScriptAddr
d_isScriptAddr_1378 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1378 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isScriptObj
d_isScriptObj_1380 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1380 ~v0 = du_isScriptObj_1380
du_isScriptObj_1380 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
du_isScriptObj_1380
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isScriptRwdAddr
d_isScriptRwdAddr_1382 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1382 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isSigned
d_isSigned_1384 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer -> ()
d_isSigned_1384 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isSigned-correct
d_isSigned'45'correct_1386 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1386 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isVKey
d_isVKey_1388 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.isVKeyAddr
d_isVKeyAddr_1390 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1390 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.khs
d_khs_1392 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1392 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.language
d_language_1394 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1394 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.lookupScriptHash
d_lookupScriptHash_1396 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1396 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2790
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.maximum
d_maximum_1398 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1398 ~v0 = du_maximum_1398
du_maximum_1398 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_1398
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_682
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.monoid
d_monoid_1400 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1400 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1032
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.netId
d_netId_1402 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1402 ~v0 = du_netId_1402
du_netId_1402 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
du_netId_1402 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.p1s
d_p1s_1406 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1406 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_428
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.paramsWF-elim
d_paramsWF'45'elim_1408 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1408 ~v0 = du_paramsWF'45'elim_1408
du_paramsWF'45'elim_1408 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_1408 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_462 v2
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.paramsWellFormed
d_paramsWellFormed_1410 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_1410 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.payCred
d_payCred_1412 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1412 ~v0 = du_payCred_1412
du_payCred_1412 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
du_payCred_1412 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.pkk
d_pkk_1414 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1414 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.policies
d_policies_1416 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> [Integer]
d_policies_1416 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.positivePParams
d_positivePParams_1418 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
d_positivePParams_1418 ~v0 = du_positivePParams_1418
du_positivePParams_1418 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
du_positivePParams_1418
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_378
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ppHashingScheme
d_ppHashingScheme_1420 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1420 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ppUpd
d_ppUpd_1422 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_1422 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ppWF?
d_ppWF'63'_1424 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1424 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ppdWellFormed
d_ppdWellFormed_1426 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> ()
d_ppdWellFormed_1426 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.preoEpoch
d_preoEpoch_1428 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1428 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.property
d_property_1430 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1430 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ps
d_ps_1432 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1432 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.pvCanFollow
d_pvCanFollow_1434 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.pvCanFollow?
d_pvCanFollow'63'_1436 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1436 ~v0 = du_pvCanFollow'63'_1436
du_pvCanFollow'63'_1436 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_pvCanFollow'63'_1436
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1232
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.rawMonoid
d_rawMonoid_1438 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1438 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.refScriptCostStride>0
d_refScriptCostStride'62'0_1440 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1440 ~v0
  = du_refScriptCostStride'62'0_1440
du_refScriptCostStride'62'0_1440 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_refScriptCostStride'62'0_1440 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_484 v0
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.refScripts
d_refScripts_1442 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1442 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2728
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.scriptOuts
d_scriptOuts_1444 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1444 ~v0 = du_scriptOuts_1444
du_scriptOuts_1444 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_scriptOuts_1444
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2714
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.scriptStructure
d_scriptStructure_1446 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_1446 v0 = coe d_HSScriptStructure_542 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.sign
d_sign_1448 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer -> Integer
d_sign_1448 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (let v2 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.size
d_size_1450 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_size_1450 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.specialAsset
d_specialAsset_1452 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1452 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.stakeCred
d_stakeCred_1454 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1454 ~v0 = du_stakeCred_1454
du_stakeCred_1454 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_stakeCred_1454
  = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.sucᵉ
d_suc'7497'_1456 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_suc'7497'_1456 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.sumᵛ
d_sum'7515'_1458 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] -> Integer
d_sum'7515'_1458 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.toData
d_toData_1460 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> AgdaAny -> Integer
d_toData_1460 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.tokenAlgebra
d_tokenAlgebra_1462 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1462 ~v0 = du_tokenAlgebra_1462
du_tokenAlgebra_1462 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
du_tokenAlgebra_1462 = coe d_tokenAlgebra_244
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.txOutHash
d_txOutHash_1464 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1464 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.txidBytes
d_txidBytes_1466 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_txidBytes_1466 ~v0 v1 = du_txidBytes_1466 v1
du_txidBytes_1466 :: Integer -> Integer
du_txidBytes_1466 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.txinsScript
d_txinsScript_1468 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1468 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2722
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.txinsVKey
d_txinsVKey_1470 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1470 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2708
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.txscripts
d_txscripts_1472 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1472 v0
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2780
      (coe d_HSTransactionStructure_894 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.updateGroups
d_updateGroups_1474 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1474 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.validP1Script
d_validP1Script_1476 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  ()
d_validP1Script_1476 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.validPlutusScript
d_validPlutusScript_1478 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1478 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ε
d_ε_1480 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer
d_ε_1480 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1482 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1482 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ℕEpochStructure
d_ℕEpochStructure_1484 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1484 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ℕtoEpoch
d_ℕtoEpoch_1486 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  Integer -> Integer
d_ℕtoEpoch_1486 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Acnt.reserves
d_reserves_1492 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_1492 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Acnt.treasury
d_treasury_1494 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_1494 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Anchor.hash
d_hash_1498 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 -> Integer
d_hash_1498 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_714 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Anchor.url
d_url_1500 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1500 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_712 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BaseAddr.net
d_net_1504 :: MAlonzo.Code.Ledger.Address.T_BaseAddr_48 -> Integer
d_net_1504 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BaseAddr.pay
d_pay_1506 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1506 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BaseAddr.stake
d_stake_1508 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1508 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BootstrapAddr.attrsSize
d_attrsSize_1512 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1512 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BootstrapAddr.net
d_net_1514 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_net_1514 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.BootstrapAddr.pay
d_pay_1516 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1516 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P1
d_P1_1526 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1526 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P2a
d_P2a_1528 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1528 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P2b
d_P2b_1530 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1530 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P3
d_P3_1532 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1532 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P4
d_P4_1534 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1534 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P5a
d_P5a_1536 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1536 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P5b
d_P5b_1538 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1538 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P5c
d_P5c_1540 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1540 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P5d
d_P5d_1542 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1542 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DrepThresholds.P6
d_P6_1544 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1544 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovActionState.action
d_action_1564 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_1564 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovActionState.expiresIn
d_expiresIn_1566 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  Integer
d_expiresIn_1566 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovActionState.prevAction
d_prevAction_1568 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_prevAction_1568 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovActionState.returnAddr
d_returnAddr_1570 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1570 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovActionState.votes
d_votes_1572 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1572 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.DecEq-T
d_DecEq'45'T_1576 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1576 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.DecEq-THash
d_DecEq'45'THash_1578 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1578 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1580 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.THash
d_THash_1582 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> ()
d_THash_1582 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.UpdateT
d_UpdateT_1584 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> ()
d_UpdateT_1584 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.Show-THash
d_Show'45'THash_1586 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1586 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.T-Hashable
d_T'45'Hashable_1588 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1588 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.applyUpdate
d_applyUpdate_1590 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1590 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.ppHashingScheme
d_ppHashingScheme_1592 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.ppUpd
d_ppUpd_1594 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_1594 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.ppWF?
d_ppWF'63'_1596 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1596 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1598 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> AgdaAny -> ()
d_ppdWellFormed_1598 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovParams.updateGroups
d_updateGroups_1600 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1600 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovProposal.action
d_action_1604 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_1604 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovProposal.anchor
d_anchor_1606 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_1606 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovProposal.deposit
d_deposit_1608 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_1608 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovProposal.policy
d_policy_1610 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe Integer
d_policy_1610 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovProposal.prevAction
d_prevAction_1612 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_1612 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovProposal.returnAddr
d_returnAddr_1614 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1614 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovVote.anchor
d_anchor_1626 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_1626 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovVote.gid
d_gid_1628 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1628 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovVote.vote
d_vote_1630 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_1630 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovVote.voter
d_voter_1632 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1632 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.Anchor
d_Anchor_1636 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1644 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1644 ~v0 = du_DecEq'45'GovRole_1644
du_DecEq'45'GovRole_1644 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_1644
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1646 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1646 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1648 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1648 ~v0 = du_DecEq'45'Vote_1648
du_DecEq'45'Vote_1648 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_1648
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_826
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.GovAction
d_GovAction_1650 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.GovActionID
d_GovActionID_1652 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovActionID_1652 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.GovActionState
d_GovActionState_1654 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.GovProposal
d_GovProposal_1656 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.GovRole
d_GovRole_1658 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.GovVote
d_GovVote_1660 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.HashProtected
d_HashProtected_1662 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> ()
d_HashProtected_1662 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.NeedsHash
d_NeedsHash_1666 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_NeedsHash_1666 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.VDeleg
d_VDeleg_1680 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.Vote
d_Vote_1682 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.Voter
d_Voter_1684 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Voter_1684 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.actionWellFormed
d_actionWellFormed_1690 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_actionWellFormed_1690 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_1692 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1692 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_742
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.getDRepVote
d_getDRepVote_1696 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1696 ~v0 = du_getDRepVote_1696
du_getDRepVote_1696 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
du_getDRepVote_1696
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_830
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovernanceActions.maximum
d_maximum_1698 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1698 ~v0 = du_maximum_1698
du_maximum_1698 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_maximum_1698
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_682
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidHomomorphism.homo
d_homo_1724 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1724 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1726 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1726 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1728 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1728 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1730 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidHomomorphism.cong
d_cong_1732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1732 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.homo
d_homo_1736 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1736 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.injective
d_injective_1738 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1738 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1740 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1742 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1742 ~v0 = du_isMagmaIsomorphism_1742
du_isMagmaIsomorphism_1742 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_1742 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1744 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1744 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1744 v2
du_isMagmaMonomorphism_1744 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1744 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1746 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1746 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1748 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1748 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1750 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1752 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1752 ~v0 ~v1 v2 = du_isRelIsomorphism_1752 v2
du_isRelIsomorphism_1752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1752 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1754 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1754 ~v0 ~v1 v2 = du_isRelMonomorphism_1754 v2
du_isRelMonomorphism_1754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1754 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.surjective
d_surjective_1756 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1756 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1758 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidIsomorphism.cong
d_cong_1760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1760 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.homo
d_homo_1764 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1764 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.injective
d_injective_1766 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1766 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1768 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1768 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1770 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1770 ~v0 = du_isMagmaMonomorphism_1770
du_isMagmaMonomorphism_1770 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1770 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1772 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1772 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1774 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1774 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1776 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1776 ~v0 ~v1 v2 = du_isRelMonomorphism_1776 v2
du_isRelMonomorphism_1776 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1776 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1778 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1778 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.IsMonoidMonomorphism.cong
d_cong_1780 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1780 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1784 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1784 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1786 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1786 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1788 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1788 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1ScriptStructure.P1Script
d_P1Script_1790 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1790 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1792 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1792 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.Emax
d_Emax_1808 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_Emax_1808 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.a
d_a_1810 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1810 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.a0
d_a0_1812 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1812 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.b
d_b_1814 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1814 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_1816 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.ccMinSize
d_ccMinSize_1818 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1818 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1820 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.collateralPercentage
d_collateralPercentage_1822 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1822 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.costmdls
d_costmdls_1824 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.drepActivity
d_drepActivity_1826 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepActivity_1826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.drepDeposit
d_drepDeposit_1828 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1828 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.drepThresholds
d_drepThresholds_1830 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.govActionDeposit
d_govActionDeposit_1832 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1832 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.govActionLifetime
d_govActionLifetime_1834 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1834 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.keyDeposit
d_keyDeposit_1836 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1836 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_1838 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1838 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxBlockSize
d_maxBlockSize_1840 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1840 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_1842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1842 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxHeaderSize
d_maxHeaderSize_1844 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1844 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_1846 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_1848 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxTxExUnits
d_maxTxExUnits_1850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1850 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxTxSize
d_maxTxSize_1852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.maxValSize
d_maxValSize_1854 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1856 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.minUTxOValue
d_minUTxOValue_1858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.nopt
d_nopt_1860 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.poolDeposit
d_poolDeposit_1862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.poolThresholds
d_poolThresholds_1864 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.prices
d_prices_1866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.pv
d_pv_1868 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1868 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1870 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1870 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParams.refScriptCostStride
d_refScriptCostStride_1872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1872 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.UpdateT
d_UpdateT_1876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> ()
d_UpdateT_1876 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.applyUpdate
d_applyUpdate_1878 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.ppWF?
d_ppWF'63'_1880 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1882 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> AgdaAny -> ()
d_ppdWellFormed_1882 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsDiff.updateGroups
d_updateGroups_1884 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1298 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate._?↗_
d__'63''8599'__1888 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1888 ~v0 = du__'63''8599'__1888
du__'63''8599'__1888 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__1888 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1032 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1890 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1890 v0
  = let v1 = d_HSTransactionStructure_894 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v1))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1892 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1894 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_1894 ~v0 = du_applyPParamsUpdate_1894
du_applyPParamsUpdate_1894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
du_applyPParamsUpdate_1894
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1896 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_modifiedUpdateGroups_1896 ~v0 = du_modifiedUpdateGroups_1896
du_modifiedUpdateGroups_1896 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
du_modifiedUpdateGroups_1896
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1016
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1898 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesEconomicGroup_1898 ~v0 = du_modifiesEconomicGroup_1898
du_modifiesEconomicGroup_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesEconomicGroup_1898
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_800
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1900 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesGovernanceGroup_1900 ~v0
  = du_modifiesGovernanceGroup_1900
du_modifiesGovernanceGroup_1900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesGovernanceGroup_1900
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_944
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1902 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesNetworkGroup_1902 ~v0 = du_modifiesNetworkGroup_1902
du_modifiesNetworkGroup_1902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesNetworkGroup_1902
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_728
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1904 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesTechnicalGroup_1904 ~v0 = du_modifiesTechnicalGroup_1904
du_modifiesTechnicalGroup_1904 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
du_modifiesTechnicalGroup_1904
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_872
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1906 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> ()
d_paramsUpdateWellFormed_1906 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1908 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1908 ~v0
  = du_paramsUpdateWellFormed'63'_1908
du_paramsUpdateWellFormed'63'_1908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_paramsUpdateWellFormed'63'_1908
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_724
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.≡-update
d_'8801''45'update_1910 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1910 ~v0 = du_'8801''45'update_1910
du_'8801''45'update_1910 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''45'update_1910 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1046 v1
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_Emax_1914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.a
d_a_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_a_1916 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1918 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.b
d_b_1920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_b_1920 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_1922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_1924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_coinsPerUTxOByte_1926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_collateralPercentage_1928 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepActivity_1932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_1934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionDeposit_1938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionLifetime_1940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_keyDeposit_1942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxBlockSize_1946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxCollateralInputs_1948 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxHeaderSize_1950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerBlock_1952 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerTx_1954 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxTxSize_1958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxValSize_1960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1962 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_minUTxOValue_1964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_nopt_1966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_poolDeposit_1968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1970 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_1972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1972 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_606 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_1974 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1974 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1976 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1976 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1978 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_refScriptCostStride_1978 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1982 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1982 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.CostModel
d_CostModel_1984 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1984 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.T
d_T_1986 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1986 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.THash
d_THash_1988 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1988 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Dataʰ
d_Data'688'_1990 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1990 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Datum
d_Datum_1992 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1992 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1994 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1994 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1996 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1996 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1998 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1998 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2000 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2000 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2002 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2002 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2004 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2004 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2006 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2006 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2008 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2008 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2010 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2010 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.ExUnits
d_ExUnits_2012 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_2012 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2014 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2014 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.LangDepView
d_LangDepView_2016 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_2016 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Language
d_Language_2018 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_2018 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2020 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_2020 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2022 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_2022 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2024 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_2024 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2026 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_2026 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Prices
d_Prices_2028 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_2028 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Redeemer
d_Redeemer_2030 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_2030 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2032 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2032 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2034 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2034 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2036 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2036 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2038 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2038 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2040 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2040 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2042 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2042 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.language
d_language_2044 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_2044 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.toData
d_toData_2046 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_2046 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2048 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2048 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolThresholds.Q1
d_Q1_2052 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2052 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolThresholds.Q2a
d_Q2a_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2054 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolThresholds.Q2b
d_Q2b_2056 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2056 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolThresholds.Q4
d_Q4_2058 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2058 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolThresholds.Q5e
d_Q5e_2060 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2060 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.RwdAddr.net
d_net_2064 :: MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> Integer
d_net_2064 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.RwdAddr.stake
d_stake_2066 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2066 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2070 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2070 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.CostModel
d_CostModel_2072 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_CostModel_2072 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.T
d_T_2074 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_T_2074 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.THash
d_THash_2076 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_THash_2076 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Dataʰ
d_Data'688'_2078 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2078 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Datum
d_Datum_2080 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Datum_2080 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2082 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2082 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2084 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2084 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2086 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2086 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2088 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2088 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2090 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2090 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2092 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2092 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2094 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2094 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2096 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2096 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2098 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2098 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2100 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2100 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2102 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2102 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.ExUnits
d_ExUnits_2104 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ExUnits_2104 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Hash-P1Script
d_Hash'45'P1Script_2106 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_2106 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2108 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2108 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2110 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2110 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2112 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2112 ~v0 = du_Hashable'45'Script_2112
du_Hashable'45'Script_2112 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Hashable'45'Script_2112
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.LangDepView
d_LangDepView_2114 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_LangDepView_2114 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Language
d_Language_2116 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Language_2116 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.P1Script
d_P1Script_2118 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_P1Script_2118 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2120 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_PlutusScript_2120 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2122 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV1_2122 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2124 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV2_2124 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2126 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV3_2126 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Prices
d_Prices_2128 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Prices_2128 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Redeemer
d_Redeemer_2130 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Redeemer_2130 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Script
d_Script_2132 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Script_2132 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2134 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2134 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2136 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2136 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2138 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2138 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2140 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2140 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2142 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2142 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2144 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2144 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2146 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2146 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.language
d_language_2148 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny
d_language_2148 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.p1s
d_p1s_2150 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2150 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.ps
d_ps_2152 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2152 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.toData
d_toData_2154 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> AgdaAny -> AgdaAny
d_toData_2154 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.validP1Script
d_validP1Script_2156 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2156 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2158 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2158 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra._∙_
d__'8729'__2176 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2176 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra._≈_
d__'8776'__2178 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2178 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2180 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2180 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.AssetName
d_AssetName_2182 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_2182 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2184 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2184 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2186 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2186 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2188 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2190 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2192 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.Value
d_Value_2194 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2194 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2196 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2196 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.addValue
d_addValue_2198 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_2198 ~v0 = du_addValue_2198
du_addValue_2198 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
du_addValue_2198
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.coin
d_coin_2200 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2200 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2202 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2202 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2204 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2204 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.inject
d_inject_2206 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2206 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.monoid
d_monoid_2208 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2208 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.policies
d_policies_2210 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2210 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.property
d_property_2212 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2212 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2214 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2214 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.size
d_size_2216 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2216 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.specialAsset
d_specialAsset_2218 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_2218 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2220 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2220 ~v0 = du_sum'7515'_2220
du_sum'7515'_2220 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_2220
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.ε
d_ε_2222 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2222 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2226 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2226 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2228 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2228 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2230 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2230 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2232 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2234 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2238 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2238 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2240 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2244 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2244 ~v0 = du_isMagmaIsomorphism_2244
du_isMagmaIsomorphism_2244 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2244 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2246 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2246 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2246 v2
du_isMagmaMonomorphism_2246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2248 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2250 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2254 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2254 ~v0 ~v1 v2 = du_isRelIsomorphism_2254 v2
du_isRelIsomorphism_2254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2254 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2256 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2256 ~v0 ~v1 v2 = du_isRelMonomorphism_2256 v2
du_isRelMonomorphism_2256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2256 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2260 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2262 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2266 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2272 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2272 ~v0 = du_isMagmaMonomorphism_2272
du_isMagmaMonomorphism_2272 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2272 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2274 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2276 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2278 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2278 ~v0 ~v1 v2 = du_isRelMonomorphism_2278 v2
du_isRelMonomorphism_2278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2280 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2282 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Tx.body
d_body_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_2286 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Tx.isValid
d_isValid_2288 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_2288 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Tx.txAD
d_txAD_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Maybe Integer
d_txAD_2290 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Tx.wits
d_wits_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_2292 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.collateral
d_collateral_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2296 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.curTreasury
d_curTreasury_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_curTreasury_2298 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.mint
d_mint_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_mint_2300 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.refInputs
d_refInputs_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2302 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.reqSigHash
d_reqSigHash_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [Integer]
d_reqSigHash_2304 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2646 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.scriptIntHash
d_scriptIntHash_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_scriptIntHash_2306 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2648 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txADhash
d_txADhash_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_txADhash_2308 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txNetworkId
d_txNetworkId_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_txNetworkId_2310 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txcerts
d_txcerts_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2312 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txdonation
d_txdonation_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txdonation_2314 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txfee
d_txfee_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txfee_2316 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txid
d_txid_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txid_2318 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txins
d_txins_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2320 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txouts
d_txouts_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2322 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txprop
d_txprop_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_2324 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txsize
d_txsize_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txsize_2326 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txup
d_txup_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2328 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txvldt
d_txvldt_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2330 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txvote
d_txvote_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_2332 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxBody.txwdrls
d_txwdrls_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2334 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxWitnesses.scripts
d_scripts_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2338 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2662 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2340 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338]
d_scriptsP1_2340 ~v0 = du_scriptsP1_2340
du_scriptsP1_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338]
du_scriptsP1_2340
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2668
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxWitnesses.txdats
d_txdats_2342 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2342 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2664 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2344 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2344 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2666 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.TxWitnesses.vkSigs
d_vkSigs_2346 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2346 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2660 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2382 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2384 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2384 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2386 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2388 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2390 a0 a1 a2 a3 a4
  = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2392 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertEnv
d_CertEnv_2402 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertState
d_CertState_2404 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DCert
d_DCert_2408 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DState
d_DState_2416 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2418 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2418 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
         (coe d_HSTransactionStructure_894 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DelegEnv
d_DelegEnv_2420 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DepositPurpose
d_DepositPurpose_2422 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.Deposits
d_Deposits_2424 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_Deposits_2424 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GState
d_GState_2432 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GovCertEnv
d_GovCertEnv_2436 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_GovCertEnv_2436 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.HasCoin-CertState
d_HasCoin'45'CertState_2438 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2438 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_990
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
         (coe d_HSTransactionStructure_894 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PState
d_PState_2444 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolEnv
d_PoolEnv_2448 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  ()
d_PoolEnv_2448 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolParams
d_PoolParams_2450 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.cwitness
d_cwitness_2454 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2454 v0
  = coe MAlonzo.Code.Ledger.Certs.d_cwitness_872 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.rewardsBalance
d_rewardsBalance_2468 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Certs.T_DState_908 -> Integer
d_rewardsBalance_2468 v0
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewardsBalance_984
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
         (coe d_HSTransactionStructure_894 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertEnv.epoch
d_epoch_2516 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> Integer
d_epoch_2516 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_898 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertEnv.pp
d_pp_2518 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2518 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_900 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertEnv.votes
d_votes_2520 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_2520 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_902 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertEnv.wdrls
d_wdrls_2522 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2522 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_904 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertState.dState
d_dState_2526 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_DState_908
d_dState_2526 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertState.gState
d_gState_2528 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_GState_936
d_gState_2528 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_960 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.CertState.pState
d_pState_2530 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_2530 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_958 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DState.rewards
d_rewards_2550 ::
  MAlonzo.Code.Ledger.Certs.T_DState_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2550 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_920 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DState.stakeDelegs
d_stakeDelegs_2552 ::
  MAlonzo.Code.Ledger.Certs.T_DState_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2552 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_918 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DState.voteDelegs
d_voteDelegs_2554 ::
  MAlonzo.Code.Ledger.Certs.T_DState_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2554 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_916 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DelegEnv.delegatees
d_delegatees_2558 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  [MAlonzo.Code.Ledger.Address.T_Credential_16]
d_delegatees_2558 v0
  = coe MAlonzo.Code.Ledger.Certs.d_delegatees_976 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DelegEnv.pools
d_pools_2560 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2560 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_974 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.DelegEnv.pparams
d_pparams_2562 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2562 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_972 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GState.ccHotKeys
d_ccHotKeys_2576 ::
  MAlonzo.Code.Ledger.Certs.T_GState_936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2576 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_944 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.GState.dreps
d_dreps_2578 ::
  MAlonzo.Code.Ledger.Certs.T_GState_936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2578 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_942 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PState.pools
d_pools_2582 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2582 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_930 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PState.retiring
d_retiring_2584 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2584 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_932 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.PoolParams.rewardAddr
d_rewardAddr_2588 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_850 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2588 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_854 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AbstractFunctions
d_AbstractFunctions_2592 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AbstractFunctions.indexOfImp
d_indexOfImp_2598 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1700
d_indexOfImp_2598 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1742 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AbstractFunctions.runPLCScript
d_runPLCScript_2600 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> [Integer] -> Bool
d_runPLCScript_2600 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1744 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AbstractFunctions.scriptSize
d_scriptSize_2602 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2602 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1746 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AbstractFunctions.serSize
d_serSize_2604 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  Integer -> Integer
d_serSize_2604 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1740 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures._.AbstractFunctions.txscriptfee
d_txscriptfee_2606 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2606 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1738 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.ExternalStructures.HSAbstractFunctions
d_HSAbstractFunctions_2622 ::
  MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.T_ExternalFunctions_8 ->
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726
d_HSAbstractFunctions_2622 ~v0 = du_HSAbstractFunctions_2622
du_HSAbstractFunctions_2622 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1726
du_HSAbstractFunctions_2622
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2985
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2693
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      (coe
         (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe (\ v0 -> 0 :: Integer))
