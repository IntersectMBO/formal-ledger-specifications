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
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
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
              MAlonzo.Code.Axiom.Set.du_fromList_456
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1516
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._+ᵉ'_
d__'43''7497'''__94 :: Integer -> Integer -> Integer
d__'43''7497'''__94
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._∙_
d__'8729'__96 :: Integer -> Integer -> Integer
d__'8729'__96
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
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
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__104 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__106 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__108 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__110 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__112 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__114 a0 a1 a2 a3
  = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__116 a0 a1 a2 a3
  = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_118 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_118 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_120 :: ()
d_THash_120 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt
d_Acnt_122 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ActiveSlotCoeff
d_ActiveSlotCoeff_126 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_126
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Addr
d_Addr_128 :: ()
d_Addr_128 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor
d_Anchor_130 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.AuxiliaryData
d_AuxiliaryData_134 :: ()
d_AuxiliaryData_134 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr
d_BaseAddr_136 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr
d_BootstrapAddr_140 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCHotKeys
d_CCHotKeys_146 :: ()
d_CCHotKeys_146 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCHotKeysOf
d_CCHotKeysOf_148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv
d_CertEnv_162 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState
d_CertState_166 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertStateOf
d_CertStateOf_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1492 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396
d_CertStateOf_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1500
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CostModel
d_CostModel_174 :: ()
d_CostModel_174 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Credential
d_Credential_176 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CredentialOf
d_CredentialOf_180 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DCert
d_DCert_182 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DCertsOf
d_DCertsOf_184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_DCertsOf_184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DReps
d_DReps_196 :: ()
d_DReps_196 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DRepsOf
d_DRepsOf_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1252
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState
d_DState_200 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DStateOf
d_DStateOf_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_DStateOf_204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1440
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T
d_T_206 :: ()
d_T_206 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_208 :: ()
d_THash_208 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dataʰ
d_Data'688'_210 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_210
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Datum
d_Datum_212 :: ()
d_Datum_212 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-evalTimelock
d_Dec'45'evalTimelock_214 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_214
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_162
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isScript
d_Dec'45'isScript_216 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_216
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isSigned
d_Dec'45'isSigned_218 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_218
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isVKey
d_Dec'45'isVKey_220 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_220
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validP1Script
d_Dec'45'validP1Script_222 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_364 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_222
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_224 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_384 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_224
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_270
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-≤ᵗ
d_Dec'45''8804''7511'_226 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_226
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEQ-Prices
d_DecEQ'45'Prices_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_228
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_230 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_230
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_232 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_232
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-CostModel
d_DecEq'45'CostModel_234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_234
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Credential
d_DecEq'45'Credential_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_236
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_238 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_238
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1156
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_576
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Epoch
d_DecEq'45'Epoch_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_242
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ExUnits
d_DecEq'45'ExUnits_244 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_244
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovActionType
d_DecEq'45'GovActionType_246 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_1112
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovRole
d_DecEq'45'GovRole_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_248
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1114
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovVoter
d_DecEq'45'GovVoter_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_250
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_252 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_252
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_382
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ix
d_DecEq'45'Ix_254 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_254
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1280
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-LangDepView
d_DecEq'45'LangDepView_256 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_256
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Language
d_DecEq'45'Language_258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_258
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Netw
d_DecEq'45'Netw_260 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_260
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-P1Script
d_DecEq'45'P1Script_262 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_262
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_264 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_264
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_582
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParams
d_DecEq'45'PParams_266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_266
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_580
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_268 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_268
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_578
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_270 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_270
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_272 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_272
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ser
d_DecEq'45'Ser_274 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_274
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Sig
d_DecEq'45'Sig_276 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_276
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Slot
d_DecEq'45'Slot_278 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_278
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_280 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_280
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1284
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_282 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_282
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_284 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_284
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1284
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_286 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_286
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_288 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_288
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Timelock
d_DecEq'45'Timelock_290 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_290
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_118
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-TxId
d_DecEq'45'TxId_292 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_292
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1282
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-UpdT
d_DecEq'45'UpdT_294 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_294
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1544
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2388
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-VDeleg
d_DecEq'45'VDeleg_296 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_296
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1118
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Value
d_DecEq'45'Value_298 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_298
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Vote
d_DecEq'45'Vote_300 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_300
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1116
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecPo-Slot
d_DecPo'45'Slot_302 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_302
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv
d_DelegEnv_304 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositPurpose
d_DepositPurpose_308 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Deposits
d_Deposits_310 :: ()
d_Deposits_310 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositsOf
d_DepositsOf_312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1140 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds
d_DrepThresholds_314 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSAbstractFunctions
d_HSAbstractFunctions_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2404
d_HSAbstractFunctions_318
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3132
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTransactionStructure
d_HSTransactionStructure_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_320
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Epoch
d_Epoch_324 :: ()
d_Epoch_324 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_326 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_326
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_222
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnits
d_ExUnits_328 :: ()
d_ExUnits_328 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState
d_GState_336 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GStateOf
d_GStateOf_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1472 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384
d_GStateOf_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1480
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction
d_GovAction_342 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionData
d_GovActionData_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804 ->
  ()
d_GovActionData_346 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionID
d_GovActionID_350 :: ()
d_GovActionID_350 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionOf
d_GovActionOf_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_852 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838
d_GovActionOf_352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_858
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState
d_GovActionState_354 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionType
d_GovActionType_358 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionTypeOf
d_GovActionTypeOf_360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804
d_GovActionTypeOf_360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_828
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams
d_GovParams_362 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal
d_GovProposal_366 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposalsOf
d_GovProposalsOf_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3406 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986]
d_GovProposalsOf_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRole
d_GovRole_372 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRoleCredential
d_GovRoleCredential_374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_792 ->
  ()
