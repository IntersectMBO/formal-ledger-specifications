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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.BaseTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Address
import qualified MAlonzo.Code.Ledger.Conway.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Util
import qualified MAlonzo.Code.Ledger.Conway.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.PParams
import qualified MAlonzo.Code.Ledger.Conway.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Script.Timelock
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat
import qualified MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

type Coin = Integer
type ExUnits = (Integer, Integer)
type Epoch = Integer
type ScriptHash = Integer
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.iConvTop
d_iConvTop_10 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvTop_10
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.iConvNat
d_iConvNat_12 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvNat_12
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.iConvString
d_iConvString_14 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvString_14
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.iConvBool
d_iConvBool_16 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvBool_16
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_36
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-⊥
d_HsTy'45''8869'_18 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45''8869'_18 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-⊥
d_Conv'45''8869'_20 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45''8869'_20
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
      (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-⊤
d_HsTy'45''8868'_22 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45''8868'_22 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-Rational
d_HsTy'45'Rational_24 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Rational_24 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-Rational
d_Conv'45'Rational_26 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Rational_26
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 (coe v1)
                     (coe addInt (coe (1 :: Integer)) (coe v2))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v1 v2
                -> case coe v2 of
                     0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                     _ -> coe
                            MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v1) (coe v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-HSSet
d_HsTy'45'HSSet_42 ::
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'HSSet_42 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-HSSet
d_Conv'45'HSSet_50 ::
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSSet_50 ~v0 ~v1 v2 = du_Conv'45'HSSet_50 v2
du_Conv'45'HSSet_50 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
du_Conv'45'HSSet_50 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSSet_40
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                    (coe v0))
                 v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Axiom.Set.du_fromList_428
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1470
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_118
                    (coe v0))
                 (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_elems_38 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-Map
d_HsTy'45'Map_58 ::
  () ->
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Map_58 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-HSMap
d_Conv'45'HSMap_72 ::
  () ->
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'HSMap_72 ~v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_Conv'45'HSMap_72 v4 v5 v6
du_Conv'45'HSMap_72 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
du_Conv'45'HSMap_72 v0 v1 v2
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_MkHSMap_28
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_102
                    (coe
                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_92 (coe v1)
                       (coe v2)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Foreign.Convertible.d_from_20
              (coe
                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_114 (coe v0)
                 (coe v1) (coe v2))
              (MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.d_assocList_26
                 (coe v3))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-ComputationResult
d_HsTy'45'ComputationResult_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14 ->
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'ComputationResult_82 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-ComputationResult
d_Conv'45'ComputationResult_88 ::
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'ComputationResult_88 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_Conv'45'ComputationResult_88 v4 v5
du_Conv'45'ComputationResult_88 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8 ->
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
du_Conv'45'ComputationResult_88 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_Success_52
                     (coe MAlonzo.Code.Foreign.Convertible.d_to_18 v1 v3)
              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v3
                -> coe
                     MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_Failure_54
                     (coe MAlonzo.Code.Foreign.Convertible.d_to_18 v0 v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_Success_52 v3
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe MAlonzo.Code.Foreign.Convertible.d_from_20 v1 v3)
              MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C_Failure_54 v3
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                     (coe MAlonzo.Code.Foreign.Convertible.d_from_20 v0 v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._+ᵉ_
d__'43''7497'__92 :: Integer -> Integer -> Integer
d__'43''7497'__92
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._+ᵉ'_
d__'43''7497'''__94 :: Integer -> Integer -> Integer
d__'43''7497'''__94
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._∙_
d__'8729'__96 :: Integer -> Integer -> Integer
d__'8729'__96
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._≈_
d__'8776'__98 :: Integer -> Integer -> ()
d__'8776'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._≤ᵗ_
d__'8804''7511'__100 :: Integer -> Integer -> ()
d__'8804''7511'__100 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._≥ᵉ_
d__'8805''7497'__102 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__102 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__104 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__106 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022] ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__106 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__108 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__110 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__112 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__114 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_116 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_116 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_118 :: ()
d_THash_118 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt
d_Acnt_120 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ActiveSlotCoeff
d_ActiveSlotCoeff_122 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_122
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Addr
d_Addr_124 :: ()
d_Addr_124 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor
d_Anchor_126 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.AuxiliaryData
d_AuxiliaryData_128 :: ()
d_AuxiliaryData_128 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr
d_BaseAddr_130 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr
d_BootstrapAddr_132 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv
d_CertEnv_144 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState
d_CertState_146 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertStateOf
d_CertStateOf_148 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_CertStateOf_148 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CostModel
d_CostModel_152 :: ()
d_CostModel_152 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Credential
d_Credential_154 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CredentialOf
d_CredentialOf_158 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_158 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DCert
d_DCert_160 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DReps
d_DReps_172 :: ()
d_DReps_172 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DRepsOf
d_DRepsOf_174 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_174 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DRepsOf_992 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState
d_DState_176 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DStateOf
d_DStateOf_178 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1120 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100
d_DStateOf_178 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DStateOf_1128 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T
d_T_180 :: ()
d_T_180 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_182 :: ()
d_THash_182 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dataʰ
d_Data'688'_184 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_184
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Datum
d_Datum_186 :: ()
d_Datum_186 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-evalTimelock
d_Dec'45'evalTimelock_188 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Script.Timelock.T_Timelock_96 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_188
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Timelock.d_Dec'45'evalTimelock_154
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isScript
d_Dec'45'isScript_190 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_190
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isScript_204
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isSigned
d_Dec'45'isSigned_192 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_192
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_Dec'45'isSigned_118
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isVKey
d_Dec'45'isVKey_194 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_194
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Dec'45'isVKey_190
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validP1Script
d_Dec'45'validP1Script_196 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_350 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_196
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_198 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_368 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_198
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validPlutusScript_260
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-≤ᵗ
d_Dec'45''8804''7511'_200 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_200
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Dec'45''8804''7511'_216
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEQ-Prices
d_DecEQ'45'Prices_202 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_202
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_204 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_204
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
            (coe
               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_206
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
            (coe
               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-CostModel
d_DecEq'45'CostModel_208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_208
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Credential
d_DecEq'45'Credential_210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_210
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_212 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_212
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_998
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_214
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_602
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Epoch
d_DecEq'45'Epoch_216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_216
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ExUnits
d_DecEq'45'ExUnits_218 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_218
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovActionType
d_DecEq'45'GovActionType_220 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_220
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_902
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovRole
d_DecEq'45'GovRole_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_222
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_904
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_224 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_224
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_366
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ix
d_DecEq'45'Ix_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_226
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1220
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-LangDepView
d_DecEq'45'LangDepView_228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_228
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'LangDepView_222
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Language
d_DecEq'45'Language_230 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_230
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Netw
d_DecEq'45'Netw_232 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_232
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-P1Script
d_DecEq'45'P1Script_234 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_234
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'P1Script_116
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_236
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_608
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParams
d_DecEq'45'PParams_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_238
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_606
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_240
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_604
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_242
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
            (coe
               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_244 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_244
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ser
d_DecEq'45'Ser_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_246
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Ser_134
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Sig
d_DecEq'45'Sig_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_248
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'Sig_132
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Slot
d_DecEq'45'Slot_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_250
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_252
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_254 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_254
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_256 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_256
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_258
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_260 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_260
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Timelock
d_DecEq'45'Timelock_262 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_262
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Timelock.d_DecEq'45'Timelock_110
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-TxId
d_DecEq'45'TxId_264 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_264
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1222
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-UpdT
d_DecEq'45'UpdT_266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_266
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1562
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2276 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-VDeleg
d_DecEq'45'VDeleg_268 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_268
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_908
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Value
d_DecEq'45'Value_270 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_270
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Vote
d_DecEq'45'Vote_272 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_272
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_906
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecPo-Slot
d_DecPo'45'Slot_274 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_274
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv
d_DelegEnv_276 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositPurpose
d_DepositPurpose_278 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Deposits
d_Deposits_280 :: ()
d_Deposits_280 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositsOf
d_DepositsOf_282 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_282 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds
d_DrepThresholds_284 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSAbstractFunctions
d_HSAbstractFunctions_286 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1956
d_HSAbstractFunctions_286
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2730
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTransactionStructure
d_HSTransactionStructure_288 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22
d_HSTransactionStructure_288
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Epoch
d_Epoch_292 :: ()
d_Epoch_292 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_294 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_294
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnits
d_ExUnits_296 :: ()
d_ExUnits_296 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState
d_GState_304 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GStateOf
d_GStateOf_306 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1200 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184
d_GStateOf_306 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_GStateOf_1208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction
d_GovAction_308 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionData
d_GovActionData_310 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782 ->
  ()
d_GovActionData_310 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionID
d_GovActionID_314 :: ()
d_GovActionID_314 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState
d_GovActionState_316 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionType
d_GovActionType_318 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovCertEnv
d_GovCertEnv_320 :: ()
d_GovCertEnv_320 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams
d_GovParams_322 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal
d_GovProposal_324 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRole
d_GovRole_326 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote
d_GovVote_328 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSCrypto
d_HSCrypto_332 :: MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_HSCrypto_332
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSEpochStructure
d_HSEpochStructure_334 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_HSEpochStructure_334
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSGlobalConstants
d_HSGlobalConstants_336 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_HSGlobalConstants_336
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript
d_HSPlutusScript_338 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSScriptStructure
d_HSScriptStructure_340 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268
d_HSScriptStructure_340
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_384
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock
d_HSTimelock_342 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-Acnt
d_HasCast'45'Acnt_344 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_344
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertEnv
d_HasCast'45'CertEnv_346 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_346
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1286
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertState
d_HasCast'45'CertState_348 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_348
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertState_1294
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DState
d_HasCast'45'DState_350 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_350
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'DState_1288
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_352 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_352
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'DelegEnv_1296
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GState
d_HasCast'45'GState_354 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_354
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'GState_1292
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_356 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_356
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_812
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovVote
d_HasCast'45'GovVote_358 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_358
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_910
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected
d_HasCast'45'HashProtected_360 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_824
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_362 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_362
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_826
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-PState
d_HasCast'45'PState_364 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_364
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'PState_1290
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState
d_HasCertState_366 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-CertState
d_HasCoin'45'CertState_368 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_368
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_HasCoin'45'CertState_1284
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-TxOut
d_HasCoin'45'TxOut_370 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_370
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_HasCoin'45'TxOut_3280
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential
d_HasCredential_372 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_374 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28
d_HasCredential'45'RwdAddr_374
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasCredential'45'RwdAddr_130
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps
d_HasDReps_376 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-CertState
d_HasDReps'45'CertState_378 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984
d_HasDReps'45'CertState_378
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasDReps'45'CertState_1258
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-GState
d_HasDReps'45'GState_380 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984
d_HasDReps'45'GState_380
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasDReps'45'GState_1214
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState
d_HasDState_382 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState-CertState
d_HasDState'45'CertState_384 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1120
d_HasDState'45'CertState_384
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasDState'45'CertState_1250
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits
d_HasDeposits_386 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState
d_HasGState_388 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState-CertState
d_HasGState'45'CertState_390 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1200
d_HasGState'45'CertState_390
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasGState'45'CertState_1254
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId
d_HasNetworkId_392 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_394 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BaseAddr_394
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BaseAddr_124
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_396 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'BootstrapAddr_396
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'BootstrapAddr_126
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_398 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110
d_HasNetworkId'45'RwdAddr_398
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_HasNetworkId'45'RwdAddr_128
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams
d_HasPParams_400 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState
d_HasPState_402 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState-CertState
d_HasPState'45'CertState_404 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1170
d_HasPState'45'CertState_404
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasPState'45'CertState_1252
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards
d_HasRewards_406 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-CertState
d_HasRewards'45'CertState_408 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966
d_HasRewards'45'CertState_408
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasRewards'45'CertState_1256
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-DState
d_HasRewards'45'DState_410 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966
d_HasRewards'45'DState_410
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasRewards'45'DState_1154
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody
d_HasTxBody_412 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody-Tx
d_HasTxBody'45'Tx_414 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasTxBody_3024
d_HasTxBody'45'Tx_414
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_HasTxBody'45'Tx_3152
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO
d_HasUTxO_416 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVDelegs
d_HasVDelegs_418 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVDelegs-DState
d_HasVDelegs'45'DState_420 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1138
d_HasVDelegs'45'DState_420
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasVDelegs'45'DState_1152
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls
d_HasWdrls_422 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls-CertEnv
d_HasWdrls'45'CertEnv_424 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
d_HasWdrls'45'CertEnv_424
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasWdrls'45'CertEnv_1098
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls-Tx
d_HasWdrls'45'Tx_426 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
d_HasWdrls'45'Tx_426
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_HasWdrls'45'Tx_3162
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls-TxBody
d_HasWdrls'45'TxBody_428 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084
d_HasWdrls'45'TxBody_428
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_HasWdrls'45'TxBody_3160
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasccMaxTermLength
d_HasccMaxTermLength_430 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasgovActionDeposit
d_HasgovActionDeposit_432 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_434 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460
d_HasgovActionDeposit'45'PParams_434
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_492
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HashProtected
d_HashProtected_436 :: () -> ()
d_HashProtected_436 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_438 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSPlutusScript_438
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_380
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_440 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSTimelock_440
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_364
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-P1Script
d_Hashable'45'P1Script_442 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_442
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_444 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_444
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-Script
d_Hashable'45'Script_446 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_446
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hasreserves
d_Hasreserves_448 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastreasury
d_Hastreasury_450 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxcerts
d_Hastxcerts_452 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxcerts-Tx
d_Hastxcerts'45'Tx_454 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxcerts_3060
d_Hastxcerts'45'Tx_454
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxcerts'45'Tx_3156
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxfee
d_Hastxfee_456 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxfee-Tx
d_Hastxfee'45'Tx_458 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxfee_3042
d_Hastxfee'45'Tx_458
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxfee'45'Tx_3154
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxid
d_Hastxid_460 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxid-Tx
d_Hastxid'45'Tx_462 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxid_3096
d_Hastxid'45'Tx_462
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxid'45'Tx_3164
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxprop
d_Hastxprop_464 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxprop-Tx
d_Hastxprop'45'Tx_466 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxprop_3078
d_Hastxprop'45'Tx_466
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxprop'45'Tx_3158
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HsGovParams
d_HsGovParams_468 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530
d_HsGovParams_468
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_732
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_474 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_476 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_478 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ix
d_Ix_480 :: ()
d_Ix_480 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_482 :: ()
d_THash_482 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.KeyPair
d_KeyPair_486 :: ()
d_KeyPair_486 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.LangDepView
d_LangDepView_488 :: ()
d_LangDepView_488 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Language
d_Language_490 :: ()
d_Language_490 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MemoryEstimate
d_MemoryEstimate_492 :: ()
d_MemoryEstimate_492 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NeedsHash
d_NeedsHash_496 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782 ->
  ()
d_NeedsHash_496 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Network
d_Network_498 :: ()
d_Network_498 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkId
d_NetworkId_502 :: Integer
d_NetworkId_502
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkIdOf
d_NetworkIdOf_504 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> Integer
d_NetworkIdOf_504 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_510 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_510
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_300
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_512 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_512
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Number-Epoch
d_Number'45'Epoch_514 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_514
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1Script
d_P1Script_516 :: ()
d_P1Script_516 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure
d_P1ScriptStructure_518 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_520 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96
d_P1ScriptStructure'45'HTL_520
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_382
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusScript
d_PlutusScript_522 :: ()
d_PlutusScript_522 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamGroup
d_PParamGroup_528 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams
d_PParams_530 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff
d_PParamsDiff_532 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsOf
d_PParamsOf_534 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_534 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UpdateT
d_UpdateT_536 :: ()
d_UpdateT_536 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState
d_PState_538 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PStateOf
d_PStateOf_540 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1170 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_PStateOf_540 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_PStateOf_1178 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure
d_PlutusStructure_542 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV1
d_PlutusV1_544 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_544
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV2
d_PlutusV2_546 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_546
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV3
d_PlutusV3_548 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_548
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolEnv
d_PoolEnv_552 :: ()
d_PoolEnv_552 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams
d_PoolParams_554 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds
d_PoolThresholds_556 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_558 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_558
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Positive'45'ActiveSlotCoeff_292
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Prices
d_Prices_560 :: ()
d_Prices_560 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProposedPPUpdates
d_ProposedPPUpdates_562 :: ()
d_ProposedPPUpdates_562 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProtVer
d_ProtVer_564 :: ()
d_ProtVer_564 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Quorum
d_Quorum_566 :: Integer
d_Quorum_566
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RdmrPtr
d_RdmrPtr_568 :: ()
d_RdmrPtr_568 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Redeemer
d_Redeemer_570 :: ()
d_Redeemer_570 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Rewards
d_Rewards_584 :: ()
d_Rewards_584 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardsOf
d_RewardsOf_586 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_586 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_RewardsOf_974 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr
d_RwdAddr_588 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SKey
d_SKey_592 :: ()
d_SKey_592 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Script
d_Script_596 :: ()
d_Script_596 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptAddr
d_ScriptAddr_598 :: ()
d_ScriptAddr_598 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBaseAddr
d_ScriptBaseAddr_600 :: ()
d_ScriptBaseAddr_600 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_602 :: ()
d_ScriptBootstrapAddr_602 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptHash
d_ScriptHash_604 :: ()
d_ScriptHash_604 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure
d_ScriptStructure_608 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ser
d_Ser_612 :: ()
d_Ser_612 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-CostModel
d_Show'45'CostModel_614 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_614
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential
d_Show'45'Credential_616 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_616 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_618 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_618 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-DrepThresholds
d_Show'45'DrepThresholds_620 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_620
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_610
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Epoch
d_Show'45'Epoch_622 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_622
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ExUnits
d_Show'45'ExUnits_624 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_624
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Network
d_Show'45'Network_626 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_626
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PParams
d_Show'45'PParams_628 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_628
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_614
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PoolThresholds
d_Show'45'PoolThresholds_630 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_630
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_612
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Prices
d_Show'45'Prices_632 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_632
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ProtVer
d_Show'45'ProtVer_634 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_634
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-RwdAddr
d_Show'45'RwdAddr_636 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_636
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ScriptHash
d_Show'45'ScriptHash_638 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_638
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_640 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_640
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_642 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_642
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_644 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_644
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Sig
d_Sig_646 :: ()
d_Sig_646 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slot
d_Slot_648 :: ()
d_Slot_648 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_650 :: Integer
d_SlotsPerEpoch'7580'_650
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slotʳ
d_Slot'691'_652 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_652
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindow
d_StabilityWindow_654 :: Integer
d_StabilityWindow_654
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindowᶜ
d_StabilityWindow'7580'_656 :: Integer
d_StabilityWindow'7580'_656
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_658 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_658
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1224
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_660 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_660
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_662 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_662
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-isHashable
d_T'45'isHashable_664 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_664
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
               (coe
                  MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Timelock
d_Timelock_668 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra
d_TokenAlgebra_670 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx
d_Tx_676 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody
d_TxBody_678 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBodyOf
d_TxBodyOf_680 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasTxBody_3024 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_TxBodyOf_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_TxBodyOf_3032 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxId
d_TxId_682 :: ()
d_TxId_682 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIn
d_TxIn_684 :: ()
d_TxIn_684 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOut
d_TxOut_686 :: ()
d_TxOut_686 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOutʰ
d_TxOut'688'_688 :: ()
d_TxOut'688'_688 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses
d_TxWitnesses_690 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxO
d_UTxO_692 :: ()
d_UTxO_692 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxOOf
d_UTxOOf_694 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_694 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2936 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Update
d_Update_696 :: ()
d_Update_696 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VDeleg
d_VDeleg_700 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKey
d_VKey_702 :: ()
d_VKey_702 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyAddr
d_VKeyAddr_704 :: ()
d_VKeyAddr_704 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBaseAddr
d_VKeyBaseAddr_706 :: ()
d_VKeyBaseAddr_706 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_708 :: ()
d_VKeyBootstrapAddr_708 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value
d_Value_712 :: ()
d_Value_712 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_714 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_714
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Voter
d_Voter_716 :: ()
d_Voter_716 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Wdrl
d_Wdrl_718 :: ()
d_Wdrl_718 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.adHashingScheme
d_adHashingScheme_722 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_adHashingScheme_722
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addEpoch
d_addEpoch_724 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_724
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addSlot
d_addSlot_726 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_726
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addValue
d_addValue_728 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_728
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_addValue_218
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.applyUpdate
d_applyUpdate_730 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_730
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2276
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_736 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin
d_coin_740 :: Integer -> Integer
d_coin_740
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin-inject-lemma
d_coin'45'inject'45'lemma_742 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_742 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_744 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_744
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_212
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin∘inject≗id
d_coin'8728'inject'8791'id_746 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_746 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.crypto
d_crypto_750 :: MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_750
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cwitness
d_cwitness_752 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_cwitness_752
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_cwitness_1040
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epoch
d_epoch_760 :: Integer -> Integer
d_epoch_760
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epochStructure
d_epochStructure_762 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_762
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.evalTimelock
d_evalTimelock_776 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.firstSlot
d_firstSlot_778 :: Integer -> Integer
d_firstSlot_778
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaData
d_gaData_780 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  AgdaAny
d_gaData_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_808 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaType
d_gaType_782 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782
d_gaType_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_806 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getDRepVote
d_getDRepVote_784 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_784
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_912
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getScriptHash
d_getScriptHash_786 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> Integer
d_getScriptHash_786
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValue
d_getValue_788 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_788
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue_3166
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValueʰ
d_getValue'688'_790 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_790
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3182
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.globalConstants
d_globalConstants_792 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_792
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govActionDepositOf
d_govActionDepositOf_794 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govParams
d_govParams_796 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530
d_govParams_796
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_732
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govStructure
d_govStructure_798 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8
d_govStructure_798
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.hashRespectsUnion
d_hashRespectsUnion_800 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_800
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_hashRespectsUnion_314
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.inject
d_inject_802 :: Integer -> Integer
d_inject_802
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr
d_isBootstrapAddr_804 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr?
d_isBootstrapAddr'63'_806 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_806
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHash
d_isKeyHash_808 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_808 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObj
d_isKeyHashObj_810 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe Integer
d_isKeyHashObj_810
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_812 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_812
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyPair
d_isKeyPair_814 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_814 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isNativeScript
d_isNativeScript_816 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_816 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script
d_isP1Script_818 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_818 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script?
d_isP1Script'63'_820 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_820
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_isP1Script'63'_396
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script
d_isP2Script_822 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_822 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script?
d_isP2Script'63'_824 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_824
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_isP2Script'63'_410
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScript
d_isScript_826 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptAddr
d_isScriptAddr_828 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_828 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptObj
d_isScriptObj_830 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe Integer
d_isScriptObj_830
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptRwdAddr
d_isScriptRwdAddr_832 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_832 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned
d_isSigned_834 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_834 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned-correct
d_isSigned'45'correct_836 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_836 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKey
d_isVKey_838 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKeyAddr
d_isVKeyAddr_840 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_840 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.khs
d_khs_842 :: MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_842
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.language
d_language_844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_368 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_844
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupScriptHash
d_lookupScriptHash_846 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_846
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_lookupScriptHash_3266
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.monoid
d_monoid_848 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_848
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1036
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.netId
d_netId_850 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_850 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.p1s
d_p1s_854 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96
d_p1s_854
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWF-elim
d_paramsWF'45'elim_856 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_856 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_582 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWellFormed
d_paramsWellFormed_858 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> ()
d_paramsWellFormed_858 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.payCred
d_payCred_860 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_860
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pkk
d_pkk_862 :: MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_862
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.policies
d_policies_864 :: Integer -> [Integer]
d_policies_864
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.positivePParams
d_positivePParams_866 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> [Integer]
d_positivePParams_866
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_494
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppUpd
d_ppUpd_868 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498
d_ppUpd_868
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2276 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppWF?
d_ppWF'63'_870 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_870
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2276
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppdWellFormed
d_ppdWellFormed_872 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> ()
d_ppdWellFormed_872 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.preoEpoch
d_preoEpoch_874 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_874
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.proposedCC
d_proposedCC_876 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_876
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_916
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ps
d_ps_878 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118
d_ps_878
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow
d_pvCanFollow_880 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow?
d_pvCanFollow'63'_882 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_882
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1450
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rawMonoid
d_rawMonoid_884 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_884
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                    (coe
                       MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.refScripts
d_refScripts_886 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_886
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3206
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.reservesOf
d_reservesOf_894 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_194 ->
  AgdaAny -> Integer
d_reservesOf_894 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rewardsBalance
d_rewardsBalance_898 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100 -> Integer
d_rewardsBalance_898
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_rewardsBalance_1278
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptOuts
d_scriptOuts_900 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_900
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_scriptOuts_3192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptStructure
d_scriptStructure_902 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268
d_scriptStructure_902
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_384
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sign
d_sign_904 :: Integer -> Integer -> Integer
d_sign_904
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1268 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.size
d_size_906 :: Integer -> Integer
d_size_906
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_size_206
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.stakeCred
d_stakeCred_908 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_908
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sucᵉ
d_suc'7497'_910 :: Integer -> Integer
d_suc'7497'_910
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sumᵛ
d_sum'7515'_912 :: [Integer] -> Integer
d_sum'7515'_912
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_sum'7515'_236
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toData
d_toData_914 :: () -> AgdaAny -> Integer
d_toData_914
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266
            (coe
               MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP1Script
d_toP1Script_916 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_350
d_toP1Script_916
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP2Script
d_toP2Script_918 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_368
d_toP2Script_918
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP2Script_416
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.tokenAlgebra
d_tokenAlgebra_920 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12
d_tokenAlgebra_920
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.treasuryOf
d_treasuryOf_922 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_176 ->
  AgdaAny -> Integer
d_treasuryOf_922 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_184 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txOutHash
d_txOutHash_924 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_924
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3172
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txcertsOf
d_txcertsOf_926 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxcerts_3060 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcertsOf_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcertsOf_3068 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txfeeOf
d_txfeeOf_928 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxfee_3042 ->
  AgdaAny -> Integer
d_txfeeOf_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfeeOf_3050 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidBytes
d_txidBytes_930 :: Integer -> Integer
d_txidBytes_930 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidOf
d_txidOf_932 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxid_3096 ->
  AgdaAny -> Integer
d_txidOf_932 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txidOf_3104 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txinsScript
d_txinsScript_934 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_934
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txinsScript_3200
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txinsVKey
d_txinsVKey_936 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_936
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txinsVKey_3186
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txpropOf
d_txpropOf_938 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxprop_3078 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txpropOf_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txpropOf_3086 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txscripts
d_txscripts_940 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_940
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3256
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.updateGroups
d_updateGroups_942 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_942
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2276
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validP1Script
d_validP1Script_944 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_350 ->
  ()
d_validP1Script_944 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validPlutusScript
d_validPlutusScript_946 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_368 ->
  ()
d_validPlutusScript_946 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.voteDelegsOf
d_voteDelegsOf_948 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_948 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegsOf_1146 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.wdrlsOf
d_wdrlsOf_950 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_950 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1092 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ε
d_ε_952 :: Integer
d_ε_952
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2294
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_954 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_954 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕEpochStructure
d_ℕEpochStructure_956 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_956
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_314
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1238
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕtoEpoch
d_ℕtoEpoch_958 :: Integer -> Integer
d_ℕtoEpoch_958
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.reserves
d_reserves_1006 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160 -> Integer
d_reserves_1006 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_168 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.treasury
d_treasury_1008 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_160 -> Integer
d_treasury_1008 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_166 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.hash
d_hash_1012 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772 ->
  Integer
d_hash_1012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_hash_780 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.url
d_url_1014 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_url_778 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.net
d_net_1018 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> Integer
d_net_1018 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.pay
d_pay_1020 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1020 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.stake
d_stake_1022 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1022 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.attrsSize
d_attrsSize_1026 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1026 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.net
d_net_1028 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_net_1028 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.pay
d_pay_1030 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1030 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.coldCreds
d_coldCreds_1034 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_coldCreds_1034 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_coldCreds_1078 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.epoch
d_epoch_1036 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 -> Integer
d_epoch_1036 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_epoch_1070 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.pp
d_pp_1038 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pp_1038 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pp_1072 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.votes
d_votes_1040 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_votes_1040 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_votes_1074 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.wdrls
d_wdrls_1042 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1058 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1042 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1076 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.dState
d_dState_1046 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100
d_dState_1046 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dState_1224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.gState
d_gState_1048 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184
d_gState_1048 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.pState
d_pState_1050 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_pState_1050 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pState_1226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.rewards
d_rewards_1078 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1078 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_rewards_1112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.stakeDelegs
d_stakeDelegs_1080 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1080 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_stakeDelegs_1110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.voteDelegs
d_voteDelegs_1082 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1082 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegs_1108 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.delegatees
d_delegatees_1086 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1260 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_delegatees_1086 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_delegatees_1272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pools
d_pools_1088 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1260 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1088 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1270 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pparams
d_pparams_1090 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1260 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_pparams_1090 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1268 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P1
d_P1_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1104 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_254 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2a
d_P2a_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1106 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2b
d_P2b_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P3
d_P3_1110 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1110 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_260 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P4
d_P4_1112 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1112 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5a
d_P5a_1114 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1114 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5b
d_P5b_1116 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1116 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5c
d_P5c_1118 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1118 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_268 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5d
d_P5d_1120 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1120 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_270 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P6
d_P6_1122 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1122 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.ccHotKeys
d_ccHotKeys_1126 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1126 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_ccHotKeys_1192 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.dreps
d_dreps_1128 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1128 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dreps_1190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaData
d_gaData_1132 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  AgdaAny
d_gaData_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_808 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaType
d_gaType_1134 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782
d_gaType_1134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_806 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.action
d_action_1138 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800
d_action_1138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_898 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.expiresIn
d_expiresIn_1140 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  Integer
d_expiresIn_1140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_896
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.prevAction
d_prevAction_1142 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  AgdaAny
d_prevAction_1142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_900
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.returnAddr
d_returnAddr_1144 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_1144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_894
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.votes
d_votes_1146 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_892 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1166 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1562 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.UpdateT
d_UpdateT_1168 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 -> ()
d_UpdateT_1168 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.applyUpdate
d_applyUpdate_1170 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppUpd
d_ppUpd_1172 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498
d_ppUpd_1172 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppWF?
d_ppWF'63'_1174 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppdWellFormed
d_ppdWellFormed_1176 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> ()
d_ppdWellFormed_1176 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.updateGroups
d_updateGroups_1178 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1530 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1548 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.action
d_action_1182 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800
d_action_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_868 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.anchor
d_anchor_1184 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772
d_anchor_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_878 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.deposit
d_deposit_1186 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Integer
d_deposit_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_874 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.policy
d_policy_1188 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  Maybe Integer
d_policy_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_872 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.prevAction
d_prevAction_1190 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  AgdaAny
d_prevAction_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_870
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.returnAddr
d_returnAddr_1192 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_876
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.anchor
d_anchor_1204 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_772
d_anchor_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_852 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.gid
d_gid_1206 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_846 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.vote
d_vote_1208 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_828
d_vote_1208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_850 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.voter
d_voter_1210 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_848 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.Anchor
d_Anchor_1214 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1222
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_902
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1224
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_904
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1226
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_908
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1228
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_906
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovAction
d_GovAction_1230 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionData
d_GovActionData_1232 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782 ->
  ()
d_GovActionData_1232 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionID
d_GovActionID_1234 :: ()
d_GovActionID_1234 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionState
d_GovActionState_1236 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionType
d_GovActionType_1238 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovProposal
d_GovProposal_1240 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovRole
d_GovRole_1242 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovVote
d_GovVote_1244 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1246 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1246
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_812
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_1248 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1248
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_910
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1250 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_824
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1252 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1252
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_826
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HashProtected
d_HashProtected_1254 :: () -> ()
d_HashProtected_1254 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.NeedsHash
d_NeedsHash_1258 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782 ->
  ()
d_NeedsHash_1258 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.VDeleg
d_VDeleg_1272 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.Vote
d_Vote_1274 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.Voter
d_Voter_1276 :: ()
d_Voter_1276 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.gaData
d_gaData_1284 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  AgdaAny
d_gaData_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_808 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.gaType
d_gaType_1286 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_782
d_gaType_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_806 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.getDRepVote
d_getDRepVote_1288 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_1288
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_912
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.proposedCC
d_proposedCC_1294 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_800 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_1294
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_916
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptHash
d_psScriptHash_1318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_368 ->
  Integer
d_psScriptHash_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptSize
d_psScriptSize_1320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_368 ->
  Integer
d_psScriptSize_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.timelock
d_timelock_1324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_350 ->
  MAlonzo.Code.Ledger.Conway.Script.Timelock.T_Timelock_96
d_timelock_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptHash
d_tlScriptHash_1326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_350 ->
  Integer
d_tlScriptHash_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptSize
d_tlScriptSize_1328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_350 ->
  Integer
d_tlScriptSize_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState.CertStateOf
d_CertStateOf_1332 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1236 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1216
d_CertStateOf_1332 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential.CredentialOf
d_CredentialOf_1336 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1336 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps.DRepsOf
d_DRepsOf_1340 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_984 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1340 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DRepsOf_992 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState.DStateOf
d_DStateOf_1344 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1120 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_DState_1100
d_DStateOf_1344 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DStateOf_1128 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits.DepositsOf
d_DepositsOf_1348 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1348 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState.GStateOf
d_GStateOf_1352 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1200 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_GState_1184
d_GStateOf_1352 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_GStateOf_1208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1356 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> Integer
d_NetworkIdOf_1356 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams.PParamsOf
d_PParamsOf_1360 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_442 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_PParamsOf_1360 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState.PStateOf
d_PStateOf_1364 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1170 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156
d_PStateOf_1364 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_PStateOf_1178 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards.RewardsOf
d_RewardsOf_1368 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_966 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1368 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_RewardsOf_974 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody.TxBodyOf
d_TxBodyOf_1372 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasTxBody_3024 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_TxBodyOf_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_TxBodyOf_3032 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO.UTxOOf
d_UTxOOf_1376 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2928 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1376 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2936 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVDelegs.voteDelegsOf
d_voteDelegsOf_1380 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_1380 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegsOf_1146 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls.wdrlsOf
d_wdrlsOf_1384 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1084 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_1384 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1092 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_1388 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_478 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_486 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_1392 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_460 ->
  AgdaAny -> Integer
d_govActionDepositOf_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_468
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hasreserves.reservesOf
d_reservesOf_1396 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hasreserves_194 ->
  AgdaAny -> Integer
d_reservesOf_1396 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reservesOf_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastreasury.treasuryOf
d_treasuryOf_1400 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_176 ->
  AgdaAny -> Integer
d_treasuryOf_1400 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_184 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxcerts.txcertsOf
d_txcertsOf_1404 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxcerts_3060 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcertsOf_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcertsOf_3068 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxfee.txfeeOf
d_txfeeOf_1408 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxfee_3042 ->
  AgdaAny -> Integer
d_txfeeOf_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfeeOf_3050 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxid.txidOf
d_txidOf_1412 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxid_3096 ->
  AgdaAny -> Integer
d_txidOf_1412 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txidOf_3104 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxprop.txpropOf
d_txpropOf_1416 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxprop_3078 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txpropOf_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txpropOf_3086 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.homo
d_homo_1420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1420 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1426 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.cong
d_cong_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1428 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.homo
d_homo_1432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1432 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.injective
d_injective_1434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1434 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1438 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1438 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1440 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1440 ~v0 v1 = du_isMagmaMonomorphism_1440 v1
du_isMagmaMonomorphism_1440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1448 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1448 ~v0 v1 = du_isRelIsomorphism_1448 v1
du_isRelIsomorphism_1448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1450 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1450 ~v0 v1 = du_isRelMonomorphism_1450 v1
du_isRelMonomorphism_1450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1450 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.surjective
d_surjective_1452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1454 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.cong
d_cong_1456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1456 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.homo
d_homo_1460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1460 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.injective
d_injective_1462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1462 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1466 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1466 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1470 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1472 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1472 ~v0 v1 = du_isRelMonomorphism_1472 v1
du_isRelMonomorphism_1472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1474 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.cong
d_cong_1476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1476 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1480 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1482 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1484 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.P1Script
d_P1Script_1486 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 -> ()
d_P1Script_1486 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.validP1Script
d_validP1Script_1488 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1488 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.Emax
d_Emax_1504 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_Emax_1504 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_412 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a
d_a_1506 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_a_1506 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_384 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a0
d_a0_1508 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1508 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_416 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.b
d_b_1510 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_b_1510 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_386 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMaxTermLength
d_ccMaxTermLength_1512 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMaxTermLength_1512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMinSize
d_ccMinSize_1514 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_ccMinSize_1514 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1516 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_coinsPerUTxOByte_1516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_396 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.collateralPercentage
d_collateralPercentage_1518 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_collateralPercentage_1518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_418
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.costmdls
d_costmdls_1520 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1520 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_420 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepActivity
d_drepActivity_1522 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepActivity_1522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_436 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepDeposit
d_drepDeposit_1524 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_drepDeposit_1524 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_434 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepThresholds
d_drepThresholds_1526 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_424 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionDeposit
d_govActionDeposit_1528 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionDeposit_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_432 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionLifetime
d_govActionLifetime_1530 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_govActionLifetime_1530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_430 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.keyDeposit
d_keyDeposit_1532 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_keyDeposit_1532 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_388 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockExUnits
d_maxBlockExUnits_1534 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockSize
d_maxBlockSize_1536 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxBlockSize_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxCollateralInputs
d_maxCollateralInputs_1538 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxCollateralInputs_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxHeaderSize
d_maxHeaderSize_1540 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxHeaderSize_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1542 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerBlock_1542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1544 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxRefScriptSizePerTx_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxExUnits
d_maxTxExUnits_1546 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxSize
d_maxTxSize_1548 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxTxSize_1548 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxValSize
d_maxValSize_1550 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_maxValSize_1550 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_378 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1552 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minUTxOValue
d_minUTxOValue_1554 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_minUTxOValue_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_410 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.monetaryExpansion
d_monetaryExpansion_1556 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_392 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.nopt
d_nopt_1558 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_nopt_1558 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolDeposit
d_poolDeposit_1560 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 -> Integer
d_poolDeposit_1560 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_390 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolThresholds
d_poolThresholds_1562 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_422 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.prices
d_prices_1564 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1564 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_398 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.pv
d_pv_1566 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1566 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1568 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostStride
d_refScriptCostStride_1570 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.treasuryCut
d_treasuryCut_1572 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1572 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.UpdateT
d_UpdateT_1576 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 -> ()
d_UpdateT_1576 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.applyUpdate
d_applyUpdate_1578 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyUpdate_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1514 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppWF?
d_ppWF'63'_1580 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1580 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1522 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1582 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> ()
d_ppdWellFormed_1582 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.updateGroups
d_updateGroups_1584 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1498 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_updateGroups_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1516 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate._?↗_
d__'63''8599'__1588 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1588 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1242 v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1590 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1590
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1444
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1572
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1808
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1592 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1594 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_296
d_applyPParamsUpdate_1594
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1290
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1596 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_220]
d_modifiedUpdateGroups_1596
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1226
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1598 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesEconomicGroup_1598
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_922
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1600 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesGovernanceGroup_1600
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1074
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1602 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesNetworkGroup_1602
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_846
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1604 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesSecurityGroup_1604
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1150
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1606 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> Bool
d_modifiesTechnicalGroup_1606
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_998
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1608 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 -> ()
d_paramsUpdateWellFormed_1608 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1610 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1610
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_842
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.≡-update
d_'8801''45'update_1612 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1612 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1256 v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1616 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_Emax_1616 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_736 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a
d_a_1618 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_a_1618 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_706 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a0
d_a0_1620 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1620 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_734 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.b
d_b_1622 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_b_1622 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_708 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1624 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_ccMaxTermLength_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_758 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1626 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_ccMinSize_1626 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_756 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1628 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_coinsPerUTxOByte_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_718 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1630 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_collateralPercentage_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_740
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1632 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1632 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_742 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1634 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_drepActivity_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_754 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1636 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_drepDeposit_1636 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_752 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1638 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_232
d_drepThresholds_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_744 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1640 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_govActionDeposit_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_750 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1642 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_govActionLifetime_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_748 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1644 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_keyDeposit_1644 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_710 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1646 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_702 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1648 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxBlockSize_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_690 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1650 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxCollateralInputs_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_698
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1652 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxHeaderSize_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_694 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1654 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_726
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1656 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_724
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1658 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_700 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1660 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxTxSize_1660 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_692 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1662 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_maxValSize_1662 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_696 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1664 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1666 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_minUTxOValue_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_732 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1668 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_714 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1670 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_nopt_1670 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_738 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1672 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe Integer
d_poolDeposit_1672 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_712 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1674 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274
d_poolThresholds_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_746 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.prices
d_prices_1676 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1676 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_720 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.pv
d_pv_1678 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1678 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_704 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1680 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_730
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1682 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_728
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1684 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_618 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1684 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_716 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.pools
d_pools_1688 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1688 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1162 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.retiring
d_retiring_1690 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1156 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1690 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_retiring_1164 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1694 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1694 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.CostModel
d_CostModel_1696 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_CostModel_1696 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T
d_T_1698 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_T_1698 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.THash
d_THash_1700 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_THash_1700 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dataʰ
d_Data'688'_1702 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Datum
d_Datum_1704 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Datum_1704 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1706 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validPlutusScript_260
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1708 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1710 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1712 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1714 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'LangDepView_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1716 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-T
d_DecEq'45'T_1718 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1718 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1720 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1720 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1722 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnits
d_ExUnits_1724 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_ExUnits_1724 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1726 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.LangDepView
d_LangDepView_1728 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_LangDepView_1728 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Language
d_Language_1730 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Language_1730 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusScript
d_PlutusScript_1732 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_PlutusScript_1732 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV1
d_PlutusV1_1734 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV1_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV2
d_PlutusV2_1736 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV2_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV3
d_PlutusV3_1738 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV3_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Prices
d_Prices_1740 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Prices_1740 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Redeemer
d_Redeemer_1742 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 -> ()
d_Redeemer_1742 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1744 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1746 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-Prices
d_Show'45'Prices_1748 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-THash
d_Show'45'THash_1750 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1750 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-Hashable
d_T'45'Hashable_1752 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1752 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-isHashable
d_T'45'isHashable_1754 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.language
d_language_1756 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny
d_language_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.toData
d_toData_1758 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  () -> AgdaAny -> AgdaAny
d_toData_1758 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.validPlutusScript
d_validPlutusScript_1760 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1760 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.cost
d_cost_1764 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> Integer
d_cost_1764 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_cost_1014 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.margin
d_margin_1766 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1766 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_margin_1016 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.owners
d_owners_1768 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> [Integer]
d_owners_1768 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_owners_1012 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.pledge
d_pledge_1770 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 -> Integer
d_pledge_1770 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pledge_1018 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.rewardAccount
d_rewardAccount_1772 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_1000 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_rewardAccount_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_1020 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q1
d_Q1_1776 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1776 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_286 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2a
d_Q2a_1778 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1778 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_288 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2b
d_Q2b_1780 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1780 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_290 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q4
d_Q4_1782 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1782 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_292 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q5
d_Q5_1784 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1784 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_294 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.net
d_net_1788 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> Integer
d_net_1788 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.stake
d_stake_1790 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1790 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1794 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1794 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.CostModel
d_CostModel_1796 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_CostModel_1796 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T
d_T_1798 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_T_1798 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.THash
d_THash_1800 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_THash_1800 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dataʰ
d_Data'688'_1802 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Datum
d_Datum_1804 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Datum_1804 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1806 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validP1Script_112
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1808 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Dec'45'validPlutusScript_260
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1810 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEQ'45'Prices_230
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1812 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1814 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1816 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'LangDepView_222
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1818 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'Language_218
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1820 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_DecEq'45'P1Script_116
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-T
d_DecEq'45'T_1822 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1822 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1824 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1824 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1826 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_ExUnit'45'CommutativeMonoid_214
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnits
d_ExUnits_1828 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_ExUnits_1828 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1830 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1832 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Hashable'45'PlutusScript_216
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1834 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1834
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_Hashable'45'Script_390
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.LangDepView
d_LangDepView_1836 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_LangDepView_1836 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Language
d_Language_1838 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Language_1838 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.P1Script
d_P1Script_1840 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_P1Script_1840 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusScript
d_PlutusScript_1842 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_PlutusScript_1842 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV1
d_PlutusV1_1844 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny
d_PlutusV1_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV1_208
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV2
d_PlutusV2_1846 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny
d_PlutusV2_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV2_210
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV3
d_PlutusV3_1848 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny
d_PlutusV3_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_PlutusV3_212
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Prices
d_Prices_1850 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Prices_1850 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Redeemer
d_Redeemer_1852 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Redeemer_1852 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Script
d_Script_1854 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 -> ()
d_Script_1854 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1856 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'CostModel_224
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1858 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'ExUnits_232
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-Prices
d_Show'45'Prices_1860 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_Show'45'Prices_234
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-THash
d_Show'45'THash_1862 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1862 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-Hashable
d_T'45'Hashable_1864 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1864 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
              (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-isHashable
d_T'45'isHashable_1866 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.Base.d_Data'688'_194
         (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1868 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_hashRespectsUnion_314
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isNativeScript
d_isNativeScript_1870 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1870 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script
d_isP1Script_1872 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1872 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script?
d_isP1Script'63'_1874 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1874 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_isP1Script'63'_396 v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script
d_isP2Script_1876 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1876 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script?
d_isP2Script'63'_1878 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1878 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.du_isP2Script'63'_410 v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.language
d_language_1880 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny -> AgdaAny
d_language_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_language_262
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.p1s
d_p1s_1882 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_P1ScriptStructure_96
d_p1s_1882 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.d_p1s_294 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ps
d_ps_1884 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Ledger.Conway.Script.Base.T_PlutusStructure_118
d_ps_1884 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toData
d_toData_1886 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  () -> AgdaAny -> AgdaAny
d_toData_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.Base.d_toData_266
      (coe MAlonzo.Code.Ledger.Conway.Script.Base.d_ps_316 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP1Script
d_toP1Script_1888 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_1888 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP1Script_404
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP2Script
d_toP2Script_1890 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_1890 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.Base.du_toP2Script_416
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validP1Script
d_validP1Script_1892 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1892 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validPlutusScript
d_validPlutusScript_1894 ::
  MAlonzo.Code.Ledger.Conway.Script.Base.T_ScriptStructure_268 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1894 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._∙_
d__'8729'__1912 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1912 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≈_
d__'8776'__1914 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1914 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1916 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1916 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1918 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Dec'45''8804''7511'_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1920 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_DecEq'45'Value_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1922 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1924 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1926 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value
d_Value_1928 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  ()
d_Value_1928 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1930 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.addValue
d_addValue_1932 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1932
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_addValue_218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin
d_coin_1934 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1936 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1936 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1938 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_212
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1940 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1940 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.inject
d_inject_1942 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.monoid
d_monoid_1944 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1944 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.policies
d_policies_1946 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> [Integer]
d_policies_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_policies_204
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.rawMonoid
d_rawMonoid_1948 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1948 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.size
d_size_1950 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.sumᵛ
d_sum'7515'_1952 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1952
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.du_sum'7515'_236
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.ε
d_ε_1954 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  AgdaAny
d_ε_1954 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1958 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1962 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1964 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1966 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1970 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1972 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1972 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1974 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1976 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1976 ~v0 = du_isMagmaIsomorphism_1976
du_isMagmaIsomorphism_1976 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1976 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1978 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1978 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1978 v2
du_isMagmaMonomorphism_1978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1978 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1980 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1982 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1984 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1984 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1986 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1986 ~v0 ~v1 v2 = du_isRelIsomorphism_1986 v2
du_isRelIsomorphism_1986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1986 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1988 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1988 ~v0 ~v1 v2 = du_isRelMonomorphism_1988 v2
du_isRelMonomorphism_1988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1988 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_1990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1990 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1992 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1994 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1998 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1998 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2000 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2000 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2002 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_2002 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2004 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_2004 ~v0 = du_isMagmaMonomorphism_2004
du_isMagmaMonomorphism_2004 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_2004 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2006 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_2006 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2008 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2008 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2010 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.Base.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2010 ~v0 ~v1 v2 = du_isRelMonomorphism_2010 v2
du_isRelMonomorphism_2010 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2010 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2012 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2012 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2014 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2014 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.body
d_body_2018 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942
d_body_2018 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3142 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.isValid
d_isValid_2020 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Bool
d_isValid_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3148 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txAD
d_txAD_2022 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Maybe Integer
d_txAD_2022 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3150 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txsize
d_txsize_2024 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 -> Integer
d_txsize_2024 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3146 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.wits
d_wits_2026 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3130 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110
d_wits_2026 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3144 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.collateral
d_collateral_2030 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3014 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.curTreasury
d_curTreasury_2032 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_curTreasury_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3010 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.mint
d_mint_2034 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_mint_2034 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_2990 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.refInputs
d_refInputs_2036 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_2984 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.reqSigHash
d_reqSigHash_2038 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> [Integer]
d_reqSigHash_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3016 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.scriptIntHash
d_scriptIntHash_2040 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_scriptIntHash_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3018
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txADhash
d_txADhash_2042 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_txADhash_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3006 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txNetworkId
d_txNetworkId_2044 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe Integer
d_txNetworkId_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3008 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txcerts
d_txcerts_2046 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1022]
d_txcerts_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_2994 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txdonation
d_txdonation_2048 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txdonation_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3002 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txfee
d_txfee_2050 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txfee_2050 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_2988 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txid
d_txid_2052 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 -> Integer
d_txid_2052 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3012 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txins
d_txins_2054 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2054 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_2982 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txouts
d_txouts_2056 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2056 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_2986 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txprop
d_txprop_2058 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_854]
d_txprop_2058 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3000 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txup
d_txup_2060 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2060 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3004 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txvldt
d_txvldt_2062 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2062 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_2992 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txvote
d_txvote_2064 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_836]
d_txvote_2064 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_2998 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txwdrls
d_txwdrls_2066 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2942 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_2996 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scripts
d_scripts_2070 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3122 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scriptsP1
d_scriptsP1_2072 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_350]
d_scriptsP1_2072
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_scriptsP1_3128
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txdats
d_txdats_2074 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110 ->
  [Integer]
d_txdats_2074 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3124 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txrdmrs
d_txrdmrs_2076 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3126 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.vkSigs
d_vkSigs_2078 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3110 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2078 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3120 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERT
d_Computational'45'CERT_2114 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2114
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1834
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTBASE
d_Computational'45'CERTBASE_2116 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2116
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_2142
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTS
d_Computational'45'CERTS_2118 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2118
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2322
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-DELEG
d_Computational'45'DELEG_2120 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_2120
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'DELEG_1330
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-GOVCERT
d_Computational'45'GOVCERT_2122 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_2122
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'GOVCERT_1558
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-POOL
d_Computational'45'POOL_2124 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_2124
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'POOL_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupDeposit
d_lookupDeposit_2126 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_928 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_2126
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_lookupDeposit_1322
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2404
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-UnitInterval
d_HsTy'45'UnitInterval_2128 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UnitInterval_2128 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-UnitInterval
d_Conv'45'UnitInterval_2130 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UnitInterval_2130
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Foreign.Convertible.d_to_18
              (coe
                 MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                 (coe
                    (\ v1 ->
                       case coe v1 of
                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
                           -> coe
                                MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 (coe v2)
                                (coe addInt (coe (1 :: Integer)) (coe v3))
                         _ -> MAlonzo.RTE.mazUnreachableError))
                 (coe
                    (\ v1 ->
                       case coe v1 of
                         MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v2 v3
                           -> case coe v3 of
                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                _ -> coe
                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v2)
                                       (coe v3)
                         _ -> MAlonzo.RTE.mazUnreachableError)))
              (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_74
                 (coe v0))))
      (coe
         (\ v0 ->
            let v1
                  = MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_toUnitInterval_76
                      (coe
                         MAlonzo.Code.Foreign.Convertible.d_from_20
                         (coe
                            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                            (coe
                               (\ v1 ->
                                  case coe v1 of
                                    MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
                                      -> coe
                                           MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12
                                           (coe v2) (coe addInt (coe (1 :: Integer)) (coe v3))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                            (coe
                               (\ v1 ->
                                  case coe v1 of
                                    MAlonzo.Code.Ledger.Conway.Foreign.HSTypes.C__'44'__12 v2 v3
                                      -> case coe v3 of
                                           0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                           _ -> coe
                                                  MAlonzo.Code.Data.Rational.Base.du__'47'__156
                                                  (coe v2) (coe v3)
                                    _ -> MAlonzo.RTE.mazUnreachableError)))
                         v0) in
            coe
              (case coe v1 of
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                   -> coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
                        ("Formal Spec: rational outside of unit interval"
                         ::
                         Data.Text.Text)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-PosNat
d_HsTy'45'PosNat_2140 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PosNat_2140 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-PosNat
d_Conv'45'PosNat_2142 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PosNat_2142
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat.d_fromPosNat_18
              (coe v0)))
      (coe
         (\ v0 ->
            let v1
                  = MAlonzo.Code.Ledger.Conway.Types.Numeric.PositiveNat.d_toPosNat_20
                      (coe v0) in
            coe
              (case coe v1 of
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                   -> coe
                        MAlonzo.Code.Ledger.Conway.Foreign.Util.d_error_10 erased
                        ("Formal Spec: natural number is zero (not nonZero)"
                         ::
                         Data.Text.Text)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
