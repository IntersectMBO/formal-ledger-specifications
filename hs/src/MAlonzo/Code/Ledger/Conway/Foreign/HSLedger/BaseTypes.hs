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
import qualified MAlonzo.Code.Ledger.Conway.Script
import qualified MAlonzo.Code.Ledger.Conway.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Types.GovStructure
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'__78
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._+ᵉ'_
d__'43''7497'''__94 :: Integer -> Integer -> Integer
d__'43''7497'''__94
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d__'43''7497'''__80
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._∙_
d__'8729'__96 :: Integer -> Integer -> Integer
d__'8729'__96
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
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
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1036 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1194 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000] ->
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1194 -> ()
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ActiveSlotCoeff_290
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
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
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1214 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1194
d_CertStateOf_148 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1222 (coe v0)
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
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_962 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_174 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DRepsOf_970 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState
d_DState_176 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DStateOf
d_DStateOf_178 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1098 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_DState_1078
d_DStateOf_178 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DStateOf_1106 (coe v0)
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Datum
d_Datum_186 :: ()
d_Datum_186 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-evalTimelock
d_Dec'45'evalTimelock_188 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Script.T_Timelock_266 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_188
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'evalTimelock_324
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1) in
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
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_196
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_198 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_198
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEQ-Prices
d_DecEQ'45'Prices_202 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_202
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_204 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_204
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BaseAddr_236
            (coe
               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_206
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'BootstrapAddr_238
            (coe
               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-CostModel
d_DecEq'45'CostModel_208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_208
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Credential
d_DecEq'45'Credential_210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_210
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'Credential_188
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_212 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_212
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_DecEq'45'DepositPurpose_976
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_214
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'DrepThresholds_578
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Epoch
d_DecEq'45'Epoch_216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_216
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Epoch_60
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ExUnits
d_DecEq'45'ExUnits_218 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_218
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovActionType
d_DecEq'45'GovActionType_220 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_220
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_880
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovRole
d_DecEq'45'GovRole_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_222
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_224 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_224
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_352
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
         MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'Ix_1244
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-LangDepView
d_DecEq'45'LangDepView_228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_228
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Language
d_DecEq'45'Language_230 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_230
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Netw
d_DecEq'45'Netw_232 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_232
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-P1Script
d_DecEq'45'P1Script_234 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_234
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_236
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamGroup_584
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParams
d_DecEq'45'PParams_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_238
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParams_582
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_240
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PoolThresholds_580
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_242
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Address.du_DecEq'45'RwdAddr_240
            (coe
               MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Netw_282
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_244 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_244
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'ScriptHash_206
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ser
d_DecEq'45'Ser_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_246
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1) in
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1) in
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecEq'45'Slot_68
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_252
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1248
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_254 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_254
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1248
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_258
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1) in
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
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
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Timelock_280
            (coe MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-TxId
d_DecEq'45'TxId_264 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_264
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_DecEq'45'TxId_1246
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-UpdT
d_DecEq'45'UpdT_266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_266
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2324 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-VDeleg
d_DecEq'45'VDeleg_268 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_268
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Value
d_DecEq'45'Value_270 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_270
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Vote
d_DecEq'45'Vote_272 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_272
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_884
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecPo-Slot
d_DecPo'45'Slot_274 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_256
d_DecPo'45'Slot_274
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_DecPo'45'Slot_66
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
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
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_926 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_282 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_934 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds
d_DrepThresholds_284 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSAbstractFunctions
d_HSAbstractFunctions_286 ::
  MAlonzo.Code.Ledger.Conway.Abstract.T_AbstractFunctions_1984
d_HSAbstractFunctions_286
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2676
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTransactionStructure
d_HSTransactionStructure_288 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TransactionStructure_22
d_HSTransactionStructure_288
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnits
d_ExUnits_296 :: ()
d_ExUnits_296 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState
d_GState_304 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GStateOf
d_GStateOf_306 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1178 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_GState_1162
d_GStateOf_306 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_GStateOf_1186 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction
d_GovAction_308 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionData
d_GovActionData_310 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
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
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
d_HSScriptStructure_340
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_308
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock
d_HSTimelock_342 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-Acnt
d_HasCast'45'Acnt_344 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_344
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_HasCast'45'Acnt_186
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertEnv
d_HasCast'45'CertEnv_346 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_346
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertEnv_1264
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertState
d_HasCast'45'CertState_348 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_348
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'CertState_1272
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DState
d_HasCast'45'DState_350 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_350
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'DState_1266
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_352 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_352
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'DelegEnv_1274
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GState
d_HasCast'45'GState_354 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_354
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'GState_1270
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_356 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_356
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_790
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovVote
d_HasCast'45'GovVote_358 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_358
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_888
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected
d_HasCast'45'HashProtected_360 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_802
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_362 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_362
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_804
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-PState
d_HasCast'45'PState_364 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_364
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasCast'45'PState_1268
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
         MAlonzo.Code.Ledger.Conway.Certs.d_HasCoin'45'CertState_1262
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-TxOut
d_HasCoin'45'TxOut_370 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_370
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_HasCoin'45'TxOut_3340
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
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
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_962
d_HasDReps'45'CertState_378
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasDReps'45'CertState_1236
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-GState
d_HasDReps'45'GState_380 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_962
d_HasDReps'45'GState_380
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasDReps'45'GState_1192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState
d_HasDState_382 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState-CertState
d_HasDState'45'CertState_384 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1098
d_HasDState'45'CertState_384
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasDState'45'CertState_1228
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits
d_HasDeposits_386 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState
d_HasGState_388 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState-CertState
d_HasGState'45'CertState_390 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1178
d_HasGState'45'CertState_390
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasGState'45'CertState_1232
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
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1148
d_HasPState'45'CertState_404
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasPState'45'CertState_1230
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards
d_HasRewards_406 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-CertState
d_HasRewards'45'CertState_408 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_944
d_HasRewards'45'CertState_408
  = coe
      MAlonzo.Code.Ledger.Conway.Certs.du_HasRewards'45'CertState_1234
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-DState
d_HasRewards'45'DState_410 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_944
d_HasRewards'45'DState_410
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasRewards'45'DState_1132
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody
d_HasTxBody_412 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody-Tx
d_HasTxBody'45'Tx_414 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasTxBody_3076
d_HasTxBody'45'Tx_414
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_HasTxBody'45'Tx_3200
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO
d_HasUTxO_416 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVDelegs
d_HasVDelegs_418 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVDelegs-DState
d_HasVDelegs'45'DState_420 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1116
d_HasVDelegs'45'DState_420
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasVDelegs'45'DState_1130
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls
d_HasWdrls_422 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls-CertEnv
d_HasWdrls'45'CertEnv_424 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062
d_HasWdrls'45'CertEnv_424
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_HasWdrls'45'CertEnv_1076
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls-Tx
d_HasWdrls'45'Tx_426 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062
d_HasWdrls'45'Tx_426
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_HasWdrls'45'Tx_3210
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls-TxBody
d_HasWdrls'45'TxBody_428 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062
d_HasWdrls'45'TxBody_428
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_HasWdrls'45'TxBody_3208
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasccMaxTermLength
d_HasccMaxTermLength_430 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasgovActionDeposit
d_HasgovActionDeposit_432 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasgovActionDeposit-PParams
d_HasgovActionDeposit'45'PParams_434 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428
d_HasgovActionDeposit'45'PParams_434
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_HasgovActionDeposit'45'PParams_460
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HashProtected
d_HashProtected_436 :: () -> ()
d_HashProtected_436 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_438 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSPlutusScript_438
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_366
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_440 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSTimelock_440
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_350
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-P1Script
d_Hashable'45'P1Script_442 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_442
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_444 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_444
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-Script
d_Hashable'45'Script_446 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_446
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastreasury
d_Hastreasury_448 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxcerts
d_Hastxcerts_450 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxcerts-Tx
d_Hastxcerts'45'Tx_452 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxcerts_3112
d_Hastxcerts'45'Tx_452
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxcerts'45'Tx_3204
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxfee
d_Hastxfee_454 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxfee-Tx
d_Hastxfee'45'Tx_456 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxfee_3094
d_Hastxfee'45'Tx_456
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxfee'45'Tx_3202
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxid
d_Hastxid_458 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxid-Tx
d_Hastxid'45'Tx_460 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxid_3148
d_Hastxid'45'Tx_460
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxid'45'Tx_3212
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxprop
d_Hastxprop_462 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxprop-Tx
d_Hastxprop'45'Tx_464 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxprop_3130
d_Hastxprop'45'Tx_464
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.du_Hastxprop'45'Tx_3206
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HsGovParams
d_HsGovParams_466 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506
d_HsGovParams_466
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_650
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_472 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_474 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_476 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ix
d_Ix_478 :: ()
d_Ix_478 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_480 :: ()
d_THash_480 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.KeyPair
d_KeyPair_484 :: ()
d_KeyPair_484 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.LangDepView
d_LangDepView_486 :: ()
d_LangDepView_486 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Language
d_Language_488 :: ()
d_Language_488 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MemoryEstimate
d_MemoryEstimate_490 :: ()
d_MemoryEstimate_490 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NeedsHash
d_NeedsHash_494 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  ()
d_NeedsHash_494 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Network
d_Network_496 :: ()
d_Network_496 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkId
d_NetworkId_500 :: Integer
d_NetworkId_500
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NetworkId_298
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkIdOf
d_NetworkIdOf_502 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> Integer
d_NetworkIdOf_502 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_508 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_508
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'ActiveSlotCoeff_292
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_510 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_510
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_288
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Number-Epoch
d_Number'45'Epoch_512 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_512
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Number'45'Epoch_254
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1Script
d_P1Script_514 :: ()
d_P1Script_514 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure
d_P1ScriptStructure_516 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_518 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_P1ScriptStructure'45'HTL_518
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_368
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusScript
d_PlutusScript_520 :: ()
d_PlutusScript_520 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamGroup
d_PParamGroup_526 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams
d_PParams_528 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff
d_PParamsDiff_530 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsOf
d_PParamsOf_532 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_532 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UpdateT
d_UpdateT_534 :: ()
d_UpdateT_534 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState
d_PState_536 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PStateOf
d_PStateOf_538 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1148 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_PState_1134
d_PStateOf_538 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_PStateOf_1156 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure
d_PlutusStructure_540 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV1
d_PlutusV1_542 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_542
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV2
d_PlutusV2_544 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_544
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV3
d_PlutusV3_546 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_546
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolEnv
d_PoolEnv_550 :: ()
d_PoolEnv_550 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams
d_PoolParams_552 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds
d_PoolThresholds_554 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Prices
d_Prices_556 :: ()
d_Prices_556 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProposedPPUpdates
d_ProposedPPUpdates_558 :: ()
d_ProposedPPUpdates_558 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProtVer
d_ProtVer_560 :: ()
d_ProtVer_560 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Quorum
d_Quorum_562 :: Integer
d_Quorum_562
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Quorum_296
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RdmrPtr
d_RdmrPtr_564 :: ()
d_RdmrPtr_564 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Redeemer
d_Redeemer_566 :: ()
d_Redeemer_566 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Rewards
d_Rewards_580 :: ()
d_Rewards_580 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardsOf
d_RewardsOf_582 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_944 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_582 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_RewardsOf_952 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr
d_RwdAddr_584 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SKey
d_SKey_588 :: ()
d_SKey_588 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Script
d_Script_592 :: ()
d_Script_592 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptAddr
d_ScriptAddr_594 :: ()
d_ScriptAddr_594 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBaseAddr
d_ScriptBaseAddr_596 :: ()
d_ScriptBaseAddr_596 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_598 :: ()
d_ScriptBootstrapAddr_598 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptHash
d_ScriptHash_600 :: ()
d_ScriptHash_600 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure
d_ScriptStructure_604 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ser
d_Ser_608 :: ()
d_Ser_608 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-CostModel
d_Show'45'CostModel_610 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_610
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential
d_Show'45'Credential_612 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_612 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential_252 v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_614 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_614 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Address.du_Show'45'Credential'215'Coin_256
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-DrepThresholds
d_Show'45'DrepThresholds_616 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_616
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'DrepThresholds_586
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Epoch
d_Show'45'Epoch_618 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_618
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Epoch_62
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ExUnits
d_Show'45'ExUnits_620 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_620
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Network
d_Show'45'Network_622 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_622
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Show'45'Network_284
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PParams
d_Show'45'PParams_624 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_624
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PParams_590
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PoolThresholds
d_Show'45'PoolThresholds_626 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_626
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_Show'45'PoolThresholds_588
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Prices
d_Show'45'Prices_628 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_628
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ProtVer
d_Show'45'ProtVer_630 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_630
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-RwdAddr
d_Show'45'RwdAddr_632 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_632
  = coe MAlonzo.Code.Ledger.Conway.Address.du_Show'45'RwdAddr_254
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ScriptHash
d_Show'45'ScriptHash_634 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_634
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_636 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_636
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1248
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_638 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_638
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_640 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_640
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Sig
d_Sig_642 :: ()
d_Sig_642 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slot
d_Slot_644 :: ()
d_Slot_644 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_646 :: Integer
d_SlotsPerEpoch'7580'_646
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_SlotsPerEpoch'7580'_286
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slotʳ
d_Slot'691'_648 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2304
d_Slot'691'_648
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_Slot'691'_56
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindow
d_StabilityWindow_650 :: Integer
d_StabilityWindow_650
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow_74
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindowᶜ
d_StabilityWindow'7580'_652 :: Integer
d_StabilityWindow'7580'_652
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_StabilityWindow'7580'_294
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_654 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_654
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_adHashingScheme_1248
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_656 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_656
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_658 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_658
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
                    (coe
                       MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-isHashable
d_T'45'isHashable_660 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_660
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
               (coe
                  MAlonzo.Code.Ledger.Conway.Script.d_ps_450
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Timelock
d_Timelock_664 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra
d_TokenAlgebra_666 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx
d_Tx_672 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody
d_TxBody_674 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBodyOf
d_TxBodyOf_676 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasTxBody_3076 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_TxBodyOf_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_TxBodyOf_3084 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxId
d_TxId_678 :: ()
d_TxId_678 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIn
d_TxIn_680 :: ()
d_TxIn_680 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOut
d_TxOut_682 :: ()
d_TxOut_682 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOutʰ
d_TxOut'688'_684 :: ()
d_TxOut'688'_684 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses
d_TxWitnesses_686 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxO
d_UTxO_688 :: ()
d_UTxO_688 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxOOf
d_UTxOOf_690 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2976 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_690 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2984 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Update
d_Update_692 :: ()
d_Update_692 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VDeleg
d_VDeleg_696 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKey
d_VKey_698 :: ()
d_VKey_698 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyAddr
d_VKeyAddr_700 :: ()
d_VKeyAddr_700 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBaseAddr
d_VKeyBaseAddr_702 :: ()
d_VKeyBaseAddr_702 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_704 :: ()
d_VKeyBootstrapAddr_704 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value
d_Value_708 :: ()
d_Value_708 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_710 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_710
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Voter
d_Voter_712 :: ()
d_Voter_712 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Wdrl
d_Wdrl_714 :: ()
d_Wdrl_714 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.adHashingScheme
d_adHashingScheme_718 ::
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_adHashingScheme_718
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addEpoch
d_addEpoch_720 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_720
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addEpoch_248
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addSlot
d_addSlot_722 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_722
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_addSlot_246
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addValue
d_addValue_724 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_724
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.applyUpdate
d_applyUpdate_726 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_726
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2324
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ccMaxTermLengthOf
d_ccMaxTermLengthOf_732 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin
d_coin_736 :: Integer -> Integer
d_coin_736
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin-inject-lemma
d_coin'45'inject'45'lemma_738 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_738 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_740
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin∘inject≗id
d_coin'8728'inject'8791'id_742 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_742 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.crypto
d_crypto_746 :: MAlonzo.Code.Ledger.Conway.Crypto.T_Crypto_136
d_crypto_746
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCrypto_16
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cwitness
d_cwitness_748 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_cwitness_748
  = coe MAlonzo.Code.Ledger.Conway.Certs.du_cwitness_1018
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epoch
d_epoch_756 :: Integer -> Integer
d_epoch_756
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_epoch_70
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epochStructure
d_epochStructure_758 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_epochStructure_758
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.evalTimelock
d_evalTimelock_772 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.firstSlot
d_firstSlot_774 :: Integer -> Integer
d_firstSlot_774
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_firstSlot_72
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaData
d_gaData_776 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny
d_gaData_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_786 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaType
d_gaType_778 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760
d_gaType_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getDRepVote
d_getDRepVote_780 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_780
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_890
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getScriptHash
d_getScriptHash_782 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_isScript_62 -> Integer
d_getScriptHash_782
  = coe MAlonzo.Code.Ledger.Conway.Address.du_getScriptHash_230
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValue
d_getValue_784 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_784
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue_3214
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValueʰ
d_getValue'688'_786 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_786
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_getValue'688'_3230
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.globalConstants
d_globalConstants_788 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_GlobalConstants_258
d_globalConstants_788
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govActionDepositOf
d_govActionDepositOf_790 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govParams
d_govParams_792 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506
d_govParams_792
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_650
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govStructure
d_govStructure_794 ::
  MAlonzo.Code.Ledger.Conway.Types.GovStructure.T_GovStructure_8
d_govStructure_794
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.hashRespectsUnion
d_hashRespectsUnion_796 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_796
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.inject
d_inject_798 :: Integer -> Integer
d_inject_798
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr
d_isBootstrapAddr_800 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr?
d_isBootstrapAddr'63'_802 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_802
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isBootstrapAddr'63'_184
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHash
d_isKeyHash_804 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> ()
d_isKeyHash_804 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObj
d_isKeyHashObj_806 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe Integer
d_isKeyHashObj_806
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj_42
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_808 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Bool
d_isKeyHashObj'7495'_808
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isKeyHashObj'7495'_46
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyPair
d_isKeyPair_810 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_810 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script
d_isP2Script_812 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_812 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script?
d_isP2Script'63'_814 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_814
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_isP2Script'63'_3334
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScript
d_isScript_816 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptAddr
d_isScriptAddr_818 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_818 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptObj
d_isScriptObj_820 ::
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18 -> Maybe Integer
d_isScriptObj_820
  = coe MAlonzo.Code.Ledger.Conway.Address.du_isScriptObj_52
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptRwdAddr
d_isScriptRwdAddr_822 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> ()
d_isScriptRwdAddr_822 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned
d_isSigned_824 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_824 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned-correct
d_isSigned'45'correct_826 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_826 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKey
d_isVKey_828 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKeyAddr
d_isVKeyAddr_830 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_830 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.khs
d_khs_832 :: MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_khs_832
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_khs_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.language
d_language_834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_834
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_language_260
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupScriptHash
d_lookupScriptHash_836 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_836
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_lookupScriptHash_3316
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.monoid
d_monoid_838 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_838
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1036
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.netId
d_netId_840 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_840 = coe MAlonzo.Code.Ledger.Conway.Address.du_netId_158
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.p1s
d_p1s_844 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_844
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWF-elim
d_paramsWF'45'elim_846 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_846 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_paramsWF'45'elim_550 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWellFormed
d_paramsWellFormed_848 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> ()
d_paramsWellFormed_848 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.payCred
d_payCred_850 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_payCred_850
  = coe MAlonzo.Code.Ledger.Conway.Address.du_payCred_154
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pkk
d_pkk_852 :: MAlonzo.Code.Ledger.Conway.Crypto.T_PKKScheme_58
d_pkk_852
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.policies
d_policies_854 :: Integer -> [Integer]
d_policies_854
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.positivePParams
d_positivePParams_856 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> [Integer]
d_positivePParams_856
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_positivePParams_462
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppUpd
d_ppUpd_858 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_858
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2324 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppWF?
d_ppWF'63'_860 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_860
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2324
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppdWellFormed
d_ppdWellFormed_862 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> ()
d_ppdWellFormed_862 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.preoEpoch
d_preoEpoch_864 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_864
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_preoEpoch_88
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.proposedCC
d_proposedCC_866 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_866
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_894
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ps
d_ps_868 :: MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_868
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow
d_pvCanFollow_870 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow?
d_pvCanFollow'63'_872 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_872
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_pvCanFollow'63'_1426
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rawMonoid
d_rawMonoid_874 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_874
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                    (coe
                       MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                       (coe
                          MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.refScriptCostStride>0
d_refScriptCostStride'62'0_876 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_876 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_refScriptCostStride'62'0_572
      v0
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.refScripts
d_refScripts_878 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_878
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_refScripts_3254
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rewardsBalance
d_rewardsBalance_888 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1078 -> Integer
d_rewardsBalance_888
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Certs.d_rewardsBalance_1256
         (coe
            MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptOuts
d_scriptOuts_890 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_890
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_scriptOuts_3240
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptStructure
d_scriptStructure_892 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402
d_scriptStructure_892
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_308
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sign
d_sign_894 :: Integer -> Integer -> Integer
d_sign_894
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Transaction.d_crypto_1290 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Crypto.d_sign_110
               (coe MAlonzo.Code.Ledger.Conway.Crypto.d_pkk_174 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.size
d_size_896 :: Integer -> Integer
d_size_896
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.stakeCred
d_stakeCred_898 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stakeCred_898
  = coe MAlonzo.Code.Ledger.Conway.Address.du_stakeCred_156
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sucᵉ
d_suc'7497'_900 :: Integer -> Integer
d_suc'7497'_900
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_suc'7497'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sumᵛ
d_sum'7515'_902 :: [Integer] -> Integer
d_sum'7515'_902
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toData
d_toData_904 :: () -> AgdaAny -> Integer
d_toData_904
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Script.d_toData_264
            (coe
               MAlonzo.Code.Ledger.Conway.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.tokenAlgebra
d_tokenAlgebra_906 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10
d_tokenAlgebra_906
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.treasuryOf
d_treasuryOf_908 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_908 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txOutHash
d_txOutHash_910 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_910
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txOutHash_3220
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txcertsOf
d_txcertsOf_912 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxcerts_3112 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcertsOf_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcertsOf_3120 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txfeeOf
d_txfeeOf_914 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxfee_3094 ->
  AgdaAny -> Integer
d_txfeeOf_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfeeOf_3102 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidBytes
d_txidBytes_916 :: Integer -> Integer
d_txidBytes_916 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidOf
d_txidOf_918 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxid_3148 ->
  AgdaAny -> Integer
d_txidOf_918 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txidOf_3156 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txinsScript
d_txinsScript_920 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_920
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txinsScript_3248
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txinsVKey
d_txinsVKey_922 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_922
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txinsVKey_3234
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txpropOf
d_txpropOf_924 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxprop_3130 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txpropOf_924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txpropOf_3138 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txscripts
d_txscripts_926 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_926
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_txscripts_3306
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.updateGroups
d_updateGroups_928 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_928
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
            (coe
               MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524
               (coe
                  MAlonzo.Code.Ledger.Conway.Transaction.d_govParams_2324
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validP1Script
d_validP1Script_930 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  ()
d_validP1Script_930 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validPlutusScript
d_validPlutusScript_932 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  ()
d_validPlutusScript_932 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.voteDelegsOf
d_voteDelegsOf_934 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_934 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegsOf_1124 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.wdrlsOf
d_wdrlsOf_936 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_936 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1070 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ε
d_ε_938 :: Integer
d_ε_938
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                  (coe
                     MAlonzo.Code.Ledger.Conway.Transaction.d_tokenAlgebra_2342
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_940 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_940 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕEpochStructure
d_ℕEpochStructure_942 ::
  MAlonzo.Code.Ledger.Conway.Types.Epoch.T_EpochStructure_22
d_ℕEpochStructure_942
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕEpochStructure_312
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_globalConstants_1262
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕtoEpoch
d_ℕtoEpoch_944 :: Integer -> Integer
d_ℕtoEpoch_944
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Types.Epoch.d_ℕtoEpoch_242
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.reserves
d_reserves_992 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_reserves_992 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.treasury
d_treasury_994 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Acnt_146 -> Integer
d_treasury_994 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.hash
d_hash_998 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750 ->
  Integer
d_hash_998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_hash_758 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.url
d_url_1000 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_url_756 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.net
d_net_1004 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 -> Integer
d_net_1004 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_76 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.pay
d_pay_1006 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1006 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_78 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.stake
d_stake_1008 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BaseAddr_68 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1008 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.attrsSize
d_attrsSize_1012 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_attrsSize_1012 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_attrsSize_94 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.net
d_net_1014 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 -> Integer
d_net_1014 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_90 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.pay
d_pay_1016 ::
  MAlonzo.Code.Ledger.Conway.Address.T_BootstrapAddr_82 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_pay_1016 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_pay_92 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.coldCreds
d_coldCreds_1020 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1036 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_coldCreds_1020 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_coldCreds_1056 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.epoch
d_epoch_1022 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1036 -> Integer
d_epoch_1022 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_epoch_1048 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.pp
d_pp_1024 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1036 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pp_1024 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pp_1050 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.votes
d_votes_1026 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1036 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
d_votes_1026 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_votes_1052 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.wdrls
d_wdrls_1028 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertEnv_1036 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1028 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrls_1054 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.dState
d_dState_1032 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1194 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1078
d_dState_1032 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dState_1202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.gState
d_gState_1034 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1194 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1162
d_gState_1034 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_gState_1206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.pState
d_pState_1036 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1194 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1134
d_pState_1036 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pState_1204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.rewards
d_rewards_1064 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1078 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1064 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_rewards_1090 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.stakeDelegs
d_stakeDelegs_1066 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1078 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1066 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_stakeDelegs_1088 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.voteDelegs
d_voteDelegs_1068 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DState_1078 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1068 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegs_1086 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.delegatees
d_delegatees_1072 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1238 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_delegatees_1072 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_delegatees_1250 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pools
d_pools_1074 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1238 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1074 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1248 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pparams
d_pparams_1076 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_DelegEnv_1238 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_pparams_1076 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pparams_1246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P1
d_P1_1090 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1090 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P1_222 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2a
d_P2a_1092 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1092 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2a_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2b
d_P2b_1094 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1094 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P2b_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P3
d_P3_1096 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1096 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P3_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P4
d_P4_1098 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1098 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P4_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5a
d_P5a_1100 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1100 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5a_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5b
d_P5b_1102 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1102 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5b_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5c
d_P5c_1104 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1104 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5c_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5d
d_P5d_1106 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1106 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P5d_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P6
d_P6_1108 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1108 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_P6_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.ccHotKeys
d_ccHotKeys_1112 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1112 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_ccHotKeys_1170 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.dreps
d_dreps_1114 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_GState_1162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1114 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_dreps_1168 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaData
d_gaData_1118 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny
d_gaData_1118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_786 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaType
d_gaType_1120 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760
d_gaType_1120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.action
d_action_1124 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_1124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_876 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.expiresIn
d_expiresIn_1126 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  Integer
d_expiresIn_1126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_expiresIn_874
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.prevAction
d_prevAction_1128 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  AgdaAny
d_prevAction_1128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_878
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.returnAddr
d_returnAddr_1130 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_1130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_872
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.votes
d_votes_1132 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionState_858 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_votes_870 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1152 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_DecEq'45'UpdT_1538 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.UpdateT
d_UpdateT_1154 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 -> ()
d_UpdateT_1154 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.applyUpdate
d_applyUpdate_1156 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_1156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppUpd
d_ppUpd_1158 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474
d_ppUpd_1158 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppWF?
d_ppWF'63'_1160 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppdWellFormed
d_ppdWellFormed_1162 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> ()
d_ppdWellFormed_1162 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.updateGroups
d_updateGroups_1164 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_GovParams_1506 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_1164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492
      (coe MAlonzo.Code.Ledger.Conway.PParams.d_ppUpd_1524 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.action
d_action_1168 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778
d_action_1168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_action_846 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.anchor
d_anchor_1170 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750
d_anchor_1170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_856 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.deposit
d_deposit_1172 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Integer
d_deposit_1172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_deposit_852 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.policy
d_policy_1174 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  Maybe Integer
d_policy_1174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_policy_850 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.prevAction
d_prevAction_1176 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  AgdaAny
d_prevAction_1176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_prevAction_848
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal.returnAddr
d_returnAddr_1178 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832 ->
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96
d_returnAddr_1178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_returnAddr_854
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.anchor
d_anchor_1190 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  Maybe MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Anchor_750
d_anchor_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_anchor_830 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.gid
d_gid_1192 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gid_824 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.vote
d_vote_1194 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_Vote_806
d_vote_1194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_vote_828 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote.voter
d_voter_1196 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_voter_826 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.Anchor
d_Anchor_1200 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1208
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovActionType_880
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1210 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1210
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'GovRole_882
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1212 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1212
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.GovernanceActions.d_DecEq'45'VDeleg_886
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1214 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1214
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_DecEq'45'Vote_884
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovAction
d_GovAction_1216 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionData
d_GovActionData_1218 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  ()
d_GovActionData_1218 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionID
d_GovActionID_1220 :: ()
d_GovActionID_1220 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionState
d_GovActionState_1222 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovActionType
d_GovActionType_1224 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovProposal
d_GovProposal_1226 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovRole
d_GovRole_1228 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.GovVote
d_GovVote_1230 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1232 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1232
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovAction'45'Sigma_790
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-GovVote
d_HasCast'45'GovVote_1234 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1234
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'GovVote_888
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1236 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected_802
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1238 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1238
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_HasCast'45'HashProtected'45'MaybeScriptHash_804
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.HashProtected
d_HashProtected_1240 :: () -> ()
d_HashProtected_1240 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.NeedsHash
d_NeedsHash_1244 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760 ->
  ()
d_NeedsHash_1244 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.VDeleg
d_VDeleg_1258 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.Vote
d_Vote_1260 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.Voter
d_Voter_1262 :: ()
d_Voter_1262 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.gaData
d_gaData_1270 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  AgdaAny
d_gaData_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaData_786 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.gaType
d_gaType_1272 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovActionType_760
d_gaType_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.d_gaType_784 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.getDRepVote
d_getDRepVote_1274 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814 ->
  Maybe MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_getDRepVote_1274
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_getDRepVote_890
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovernanceActions.proposedCC
d_proposedCC_1280 ::
  MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovAction_778 ->
  [MAlonzo.Code.Ledger.Conway.Address.T_Credential_18]
d_proposedCC_1280
  = coe
      MAlonzo.Code.Ledger.Conway.GovernanceActions.du_proposedCC_894
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptHash
d_psScriptHash_1304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  Integer
d_psScriptHash_1304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptSize
d_psScriptSize_1306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_354 ->
  Integer
d_psScriptSize_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.timelock
d_timelock_1310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  MAlonzo.Code.Ledger.Conway.Script.T_Timelock_266
d_timelock_1310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptHash
d_tlScriptHash_1312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  Integer
d_tlScriptHash_1312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptSize
d_tlScriptSize_1314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336 ->
  Integer
d_tlScriptSize_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState.CertStateOf
d_CertStateOf_1318 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasCertState_1214 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_CertState_1194
d_CertStateOf_1318 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_CertStateOf_1222 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential.CredentialOf
d_CredentialOf_1322 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasCredential_28 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_CredentialOf_1322 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_CredentialOf_36 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps.DRepsOf
d_DRepsOf_1326 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDReps_962 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1326 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DRepsOf_970 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState.DStateOf
d_DStateOf_1330 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDState_1098 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_DState_1078
d_DStateOf_1330 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DStateOf_1106 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits.DepositsOf
d_DepositsOf_1334 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasDeposits_926 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1334 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_DepositsOf_934 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState.GStateOf
d_GStateOf_1338 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasGState_1178 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_GState_1162
d_GStateOf_1338 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_GStateOf_1186 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1342 ::
  MAlonzo.Code.Ledger.Conway.Address.T_HasNetworkId_110 ->
  AgdaAny -> Integer
d_NetworkIdOf_1342 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_NetworkIdOf_118 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams.PParamsOf
d_PParamsOf_1346 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasPParams_410 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_PParamsOf_1346 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_PParamsOf_418 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState.PStateOf
d_PStateOf_1350 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasPState_1148 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Certs.T_PState_1134
d_PStateOf_1350 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_PStateOf_1156 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards.RewardsOf
d_RewardsOf_1354 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasRewards_944 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1354 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_RewardsOf_952 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody.TxBodyOf
d_TxBodyOf_1358 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasTxBody_3076 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_TxBodyOf_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_TxBodyOf_3084 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO.UTxOOf
d_UTxOOf_1362 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_HasUTxO_2976 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1362 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_UTxOOf_2984 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVDelegs.voteDelegsOf
d_voteDelegsOf_1366 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasVDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegsOf_1366 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_voteDelegsOf_1124 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWdrls.wdrlsOf
d_wdrlsOf_1370 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_HasWdrls_1062 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrlsOf_1370 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_wdrlsOf_1070 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasccMaxTermLength.ccMaxTermLengthOf
d_ccMaxTermLengthOf_1374 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasccMaxTermLength_446 ->
  AgdaAny -> Integer
d_ccMaxTermLengthOf_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLengthOf_454 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasgovActionDeposit.govActionDepositOf
d_govActionDepositOf_1378 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_HasgovActionDeposit_428 ->
  AgdaAny -> Integer
d_govActionDepositOf_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDepositOf_436
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastreasury.treasuryOf
d_treasuryOf_1382 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_Hastreasury_162 ->
  AgdaAny -> Integer
d_treasuryOf_1382 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryOf_170 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxcerts.txcertsOf
d_txcertsOf_1386 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxcerts_3112 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcertsOf_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcertsOf_3120 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxfee.txfeeOf
d_txfeeOf_1390 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxfee_3094 ->
  AgdaAny -> Integer
d_txfeeOf_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txfeeOf_3102 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxid.txidOf
d_txidOf_1394 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxid_3148 ->
  AgdaAny -> Integer
d_txidOf_1394 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txidOf_3156 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hastxprop.txpropOf
d_txpropOf_1398 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Hastxprop_3130 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txpropOf_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txpropOf_3138 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.homo
d_homo_1402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1402 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1408 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.cong
d_cong_1410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1410 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.homo
d_homo_1414 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1414 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.injective
d_injective_1416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1416 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1420 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1420 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1422 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1422 ~v0 v1 = du_isMagmaMonomorphism_1422 v1
du_isMagmaMonomorphism_1422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1422 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1428 v0
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
d_isRelIsomorphism_1430 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1430 ~v0 v1 = du_isRelIsomorphism_1430 v1
du_isRelIsomorphism_1430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1432 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1432 ~v0 v1 = du_isRelMonomorphism_1432 v1
du_isRelMonomorphism_1432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1432 v0
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
d_surjective_1434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1434 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1436 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.cong
d_cong_1438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1438 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.homo
d_homo_1442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1442 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.injective
d_injective_1444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1444 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1448 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1448 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1454 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1454 ~v0 v1 = du_isRelMonomorphism_1454 v1
du_isRelMonomorphism_1454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1456 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.cong
d_cong_1458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1458 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1462 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1464 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1466 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.P1Script
d_P1Script_1468 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 -> ()
d_P1Script_1468 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.validP1Script
d_validP1Script_1470 ::
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1470 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.Emax
d_Emax_1486 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_Emax_1486 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_380 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a
d_a_1488 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_a_1488 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a0
d_a0_1490 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1490 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_384 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.b
d_b_1492 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_b_1492 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMaxTermLength
d_ccMaxTermLength_1494 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMaxTermLength_1494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_396 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMinSize
d_ccMinSize_1496 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_ccMinSize_1496 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1498 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_coinsPerUTxOByte_1498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.collateralPercentage
d_collateralPercentage_1500 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_collateralPercentage_1500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.costmdls
d_costmdls_1502 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1502 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_388 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepActivity
d_drepActivity_1504 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepActivity_1504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_404 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepDeposit
d_drepDeposit_1506 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_drepDeposit_1506 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_402 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepThresholds
d_drepThresholds_1508 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_392 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionDeposit
d_govActionDeposit_1510 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionDeposit_1510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionLifetime
d_govActionLifetime_1512 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_govActionLifetime_1512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_398 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.keyDeposit
d_keyDeposit_1514 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_keyDeposit_1514 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockExUnits
d_maxBlockExUnits_1516 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockSize
d_maxBlockSize_1518 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxBlockSize_1518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxCollateralInputs
d_maxCollateralInputs_1520 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxCollateralInputs_1520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxHeaderSize
d_maxHeaderSize_1522 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxHeaderSize_1522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_340 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1524 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerBlock_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1526 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxRefScriptSizePerTx_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxExUnits
d_maxTxExUnits_1528 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxSize
d_maxTxSize_1530 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxTxSize_1530 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxValSize
d_maxValSize_1532 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_maxValSize_1532 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1534 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minUTxOValue
d_minUTxOValue_1536 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_minUTxOValue_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_378 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.monetaryExpansion
d_monetaryExpansion_1538 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.nopt
d_nopt_1540 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_nopt_1540 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolDeposit
d_poolDeposit_1542 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_poolDeposit_1542 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolThresholds
d_poolThresholds_1544 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_390 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.prices
d_prices_1546 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1546 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.pv
d_pv_1548 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1548 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1550 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostStride
d_refScriptCostStride_1552 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 -> Integer
d_refScriptCostStride_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.treasuryCut
d_treasuryCut_1554 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1554 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.UpdateT
d_UpdateT_1558 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 -> ()
d_UpdateT_1558 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.applyUpdate
d_applyUpdate_1560 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  AgdaAny -> MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyUpdate_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_applyUpdate_1490 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppWF?
d_ppWF'63'_1562 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1562 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ppWF'63'_1498 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1564 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> ()
d_ppdWellFormed_1564 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.updateGroups
d_updateGroups_1566 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsDiff_1474 ->
  AgdaAny -> [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_updateGroups_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_updateGroups_1492 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate._?↗_
d__'63''8599'__1570 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1570 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Conway.PParams.du__'63''8599'__1218 v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1572 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1572
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.PParams.du_DecEq'45'PParamsUpdate_1420
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_epochStructure_1594
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Transaction.d_scriptStructure_1876
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1574 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1576 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.PParams.T_PParams_264
d_applyPParamsUpdate_1576
  = coe MAlonzo.Code.Ledger.Conway.PParams.du_applyPParamsUpdate_1266
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1578 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.PParams.T_PParamGroup_188]
d_modifiedUpdateGroups_1578
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiedUpdateGroups_1202
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1580 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesEconomicGroup_1580
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesEconomicGroup_898
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1582 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesGovernanceGroup_1582
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesGovernanceGroup_1050
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1584 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesNetworkGroup_1584
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesNetworkGroup_822
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1586 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesSecurityGroup_1586
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesSecurityGroup_1126
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1588 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> Bool
d_modifiesTechnicalGroup_1588
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_modifiesTechnicalGroup_974
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1590 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 -> ()
d_paramsUpdateWellFormed_1590 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1592 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1592
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_paramsUpdateWellFormed'63'_818
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.≡-update
d_'8801''45'update_1594 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8801''45'update_1594 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.du_'8801''45'update_1232 v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1598 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_Emax_1598 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Emax_712 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a
d_a_1600 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_a_1600 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a_682 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a0
d_a0_1602 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1602 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_a0_710 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.b
d_b_1604 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_b_1604 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_b_684 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1606 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMaxTermLength_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_ccMaxTermLength_734 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1608 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMinSize_1608 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_ccMinSize_732 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1610 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_coinsPerUTxOByte_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_coinsPerUTxOByte_694 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1612 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_collateralPercentage_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_collateralPercentage_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1614 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1614 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_costmdls_718 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1616 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepActivity_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepActivity_730 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1618 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepDeposit_1618 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_drepDeposit_728 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1620 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_DrepThresholds_200
d_drepThresholds_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_drepThresholds_720 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1622 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionDeposit_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionDeposit_726 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1624 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionLifetime_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_govActionLifetime_724 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1626 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_keyDeposit_1626 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_keyDeposit_686 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1628 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockExUnits_678 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1630 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxBlockSize_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxBlockSize_666 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1632 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxCollateralInputs_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxCollateralInputs_674
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1634 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxHeaderSize_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxHeaderSize_670 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1636 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerBlock_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1638 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxRefScriptSizePerTx_700
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1640 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_maxTxExUnits_676 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1642 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxTxSize_1642 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxTxSize_668 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1644 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxValSize_1644 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_maxValSize_672 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1646 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minFeeRefScriptCoinsPerByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1648 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_minUTxOValue_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_minUTxOValue_708 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1650 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_monetaryExpansion_690 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1652 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_nopt_1652 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_nopt_714 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1654 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_poolDeposit_1654 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_poolDeposit_688 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1656 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242
d_poolThresholds_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_poolThresholds_722 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.prices
d_prices_1658 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1658 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_prices_696 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.pv
d_pv_1660 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1660 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_pv_680 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1662 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostMultiplier_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1664 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_refScriptCostStride_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.PParams.d_refScriptCostStride_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1666 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1666 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_treasuryCut_692 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.pools
d_pools_1670 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1670 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pools_1140 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.retiring
d_retiring_1672 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PState_1134 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1672 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_retiring_1142 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1676 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1676 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.CostModel
d_CostModel_1678 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_CostModel_1678 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T
d_T_1680 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_T_1680 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.THash
d_THash_1682 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_THash_1682 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dataʰ
d_Data'688'_1684 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1684 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Datum
d_Datum_1686 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Datum_1686 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1688 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1690 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1692 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1694 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1696 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1698 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-T
d_DecEq'45'T_1700 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1700 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1702 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1702 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1704 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnits
d_ExUnits_1706 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_ExUnits_1706 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1708 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.LangDepView
d_LangDepView_1710 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_LangDepView_1710 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Language
d_Language_1712 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Language_1712 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusScript
d_PlutusScript_1714 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_PlutusScript_1714 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV1
d_PlutusV1_1716 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV1_1716 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV2
d_PlutusV2_1718 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV2_1718 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV3
d_PlutusV3_1720 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> AgdaAny
d_PlutusV3_1720 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Prices
d_Prices_1722 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Prices_1722 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Redeemer
d_Redeemer_1724 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 -> ()
d_Redeemer_1724 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_1726 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_1728 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-Prices
d_Show'45'Prices_1730 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-THash
d_Show'45'THash_1732 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1732 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-Hashable
d_T'45'Hashable_1734 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1734 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-isHashable
d_T'45'isHashable_1736 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.language
d_language_1738 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> AgdaAny
d_language_1738 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_language_260 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.toData
d_toData_1740 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  () -> AgdaAny -> AgdaAny
d_toData_1740 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_toData_264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.validPlutusScript
d_validPlutusScript_1742 ::
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1742 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.cost
d_cost_1746 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 -> Integer
d_cost_1746 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_cost_992 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.margin
d_margin_1748 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_1748 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_margin_994 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.owners
d_owners_1750 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 -> [Integer]
d_owners_1750 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_owners_990 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.pledge
d_pledge_1752 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 -> Integer
d_pledge_1752 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_pledge_996 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolParams.rewardAccount
d_rewardAccount_1754 ::
  MAlonzo.Code.Ledger.Conway.Certs.T_PoolParams_978 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_rewardAccount_1754 v0
  = coe MAlonzo.Code.Ledger.Conway.Certs.d_rewardAccount_998 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q1
d_Q1_1758 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_1758 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q1_254 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2a
d_Q2a_1760 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_1760 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2a_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2b
d_Q2b_1762 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_1762 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q2b_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q4
d_Q4_1764 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_1764 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q4_260 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q5
d_Q5_1766 ::
  MAlonzo.Code.Ledger.Conway.PParams.T_PoolThresholds_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_1766 v0
  = coe MAlonzo.Code.Ledger.Conway.PParams.d_Q5_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.net
d_net_1770 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 -> Integer
d_net_1770 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_net_102 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.stake
d_stake_1772 ::
  MAlonzo.Code.Ledger.Conway.Address.T_RwdAddr_96 ->
  MAlonzo.Code.Ledger.Conway.Address.T_Credential_18
d_stake_1772 v0
  = coe MAlonzo.Code.Ledger.Conway.Address.d_stake_104 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure._≥ᵉ_
d__'8805''7497'__1776 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1776 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.CostModel
d_CostModel_1778 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_CostModel_1778 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T
d_T_1780 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_T_1780 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.THash
d_THash_1782 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_THash_1782 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dataʰ
d_Data'688'_1784 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_HashableSet_34
d_Data'688'_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Datum
d_Datum_1786 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Datum_1786 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1788 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validP1Script_110
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1790 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Dec'45'validPlutusScript_258
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_1792 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEQ'45'Prices_228
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_1794 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'CostModel_218
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1796 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'ExUnits_226
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1798 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'LangDepView_220
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_1800 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'Language_216
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1802 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_DecEq'45'P1Script_114
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-T
d_DecEq'45'T_1804 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1804 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'T_28
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_1806 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1806 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_DecEq'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1808 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_ExUnit'45'CommutativeMonoid_212
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnits
d_ExUnits_1810 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_ExUnits_1810 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1812 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1814 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Hashable'45'PlutusScript_214
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_1816 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1816
  = coe MAlonzo.Code.Ledger.Conway.Script.du_Hashable'45'Script_524
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.LangDepView
d_LangDepView_1818 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_LangDepView_1818 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Language
d_Language_1820 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Language_1820 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.P1Script
d_P1Script_1822 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_P1Script_1822 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusScript
d_PlutusScript_1824 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_PlutusScript_1824 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV1
d_PlutusV1_1826 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV1_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV1_206
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV2
d_PlutusV2_1828 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV2_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV2_208
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV3
d_PlutusV3_1830 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV3_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_PlutusV3_210
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Prices
d_Prices_1832 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Prices_1832 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Redeemer
d_Redeemer_1834 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Redeemer_1834 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Script
d_Script_1836 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 -> ()
d_Script_1836 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_1838 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'CostModel_222
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_1840 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'ExUnits_230
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-Prices
d_Show'45'Prices_1842 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_Show'45'Prices_232
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-THash
d_Show'45'THash_1844 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1844 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_Show'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-Hashable
d_T'45'Hashable_1846 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1846 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
              (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'Hashable_30
         (coe
            MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-isHashable
d_T'45'isHashable_1848 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Crypto.T_isHashableSet_8
d_T'45'isHashable_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Crypto.d_T'45'isHashable_42
      (coe
         MAlonzo.Code.Ledger.Conway.Script.d_Data'688'_192
         (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_1850 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.language
d_language_1852 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny
d_language_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_language_260
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.p1s
d_p1s_1854 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_P1ScriptStructure_94
d_p1s_1854 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ps
d_ps_1856 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Conway.Script.T_PlutusStructure_116
d_ps_1856 v0
  = coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toData
d_toData_1858 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  () -> AgdaAny -> AgdaAny
d_toData_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Script.d_toData_264
      (coe MAlonzo.Code.Ledger.Conway.Script.d_ps_450 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validP1Script
d_validP1Script_1860 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1860 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validPlutusScript
d_validPlutusScript_1862 ::
  MAlonzo.Code.Ledger.Conway.Script.T_ScriptStructure_402 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_1862 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._∙_
d__'8729'__1880 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__1880 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≈_
d__'8776'__1882 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__1882 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__1884 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__1884 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_1886 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Dec'45''8804''7511'_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_1888 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_DecEq'45'Value_212
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1890 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1892 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1894 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value
d_Value_1896 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 -> ()
d_Value_1896 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1898 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.addValue
d_addValue_1900 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_1900
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_addValue_216
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin
d_coin_1902 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_coin_1902 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coin_198 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_1904 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1904 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1906 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_coinIsMonoidHomomorphism_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_coinIsMonoidHomomorphism_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_1908 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_1908 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.inject
d_inject_1910 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  Integer -> AgdaAny
d_inject_1910 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_inject_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.monoid
d_monoid_1912 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_886
d_monoid_1912 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1036
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.policies
d_policies_1914 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> [Integer]
d_policies_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_policies_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.rawMonoid
d_rawMonoid_1916 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_70
d_rawMonoid_1916 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.size
d_size_1918 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny -> Integer
d_size_1918 v0
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_size_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.sumᵛ
d_sum'7515'_1920 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_1920
  = coe MAlonzo.Code.Ledger.Conway.TokenAlgebra.du_sum'7515'_234
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.ε
d_ε_1922 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  AgdaAny
d_ε_1922 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.TokenAlgebra.d_Value'45'CommutativeMonoid_116
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_1926 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1926 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1928 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1930 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1932 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_1934 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1934 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1938 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1942 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1944 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
d_isMagmaIsomorphism_1944 ~v0 = du_isMagmaIsomorphism_1944
du_isMagmaIsomorphism_1944 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_230
du_isMagmaIsomorphism_1944 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1946 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1946 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_1946 v2
du_isMagmaMonomorphism_1946 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1946 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1948 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1948 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384
d_isMonoidMonomorphism_1950 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1952 v0
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
d_isRelIsomorphism_1954 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1954 ~v0 ~v1 v2 = du_isRelIsomorphism_1954 v2
du_isRelIsomorphism_1954 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1954 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_256
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_448
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1956 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1956 ~v0 ~v1 v2 = du_isRelMonomorphism_1956 v2
du_isRelMonomorphism_1956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1956 v0
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
d_surjective_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_426 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1960 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_416 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1962 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_1966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1966 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_1968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_1968 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_188
d_isMagmaHomomorphism_1970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1972 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
d_isMagmaMonomorphism_1972 ~v0 = du_isMagmaMonomorphism_1972
du_isMagmaMonomorphism_1972 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_206
du_isMagmaMonomorphism_1972 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_362
d_isMonoidHomomorphism_1974 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1976 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1976 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_196
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_370
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_392
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1978 ::
  MAlonzo.Code.Ledger.Conway.TokenAlgebra.T_TokenAlgebra_10 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1978 ~v0 ~v1 v2 = du_isRelMonomorphism_1978 v2
du_isRelMonomorphism_1978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1978 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_226
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_408
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1980 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_1982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_384 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1982 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.body
d_body_1986 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990
d_body_1986 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_body_3192 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.isValid
d_isValid_1988 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Bool
d_isValid_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_isValid_3196 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txAD
d_txAD_1990 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 -> Maybe Integer
d_txAD_1990 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txAD_3198 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.wits
d_wits_1992 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_Tx_3182 ->
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162
d_wits_1992 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_wits_3194 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.collateral
d_collateral_1996 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_collateral_3066 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.curTreasury
d_curTreasury_1998 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe Integer
d_curTreasury_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_curTreasury_3060 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.mint
d_mint_2000 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_mint_2000 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_mint_3040 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.refInputs
d_refInputs_2002 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_refInputs_3034 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.reqSigHash
d_reqSigHash_2004 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> [Integer]
d_reqSigHash_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_reqSigHash_3068 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.scriptIntHash
d_scriptIntHash_2006 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe Integer
d_scriptIntHash_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scriptIntHash_3070
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txADhash
d_txADhash_2008 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe Integer
d_txADhash_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txADhash_3056 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txNetworkId
d_txNetworkId_2010 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe Integer
d_txNetworkId_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txNetworkId_3058 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txcerts
d_txcerts_2012 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.Certs.T_DCert_1000]
d_txcerts_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txcerts_3044 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txdonation
d_txdonation_2014 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txdonation_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txdonation_3052 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txfee
d_txfee_2016 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txfee_2016 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txfee_3038 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txid
d_txid_2018 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txid_2018 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txid_3064 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txins
d_txins_2020 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2020 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txins_3032 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txouts
d_txouts_2022 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2022 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txouts_3036 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txprop
d_txprop_2024 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovProposal_832]
d_txprop_2024 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txprop_3050 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txsize
d_txsize_2026 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 -> Integer
d_txsize_2026 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txsize_3062 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txup
d_txup_2028 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2028 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txup_3054 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txvldt
d_txvldt_2030 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2030 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvldt_3042 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txvote
d_txvote_2032 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  [MAlonzo.Code.Ledger.Conway.GovernanceActions.T_GovVote_814]
d_txvote_2032 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txvote_3048 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txwdrls
d_txwdrls_2034 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxBody_2990 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txwdrls_3046 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scripts
d_scripts_2038 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_scripts_3174 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scriptsP1
d_scriptsP1_2040 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_336]
d_scriptsP1_2040
  = coe MAlonzo.Code.Ledger.Conway.Transaction.du_scriptsP1_3180
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txdats
d_txdats_2042 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2042 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_txdats_3176 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txrdmrs
d_txrdmrs_2044 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Transaction.d_txrdmrs_3178 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.vkSigs
d_vkSigs_2046 ::
  MAlonzo.Code.Ledger.Conway.Transaction.T_TxWitnesses_3162 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2046 v0
  = coe MAlonzo.Code.Ledger.Conway.Transaction.d_vkSigs_3172 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERT
d_Computational'45'CERT_2082 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2082
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_1812
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTBASE
d_Computational'45'CERTBASE_2084 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2084
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_2120
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTS
d_Computational'45'CERTS_2086 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2086
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2300
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-DELEG
d_Computational'45'DELEG_2088 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_2088
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'DELEG_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-GOVCERT
d_Computational'45'GOVCERT_2090 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_2090
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'GOVCERT_1536
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-POOL
d_Computational'45'POOL_2092 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_2092
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'POOL_1510
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupDeposit
d_lookupDeposit_2094 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Certs.T_DepositPurpose_906 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_2094
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_lookupDeposit_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Transaction.d_govStructure_2452
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_692
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_14)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-UnitInterval
d_HsTy'45'UnitInterval_2096 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UnitInterval_2096 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-UnitInterval
d_Conv'45'UnitInterval_2098 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UnitInterval_2098
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
              (MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_fromUnitInterval_92
                 (coe v0))))
      (coe
         (\ v0 ->
            let v1
                  = MAlonzo.Code.Ledger.Conway.Types.Numeric.UnitInterval.d_toUnitInterval_94
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