d_GovRoleCredential_374 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote
d_GovVote_376 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVoter
d_GovVoter_380 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVoterOf
d_GovVoterOf_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1042 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882
d_GovVoterOf_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVotes
d_GovVotes_386 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSCryptoStructure
d_HSCryptoStructure_392 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_HSCryptoStructure_392
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSEpochStructure
d_HSEpochStructure_394 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_HSEpochStructure_394
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSGlobalConstants
d_HSGlobalConstants_396 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_HSGlobalConstants_396
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript
d_HSPlutusScript_398 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSScriptStructure
d_HSScriptStructure_402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
d_HSScriptStructure_402
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_396
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock
d_HSTimelock_404 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys
d_HasCCHotKeys_408 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176
d_HasCCHotKeys'45'CertState_412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1536
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176
d_HasCCHotKeys'45'GState_414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1524
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength
d_HasCCMaxTermLength_416 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-Acnt
d_HasCast'45'Acnt_420 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_196
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertEnv
d_HasCast'45'CertEnv_422 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1552
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertState
d_HasCast'45'CertState_424 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1560
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DState
d_HasCast'45'DState_426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1554
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_428 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1562
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GState
d_HasCast'45'GState_430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1558
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_432 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_868
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovVote
d_HasCast'45'GovVote_434 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected
d_HasCast'45'HashProtected_436 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_980
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_438 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_438
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_982
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-PState
d_HasCast'45'PState_440 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1556
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState
d_HasCertState_442 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-CertState
d_HasCoin'45'CertState_446 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_446
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1550
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-TxOut
d_HasCoin'45'TxOut_448 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_448
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3618
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential
d_HasCredential_450 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_454 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_454
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_164
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts
d_HasDCerts_456 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts-Tx
d_HasDCerts'45'Tx_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3386
d_HasDCerts'45'Tx_460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3494
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps
d_HasDReps_462 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-CertState
d_HasDReps'45'CertState_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244
d_HasDReps'45'CertState_466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1534
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-GState
d_HasDReps'45'GState_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244
d_HasDReps'45'GState_468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1522
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState
d_HasDState_470 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState-CertState
d_HasDState'45'CertState_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432
d_HasDState'45'CertState_474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1526
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits
d_HasDeposits_476 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDonations-Tx
d_HasDonations'45'Tx_480 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3504
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDonations-TxBody
d_HasDonations'45'TxBody_482 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3442
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasFees-Tx
d_HasFees'45'Tx_484 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3492
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState
d_HasGState_486 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState-CertState
d_HasGState'45'CertState_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1472
d_HasGState'45'CertState_490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1530
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction
d_HasGovAction_492 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_852
d_HasGovAction'45'GovActionState_496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_852
d_HasGovAction'45'GovProposal_498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1104
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType
d_HasGovActionType_500 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822
d_HasGovActionType'45'GovAction_504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_866
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822
d_HasGovActionType'45'GovActionState_506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1110
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822
d_HasGovActionType'45'GovProposal_508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1108
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals
d_HasGovProposals_510 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3406
d_HasGovProposals'45'Tx_514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3496
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovVoter
d_HasGovVoter_516 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1042
d_HasGovVoter'45'GovVote_520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1098
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId
d_HasNetworkId_522 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_526 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_526
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_528 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_528
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_530 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RewardAddress_530
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_162
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams
d_HasPParams_532 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430
d_HasPParams'45'CertEnv_536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1508
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState
d_HasPState_538 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState-CertState
d_HasPState'45'CertState_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452
d_HasPState'45'CertState_542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1528
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPolicy
d_HasPolicy_544 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1082
d_HasPolicy'45'GovProposal_548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1102
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools
d_HasPools_550 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-CertState
d_HasPools'45'CertState_554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
d_HasPools'45'CertState_554
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1538
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-PState
d_HasPools'45'PState_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192
d_HasPools'45'PState_556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1518
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasReserves-Acnt
d_HasReserves'45'Acnt_558 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_558
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_184
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring
d_HasRetiring_560 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring-PState
d_HasRetiring'45'PState_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1208
d_HasRetiring'45'PState_564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1520
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards
d_HasRewards_566 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-CertState
d_HasRewards'45'CertState_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224
d_HasRewards'45'CertState_570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1532
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-DState
d_HasRewards'45'DState_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224
d_HasRewards'45'DState_572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1516
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStake
d_HasStake_574 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs
d_HasStakeDelegs_578 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
d_HasStakeDelegs'45'CertState_582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1542
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256
d_HasStakeDelegs'45'DState_584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1514
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_586 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_182
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody
d_HasTxBody_588 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody-Tx
d_HasTxBody'45'Tx_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3366
d_HasTxBody'45'Tx_592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3490
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId
d_HasTxId_594 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId-Tx
d_HasTxId'45'Tx_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3426
d_HasTxId'45'Tx_598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3502
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO
d_HasUTxO_600 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVote
d_HasVote_604 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVote-GovVote
d_HasVote'45'GovVote_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1062
d_HasVote'45'GovVote_608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1100
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs
d_HasVoteDelegs_610 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_956
d_HasVoteDelegs'45'CertState_614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1540
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_956
d_HasVoteDelegs'45'DState_616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1512
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals
d_HasWithdrawals_618 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_622 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1510
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_624 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'Tx_624
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3500
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_626 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'TxBody_626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3498
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HashProtected
d_HashProtected_628 :: () -> ()
d_HashProtected_628 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_630 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSPlutusScript_630
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_396
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_632 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_632
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_380
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-P1Script
d_Hashable'45'P1Script_634 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_634
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_636 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_636
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-Script
d_Hashable'45'Script_638 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_638
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HsGovParams
d_HsGovParams_640 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512
d_HsGovParams_640
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_740
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_646 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_650 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_654 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ix
d_Ix_658 :: ()
d_Ix_658 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_660 :: ()
d_THash_660 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.KeyPair
d_KeyPair_664 :: ()
d_KeyPair_664 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.LangDepView
d_LangDepView_666 :: ()
d_LangDepView_666 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Language
d_Language_668 :: ()
d_Language_668 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.LanguageCostModels
d_LanguageCostModels_670 :: ()
d_LanguageCostModels_670 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_672 :: Integer
d_MaxLovelaceSupply'7580'_672
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MemoryEstimate
d_MemoryEstimate_674 :: ()
d_MemoryEstimate_674 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NeedsHash
d_NeedsHash_678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804 ->
  ()
