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
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core
import qualified MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes
import qualified MAlonzo.Code.Ledger.Prelude.Foreign.Util
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat
import qualified MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
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
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.iConvNat
d_iConvNat_12 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvNat_12
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.iConvString
d_iConvString_14 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvString_14
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.iConvBool
d_iConvBool_16 :: MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_iConvBool_16
  = coe MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Refl_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-⊥
d_HsTy'45''8869'_18 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45''8869'_18 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-⊥
d_Conv'45''8869'_20 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45''8869'_20
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
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
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 (coe v1)
                     (coe addInt (coe (1 :: Integer)) (coe v2))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v1 v2
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
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSSet_38
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                    (coe v0))
                 v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Axiom.Set.du_fromList_430
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'List_120
                    (coe v0))
                 (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_elems_36
                    (coe v1)))))
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
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_MkHSMap_26
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.du_Convertible'45'FinSet_104
                    (coe
                       MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Pair_94 (coe v1)
                       (coe v2)))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Foreign.Convertible.d_from_20
              (coe
                 MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Map_116 (coe v0)
                 (coe v1) (coe v2))
              (MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.d_assocList_24
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
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Interface.ComputationalRelation.C_success_42 v3
                -> coe
                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_Success_50
                     (coe MAlonzo.Code.Foreign.Convertible.d_to_18 v1 v3)
              MAlonzo.Code.Interface.ComputationalRelation.C_failure_44 v3
                -> coe
                     MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_Failure_52
                     (coe MAlonzo.Code.Foreign.Convertible.d_to_18 v0 v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_Success_50 v3
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_success_42
                     (coe MAlonzo.Code.Foreign.Convertible.d_from_20 v1 v3)
              MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C_Failure_52 v3
                -> coe
                     MAlonzo.Code.Interface.ComputationalRelation.C_failure_44
                     (coe MAlonzo.Code.Foreign.Convertible.d_from_20 v0 v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._+ᵉ_
d__'43''7497'__92 :: Integer -> Integer -> Integer
d__'43''7497'__92
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__78
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._+ᵉ'_
d__'43''7497'''__94 :: Integer -> Integer -> Integer
d__'43''7497'''__94
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__80
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._∙_
d__'8729'__96 :: Integer -> Integer -> Integer
d__'8729'__96
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
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
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  ()
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
d_ActiveSlotCoeff_124 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_124
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Addr
d_Addr_126 :: ()
d_Addr_126 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor
d_Anchor_128 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.AuxiliaryData
d_AuxiliaryData_132 :: ()
d_AuxiliaryData_132 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr
d_BaseAddr_134 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr
d_BootstrapAddr_138 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCHotKeys
d_CCHotKeys_144 :: ()
d_CCHotKeys_144 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCHotKeysOf
d_CCHotKeysOf_146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1114
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_438 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv
d_CertEnv_158 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState
d_CertState_162 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertStateOf
d_CertStateOf_166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322
d_CertStateOf_166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1426
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CostModel
d_CostModel_170 :: ()
d_CostModel_170 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Credential
d_Credential_172 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CredentialOf
d_CredentialOf_176 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_176 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DCert
d_DCert_178 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DCertsOf
d_DCertsOf_180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3274 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
d_DCertsOf_180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3282
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DReps
d_DReps_192 :: ()
d_DReps_192 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DRepsOf
d_DRepsOf_194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState
d_DState_196 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DStateOf
d_DStateOf_200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1358 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_DStateOf_200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T
d_T_202 :: ()
d_T_202 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_204 :: ()
d_THash_204 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dataʰ
d_Data'688'_206 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_206
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Datum
d_Datum_208 :: ()
d_Datum_208 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-evalTimelock
d_Dec'45'evalTimelock_210 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_98 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_210
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_156
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isScript
d_Dec'45'isScript_212 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_212
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isSigned
d_Dec'45'isSigned_214 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_214
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isVKey
d_Dec'45'isVKey_216 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_216
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validP1Script
d_Dec'45'validP1Script_218 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_356 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_218
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_220 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_376 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_220
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_264
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-≤ᵗ
d_Dec'45''8804''7511'_222 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_222
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEQ-Prices
d_DecEQ'45'Prices_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_224
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_226
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_228
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-CostModel
d_DecEq'45'CostModel_230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_230
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Credential
d_DecEq'45'Credential_232 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_232
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_234
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1086
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_236
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_562
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Epoch
d_DecEq'45'Epoch_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_238
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_60
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ExUnits
d_DecEq'45'ExUnits_240 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_240
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovActionType
d_DecEq'45'GovActionType_242 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_242
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_1026
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovRole
d_DecEq'45'GovRole_244 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_244
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1028
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovVoter
d_DecEq'45'GovVoter_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_246
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1034
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_248 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_248
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_374
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ix
d_DecEq'45'Ix_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_250
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1260
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-LangDepView
d_DecEq'45'LangDepView_252 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_252
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Language
d_DecEq'45'Language_254 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_254
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Netw
d_DecEq'45'Netw_256 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_256
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-P1Script
d_DecEq'45'P1Script_258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_258
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_260 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_568
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParams
d_DecEq'45'PParams_262 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_262
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_566
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_264 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_264
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_564
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_266
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_284
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_268 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_268
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ser
d_DecEq'45'Ser_270 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_270
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Sig
d_DecEq'45'Sig_272 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_272
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Slot
d_DecEq'45'Slot_274 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_274
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_68
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_276 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_276
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1264
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_278 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_278
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_280 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_280
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1264
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_282 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_282
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_284 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_284
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Timelock
d_DecEq'45'Timelock_286 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_286
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_112
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-TxId
d_DecEq'45'TxId_288 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_288
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1262
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-UpdT
d_DecEq'45'UpdT_290 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_290
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1526
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2348
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-VDeleg
d_DecEq'45'VDeleg_292 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_292
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1032
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Value
d_DecEq'45'Value_294 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_294
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Vote
d_DecEq'45'Vote_296 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_296
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1030
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecPo-Slot
d_DecPo'45'Slot_298 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_298
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_66
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv
d_DelegEnv_300 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositPurpose
d_DepositPurpose_304 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Deposits
d_Deposits_306 :: ()
d_Deposits_306 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositsOf
d_DepositsOf_308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds
d_DrepThresholds_310 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSAbstractFunctions
d_HSAbstractFunctions_314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2216
d_HSAbstractFunctions_314
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2990
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTransactionStructure
d_HSTransactionStructure_316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_316
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Epoch
d_Epoch_320 :: ()
d_Epoch_320 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_322 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_322
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnits
d_ExUnits_324 :: ()
d_ExUnits_324 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState
d_GState_332 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GStateOf
d_GStateOf_336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310
d_GStateOf_336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction
d_GovAction_338 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionData
d_GovActionData_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  ()
d_GovActionData_342 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionID
d_GovActionID_346 :: ()
d_GovActionID_346 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionOf
d_GovActionOf_348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_890 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876
d_GovActionOf_348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_896
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState
d_GovActionState_350 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionType
d_GovActionType_354 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionTypeOf
d_GovActionTypeOf_356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822
d_GovActionTypeOf_356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_866
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams
d_GovParams_358 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal
d_GovProposal_362 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposalsOf
d_GovProposalsOf_366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950]
d_GovProposalsOf_366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRole
d_GovRole_368 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRoleCredential
d_GovRoleCredential_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  ()
d_GovRoleCredential_370 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote
d_GovVote_372 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVoter
d_GovVoter_376 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVotes
d_GovVotes_380 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSCryptoStructure
d_HSCryptoStructure_386 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_HSCryptoStructure_386
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSEpochStructure
d_HSEpochStructure_388 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_HSEpochStructure_388
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSGlobalConstants
d_HSGlobalConstants_390 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260
d_HSGlobalConstants_390
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript
d_HSPlutusScript_392 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSScriptStructure
d_HSScriptStructure_396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274
d_HSScriptStructure_396
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_394
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock
d_HSTimelock_398 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys
d_HasCCHotKeys_402 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106
d_HasCCHotKeys'45'GState_406
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1450
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength
d_HasCCMaxTermLength_408 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-Acnt
d_HasCast'45'Acnt_412 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_188
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertEnv
d_HasCast'45'CertEnv_414 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1474
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertState
d_HasCast'45'CertState_416 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_416
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1482
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DState
d_HasCast'45'DState_418 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1476
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_420 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1484
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GState
d_HasCast'45'GState_422 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1480
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_424 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_906
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovVote
d_HasCast'45'GovVote_426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1132
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected
d_HasCast'45'HashProtected_428 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_918
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_920
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-PState
d_HasCast'45'PState_432 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1478
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState
d_HasCertState_434 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-CertState
d_HasCoin'45'CertState_438 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_438
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1472
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-TxOut
d_HasCoin'45'TxOut_440 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_440
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3506
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential
d_HasCredential_442 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_446 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_446
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_164
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts
d_HasDCerts_448 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts-Tx
d_HasDCerts'45'Tx_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3274
d_HasDCerts'45'Tx_452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3382
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps
d_HasDReps_454 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-CertState
d_HasDReps'45'CertState_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'CertState_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1460
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-GState
d_HasDReps'45'GState_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122
d_HasDReps'45'GState_460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1448
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState
d_HasDState_462 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState-CertState
d_HasDState'45'CertState_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1358
d_HasDState'45'CertState_466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1452
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits
d_HasDeposits_468 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDonations-Tx
d_HasDonations'45'Tx_472 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_472
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3392
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDonations-TxBody
d_HasDonations'45'TxBody_474 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3330
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasFees-Tx
d_HasFees'45'Tx_476 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3380
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState
d_HasGState_478 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState-CertState
d_HasGState'45'CertState_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1398
d_HasGState'45'CertState_482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1456
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction
d_HasGovAction_484 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_890
d_HasGovAction'45'GovActionState_488
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1020
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_890
d_HasGovAction'45'GovProposal_490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1018
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType
d_HasGovActionType_492 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860
d_HasGovActionType'45'GovAction_496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_904
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860
d_HasGovActionType'45'GovActionState_498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1024
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860
d_HasGovActionType'45'GovProposal_500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1022
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals
d_HasGovProposals_502 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3294
d_HasGovProposals'45'Tx_506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3384
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId
d_HasNetworkId_508 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_512 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_512
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_514 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_514
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_516 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_516
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams
d_HasPParams_518 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_522 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418
d_HasPParams'45'CertEnv_522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1434
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState
d_HasPState_524 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState-CertState
d_HasPState'45'CertState_528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1378
d_HasPState'45'CertState_528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1454
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools
d_HasPools_530 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-CertState
d_HasPools'45'CertState_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'CertState_534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1462
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-PState
d_HasPools'45'PState_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138
d_HasPools'45'PState_536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1444
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasReserves-Acnt
d_HasReserves'45'Acnt_538 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_176
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring
d_HasRetiring_540 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring-PState
d_HasRetiring'45'PState_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154
d_HasRetiring'45'PState_544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1446
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards
d_HasRewards_546 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-CertState
d_HasRewards'45'CertState_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'CertState_550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1458
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-DState
d_HasRewards'45'DState_552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170
d_HasRewards'45'DState_552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1442
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs
d_HasStakeDelegs_554 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1186
d_HasStakeDelegs'45'DState_558
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1440
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_560 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_174
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody
d_HasTxBody_562 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody-Tx
d_HasTxBody'45'Tx_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3254
d_HasTxBody'45'Tx_566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3378
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId
d_HasTxId_568 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId-Tx
d_HasTxId'45'Tx_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3314
d_HasTxId'45'Tx_572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3390
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO
d_HasUTxO_574 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs
d_HasVoteDelegs_578 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842
d_HasVoteDelegs'45'CertState_582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1464
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842
d_HasVoteDelegs'45'DState_584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1438
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals
d_HasWithdrawals_586 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_590 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_590
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1436
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_592 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'Tx_592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3388
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_594 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'TxBody_594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3386
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HashProtected
d_HashProtected_596 :: () -> ()
d_HashProtected_596 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_598 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSPlutusScript_598
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_388
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_600 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HSTimelock_600
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_372
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-P1Script
d_Hashable'45'P1Script_602 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_602
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_604 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_604
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-Script
d_Hashable'45'Script_606 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_606
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HsGovParams
d_HsGovParams_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494
d_HsGovParams_608
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_732
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_614 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_618 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_622 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ix
d_Ix_626 :: ()
d_Ix_626 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_628 :: ()
d_THash_628 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.KeyPair
d_KeyPair_632 :: ()
d_KeyPair_632 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.LangDepView
d_LangDepView_634 :: ()
d_LangDepView_634 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Language
d_Language_636 :: ()
d_Language_636 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MemoryEstimate
d_MemoryEstimate_638 :: ()
d_MemoryEstimate_638 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NeedsHash
d_NeedsHash_642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  ()
d_NeedsHash_642 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Network
d_Network_644 :: ()
d_Network_644 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkId
d_NetworkId_648 :: Integer
d_NetworkId_648
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_300
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkIdOf
d_NetworkIdOf_650 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_650 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_656 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_656
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_302
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_658 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_658
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_290
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Number-Epoch
d_Number'45'Epoch_660 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_660
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_254
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1Script
d_P1Script_662 :: ()
d_P1Script_662 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure
d_P1ScriptStructure_664 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_P1ScriptStructure'45'HTL_668
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_390
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusScript
d_PlutusScript_670 :: ()
d_PlutusScript_670 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamGroup
d_PParamGroup_676 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams
d_PParams_678 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff
d_PParamsDiff_682 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsOf
d_PParamsOf_686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UpdateT
d_UpdateT_688 :: ()
d_UpdateT_688 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState
d_PState_690 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PStateOf
d_PStateOf_694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_PStateOf_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure
d_PlutusStructure_696 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV1
d_PlutusV1_700 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_700
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV2
d_PlutusV2_702 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_702
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV3
d_PlutusV3_704 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_704
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolEnv
d_PoolEnv_708 :: ()
d_PoolEnv_708 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds
d_PoolThresholds_710 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Pools
d_Pools_714 :: ()
d_Pools_714 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolsOf
d_PoolsOf_716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_718 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_718
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_294
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Prices
d_Prices_720 :: ()
d_Prices_720 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProposedPPUpdates
d_ProposedPPUpdates_722 :: ()
d_ProposedPPUpdates_722 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProtVer
d_ProtVer_724 :: ()
d_ProtVer_724 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Quorum
d_Quorum_726 :: Integer
d_Quorum_726
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_298
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RdmrPtr
d_RdmrPtr_728 :: ()
d_RdmrPtr_728 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Redeemer
d_Redeemer_730 :: ()
d_Redeemer_730 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Retiring
d_Retiring_744 :: ()
d_Retiring_744 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RetiringOf
d_RetiringOf_746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Rewards
d_Rewards_748 :: ()
d_Rewards_748 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardsOf
d_RewardsOf_750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr
d_RwdAddr_752 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SKey
d_SKey_758 :: ()
d_SKey_758 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Script
d_Script_762 :: ()
d_Script_762 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptAddr
d_ScriptAddr_764 :: ()
d_ScriptAddr_764 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBaseAddr
d_ScriptBaseAddr_766 :: ()
d_ScriptBaseAddr_766 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_768 :: ()
d_ScriptBootstrapAddr_768 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptHash
d_ScriptHash_770 :: ()
d_ScriptHash_770 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure
d_ScriptStructure_774 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ser
d_Ser_780 :: ()
d_Ser_780 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-CostModel
d_Show'45'CostModel_782 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_782
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential
d_Show'45'Credential_784 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_784 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_786 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_786 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-DrepThresholds
d_Show'45'DrepThresholds_788 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_788
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_570
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Epoch
d_Show'45'Epoch_790 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_790
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_62
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ExUnits
d_Show'45'ExUnits_792 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_792
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_236
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Network
d_Show'45'Network_794 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_794
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_286
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PParams
d_Show'45'PParams_796 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_796
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_574
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PoolThresholds
d_Show'45'PoolThresholds_798 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_798
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_572
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Prices
d_Show'45'Prices_800 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_800
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_238
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ProtVer
d_Show'45'ProtVer_802 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_802
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-RwdAddr
d_Show'45'RwdAddr_804 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_804
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_288
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ScriptHash
d_Show'45'ScriptHash_806 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_806
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_808 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_808
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1264
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_810 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_810
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_812 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_812
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Sig
d_Sig_814 :: ()
d_Sig_814 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slot
d_Slot_816 :: ()
d_Slot_816 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_818 :: Integer
d_SlotsPerEpoch'7580'_818
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_288
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slotʳ
d_Slot'691'_820 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_820
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_56
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindow
d_StabilityWindow_822 :: Integer
d_StabilityWindow_822
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_74
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindowᶜ
d_StabilityWindow'7580'_824 :: Integer
d_StabilityWindow'7580'_824
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_296
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegs
d_StakeDelegs_826 :: ()
d_StakeDelegs_826 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegsOf
d_StakeDelegsOf_828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams
d_StakePoolParams_830 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_834 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_834
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1264
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_836 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_836
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_838 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_838
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-isHashable
d_T'45'isHashable_840 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_840
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Timelock
d_Timelock_844 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra
d_TokenAlgebra_846 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx
d_Tx_854 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody
d_TxBody_858 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBodyOf
d_TxBodyOf_862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_TxBodyOf_862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3262
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxId
d_TxId_864 :: ()
d_TxId_864 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIdOf
d_TxIdOf_866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3314 ->
  AgdaAny -> Integer
d_TxIdOf_866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3322
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIn
d_TxIn_868 :: ()
d_TxIn_868 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOut
d_TxOut_870 :: ()
d_TxOut_870 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOutʰ
d_TxOut'688'_872 :: ()
d_TxOut'688'_872 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses
d_TxWitnesses_874 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxO
d_UTxO_878 :: ()
d_UTxO_878 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxOOf
d_UTxOOf_880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3166
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Update
d_Update_882 :: ()
d_Update_882 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VDeleg
d_VDeleg_886 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKey
d_VKey_888 :: ()
d_VKey_888 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyAddr
d_VKeyAddr_890 :: ()
d_VKeyAddr_890 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBaseAddr
d_VKeyBaseAddr_892 :: ()
d_VKeyBaseAddr_892 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_894 :: ()
d_VKeyBootstrapAddr_894 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value
d_Value_898 :: ()
d_Value_898 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_900 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_900
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegs
d_VoteDelegs_902 :: ()
d_VoteDelegs_902 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegsOf
d_VoteDelegsOf_904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Voter
d_Voter_906 :: ()
d_Voter_906 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Withdrawals
d_Withdrawals_908 :: ()
d_Withdrawals_908 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.WithdrawalsOf
d_WithdrawalsOf_910 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_910 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.adHashingScheme
d_adHashingScheme_912 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_912
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addEpoch
d_addEpoch_914 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_914
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_248
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addSlot
d_addSlot_916 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_916
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_246
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addValue
d_addValue_918 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_918
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.applyUpdate
d_applyUpdate_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyUpdate_920
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1476
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2348
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin
d_coin_928 :: Integer -> Integer
d_coin_928
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin-inject-lemma
d_coin'45'inject'45'lemma_930 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_930 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_932
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin∘inject≗id
d_coin'8728'inject'8791'id_934 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_934 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cryptoStructure
d_cryptoStructure_936 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_936
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cwitness
d_cwitness_938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_938
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1240
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epoch
d_epoch_946 :: Integer -> Integer
d_epoch_946
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_70
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epochStructure
d_epochStructure_948 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_948
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.evalTimelock
d_evalTimelock_962 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.firstSlot
d_firstSlot_964 :: Integer -> Integer
d_firstSlot_964
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_72
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaData
d_gaData_966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaType
d_gaType_968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822
d_gaType_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getScriptHash
d_getScriptHash_970 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_970
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValue
d_getValue_972 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3394
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValueʰ
d_getValue'688'_974 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3410
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.globalConstants
d_globalConstants_976 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_260
d_globalConstants_976
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govParams
d_govParams_978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494
d_govParams_978
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_732
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govStructure
d_govStructure_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_980
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.hashRespectsUnion
d_hashRespectsUnion_982 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_982
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.inject
d_inject_984 :: Integer -> Integer
d_inject_984
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr
d_isBootstrapAddr_986 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr?
d_isBootstrapAddr'63'_988 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_988
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isGovVoterCredential
d_isGovVoterCredential_990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_990
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterCredential_1138
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isGovVoterDRep
d_isGovVoterDRep_992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_992
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1134
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHash
d_isKeyHash_994 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_994 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObj
d_isKeyHashObj_996 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_996
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_998 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_998
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyPair
d_isKeyPair_1000 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1000 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isNativeScript
d_isNativeScript_1002 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1002 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script
d_isP1Script_1004 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1004 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script?
d_isP1Script'63'_1006 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1006
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_402
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script
d_isP2Script_1008 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1008 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script?
d_isP2Script'63'_1010 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1010
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_416
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScript
d_isScript_1012 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptAddr
d_isScriptAddr_1014 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1014 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptObj
d_isScriptObj_1016 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1016
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptRwdAddr
d_isScriptRwdAddr_1018 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 -> ()
d_isScriptRwdAddr_1018 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned
d_isSigned_1020 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1020 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned-correct
d_isSigned'45'correct_1022 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1022 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKey
d_isVKey_1024 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKeyAddr
d_isVKeyAddr_1026 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1026 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.khs
d_khs_1028 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1028
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.language
d_language_1030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_376 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1030
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupScriptHash
d_lookupScriptHash_1032 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1032
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3492
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.monoid
d_monoid_1034 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1034
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.netId
d_netId_1036 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1036
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.p1s
d_p1s_1038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_p1s_1038
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWF-elim
d_paramsWF'45'elim_1040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1040 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_542
      v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWellFormed
d_paramsWellFormed_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  ()
d_paramsWellFormed_1042 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.payCred
d_payCred_1044 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1044
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pkk
d_pkk_1046 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1046
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.policies
d_policies_1048 :: Integer -> [Integer]
d_policies_1048
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.positivePParams
d_positivePParams_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  [Integer]
d_positivePParams_1050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_454
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppUpd
d_ppUpd_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460
d_ppUpd_1052
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2348
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppWF?
d_ppWF'63'_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1054
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1484
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2348
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppdWellFormed
d_ppdWellFormed_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  ()
d_ppdWellFormed_1056 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.preoEpoch
d_preoEpoch_1058 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1058
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_88
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.proposedCC
d_proposedCC_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1060
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1144
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ps
d_ps_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122
d_ps_1062
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow
d_pvCanFollow_1064 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow?
d_pvCanFollow'63'_1066 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1066
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1412
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rawMonoid
d_rawMonoid_1068 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1068
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.refScripts
d_refScripts_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1070
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3434
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rewardsBalance
d_rewardsBalance_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  Integer
d_rewardsBalance_1080
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1466
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptOuts
d_scriptOuts_1082 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1082
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3420
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptStructure
d_scriptStructure_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274
d_scriptStructure_1084
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_394
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sign
d_sign_1086 :: Integer -> Integer -> Integer
d_sign_1086
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1308
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.size
d_size_1088 :: Integer -> Integer
d_size_1088
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.stakeCred
d_stakeCred_1090 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1090
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sucᵉ
d_suc'7497'_1092 :: Integer -> Integer
d_suc'7497'_1092
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sumᵛ
d_sum'7515'_1094 :: [Integer] -> Integer
d_sum'7515'_1094
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toData
d_toData_1096 :: () -> AgdaAny -> Integer
d_toData_1096
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_270
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP1Script
d_toP1Script_1098 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_356
d_toP1Script_1098
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP2Script
d_toP2Script_1100 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_376
d_toP2Script_1100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_422
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.tokenAlgebra
d_tokenAlgebra_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1102
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txInsScript
d_txInsScript_1104 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1104
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3428
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txInsVKey
d_txInsVKey_1106 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1106
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3414
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txOutHash
d_txOutHash_1108 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1108
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3400
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidBytes
d_txidBytes_1110 :: Integer -> Integer
d_txidBytes_1110 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txscripts
d_txscripts_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1112
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.updateGroups
d_updateGroups_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_updateGroups_1114
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1478
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2348
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validP1Script
d_validP1Script_1122 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_356 ->
  ()
d_validP1Script_1122 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validPlutusScript
d_validPlutusScript_1124 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_376 ->
  ()
d_validPlutusScript_1124 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ε
d_ε_1126 :: Integer
d_ε_1126
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
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
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2366
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1128 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1128 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕEpochStructure
d_ℕEpochStructure_1130 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1130
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_316
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1278
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕtoEpoch
d_ℕtoEpoch_1132 :: Integer -> Integer
d_ℕtoEpoch_1132
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_242
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.reserves
d_reserves_1182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_reserves_1182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_170
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.treasury
d_treasury_1184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_162 ->
  Integer
d_treasury_1184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_168
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.hash
d_hash_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810 ->
  Integer
d_hash_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_818
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.url
d_url_1190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_816
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.net
d_net_1194 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.pay
d_pay_1196 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1196 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.stake
d_stake_1198 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.attrsSize
d_attrsSize_1202 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.net
d_net_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1204 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.pay
d_pay_1206 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1206 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.coldCreds
d_coldCreds_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.epoch
d_epoch_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  Integer
d_epoch_1212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.pp
d_pp_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pp_1214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.votes
d_votes_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_votes_1216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.wdrls
d_wdrls_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1258 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.dState
d_dState_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_dState_1222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1330
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.gState
d_gState_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310
d_gState_1224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1334
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.pState
d_pState_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_pState_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1332
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.rewards
d_rewards_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1294
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.stakeDelegs
d_stakeDelegs_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1292
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.voteDelegs
d_voteDelegs_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1290
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.delegatees
d_delegatees_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1338 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pools
d_pools_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1338 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pparams
d_pparams_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1338 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_pparams_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P1
d_P1_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2a
d_P2a_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2b
d_P2b_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P3
d_P3_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P4
d_P4_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5a
d_P5a_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5b
d_P5b_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5c
d_P5c_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5d
d_P5d_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P6
d_P6_1298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.ccHotKeys
d_ccHotKeys_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1318
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.dreps
d_dreps_1304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1316
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaData
d_gaData_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaType
d_gaType_1310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822
d_gaType_1310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.action
d_action_1314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876
d_action_1314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1012
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.expiresIn
d_expiresIn_1316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  Integer
d_expiresIn_1316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1010
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.prevAction
d_prevAction_1318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  AgdaAny
d_prevAction_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1014
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.returnAddr
d_returnAddr_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1008
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.votes
d_votes_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_994 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_978
d_votes_1322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1006
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Anchor
d_Anchor_1342 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1352 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1352
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_1026
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1354 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1354
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1028
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1356 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1356
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1034
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1358 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1358
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1032
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1360 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1030
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovAction
d_GovAction_1362 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionData
d_GovActionData_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  ()
d_GovActionData_1366 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionID
d_GovActionID_1368 :: ()
d_GovActionID_1368 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionOf
d_GovActionOf_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_890 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876
d_GovActionOf_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_896
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionState
d_GovActionState_1372 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionType
d_GovActionType_1376 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822
d_GovActionTypeOf_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_866
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal
d_GovProposal_1380 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRole
d_GovRole_1384 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRoleCredential
d_GovRoleCredential_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774 ->
  ()
d_GovRoleCredential_1386 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote
d_GovVote_1388 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter
d_GovVoter_1392 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes
d_GovVotes_1396 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1400 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_906
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1402 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1402
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1132
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1404 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_918
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1406 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1406
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_920
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction
d_HasGovAction_1408 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_890
d_HasGovAction'45'GovActionState_1412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1020
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_890
d_HasGovAction'45'GovProposal_1414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1018
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType
d_HasGovActionType_1416 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860
d_HasGovActionType'45'GovAction_1420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_904
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860
d_HasGovActionType'45'GovActionState_1422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1024
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860
d_HasGovActionType'45'GovProposal_1424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1022
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1426 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HashProtected
d_HashProtected_1430 :: () -> ()
d_HashProtected_1430 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.NeedsHash
d_NeedsHash_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822 ->
  ()
d_NeedsHash_1434 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VDeleg
d_VDeleg_1448 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Vote
d_Vote_1450 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegs
d_VoteDelegs_1452 :: ()
d_VoteDelegs_1452 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Voter
d_Voter_1456 :: ()
d_Voter_1456 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaData
d_gaData_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  AgdaAny
d_gaData_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_884
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaType
d_gaType_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822
d_gaType_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.isGovVoterCredential
d_isGovVoterCredential_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_1464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterCredential_1138
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1134
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.proposedCC
d_proposedCC_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1144
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.action
d_action_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876
d_action_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_964
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.anchor
d_anchor_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
d_anchor_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_974
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.deposit
d_deposit_1490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  Integer
d_deposit_1490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_970
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.policy
d_policy_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  Maybe Integer
d_policy_1492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_968
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.prevAction
d_prevAction_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  AgdaAny
d_prevAction_1494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_966
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.returnAddr
d_returnAddr_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_972
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.anchor
d_anchor_1508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_810
d_anchor_1508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_946
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.gid
d_gid_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_940
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.vote
d_vote_1512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_922
d_vote_1512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_944
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.voter
d_voter_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784
d_voter_1514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_942
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvCredential
d_gvCredential_1518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  AgdaAny
d_gvCredential_1518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_792
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvRole
d_gvRole_1520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_784 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_774
d_gvRole_1520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_790
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvCC
d_gvCC_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_986
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvDRep
d_gvDRep_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_988
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvSPO
d_gvSPO_1528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_978 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_990
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_890 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_876
d_GovActionOf_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_896
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_860 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_822
d_GovActionTypeOf_1536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_866
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_842 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1526
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.UpdateT
d_UpdateT_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  ()
d_UpdateT_1562 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.applyUpdate
d_applyUpdate_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyUpdate_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1476
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppUpd
d_ppUpd_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460
d_ppUpd_1566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppWF?
d_ppWF'63'_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppdWellFormed
d_ppdWellFormed_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  AgdaAny -> ()
d_ppdWellFormed_1570 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.updateGroups
d_updateGroups_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1494 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_updateGroups_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1478
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1512
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptHash
d_psScriptHash_1576 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_376 ->
  Integer
d_psScriptHash_1576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptSize
d_psScriptSize_1578 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_376 ->
  Integer
d_psScriptSize_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.timelock
d_timelock_1582 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_356 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_98
d_timelock_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_364
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptHash
d_tlScriptHash_1584 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_356 ->
  Integer
d_tlScriptHash_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptSize
d_tlScriptSize_1586 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_356 ->
  Integer
d_tlScriptSize_1586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1106 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1114
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1594 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_438 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState.CertStateOf
d_CertStateOf_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1322
d_CertStateOf_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1426
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential.CredentialOf
d_CredentialOf_1602 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1602 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts.DCertsOf
d_DCertsOf_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3274 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
d_DCertsOf_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3282
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps.DRepsOf
d_DRepsOf_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1122 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState.DStateOf
d_DStateOf_1614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1358 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1282
d_DStateOf_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits.DepositsOf
d_DepositsOf_1618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState.GStateOf
d_GStateOf_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1398 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1310
d_GStateOf_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3294 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950]
d_GovProposalsOf_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1630 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_1630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams.PParamsOf
d_PParamsOf_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_418 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_PParamsOf_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_426
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState.PStateOf
d_PStateOf_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1378 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298
d_PStateOf_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools.PoolsOf
d_PoolsOf_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1138 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1146
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring.RetiringOf
d_RetiringOf_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards.RewardsOf
d_RewardsOf_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody.TxBodyOf
d_TxBodyOf_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3254 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_TxBodyOf_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3262
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId.TxIdOf
d_TxIdOf_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3314 ->
  AgdaAny -> Integer
d_TxIdOf_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3322
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO.UTxOOf
d_UTxOOf_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3158 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3166
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1670 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1670 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.homo
d_homo_1674 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1674 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1676 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1678 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1680 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1680 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.cong
d_cong_1682 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1682 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.homo
d_homo_1686 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1686 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.injective
d_injective_1688 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1688 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1690 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1690 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1692 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1692 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1694 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1694 ~v0 v1 = du_isMagmaMonomorphism_1694 v1
du_isMagmaMonomorphism_1694 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1694 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1696 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1696 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1698 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1698 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1700 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1700 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1702 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1702 ~v0 v1 = du_isRelIsomorphism_1702 v1
du_isRelIsomorphism_1702 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1702 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1704 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1704 ~v0 v1 = du_isRelMonomorphism_1704 v1
du_isRelMonomorphism_1704 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1704 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.surjective
d_surjective_1706 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1706 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1708 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1708 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.cong
d_cong_1710 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1710 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.homo
d_homo_1714 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1714 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.injective
d_injective_1716 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1716 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1718 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1718 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1720 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1720 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1722 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1722 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1724 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1724 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1726 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1726 ~v0 v1 = du_isRelMonomorphism_1726 v1
du_isRelMonomorphism_1726 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1726 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1728 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1728 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.cong
d_cong_1730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1730 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.P1Script
d_P1Script_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  ()
d_P1Script_1740 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.validP1Script
d_validP1Script_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1742 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.Emax
d_Emax_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_Emax_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a
d_a_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_a_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a0
d_a0_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_390 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.b
d_b_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_b_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMaxTermLength
d_ccMaxTermLength_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMaxTermLength_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMinSize
d_ccMinSize_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_ccMinSize_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_coinsPerUTxOByte_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.collateralPercentage
d_collateralPercentage_1772 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_collateralPercentage_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.costmdls
d_costmdls_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepActivity
d_drepActivity_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_drepActivity_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepDeposit
d_drepDeposit_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_drepDeposit_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepThresholds
d_drepThresholds_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionDeposit
d_govActionDeposit_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionDeposit_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionLifetime
d_govActionLifetime_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_govActionLifetime_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.keyDeposit
d_keyDeposit_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_keyDeposit_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockExUnits
d_maxBlockExUnits_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockSize
d_maxBlockSize_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxBlockSize_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxCollateralInputs
d_maxCollateralInputs_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxCollateralInputs_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxHeaderSize
d_maxHeaderSize_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxHeaderSize_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerBlock_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxRefScriptSizePerTx_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxExUnits
d_maxTxExUnits_1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxSize
d_maxTxSize_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxTxSize_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxValSize
d_maxValSize_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_maxValSize_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minUTxOValue
d_minUTxOValue_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_minUTxOValue_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.monetaryExpansion
d_monetaryExpansion_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.nopt
d_nopt_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_nopt_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolDeposit
d_poolDeposit_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  Integer
d_poolDeposit_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_364
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolThresholds
d_poolThresholds_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246
d_poolThresholds_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.prices
d_prices_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.pv
d_pv_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostStride
d_refScriptCostStride_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.treasuryCut
d_treasuryCut_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.UpdateT
d_UpdateT_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  ()
d_UpdateT_1830 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.applyUpdate
d_applyUpdate_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyUpdate_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppWF?
d_ppWF'63'_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1484
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  AgdaAny -> ()
d_ppdWellFormed_1836 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.updateGroups
d_updateGroups_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1460 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_updateGroups_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate._?↗_
d__'63''8599'__1842 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1842 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1204
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1844 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1844
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1406
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1642
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1884
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1846 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_270
d_applyPParamsUpdate_1850
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1252
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_190]
d_modifiedUpdateGroups_1852
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1188
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesEconomicGroup_1854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_884
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesGovernanceGroup_1856
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1036
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesNetworkGroup_1858
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_808
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesSecurityGroup_1860
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1112
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Bool
d_modifiesTechnicalGroup_1862
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_960
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  ()
d_paramsUpdateWellFormed_1864 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1866 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_430
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_650
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_652
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_654
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_656
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_678
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_672
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_700
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_718
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_708
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_710
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_712
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.≡-update
d_'8801''45'update_1868 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1868 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1218
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1872 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_Emax_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a
d_a_1874 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_a_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_666 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a0
d_a0_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_694 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.b
d_b_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_b_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_668 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_ccMaxTermLength_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_ccMinSize_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_coinsPerUTxOByte_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_678
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_collateralPercentage_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_700
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_drepActivity_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_drepDeposit_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_202
d_drepThresholds_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_govActionDeposit_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_710
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_govActionLifetime_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_keyDeposit_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_670
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_662
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxBlockSize_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_650
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxCollateralInputs_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_658
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxHeaderSize_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_654
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_684
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_660
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxTxSize_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_652
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_maxValSize_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_656
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_682
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_minUTxOValue_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_674
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_nopt_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_698
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe Integer
d_poolDeposit_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_672
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246
d_poolThresholds_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.prices
d_prices_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_680
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.pv
d_pv_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_664 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_578 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_676
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.pools
d_pools_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1304
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.retiring
d_retiring_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1298 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1306
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1950 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.CostModel
d_CostModel_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_CostModel_1952 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T
d_T_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_T_1954 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.THash
d_THash_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_THash_1956 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dataʰ
d_Data'688'_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Datum
d_Datum_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Datum_1960 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_264
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-T
d_DecEq'45'T_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1974 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1976 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnits
d_ExUnits_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_ExUnits_1980 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.LangDepView
d_LangDepView_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_LangDepView_1984 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Language
d_Language_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Language_1986 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusScript
d_PlutusScript_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_PlutusScript_1988 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV1
d_PlutusV1_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny
d_PlutusV1_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV2
d_PlutusV2_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny
d_PlutusV2_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV3
d_PlutusV3_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny
d_PlutusV3_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Prices
d_Prices_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Prices_1996 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Redeemer
d_Redeemer_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  ()
d_Redeemer_1998 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_236
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-Prices
d_Show'45'Prices_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-THash
d_Show'45'THash_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2006 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-Hashable
d_T'45'Hashable_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2008 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-isHashable
d_T'45'isHashable_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2010 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.language
d_language_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny -> AgdaAny
d_language_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.toData
d_toData_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  () -> AgdaAny -> AgdaAny
d_toData_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.validPlutusScript
d_validPlutusScript_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2016 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q1
d_Q1_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2a
d_Q2a_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_260 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2b
d_Q2b_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q4
d_Q4_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q5
d_Q5_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_246 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.net
d_net_2032 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  Integer
d_net_2032 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.stake
d_stake_2034 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2034 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2038 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.CostModel
d_CostModel_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_CostModel_2040 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T
d_T_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_T_2042 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.THash
d_THash_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_THash_2044 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dataʰ
d_Data'688'_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Datum
d_Datum_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Datum_2048 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_114
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_118
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-T
d_DecEq'45'T_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2066 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2068 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnits
d_ExUnits_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_ExUnits_2072 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_116
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2078
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_396
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.LangDepView
d_LangDepView_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_LangDepView_2080 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Language
d_Language_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Language_2082 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.P1Script
d_P1Script_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_P1Script_2084 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusScript
d_PlutusScript_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_PlutusScript_2086 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV1
d_PlutusV1_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny
d_PlutusV1_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV2
d_PlutusV2_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny
d_PlutusV2_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV3
d_PlutusV3_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny
d_PlutusV3_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Prices
d_Prices_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Prices_2094 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Redeemer
d_Redeemer_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Redeemer_2096 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Script
d_Script_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  ()
d_Script_2098 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-Prices
d_Show'45'Prices_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-THash
d_Show'45'THash_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2106 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-Hashable
d_T'45'Hashable_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2108 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-isHashable
d_T'45'isHashable_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2110 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_198
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_320
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isNativeScript
d_isNativeScript_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2114 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script
d_isP1Script_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2116 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script?
d_isP1Script'63'_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2118 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_402
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script
d_isP2Script_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2120 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script?
d_isP2Script'63'_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2122 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_416
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.language
d_language_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny -> AgdaAny
d_language_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.p1s
d_p1s_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_98
d_p1s_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_300
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ps
d_ps_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_122
d_ps_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toData
d_toData_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  () -> AgdaAny -> AgdaAny
d_toData_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_toData_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_322
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP1Script
d_toP1Script_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_410
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP2Script
d_toP2Script_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_422
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validP1Script
d_validP1Script_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2136 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validPlutusScript
d_validPlutusScript_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_274 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2138 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.cost
d_cost_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  Integer
d_cost_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1044 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.margin
d_margin_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1046
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.owners
d_owners_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  [Integer]
d_owners_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.pledge
d_pledge_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  Integer
d_pledge_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1048
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.rewardAccount
d_rewardAccount_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1030 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._∙_
d__'8729'__2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2168 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≈_
d__'8776'__2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2170 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2172 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2178 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2182 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2186 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value
d_Value_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2190 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.addValue
d_addValue_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin
d_coin_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2198 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2202 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.inject
d_inject_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.monoid
d_monoid_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2206 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.policies
d_policies_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.rawMonoid
d_rawMonoid_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2210 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.size
d_size_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.sumᵛ
d_sum'7515'_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2214
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.ε
d_ε_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2216 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2220 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2222 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2222 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2224 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2224 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2226 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2226 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2228 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2228 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2232 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2234 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2236 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2236 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2238 ~v0 = du_isMagmaIsomorphism_2238
du_isMagmaIsomorphism_2238 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2238 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2240 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2240 v2
du_isMagmaMonomorphism_2240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2240 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2244 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2248 ~v0 ~v1 v2 = du_isRelIsomorphism_2248 v2
du_isRelIsomorphism_2248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2248 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2250 ~v0 ~v1 v2 = du_isRelMonomorphism_2250 v2
du_isRelMonomorphism_2250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2250 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2254 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2256 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2260 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2264 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2266 ~v0 = du_isMagmaMonomorphism_2266
du_isMagmaMonomorphism_2266 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2266 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2272 ~v0 ~v1 v2 = du_isRelMonomorphism_2272 v2
du_isRelMonomorphism_2272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2272 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2274 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2276 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.body
d_body_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174
d_body_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.isValid
d_isValid_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Bool
d_isValid_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txAD
d_txAD_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Maybe Integer
d_txAD_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txsize
d_txsize_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  Integer
d_txsize_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.wits
d_wits_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3354 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332
d_wits_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.collateralInputs
d_collateralInputs_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.currentTreasury
d_currentTreasury_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe Integer
d_currentTreasury_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.mint
d_mint_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_mint_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.refInputs
d_refInputs_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.reqSignerHashes
d_reqSignerHashes_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [Integer]
d_reqSignerHashes_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe Integer
d_scriptIntegrityHash_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txADhash
d_txADhash_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe Integer
d_txADhash_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txCerts
d_txCerts_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1222]
d_txCerts_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txDonation
d_txDonation_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_txDonation_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txFee
d_txFee_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_txFee_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txGovProposals
d_txGovProposals_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_950]
d_txGovProposals_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3236
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txGovVotes
d_txGovVotes_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_930]
d_txGovVotes_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txId
d_txId_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Integer
d_txId_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txIns
d_txIns_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3212
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txNetworkId
d_txNetworkId_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  Maybe Integer
d_txNetworkId_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txOuts
d_txOuts_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txVldt
d_txVldt_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txWithdrawals
d_txWithdrawals_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3174 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scripts
d_scripts_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scriptsP1
d_scriptsP1_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_356]
d_scriptsP1_2332
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3350
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txdats
d_txdats_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332 ->
  [Integer]