d_NeedsHash_678 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Network
d_Network_680 :: ()
d_Network_680 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkId
d_NetworkId_684 :: Integer
d_NetworkId_684
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkIdOf
d_NetworkIdOf_686 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_686 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_692 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_692
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_694 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_694
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Number-Epoch
d_Number'45'Epoch_696 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_696
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1Script
d_P1Script_698 :: ()
d_P1Script_698 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure
d_P1ScriptStructure_700 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_P1ScriptStructure'45'HTL_704
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_398
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusScript
d_PlutusScript_706 :: ()
d_PlutusScript_706 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamGroup
d_PParamGroup_712 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams
d_PParams_714 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff
d_PParamsDiff_718 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsOf
d_PParamsOf_722 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UpdateT
d_UpdateT_724 :: ()
d_UpdateT_724 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState
d_PState_726 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PStateOf
d_PStateOf_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_PStateOf_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure
d_PlutusStructure_732 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV1
d_PlutusV1_736 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_736
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV2
d_PlutusV2_738 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_738
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV3
d_PlutusV3_740 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_740
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Policy
d_Policy_742 :: ()
d_Policy_742 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PolicyOf
d_PolicyOf_744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1082 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1090
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolEnv
d_PoolEnv_748 :: ()
d_PoolEnv_748 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds
d_PoolThresholds_750 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Pools
d_Pools_754 :: ()
d_Pools_754 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolsOf
d_PoolsOf_756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1200
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_758 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_758
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Prices
d_Prices_760 :: ()
d_Prices_760 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProposedPPUpdates
d_ProposedPPUpdates_762 :: ()
d_ProposedPPUpdates_762 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProtVer
d_ProtVer_764 :: ()
d_ProtVer_764 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Quorum
d_Quorum_766 :: Integer
d_Quorum_766
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_768 :: Integer
d_RandomnessStabilisationWindow_768
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_770 :: Integer
d_RandomnessStabilisationWindow'7580'_770
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RdmrPtr
d_RdmrPtr_772 :: ()
d_RdmrPtr_772 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Redeemer
d_Redeemer_774 :: ()
d_Redeemer_774 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Retiring
d_Retiring_788 :: ()
d_Retiring_788 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RetiringOf
d_RetiringOf_790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1208 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardAddress
d_RewardAddress_792 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Rewards
d_Rewards_796 :: ()
d_Rewards_796 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardsOf
d_RewardsOf_798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SKey
d_SKey_802 :: ()
d_SKey_802 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Script
d_Script_806 :: ()
d_Script_806 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptAddr
d_ScriptAddr_808 :: ()
d_ScriptAddr_808 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBaseAddr
d_ScriptBaseAddr_810 :: ()
d_ScriptBaseAddr_810 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_812 :: ()
d_ScriptBootstrapAddr_812 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptHash
d_ScriptHash_814 :: ()
d_ScriptHash_814 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure
d_ScriptStructure_818 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ser
d_Ser_824 :: ()
d_Ser_824 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-CostModel
d_Show'45'CostModel_826 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_826
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential
d_Show'45'Credential_828 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_828 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_830 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_830 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-DrepThresholds
d_Show'45'DrepThresholds_832 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_832
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_584
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Epoch
d_Show'45'Epoch_834 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_834
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ExUnits
d_Show'45'ExUnits_836 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_836
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_242
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-GovRole
d_Show'45'GovRole_838 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_838
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_800
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Language
d_Show'45'Language_840 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_840
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_842 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_842
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Show.Instances.du_Show'45'List_16
            (coe
               MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                        (coe v1))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                        (coe v1)))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Network
d_Show'45'Network_844 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_844
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PParams
d_Show'45'PParams_846 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_846
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_590
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PoolThresholds
d_Show'45'PoolThresholds_848 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_586
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Prices
d_Show'45'Prices_850 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_850
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_244
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ProtVer
d_Show'45'ProtVer_852 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_852
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-RewardAddress
d_Show'45'RewardAddress_854 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_854
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_288
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ScriptHash
d_Show'45'ScriptHash_856 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_856
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_858 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_858
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1284
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_860 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_860
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_862 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_862
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-VDeleg
d_Show'45'VDeleg_864 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_864
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Sig
d_Sig_866 :: ()
d_Sig_866 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slot
d_Slot_868 :: ()
d_Slot_868 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_870 :: Integer
d_SlotsPerEpoch'7580'_870
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slotʳ
d_Slot'691'_872 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_872
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindow
d_StabilityWindow_874 :: Integer
d_StabilityWindow_874
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindowᶜ
d_StabilityWindow'7580'_876 :: Integer
d_StabilityWindow'7580'_876
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Stake
d_Stake_878 :: ()
d_Stake_878 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegs
d_StakeDelegs_880 :: ()
d_StakeDelegs_880 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegsOf
d_StakeDelegsOf_882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1264
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeOf
d_StakeOf_884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1248
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams
d_StakePoolParams_886 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_890 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_890
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1284
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_892 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_892
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_894 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_894
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-isHashable
d_T'45'isHashable_896 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_896
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Timelock
d_Timelock_900 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra
d_TokenAlgebra_902 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx
d_Tx_910 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody
d_TxBody_914 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBodyOf
d_TxBodyOf_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3366 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
d_TxBodyOf_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxId
d_TxId_920 :: ()
d_TxId_920 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIdOf
d_TxIdOf_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3426 ->
  AgdaAny -> Integer
d_TxIdOf_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3434
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIn
d_TxIn_924 :: ()
d_TxIn_924 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOut
d_TxOut_926 :: ()
d_TxOut_926 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOutʰ
d_TxOut'688'_928 :: ()
d_TxOut'688'_928 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses
d_TxWitnesses_930 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxO
d_UTxO_934 :: ()
d_UTxO_934 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxOOf
d_UTxOOf_936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Update
d_Update_938 :: ()
d_Update_938 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VDeleg
d_VDeleg_942 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKey
d_VKey_944 :: ()
d_VKey_944 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyAddr
d_VKeyAddr_946 :: ()
d_VKeyAddr_946 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBaseAddr
d_VKeyBaseAddr_948 :: ()
d_VKeyBaseAddr_948 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_950 :: ()
d_VKeyBootstrapAddr_950 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value
d_Value_954 :: ()
d_Value_954 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_956 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_956
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegs
d_VoteDelegs_958 :: ()
d_VoteDelegs_958 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegsOf
d_VoteDelegsOf_960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_956 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_964
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteOf
d_VoteOf_962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_874
d_VoteOf_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1070
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Withdrawals
d_Withdrawals_964 :: ()
d_Withdrawals_964 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.WithdrawalsOf
d_WithdrawalsOf_966 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_966 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.activeDRepsOf
d_activeDRepsOf_968 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_968
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1270
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.activeInEpoch
d_activeInEpoch_970 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_970 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.adHashingScheme
d_adHashingScheme_972 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_972
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addEpoch
d_addEpoch_974 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_974
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addSlot
d_addSlot_976 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_976
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addValue
d_addValue_978 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_978
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.applyUpdate
d_applyUpdate_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyUpdate_980
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1494
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2388
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin
d_coin_988 :: Integer -> Integer
d_coin_988
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin-inject-lemma
d_coin'45'inject'45'lemma_990 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_990 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_992
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin∘inject≗id
d_coin'8728'inject'8791'id_994 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_994 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cryptoStructure
d_cryptoStructure_996 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_996
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cwitness
d_cwitness_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_998
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1310
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.e<sucᵉ
d_e'60'suc'7497'_1006 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1006
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epoch
d_epoch_1008 :: Integer -> Integer
d_epoch_1008
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epochStructure
d_epochStructure_1010 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1010
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.evalTimelock
d_evalTimelock_1024 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.firstSlot
d_firstSlot_1026 :: Integer -> Integer
d_firstSlot_1026
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaData
d_gaData_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  AgdaAny
d_gaData_1028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_846
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaType
d_gaType_1030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804
d_gaType_1030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_844
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getLanguage
d_getLanguage_1032 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_getLanguage_1032
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_426
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getScriptHash
d_getScriptHash_1034 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_1034
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValue
d_getValue_1036 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1036
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3506
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValueʰ
d_getValue'688'_1038 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1038
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3522
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.globalConstants
d_globalConstants_1040 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1040
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govParams
d_govParams_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512
d_govParams_1042
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_740
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govStructure
d_govStructure_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1044
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govVoterCredential
d_govVoterCredential_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1226
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.hashRespectsUnion
d_hashRespectsUnion_1048 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1048
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.inject
d_inject_1050 :: Integer -> Integer
d_inject_1050
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr
d_isBootstrapAddr_1052 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr?
d_isBootstrapAddr'63'_1054 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1054
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isGovVoterDRep
d_isGovVoterDRep_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1056
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1222
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHash
d_isKeyHash_1058 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1058 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObj
d_isKeyHashObj_1060 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1060
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1062 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1062
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyPair
d_isKeyPair_1064 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1064 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isNativeScript
d_isNativeScript_1066 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1066 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script
d_isP1Script_1068 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1068 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script?
d_isP1Script'63'_1070 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1070
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_404
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script
d_isP2Script_1072 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1072 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script?
d_isP2Script'63'_1074 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1074
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_418
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isPoolRegistered
d_isPoolRegistered_1076 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100
d_isPoolRegistered_1076
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1642
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScript
d_isScript_1078 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptAddr
d_isScriptAddr_1080 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1080 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptObj
d_isScriptObj_1082 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1082
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptRewardAddress
d_isScriptRewardAddress_1084 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_1084 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned
d_isSigned_1086 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1086 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned-correct
d_isSigned'45'correct_1088 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1088 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKey
d_isVKey_1090 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKeyAddr
d_isVKeyAddr_1092 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1092 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.khs
d_khs_1094 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1094
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.language
d_language_1096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_384 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1096
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupScriptHash
d_lookupScriptHash_1098 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1098
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3604
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.monoid
d_monoid_1100 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1100
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.netId
d_netId_1102 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1102
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.p1s
d_p1s_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1104
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWF-elim
d_paramsWF'45'elim_1106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1106 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_556
      v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWellFormed
d_paramsWellFormed_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  ()
d_paramsWellFormed_1108 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.payCred
d_payCred_1110 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1110
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pkk
d_pkk_1112 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1112
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.policies
d_policies_1114 :: Integer -> [Integer]
d_policies_1114
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.positivePParams
d_positivePParams_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [Integer]
d_positivePParams_1116
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_466
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppUpd
d_ppUpd_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478
d_ppUpd_1118
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2388
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppWF?
d_ppWF'63'_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1120
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1502
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2388
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppdWellFormed
d_ppdWellFormed_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  ()
d_ppdWellFormed_1122 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.preoEpoch
d_preoEpoch_1124 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1124
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.proposedCC
d_proposedCC_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1234
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ps
d_ps_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_1128
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow
d_pvCanFollow_1130 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow?
d_pvCanFollow'63'_1132 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1430
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rawMonoid
d_rawMonoid_1134 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1134
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.refScripts
d_refScripts_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1136
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3546
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rewardsBalance
d_rewardsBalance_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  Integer
d_rewardsBalance_1146
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1544
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptOuts
d_scriptOuts_1148 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3532
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptStructure
d_scriptStructure_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276
d_scriptStructure_1150
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sign
d_sign_1152 :: Integer -> Integer -> Integer
d_sign_1152
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1332
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.size
d_size_1154 :: Integer -> Integer
d_size_1154
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.stakeCred
d_stakeCred_1156 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1156
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sucᵉ
d_suc'7497'_1158 :: Integer -> Integer
d_suc'7497'_1158
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sumᵛ
d_sum'7515'_1160 :: [Integer] -> Integer
d_sum'7515'_1160
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP1Script
d_toP1Script_1162 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_364
d_toP1Script_1162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP2Script
d_toP2Script_1164 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_384
d_toP2Script_1164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_424
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.tokenAlgebra
d_tokenAlgebra_1166 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1166
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txInsScript
d_txInsScript_1168 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1168
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3540
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txInsVKey
d_txInsVKey_1170 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1170
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3526
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txOutHash
d_txOutHash_1172 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1172
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3512
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidBytes
d_txidBytes_1174 :: Integer -> Integer
d_txidBytes_1174 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txscripts
d_txscripts_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1176
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3594
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.updateGroups
d_updateGroups_1178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_updateGroups_1178
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1496
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2388
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validP1Script
d_validP1Script_1186 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_364 ->
  ()
d_validP1Script_1186 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validPlutusScript
d_validPlutusScript_1188 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_384 ->
  ()
d_validPlutusScript_1188 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ε
d_ε_1190 :: Integer
d_ε_1190
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2406
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1192 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1192 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕEpochStructure
d_ℕEpochStructure_1194 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1194
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1298
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕtoEpoch
d_ℕtoEpoch_1196 :: Integer -> Integer
d_ℕtoEpoch_1196
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.≤-predᵉ
d_'8804''45'pred'7497'_1198 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1198
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.reserves
d_reserves_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_reserves_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.treasury
d_treasury_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_170 ->
  Integer
d_treasury_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_176
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.hash
d_hash_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_894 ->
  Integer
d_hash_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_902
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.url
d_url_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_894 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_900
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.net
d_net_1264 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1264 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.pay
d_pay_1266 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.stake
d_stake_1268 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1268 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.attrsSize
d_attrsSize_1272 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1272 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.net
d_net_1274 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1274 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.pay
d_pay_1276 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1276 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.coldCreds
d_coldCreds_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.epoch
d_epoch_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  Integer
d_epoch_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.pp
d_pp_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pp_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.votes
d_votes_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
d_votes_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.wdrls
d_wdrls_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1328 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.dState
d_dState_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_dState_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.gState
d_gState_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384
d_gState_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.pState
d_pState_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_pState_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.rewards
d_rewards_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1364
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.stakeDelegs
d_stakeDelegs_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.voteDelegs
d_voteDelegs_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.delegatees
d_delegatees_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1412 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pools
d_pools_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1412 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1422
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pparams
d_pparams_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1412 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_pparams_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P1
d_P1_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2a
d_P2a_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2b
d_P2b_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P3
d_P3_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P4
d_P4_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5a
d_P5a_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5b
d_P5b_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5c
d_P5c_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5d
d_P5d_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_248 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P6
d_P6_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_250 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.ccHotKeys
d_ccHotKeys_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.dreps
d_dreps_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaData
d_gaData_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  AgdaAny
d_gaData_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_846
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaType
d_gaType_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804
d_gaType_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_844
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.action
d_action_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1014 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838
d_action_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1032
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.expiresIn
d_expiresIn_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1014 ->
  Integer
d_expiresIn_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.prevAction
d_prevAction_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1014 ->
  AgdaAny
d_prevAction_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1034
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.returnAddr
d_returnAddr_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1014 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1028
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.votes
d_votes_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1014 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_926
d_votes_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1026
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Anchor
d_Anchor_1412 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DReps
d_DReps_1422 :: ()
d_DReps_1422 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DRepsOf
d_DRepsOf_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1252
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1426 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_1112
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1428 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1114
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1430 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1430
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1432 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1432
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1118
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1434 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1116
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovAction
d_GovAction_1436 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionData
d_GovActionData_1440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804 ->
  ()
d_GovActionData_1440 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionID
d_GovActionID_1442 :: ()
d_GovActionID_1442 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionOf
d_GovActionOf_1444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_852 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838
d_GovActionOf_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_858
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionState
d_GovActionState_1446 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionType
d_GovActionType_1450 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804
d_GovActionTypeOf_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_828
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal
d_GovProposal_1454 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRole
d_GovRole_1458 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRoleCredential
d_GovRoleCredential_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_792 ->
  ()
d_GovRoleCredential_1460 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote
d_GovVote_1462 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter
d_GovVoter_1466 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoterOf
d_GovVoterOf_1470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1042 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882
d_GovVoterOf_1470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes
d_GovVotes_1472 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1476 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_868
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1478 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1480 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_980
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1482 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_982
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasDReps
d_HasDReps_1484 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction
d_HasGovAction_1488 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_852
d_HasGovAction'45'GovActionState_1492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_852
d_HasGovAction'45'GovProposal_1494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1104
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType
d_HasGovActionType_1496 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822
d_HasGovActionType'45'GovAction_1500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_866
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822
d_HasGovActionType'45'GovActionState_1502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1110
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822
d_HasGovActionType'45'GovProposal_1504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1108
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter
d_HasGovVoter_1506 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1042
d_HasGovVoter'45'GovVote_1510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1098
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy
d_HasPolicy_1512 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1082
d_HasPolicy'45'GovProposal_1516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1102
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote
d_HasVote_1518 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1062
d_HasVote'45'GovVote_1522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1100
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1524 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HashProtected
d_HashProtected_1528 :: () -> ()
d_HashProtected_1528 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.NeedsHash
d_NeedsHash_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804 ->
  ()