d_txdats_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txrdmrs
d_txrdmrs_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.vkSigs
d_vkSigs_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3332 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERT
d_Computational'45'CERT_2374 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2374
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2006
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTBASE
d_Computational'45'CERTBASE_2376 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTBASE_2376
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTBASE_2314
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTS
d_Computational'45'CERTS_2378 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2378
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-DELEG
d_Computational'45'DELEG_2380 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_2380
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'DELEG_1502
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-GOVCERT
d_Computational'45'GOVCERT_2382 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_2382
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'GOVCERT_1730
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-POOL
d_Computational'45'POOL_2384 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POOL_2384
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'POOL_1704
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupDeposit
d_lookupDeposit_2386 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1054 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_2386
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_lookupDeposit_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2482
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-UnitInterval
d_HsTy'45'UnitInterval_2388 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UnitInterval_2388 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-UnitInterval
d_Conv'45'UnitInterval_2390 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UnitInterval_2390
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Foreign.Convertible.d_to_18
              (coe
                 MAlonzo.Code.Foreign.Convertible.C_constructor_22
                 (coe
                    (\ v1 ->
                       case coe v1 of
                         MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
                           -> coe
                                MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 (coe v2)
                                (coe addInt (coe (1 :: Integer)) (coe v3))
                         _ -> MAlonzo.RTE.mazUnreachableError))
                 (coe
                    (\ v1 ->
                       case coe v1 of
                         MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v2 v3
                           -> case coe v3 of
                                0 -> coe MAlonzo.Code.Data.Rational.Base.d_0ℚ_178
                                _ -> coe
                                       MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe v2)
                                       (coe v3)
                         _ -> MAlonzo.RTE.mazUnreachableError)))
              (MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_fromUnitInterval_72
                 (coe v0))))
      (coe
         (\ v0 ->
            let v1
                  = MAlonzo.Code.Ledger.Prelude.Numeric.UnitInterval.d_toUnitInterval_74
                      (coe
                         MAlonzo.Code.Foreign.Convertible.d_from_20
                         (coe
                            MAlonzo.Code.Foreign.Convertible.C_constructor_22
                            (coe
                               (\ v1 ->
                                  case coe v1 of
                                    MAlonzo.Code.Data.Rational.Base.C_mkℚ_24 v2 v3
                                      -> coe
                                           MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10
                                           (coe v2) (coe addInt (coe (1 :: Integer)) (coe v3))
                                    _ -> MAlonzo.RTE.mazUnreachableError))
                            (coe
                               (\ v1 ->
                                  case coe v1 of
                                    MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes.C__'44'__10 v2 v3
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
                        MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                        ("Formal Spec: rational outside of unit interval"
                         ::
                         Data.Text.Text)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-PosNat
d_HsTy'45'PosNat_2400 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PosNat_2400 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-PosNat
d_Conv'45'PosNat_2402 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PosNat_2402
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_fromPosNat_16
              (coe v0)))
      (coe
         (\ v0 ->
            let v1
                  = MAlonzo.Code.Ledger.Prelude.Numeric.PositiveNat.d_toPosNat_18
                      (coe v0) in
            coe
              (case coe v1 of
                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v2 -> coe v2
                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                   -> coe
                        MAlonzo.Code.Ledger.Prelude.Foreign.Util.d_error_10 erased
                        ("Formal Spec: natural number is zero (not nonZero)"
                         ::
                         Data.Text.Text)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