d_NeedsHash_1532 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Policy
d_Policy_1538 :: ()
d_Policy_1538 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.PolicyOf
d_PolicyOf_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1082 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1090
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Show-GovRole
d_Show'45'GovRole_1544 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_800
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1546 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1546
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VDeleg
d_VDeleg_1554 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Vote
d_Vote_1556 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegs
d_VoteDelegs_1558 :: ()
d_VoteDelegs_1558 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_956 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_964
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteOf
d_VoteOf_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_874
d_VoteOf_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1070
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.activeDRepsOf
d_activeDRepsOf_1566 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1566
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1270
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.activeInEpoch
d_activeInEpoch_1568 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1568 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaData
d_gaData_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  AgdaAny
d_gaData_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_846
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaType
d_gaType_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804
d_gaType_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_844
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.govVoterCredential
d_govVoterCredential_1574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1226
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1222
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.proposedCC
d_proposedCC_1580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1234
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.action
d_action_1596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838
d_action_1596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1000
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.anchor
d_anchor_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_894
d_anchor_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1010
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.deposit
d_deposit_1600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  Integer
d_deposit_1600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1006
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.policy
d_policy_1602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  Maybe Integer
d_policy_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1004
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.prevAction
d_prevAction_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  AgdaAny
d_prevAction_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1002
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.returnAddr
d_returnAddr_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1008
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.anchor
d_anchor_1618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_894
d_anchor_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_922
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.gid
d_gid_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_916
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.vote
d_vote_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_874
d_vote_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_920
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.voter
d_voter_1624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882
d_voter_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_918
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvCredential
d_gvCredential_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  AgdaAny
d_gvCredential_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_890
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvRole
d_gvRole_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_792
d_gvRole_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_888
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvCC
d_gvCC_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_934
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvDRep
d_gvDRep_1636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_936
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvSPO
d_gvSPO_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_926 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_938
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1244 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1252
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_852 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_838
d_GovActionOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_858
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_822 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_804
d_GovActionTypeOf_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_828
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1042 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_882
d_GovVoterOf_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1082 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1090
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote.VoteOf
d_VoteOf_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1062 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_874
d_VoteOf_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1070
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_956 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_964
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1544
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.UpdateT
d_UpdateT_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  ()
d_UpdateT_1688 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.applyUpdate
d_applyUpdate_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyUpdate_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppUpd
d_ppUpd_1692 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478
d_ppUpd_1692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppWF?
d_ppWF'63'_1694 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1502
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppdWellFormed
d_ppdWellFormed_1696 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  AgdaAny -> ()
d_ppdWellFormed_1696 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.updateGroups
d_updateGroups_1698 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1512 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_updateGroups_1698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1496
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1530
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptHash
d_psScriptHash_1702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_384 ->
  Integer
d_psScriptHash_1702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptSize
d_psScriptSize_1704 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_384 ->
  Integer
d_psScriptSize_1704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.timelock
d_timelock_1708 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_364 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104
d_timelock_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptHash
d_tlScriptHash_1710 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_364 ->
  Integer
d_tlScriptHash_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptSize
d_tlScriptSize_1712 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_364 ->
  Integer
d_tlScriptSize_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1176 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_450 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState.CertStateOf
d_CertStateOf_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1492 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1396
d_CertStateOf_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1500
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential.CredentialOf
d_CredentialOf_1728 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1728 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts.DCertsOf
d_DCertsOf_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3386 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_DCertsOf_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState.DStateOf
d_DStateOf_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1432 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1352
d_DStateOf_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1440
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits.DepositsOf
d_DepositsOf_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1140 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState.GStateOf
d_GStateOf_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1472 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1384
d_GStateOf_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1480
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3406 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986]
d_GovProposalsOf_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1752 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_1752 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams.PParamsOf
d_PParamsOf_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_PParamsOf_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_438
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState.PStateOf
d_PStateOf_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1452 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368
d_PStateOf_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools.PoolsOf
d_PoolsOf_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1192 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1200
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring.RetiringOf
d_RetiringOf_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1208 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards.RewardsOf
d_RewardsOf_1772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1224 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStake.StakeOf
d_StakeOf_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1240 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1248
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1256 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1264
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody.TxBodyOf
d_TxBodyOf_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3366 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
d_TxBodyOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId.TxIdOf
d_TxIdOf_1788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3426 ->
  AgdaAny -> Integer
d_TxIdOf_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3434
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO.UTxOOf
d_UTxOOf_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1796 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1796 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.homo
d_homo_1800 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1800 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1802 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1802 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1804 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1804 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1806 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1806 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.cong
d_cong_1808 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1808 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.homo
d_homo_1812 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1812 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.injective
d_injective_1814 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1814 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1816 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1816 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1818 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1818 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1820 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1820 ~v0 v1 = du_isMagmaMonomorphism_1820 v1
du_isMagmaMonomorphism_1820 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1820 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1822 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1824 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1824 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1826 v0
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
d_isRelIsomorphism_1828 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1828 ~v0 v1 = du_isRelIsomorphism_1828 v1
du_isRelIsomorphism_1828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1828 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1830 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1830 ~v0 v1 = du_isRelMonomorphism_1830 v1
du_isRelMonomorphism_1830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1830 v0
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
d_surjective_1832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1832 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1834 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.cong
d_cong_1836 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1836 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.homo
d_homo_1840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1840 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.injective
d_injective_1842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1842 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1844 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1844 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1846 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1846 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1848 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1852 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1852 ~v0 v1 = du_isRelMonomorphism_1852 v1
du_isRelMonomorphism_1852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1852 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1854 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.cong
d_cong_1856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1856 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.P1Script
d_P1Script_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_1866 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.validP1Script
d_validP1Script_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1868 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.Emax
d_Emax_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_Emax_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a
d_a_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_a_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a0
d_a0_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_400 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.b
d_b_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_b_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMaxTermLength
d_ccMaxTermLength_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMaxTermLength_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMinSize
d_ccMinSize_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_ccMinSize_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_coinsPerUTxOByte_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.collateralPercentage
d_collateralPercentage_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_collateralPercentage_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.costmdls
d_costmdls_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1900
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_422
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.costmdlsAssoc
d_costmdlsAssoc_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdlsAssoc_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepActivity
d_drepActivity_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepActivity_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepDeposit
d_drepDeposit_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_drepDeposit_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_418
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepThresholds
d_drepThresholds_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionDeposit
d_govActionDeposit_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionDeposit_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_416
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionLifetime
d_govActionLifetime_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_govActionLifetime_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.keyDeposit
d_keyDeposit_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_keyDeposit_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockExUnits
d_maxBlockExUnits_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockSize
d_maxBlockSize_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxBlockSize_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxCollateralInputs
d_maxCollateralInputs_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxCollateralInputs_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_364
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxHeaderSize
d_maxHeaderSize_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxHeaderSize_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerBlock_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxRefScriptSizePerTx_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxExUnits
d_maxTxExUnits_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxSize
d_maxTxSize_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxTxSize_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxValSize
d_maxValSize_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_maxValSize_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minUTxOValue
d_minUTxOValue_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_minUTxOValue_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.monetaryExpansion
d_monetaryExpansion_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.nopt
d_nopt_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_nopt_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolDeposit
d_poolDeposit_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  Integer
d_poolDeposit_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolThresholds
d_poolThresholds_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.prices
d_prices_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.pv
d_pv_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostStride
d_refScriptCostStride_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.treasuryCut
d_treasuryCut_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.UpdateT
d_UpdateT_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  ()
d_UpdateT_1958 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.applyUpdate
d_applyUpdate_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyUpdate_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1494
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppWF?
d_ppWF'63'_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1502
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  AgdaAny -> ()
d_ppdWellFormed_1964 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.updateGroups
d_updateGroups_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1478 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_updateGroups_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1496
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate._?↗_
d__'63''8599'__1970 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1970 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1220
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1972 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1972
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1424
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1666
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1916
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1974 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_280
d_applyPParamsUpdate_1978
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1268
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_198]
d_modifiedUpdateGroups_1980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1204
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesEconomicGroup_1982
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_900
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesGovernanceGroup_1984
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1052
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesNetworkGroup_1986
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_824
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesSecurityGroup_1988
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1128
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Bool
d_modifiesTechnicalGroup_1990
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_976
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  ()
d_paramsUpdateWellFormed_1992 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1994 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__106
      (coe
         MAlonzo.Code.Class.Decidable.Core.d_dec_16
         (coe
            MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe
               MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
               (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
            (coe
               MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
            (coe
               MAlonzo.Code.Axiom.Set.du_fromList_456
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1516
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_666
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_668
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_670
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_672
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_694
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_688
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_716
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_734
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_724
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_726
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_728
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.≡-update
d_'8801''45'update_1996 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1996 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1234
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_Emax_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a
d_a_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_a_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_682 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a0
d_a0_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_710 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.b
d_b_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_b_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_684 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMaxTermLength_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_734
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_ccMinSize_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_732
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_coinsPerUTxOByte_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_694
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_collateralPercentage_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_costmdls_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepActivity_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_730
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_drepDeposit_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_728
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_210
d_drepThresholds_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionDeposit_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_726
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_govActionLifetime_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_724
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_keyDeposit_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_678
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxBlockSize_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_666
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxCollateralInputs_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_674
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxHeaderSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_670
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_700
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_676
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxTxSize_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_668
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_maxValSize_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_minUTxOValue_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_nopt_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe Integer
d_poolDeposit_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254
d_poolThresholds_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.prices
d_prices_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.pv
d_pv_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_680 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_594 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.fPools
d_fPools_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.pools
d_pools_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.retiring
d_retiring_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1368 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2080 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.CostModel
d_CostModel_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_2082 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T
d_T_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_2084 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.THash
d_THash_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_2086 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dataʰ
d_Data'688'_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Datum
d_Datum_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_2090 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-T
d_DecEq'45'T_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2104 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2106 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnits
d_ExUnits_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_2110 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.LangDepView
d_LangDepView_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_2114 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Language
d_Language_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_2116 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusScript
d_PlutusScript_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_2118 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV1
d_PlutusV1_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV2
d_PlutusV2_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV3
d_PlutusV3_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Prices
d_Prices_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_2126 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Redeemer
d_Redeemer_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_2128 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-Language
d_Show'45'Language_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-Prices
d_Show'45'Prices_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-THash
d_Show'45'THash_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2138 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-Hashable
d_T'45'Hashable_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2140 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-isHashable
d_T'45'isHashable_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2142 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.language
d_language_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.validPlutusScript
d_validPlutusScript_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2146 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q1
d_Q1_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2a
d_Q2a_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_268 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2b
d_Q2b_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_270 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q4
d_Q4_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q5
d_Q5_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_254 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_274 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardAddress.net
d_net_2162 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  Integer
d_net_2162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardAddress.stake
d_stake_2164 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2164 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2168 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.CostModel
d_CostModel_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_CostModel_2170 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T
d_T_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_T_2172 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.THash
d_THash_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_THash_2174 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dataʰ
d_Data'688'_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Datum
d_Datum_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Datum_2178 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-T
d_DecEq'45'T_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2196 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2198 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnits
d_ExUnits_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_ExUnits_2202 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_398
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.LangDepView
d_LangDepView_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_LangDepView_2210 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Language
d_Language_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Language_2212 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.P1Script
d_P1Script_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_P1Script_2214 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusScript
d_PlutusScript_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_PlutusScript_2216 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV1
d_PlutusV1_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny
d_PlutusV1_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV2
d_PlutusV2_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny
d_PlutusV2_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV3
d_PlutusV3_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny
d_PlutusV3_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Prices
d_Prices_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Prices_2224 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Redeemer
d_Redeemer_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Redeemer_2226 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Script
d_Script_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  ()
d_Script_2228 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-Language
d_Show'45'Language_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-Prices
d_Show'45'Prices_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-THash
d_Show'45'THash_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2238 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-Hashable
d_T'45'Hashable_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2240 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-isHashable
d_T'45'isHashable_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_202
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.getLanguage
d_getLanguage_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2244
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_426
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_322
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isNativeScript
d_isNativeScript_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2248 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script
d_isP1Script_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2250 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script?
d_isP1Script'63'_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2252 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_404
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script
d_isP2Script_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2254 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script?
d_isP2Script'63'_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2256 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_418
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.language
d_language_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny -> AgdaAny
d_language_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.p1s
d_p1s_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ps
d_ps_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_324
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP1Script
d_toP1Script_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_412
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP2Script
d_toP2Script_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_424
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validP1Script
d_validP1Script_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2268 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validPlutusScript
d_validPlutusScript_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_276 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2270 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.cost
d_cost_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
d_cost_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1114 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.margin
d_margin_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1116
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.owners
d_owners_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  [Integer]
d_owners_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1112
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.pledge
d_pledge_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  Integer
d_pledge_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.rewardAccount
d_rewardAccount_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._∙_
d__'8729'__2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2300 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≈_
d__'8776'__2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2302 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2304 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2310 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2314 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2318 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value
d_Value_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2322 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.addValue
d_addValue_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2326
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin
d_coin_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2330 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2334 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.inject
d_inject_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.monoid
d_monoid_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2338 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.policies
d_policies_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.rawMonoid
d_rawMonoid_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2342 v0
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
d_size_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.sumᵛ
d_sum'7515'_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2346
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.ε
d_ε_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2348 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2352 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2352 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2354 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2354 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2356 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2358 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2360 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2364 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2366 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2368 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2370 ~v0 = du_isMagmaIsomorphism_2370
du_isMagmaIsomorphism_2370 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2370 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2372 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2372 v2
du_isMagmaMonomorphism_2372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2372 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2374 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2374 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2376 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2378 v0
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
d_isRelIsomorphism_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2380 ~v0 ~v1 v2 = du_isRelIsomorphism_2380 v2
du_isRelIsomorphism_2380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2380 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2382 ~v0 ~v1 v2 = du_isRelMonomorphism_2382 v2
du_isRelMonomorphism_2382 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2382 v0
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
d_surjective_2384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2384 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2386 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2388 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2392 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2394 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2394 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2396 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2398 ~v0 = du_isMagmaMonomorphism_2398
du_isMagmaMonomorphism_2398 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2398 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2400 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2402 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2402 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2404 ~v0 ~v1 v2 = du_isRelMonomorphism_2404 v2
du_isRelMonomorphism_2404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2404 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2406 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2408 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.body
d_body_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286
d_body_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.isValid
d_isValid_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  Bool
d_isValid_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3484
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txAD
d_txAD_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  Maybe Integer
d_txAD_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3486
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txsize
d_txsize_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  Integer
d_txsize_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3482
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.wits
d_wits_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3466 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3444
d_wits_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3480
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.collateralInputs
d_collateralInputs_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.currentTreasury
d_currentTreasury_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Maybe Integer
d_currentTreasury_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.mint
d_mint_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Integer
d_mint_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.refInputs
d_refInputs_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.reqSignerHashes
d_reqSignerHashes_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [Integer]
d_reqSignerHashes_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Maybe Integer
d_scriptIntegrityHash_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txADhash
d_txADhash_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Maybe Integer
d_txADhash_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txCerts
d_txCerts_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1292]
d_txCerts_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3334
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txDonation
d_txDonation_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Integer
d_txDonation_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txFee
d_txFee_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Integer
d_txFee_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3336
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txGovProposals
d_txGovProposals_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_986]
d_txGovProposals_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txGovVotes
d_txGovVotes_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_906]
d_txGovVotes_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txId
d_txId_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Integer
d_txId_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3332
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txIns
d_txIns_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3324
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txNetworkId
d_txNetworkId_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  Maybe Integer
d_txNetworkId_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txOuts
d_txOuts_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3330
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txVldt
d_txVldt_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txWithdrawals
d_txWithdrawals_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scripts
d_scripts_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3444 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3456
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scriptsP1
d_scriptsP1_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3444 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_364]
d_scriptsP1_2464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3462
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txdats
d_txdats_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3444 ->
  [Integer]
d_txdats_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txrdmrs
d_txrdmrs_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3460
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.vkSigs
d_vkSigs_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3444 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3454
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERT
d_Computational'45'CERT_2506 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2506
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2076
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTS
d_Computational'45'CERTS_2508 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2508
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2550
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-DELEG
d_Computational'45'DELEG_2510 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_2510
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'DELEG_1594
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-GOVCERT
d_Computational'45'GOVCERT_2512 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_2512
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'GOVCERT_1796
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-POST-CERT
d_Computational'45'POST'45'CERT_2514 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POST'45'CERT_2514
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'POST'45'CERT_2528
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-PRE-CERT
d_Computational'45'PRE'45'CERT_2516 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'PRE'45'CERT_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'PRE'45'CERT_2384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupDeposit
d_lookupDeposit_2518 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1124 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_2518
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_lookupDeposit_1586
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2522
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_782
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-UnitInterval
d_HsTy'45'UnitInterval_2520 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UnitInterval_2520 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-UnitInterval
d_Conv'45'UnitInterval_2522 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UnitInterval_2522
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
d_HsTy'45'PosNat_2532 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PosNat_2532 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-PosNat
d_Conv'45'PosNat_2534 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PosNat_2534
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
