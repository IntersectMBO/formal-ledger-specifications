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
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Core.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Core.Specification.Transaction
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
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
                  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_444 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_452
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv
d_CertEnv_162 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState
d_CertState_166 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertStateOf
d_CertStateOf_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394
d_CertStateOf_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
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
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DReps
d_DReps_194 :: ()
d_DReps_194 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DRepsOf
d_DRepsOf_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState
d_DState_198 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DStateOf
d_DStateOf_202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_DStateOf_202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T
d_T_204 :: ()
d_T_204 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_206 :: ()
d_THash_206 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dataʰ
d_Data'688'_208 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_208
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Datum
d_Datum_210 :: ()
d_Datum_210 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-evalTimelock
d_Dec'45'evalTimelock_212 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.T_Timelock_104 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_212
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.d_Dec'45'evalTimelock_162
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isScript
d_Dec'45'isScript_214 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_214
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_238
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isSigned
d_Dec'45'isSigned_216 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_216
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-isVKey
d_Dec'45'isVKey_218 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_218
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_224
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validP1Script
d_Dec'45'validP1Script_220 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_220
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validP1Script_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_222 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_222
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validPlutusScript_270
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-≤ᵗ
d_Dec'45''8804''7511'_224 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_224
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEQ-Prices
d_DecEQ'45'Prices_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_226
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEQ'45'Prices_240
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_228
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
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_230
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
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-CostModel
d_DecEq'45'CostModel_232 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_232
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'CostModel_230
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Credential
d_DecEq'45'Credential_234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_234
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
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_236
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_238 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_568
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Epoch
d_DecEq'45'Epoch_240 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_240
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ExUnits
d_DecEq'45'ExUnits_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_242
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_238
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovActionType
d_DecEq'45'GovActionType_244 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_244
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovActionType_1104
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovRole
d_DecEq'45'GovRole_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_246
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovRole_1106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovVoter
d_DecEq'45'GovVoter_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_248
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'GovVoter_1112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_250 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_250
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_380
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ix
d_DecEq'45'Ix_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_252
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'Ix_1270
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-LangDepView
d_DecEq'45'LangDepView_254 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_254
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'LangDepView_232
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Language
d_DecEq'45'Language_256 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_256
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Netw
d_DecEq'45'Netw_258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_258
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-P1Script
d_DecEq'45'P1Script_260 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_260
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'P1Script_124
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_262 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_262
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_574
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParams
d_DecEq'45'PParams_264 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_264
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_572
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_266 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_266
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_570
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_268 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_268
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
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_270 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_270
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
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ser
d_DecEq'45'Ser_272 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_272
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Sig
d_DecEq'45'Sig_274 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_274
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Slot
d_DecEq'45'Slot_276 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_276
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
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
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_280 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_280
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
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
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
               (coe v1))))
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
                = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_286 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_286
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Timelock
d_DecEq'45'Timelock_288 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_288
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.d_DecEq'45'Timelock_118
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-TxId
d_DecEq'45'TxId_290 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_290
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_DecEq'45'TxId_1272
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-UpdT
d_DecEq'45'UpdT_292 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_292
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1532
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-VDeleg
d_DecEq'45'VDeleg_294 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_294
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Value
d_DecEq'45'Value_296 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_296
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Vote
d_DecEq'45'Vote_298 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_298
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecPo-Slot
d_DecPo'45'Slot_300 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_300
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv
d_DelegEnv_302 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositPurpose
d_DepositPurpose_306 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Deposits
d_Deposits_308 :: ()
d_Deposits_308 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DepositsOf
d_DepositsOf_310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds
d_DrepThresholds_312 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSAbstractFunctions
d_HSAbstractFunctions_316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2200
d_HSAbstractFunctions_316
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_2974
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTransactionStructure
d_HSTransactionStructure_318 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_318
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Epoch
d_Epoch_322 :: ()
d_Epoch_322 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_324 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_324
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnits
d_ExUnits_326 :: ()
d_ExUnits_326 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState
d_GState_334 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GStateOf
d_GStateOf_338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_GStateOf_338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction
d_GovAction_340 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionData
d_GovActionData_344 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_GovActionData_344 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionID
d_GovActionID_348 :: ()
d_GovActionID_348 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionOf
d_GovActionOf_350 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_GovActionOf_350 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState
d_GovActionState_352 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionType
d_GovActionType_356 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionTypeOf
d_GovActionTypeOf_358 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_GovActionTypeOf_358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionTypeOf_820
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams
d_GovParams_360 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal
d_GovProposal_364 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRole
d_GovRole_368 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRoleCredential
d_GovRoleCredential_370 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  ()
d_GovRoleCredential_370 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote
d_GovVote_372 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVoter
d_GovVoter_376 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVoterOf
d_GovVoterOf_380 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_GovVoterOf_380 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovVoterOf_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVotes
d_GovVotes_382 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSCryptoStructure
d_HSCryptoStructure_388 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_HSCryptoStructure_388
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSEpochStructure
d_HSEpochStructure_390 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_HSEpochStructure_390
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSGlobalConstants
d_HSGlobalConstants_392 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_HSGlobalConstants_392
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript
d_HSPlutusScript_394 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSScriptStructure
d_HSScriptStructure_398 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280
d_HSScriptStructure_398
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_394
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock
d_HSTimelock_400 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys
d_HasCCHotKeys_404 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'CertState_408
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1534
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154
d_HasCCHotKeys'45'GState_410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1522
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength
d_HasCCMaxTermLength_412 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-Acnt
d_HasCast'45'Acnt_416 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_416
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_194
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertEnv
d_HasCast'45'CertEnv_418 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1550
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertState
d_HasCast'45'CertState_420 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1558
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DState
d_HasCast'45'DState_422 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1552
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_424 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1560
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GState
d_HasCast'45'GState_426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1556
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_428 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_428
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_860
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovVote
d_HasCast'45'GovVote_430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_430
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovVote_1210
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected
d_HasCast'45'HashProtected_432 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected_972
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_434 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_434
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_974
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-PState
d_HasCast'45'PState_436 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_436
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1554
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState
d_HasCertState_438 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-CertState
d_HasCoin'45'CertState_442 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_442
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1548
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-TxOut
d_HasCoin'45'TxOut_444 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_444
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_HasCoin'45'TxOut_3324
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential
d_HasCredential_446 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_450 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_450
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_164
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps
d_HasDReps_452 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-CertState
d_HasDReps'45'CertState_456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'CertState_456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1532
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-GState
d_HasDReps'45'GState_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170
d_HasDReps'45'GState_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1520
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState
d_HasDState_460 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState-CertState
d_HasDState'45'CertState_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430
d_HasDState'45'CertState_464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1524
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits
d_HasDeposits_466 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState
d_HasGState_470 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState-CertState
d_HasGState'45'CertState_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470
d_HasGState'45'CertState_474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1528
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction
d_HasGovAction_476 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_480 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovActionState_480
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1098
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_482 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovProposal_482
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1096
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType
d_HasGovActionType_484 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_488 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovAction_488
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_858
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_490 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovActionState_490
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1102
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_492 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovProposal_492
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1100
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovVoter
d_HasGovVoter_494 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_498 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034
d_HasGovVoter'45'GovVote_498
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1090
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId
d_HasNetworkId_500 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_504 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BaseAddr_504
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_158
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_506 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'BootstrapAddr_506
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_160
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_508 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_508
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams
d_HasPParams_510 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424
d_HasPParams'45'CertEnv_514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1506
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState
d_HasPState_516 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState-CertState
d_HasPState'45'CertState_520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450
d_HasPState'45'CertState_520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1526
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPolicy
d_HasPolicy_522 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_526 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074
d_HasPolicy'45'GovProposal_526
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1094
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools
d_HasPools_528 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-CertState
d_HasPools'45'CertState_532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
d_HasPools'45'CertState_532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1536
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-PState
d_HasPools'45'PState_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186
d_HasPools'45'PState_534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1516
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasReserves-Acnt
d_HasReserves'45'Acnt_536 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_182
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring
d_HasRetiring_538 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring-PState
d_HasRetiring'45'PState_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1202
d_HasRetiring'45'PState_542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1518
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards
d_HasRewards_544 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-CertState
d_HasRewards'45'CertState_548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218
d_HasRewards'45'CertState_548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1530
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-DState
d_HasRewards'45'DState_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218
d_HasRewards'45'DState_550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1514
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStake
d_HasStake_552 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs
d_HasStakeDelegs_556 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'CertState_560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1540
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250
d_HasStakeDelegs'45'DState_562
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1512
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_564 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_180
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO
d_HasUTxO_566 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVote
d_HasVote_570 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVote-GovVote
d_HasVote'45'GovVote_574 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054
d_HasVote'45'GovVote_574
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasVote'45'GovVote_1092
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs
d_HasVoteDelegs_576 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_580 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'CertState_580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1538
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_582 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948
d_HasVoteDelegs'45'DState_582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1510
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals
d_HasWithdrawals_584 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_588 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_588
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1508
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HashProtected
d_HashProtected_590 :: () -> ()
d_HashProtected_590 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_592 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSPlutusScript_592
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_394
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_594 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_594
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_378
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-P1Script
d_Hashable'45'P1Script_596 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_596
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_598 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_598
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-Script
d_Hashable'45'Script_600 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_600
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HsGovParams
d_HsGovParams_602 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500
d_HsGovParams_602
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_732
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_608 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_612 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_616 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ix
d_Ix_620 :: ()
d_Ix_620 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.THash
d_THash_622 :: ()
d_THash_622 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.KeyPair
d_KeyPair_626 :: ()
d_KeyPair_626 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.LangDepView
d_LangDepView_628 :: ()
d_LangDepView_628 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Language
d_Language_630 :: ()
d_Language_630 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_632 :: Integer
d_MaxLovelaceSupply'7580'_632
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MemoryEstimate
d_MemoryEstimate_634 :: ()
d_MemoryEstimate_634 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NeedsHash
d_NeedsHash_638 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_NeedsHash_638 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Network
d_Network_640 :: ()
d_Network_640 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkId
d_NetworkId_644 :: Integer
d_NetworkId_644
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkIdOf
d_NetworkIdOf_646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_652 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_652
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_654 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_654
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Number-Epoch
d_Number'45'Epoch_656 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_656
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1Script
d_P1Script_658 :: ()
d_P1Script_658 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure
d_P1ScriptStructure_660 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_664 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104
d_P1ScriptStructure'45'HTL_664
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_396
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusScript
d_PlutusScript_666 :: ()
d_PlutusScript_666 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamGroup
d_PParamGroup_672 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams
d_PParams_674 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff
d_PParamsDiff_678 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsOf
d_PParamsOf_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UpdateT
d_UpdateT_684 :: ()
d_UpdateT_684 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState
d_PState_686 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PStateOf
d_PStateOf_690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_PStateOf_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure
d_PlutusStructure_692 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV1
d_PlutusV1_696 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_696
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV1_218
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV2
d_PlutusV2_698 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_698
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV2_220
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV3
d_PlutusV3_700 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_700
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV3_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Policy
d_Policy_702 :: ()
d_Policy_702 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PolicyOf
d_PolicyOf_704 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_PolicyOf_1082
      (coe v0)
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1194
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_728 :: Integer
d_RandomnessStabilisationWindow_728
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_730 :: Integer
d_RandomnessStabilisationWindow'7580'_730
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RdmrPtr
d_RdmrPtr_732 :: ()
d_RdmrPtr_732 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Redeemer
d_Redeemer_734 :: ()
d_Redeemer_734 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Retiring
d_Retiring_748 :: ()
d_Retiring_748 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RetiringOf
d_RetiringOf_750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Rewards
d_Rewards_752 :: ()
d_Rewards_752 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardsOf
d_RewardsOf_754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr
d_RwdAddr_756 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SKey
d_SKey_762 :: ()
d_SKey_762 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Script
d_Script_766 :: ()
d_Script_766 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptAddr
d_ScriptAddr_768 :: ()
d_ScriptAddr_768 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBaseAddr
d_ScriptBaseAddr_770 :: ()
d_ScriptBaseAddr_770 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_772 :: ()
d_ScriptBootstrapAddr_772 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptHash
d_ScriptHash_774 :: ()
d_ScriptHash_774 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure
d_ScriptStructure_778 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ser
d_Ser_784 :: ()
d_Ser_784 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-CostModel
d_Show'45'CostModel_786 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_786
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'CostModel_234
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential
d_Show'45'Credential_788 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_788 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_790 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_790 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-DrepThresholds
d_Show'45'DrepThresholds_792 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_792
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_576
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Epoch
d_Show'45'Epoch_794 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_794
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ExUnits
d_Show'45'ExUnits_796 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_796
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'ExUnits_242
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-GovRole
d_Show'45'GovRole_798 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_798
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_Show'45'GovRole_792
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Network
d_Show'45'Network_800 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_800
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PParams
d_Show'45'PParams_802 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_802
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_580
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PoolThresholds
d_Show'45'PoolThresholds_804 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_578
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Prices
d_Show'45'Prices_806 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_806
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'Prices_244
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ProtVer
d_Show'45'ProtVer_808 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_808
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-RwdAddr
d_Show'45'RwdAddr_810 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_810
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_288
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ScriptHash
d_Show'45'ScriptHash_812 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_812
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
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_814 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_814
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
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_816 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_816
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_818 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_818
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-VDeleg
d_Show'45'VDeleg_820 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_820
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_Show'45'VDeleg_1212
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Sig
d_Sig_822 :: ()
d_Sig_822 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slot
d_Slot_824 :: ()
d_Slot_824 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_826 :: Integer
d_SlotsPerEpoch'7580'_826
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slotʳ
d_Slot'691'_828 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_828
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindow
d_StabilityWindow_830 :: Integer
d_StabilityWindow_830
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindowᶜ
d_StabilityWindow'7580'_832 :: Integer
d_StabilityWindow'7580'_832
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Stake
d_Stake_834 :: ()
d_Stake_834 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegs
d_StakeDelegs_836 :: ()
d_StakeDelegs_836 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegsOf
d_StakeDelegsOf_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1258
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeOf
d_StakeOf_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams
d_StakePoolParams_842 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_846 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_846
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
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_adHashingScheme_1274
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_848 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_848
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_850 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_850
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-isHashable
d_T'45'isHashable_852 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_852
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
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Timelock
d_Timelock_856 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra
d_TokenAlgebra_858 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxId
d_TxId_866 :: ()
d_TxId_866 = erased
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
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_880 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_UTxOOf_3254
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
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegs
d_VoteDelegs_902 :: ()
d_VoteDelegs_902 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegsOf
d_VoteDelegsOf_904 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_904 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteOf
d_VoteOf_906 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_VoteOf_906 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteOf_1062
      (coe v0)
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
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
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.applyUpdate
d_applyUpdate_920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyUpdate_920
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
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
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
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
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1290 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_938
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1308
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.e<sucᵉ
d_e'60'suc'7497'_946 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_946
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epoch
d_epoch_948 :: Integer -> Integer
d_epoch_948
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epochStructure
d_epochStructure_950 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_950
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.evalTimelock
d_evalTimelock_964 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.firstSlot
d_firstSlot_966 :: Integer -> Integer
d_firstSlot_966
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaData
d_gaData_968 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_968 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaType
d_gaType_970 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_gaType_970 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getScriptHash
d_getScriptHash_972 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_972
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValue
d_getValue_974 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_974
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_getValue_3284
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValueʰ
d_getValue'688'_976 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_976
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_getValue'688'_3300
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.globalConstants
d_globalConstants_978 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_978
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govParams
d_govParams_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500
d_govParams_980
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_732
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govStructure
d_govStructure_982 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Base.T_GovStructure_10
d_govStructure_982
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.hashRespectsUnion
d_hashRespectsUnion_984 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_984
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_hashRespectsUnion_326
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.inject
d_inject_986 :: Integer -> Integer
d_inject_986
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr
d_isBootstrapAddr_988 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr?
d_isBootstrapAddr'63'_990 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_990
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isGovVoterCredential
d_isGovVoterCredential_992 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_992
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterCredential_1218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isGovVoterDRep
d_isGovVoterDRep_994 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_994
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterDRep_1214
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHash
d_isKeyHash_996 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_996 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObj
d_isKeyHashObj_998 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_998
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1000 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1000
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyPair
d_isKeyPair_1002 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1002 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isNativeScript
d_isNativeScript_1004 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1004 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script
d_isP1Script_1006 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1006 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script?
d_isP1Script'63'_1008 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1008
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP1Script'63'_408
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script
d_isP2Script_1010 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1010 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script?
d_isP2Script'63'_1012 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1012
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP2Script'63'_422
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isPoolRegistered
d_isPoolRegistered_1014 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076
d_isPoolRegistered_1014
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1640
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScript
d_isScript_1016 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptAddr
d_isScriptAddr_1018 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1018 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptObj
d_isScriptObj_1020 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1020
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptRwdAddr
d_isScriptRwdAddr_1022 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 -> ()
d_isScriptRwdAddr_1022 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned
d_isSigned_1024 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1024 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned-correct
d_isSigned'45'correct_1026 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1026 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKey
d_isVKey_1028 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKeyAddr
d_isVKeyAddr_1030 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1030 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.khs
d_khs_1032 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1032
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
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.language
d_language_1034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1034
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_language_272
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.monoid
d_monoid_1036 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1036
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
                  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.netId
d_netId_1038 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1038
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.p1s
d_p1s_1040 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1040
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWF-elim
d_paramsWF'45'elim_1042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1042 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_548
      v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWellFormed
d_paramsWellFormed_1044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  ()
d_paramsWellFormed_1044 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.payCred
d_payCred_1046 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1046
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pkk
d_pkk_1048 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1048
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
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.policies
d_policies_1050 :: Integer -> [Integer]
d_policies_1050
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.positivePParams
d_positivePParams_1052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  [Integer]
d_positivePParams_1052
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_460
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppUpd
d_ppUpd_1054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466
d_ppUpd_1054
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppWF?
d_ppWF'63'_1056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1056
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppdWellFormed
d_ppdWellFormed_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  ()
d_ppdWellFormed_1058 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.preoEpoch
d_preoEpoch_1060 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1060
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.proposedCC
d_proposedCC_1062 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1062
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_proposedCC_1224
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ps
d_ps_1064 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128
d_ps_1064
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow
d_pvCanFollow_1066 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow?
d_pvCanFollow'63'_1068 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1068
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1418
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rawMonoid
d_rawMonoid_1070 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1070
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
                       MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rewardsBalance
d_rewardsBalance_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  Integer
d_rewardsBalance_1080
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1542
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptOuts
d_scriptOuts_1082 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1082
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_scriptOuts_3310
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptStructure
d_scriptStructure_1084 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280
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
                = MAlonzo.Code.Ledger.Core.Specification.Transaction.d_cryptoStructure_1322
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
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
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
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
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
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
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
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP1Script
d_toP1Script_1098 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362
d_toP1Script_1098
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP1Script_416
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP2Script
d_toP2Script_1100 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382
d_toP2Script_1100
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP2Script_428
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.tokenAlgebra
d_tokenAlgebra_1102 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1102
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
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
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txInsScript_3318
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
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txInsVKey_3304
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
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txOutHash_3290
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidBytes
d_txidBytes_1110 :: Integer -> Integer
d_txidBytes_1110 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.updateGroups
d_updateGroups_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_1112
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govParams_2368
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validP1Script
d_validP1Script_1120 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  ()
d_validP1Script_1120 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validPlutusScript
d_validPlutusScript_1122 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  ()
d_validPlutusScript_1122 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ε
d_ε_1124 :: Integer
d_ε_1124
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
                  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Transaction.d_tokenAlgebra_2386
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1126 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1126 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕEpochStructure
d_ℕEpochStructure_1128 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1128
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_globalConstants_1288
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕtoEpoch
d_ℕtoEpoch_1130 :: Integer -> Integer
d_ℕtoEpoch_1130
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.≤-predᵉ
d_'8804''45'pred'7497'_1132 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1132
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.reserves
d_reserves_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_reserves_1186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_176
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.treasury
d_treasury_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_168 ->
  Integer
d_treasury_1188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_174
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.hash
d_hash_1192 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886 ->
  Integer
d_hash_1192 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_hash_894
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.url
d_url_1194 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_url_892
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.net
d_net_1198 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.pay
d_pay_1200 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1200 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.stake
d_stake_1202 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.attrsSize
d_attrsSize_1206 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1206 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.net
d_net_1208 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1208 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.pay
d_pay_1210 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.coldCreds
d_coldCreds_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.epoch
d_epoch_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  Integer
d_epoch_1216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.pp
d_pp_1218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pp_1218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1340 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.votes
d_votes_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  [MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898]
d_votes_1220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.wdrls
d_wdrls_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1326 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.dState
d_dState_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_dState_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.gState
d_gState_1228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_gState_1228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.pState
d_pState_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_pState_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.rewards
d_rewards_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.stakeDelegs
d_stakeDelegs_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.voteDelegs
d_voteDelegs_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.delegatees
d_delegatees_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1410 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1422
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pools
d_pools_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1410 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1420
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pparams
d_pparams_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1410 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_pparams_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1418
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P1
d_P1_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2a
d_P2a_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2b
d_P2b_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P3
d_P3_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P4
d_P4_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5a
d_P5a_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5b
d_P5b_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5c
d_P5c_1298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5d
d_P5d_1300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P6
d_P6_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_248 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.ccHotKeys
d_ccHotKeys_1306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.dreps
d_dreps_1308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaData
d_gaData_1312 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_1312 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaType
d_gaType_1314 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_gaType_1314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.action
d_action_1318 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_1024
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.expiresIn
d_expiresIn_1320 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  Integer
d_expiresIn_1320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_expiresIn_1022
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.prevAction
d_prevAction_1322 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  AgdaAny
d_prevAction_1322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_1026
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.returnAddr
d_returnAddr_1324 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1020
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.votes
d_votes_1326 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionState_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918
d_votes_1326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_votes_1018
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Anchor
d_Anchor_1346 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1356 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1356
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovActionType_1104
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1358 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1358
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'GovRole_1106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1360 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1360
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'GovVoter_1112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1362 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1362
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_DecEq'45'VDeleg_1110
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1364 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1364
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_DecEq'45'Vote_1108
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovAction
d_GovAction_1366 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionData
d_GovActionData_1370 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_GovActionData_1370 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionID
d_GovActionID_1372 :: ()
d_GovActionID_1372 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionOf
d_GovActionOf_1374 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_GovActionOf_1374 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionState
d_GovActionState_1376 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionType
d_GovActionType_1380 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1382 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_GovActionTypeOf_1382 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionTypeOf_820
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal
d_GovProposal_1384 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRole
d_GovRole_1388 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRoleCredential
d_GovRoleCredential_1390 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784 ->
  ()
d_GovRoleCredential_1390 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote
d_GovVote_1392 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter
d_GovVoter_1396 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoterOf
d_GovVoterOf_1400 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_GovVoterOf_1400 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovVoterOf_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes
d_GovVotes_1402 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1406 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1406
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_860
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1408 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1408
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'GovVote_1210
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1410 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1410 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected_972
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1412 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1412
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_974
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction
d_HasGovAction_1414 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1418 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovActionState_1418
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1098
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1420 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844
d_HasGovAction'45'GovProposal_1420
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1096
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType
d_HasGovActionType_1422 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1426 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovAction_1426
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_858
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1428 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovActionState_1428
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1102
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1430 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814
d_HasGovActionType'45'GovProposal_1430
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1100
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter
d_HasGovVoter_1432 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1436 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034
d_HasGovVoter'45'GovVote_1436
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1090
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy
d_HasPolicy_1438 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1442 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074
d_HasPolicy'45'GovProposal_1442
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1094
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote
d_HasVote_1444 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1448 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054
d_HasVote'45'GovVote_1448
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_HasVote'45'GovVote_1092
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1450 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HashProtected
d_HashProtected_1454 :: () -> ()
d_HashProtected_1454 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.NeedsHash
d_NeedsHash_1458 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796 ->
  ()
d_NeedsHash_1458 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Policy
d_Policy_1464 :: ()
d_Policy_1464 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.PolicyOf
d_PolicyOf_1466 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1466 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_PolicyOf_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Show-GovRole
d_Show'45'GovRole_1470 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1470
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_Show'45'GovRole_792
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1472 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1472
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_Show'45'VDeleg_1212
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VDeleg
d_VDeleg_1480 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Vote
d_Vote_1482 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegs
d_VoteDelegs_1484 :: ()
d_VoteDelegs_1484 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1486 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteOf
d_VoteOf_1488 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_VoteOf_1488 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteOf_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaData
d_gaData_1492 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  AgdaAny
d_gaData_1492 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaData_838
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaType
d_gaType_1494 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_gaType_1494 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gaType_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.isGovVoterCredential
d_isGovVoterCredential_1496 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_1496
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterCredential_1218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1498 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1498
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_isGovVoterDRep_1214
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.proposedCC
d_proposedCC_1502 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1502
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.du_proposedCC_1224
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.action
d_action_1518 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_action_1518 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_action_992
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.anchor
d_anchor_1520 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_1002
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.deposit
d_deposit_1522 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Integer
d_deposit_1522 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_deposit_998
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.policy
d_policy_1524 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  Maybe Integer
d_policy_1524 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_policy_996
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.prevAction
d_prevAction_1526 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  AgdaAny
d_prevAction_1526 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_prevAction_994
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.returnAddr
d_returnAddr_1528 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovProposal_978 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1528 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_returnAddr_1000
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.anchor
d_anchor_1540 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Anchor_886
d_anchor_1540 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_anchor_914
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.gid
d_gid_1542 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1542 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gid_908
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.vote
d_vote_1544 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_vote_1544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_vote_912
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.voter
d_voter_1546 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVote_898 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_voter_1546 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_voter_910
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvCredential
d_gvCredential_1550 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  AgdaAny
d_gvCredential_1550 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCredential_882
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvRole
d_gvRole_1552 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874 ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovRole_784
d_gvRole_1552 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvRole_880
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvCC
d_gvCC_1556 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1556 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvCC_926
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvDRep
d_gvDRep_1558 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1558 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvDRep_928
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvSPO
d_gvSPO_1560 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVotes_918 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1560 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_gvSPO_930
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1564 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovAction_844 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovAction_830
d_GovActionOf_1564 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionOf_850
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1568 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovActionType_814 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovActionType_796
d_GovActionTypeOf_1568 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovActionTypeOf_820
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1572 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasGovVoter_1034 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_GovVoter_874
d_GovVoterOf_1572 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_GovVoterOf_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1576 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasPolicy_1074 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1576 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_PolicyOf_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote.VoteOf
d_VoteOf_1580 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVote_1054 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_Vote_866
d_VoteOf_1580 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteOf_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1584 ::
  MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.T_HasVoteDelegs_948 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1584 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Gov.Actions.d_VoteDelegsOf_956
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1532
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.UpdateT
d_UpdateT_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  ()
d_UpdateT_1606 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.applyUpdate
d_applyUpdate_1608 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyUpdate_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppUpd
d_ppUpd_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466
d_ppUpd_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppWF?
d_ppWF'63'_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppdWellFormed
d_ppdWellFormed_1614 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  AgdaAny -> ()
d_ppdWellFormed_1614 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.updateGroups
d_updateGroups_1616 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1500 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1518
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptHash
d_psScriptHash_1620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  Integer
d_psScriptHash_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptSize
d_psScriptSize_1622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_382 ->
  Integer
d_psScriptSize_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.timelock
d_timelock_1626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Timelock.T_Timelock_104
d_timelock_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptHash
d_tlScriptHash_1628 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  Integer
d_tlScriptHash_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptSize
d_tlScriptSize_1630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362 ->
  Integer
d_tlScriptSize_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1154 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_444 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_452
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState.CertStateOf
d_CertStateOf_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1490 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1394
d_CertStateOf_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1498
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential.CredentialOf
d_CredentialOf_1646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps.DRepsOf
d_DRepsOf_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDReps_1170 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState.DStateOf
d_DStateOf_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1430 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1350
d_DStateOf_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1438
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits.DepositsOf
d_DepositsOf_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState.GStateOf
d_GStateOf_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1470 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1382
d_GStateOf_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1478
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1666 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_1666 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams.PParamsOf
d_PParamsOf_1670 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_424 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_PParamsOf_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_432
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState.PStateOf
d_PStateOf_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1450 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366
d_PStateOf_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools.PoolsOf
d_PoolsOf_1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring.RetiringOf
d_RetiringOf_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1202 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards.RewardsOf
d_RewardsOf_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1218 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStake.StakeOf
d_StakeOf_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1234 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1250 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1258
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO.UTxOOf
d_UTxOOf_1698 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_HasUTxO_3246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1698 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_UTxOOf_3254
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1702 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.homo
d_homo_1706 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1706 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1708 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1708 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1710 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1710 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1712 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1712 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.cong
d_cong_1714 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1714 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.homo
d_homo_1718 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1718 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.injective
d_injective_1720 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1720 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1722 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1722 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1724 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1724 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1726 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1726 ~v0 v1 = du_isMagmaMonomorphism_1726 v1
du_isMagmaMonomorphism_1726 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1726 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1728 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1728 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1730 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1732 v0
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
d_isRelIsomorphism_1734 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1734 ~v0 v1 = du_isRelIsomorphism_1734 v1
du_isRelIsomorphism_1734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1734 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1736 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1736 ~v0 v1 = du_isRelMonomorphism_1736 v1
du_isRelMonomorphism_1736 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1736 v0
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
d_surjective_1738 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1738 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1740 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.cong
d_cong_1742 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1742 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.homo
d_homo_1746 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1746 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.injective
d_injective_1748 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1748 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1750 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1752 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1752 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1754 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1756 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1756 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1758 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1758 ~v0 v1 = du_isRelMonomorphism_1758 v1
du_isRelMonomorphism_1758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1758 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1760 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.cong
d_cong_1762 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1762 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1766 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1766 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1768 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1768 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1770 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1770 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.P1Script
d_P1Script_1772 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_1772 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.validP1Script
d_validP1Script_1774 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1774 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.Emax
d_Emax_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_Emax_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a
d_a_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_a_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a0
d_a0_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_396 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.b
d_b_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_b_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMaxTermLength
d_ccMaxTermLength_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMaxTermLength_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMinSize
d_ccMinSize_1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_ccMinSize_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_coinsPerUTxOByte_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.collateralPercentage
d_collateralPercentage_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_collateralPercentage_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.costmdls
d_costmdls_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepActivity
d_drepActivity_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepActivity_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_416
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepDeposit
d_drepDeposit_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_drepDeposit_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepThresholds
d_drepThresholds_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionDeposit
d_govActionDeposit_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionDeposit_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionLifetime
d_govActionLifetime_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_govActionLifetime_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.keyDeposit
d_keyDeposit_1818 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_keyDeposit_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockExUnits
d_maxBlockExUnits_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockSize
d_maxBlockSize_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxBlockSize_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxCollateralInputs
d_maxCollateralInputs_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxCollateralInputs_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_360
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxHeaderSize
d_maxHeaderSize_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxHeaderSize_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerBlock_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxRefScriptSizePerTx_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxExUnits
d_maxTxExUnits_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxSize
d_maxTxSize_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxTxSize_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxValSize
d_maxValSize_1836 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_maxValSize_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minUTxOValue
d_minUTxOValue_1840 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_minUTxOValue_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.monetaryExpansion
d_monetaryExpansion_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.nopt
d_nopt_1844 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_nopt_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolDeposit
d_poolDeposit_1846 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  Integer
d_poolDeposit_1846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolThresholds
d_poolThresholds_1848 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.prices
d_prices_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.pv
d_pv_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostStride
d_refScriptCostStride_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.treasuryCut
d_treasuryCut_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.UpdateT
d_UpdateT_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  ()
d_UpdateT_1862 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.applyUpdate
d_applyUpdate_1864 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyUpdate_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1482
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppWF?
d_ppWF'63'_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1868 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny -> ()
d_ppdWellFormed_1868 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.updateGroups
d_updateGroups_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1466 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_updateGroups_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1484
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate._?↗_
d__'63''8599'__1874 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1874 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1210
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1876 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1876
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1412
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_epochStructure_1656
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scriptStructure_1904
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1878 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_276
d_applyPParamsUpdate_1882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1258
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_196]
d_modifiedUpdateGroups_1884
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1194
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesEconomicGroup_1886
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_890
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesGovernanceGroup_1888
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1042
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesNetworkGroup_1890
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_814
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesSecurityGroup_1892
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1118
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Bool
d_modifiesTechnicalGroup_1894
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_966
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  ()
d_paramsUpdateWellFormed_1896 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1898 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_656
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_658
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_660
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_662
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_684
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_678
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_706
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_724
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_714
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_716
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_718
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.≡-update
d_'8801''45'update_1900 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1900 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1224
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_Emax_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a
d_a_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_a_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_672 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a0
d_a0_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_700 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.b
d_b_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_b_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_674 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_ccMaxTermLength_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_724
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_ccMinSize_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_coinsPerUTxOByte_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_684
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_collateralPercentage_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_drepActivity_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_drepDeposit_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_208
d_drepThresholds_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_710
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_govActionDeposit_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_govActionLifetime_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_keyDeposit_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_676
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_668
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxBlockSize_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_656
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxCollateralInputs_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_664
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxHeaderSize_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_660
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxRefScriptSizePerTx_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_666
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxTxSize_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_658
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_maxValSize_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_662
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_minUTxOValue_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_698
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_680
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_nopt_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe Integer
d_poolDeposit_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_678
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252
d_poolThresholds_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.prices
d_prices_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.pv
d_pv_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_670 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_694
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_584 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_682
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.fPools
d_fPools_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.pools
d_pools_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.retiring
d_retiring_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1366 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1984 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1984 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.CostModel
d_CostModel_1986 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_1986 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T
d_T_1988 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_1988 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.THash
d_THash_1990 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_1990 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dataʰ
d_Data'688'_1992 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_1992 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Datum
d_Datum_1994 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_1994 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1996 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1996 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1998 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1998 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2000 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2000 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2002 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2002 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2004 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2004 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2006 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2006 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-T
d_DecEq'45'T_2008 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2008 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2010 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2010 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2012 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2012 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnits
d_ExUnits_2014 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_2014 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2016 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2016 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.LangDepView
d_LangDepView_2018 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_2018 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Language
d_Language_2020 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_2020 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusScript
d_PlutusScript_2022 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_2022 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV1
d_PlutusV1_2024 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_2024 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV2
d_PlutusV2_2026 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_2026 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV3
d_PlutusV3_2028 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_2028 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Prices
d_Prices_2030 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_2030 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Redeemer
d_Redeemer_2032 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_2032 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2034 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2034 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'CostModel_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2036 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2036 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-Prices
d_Show'45'Prices_2038 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-THash
d_Show'45'THash_2040 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2040 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-Hashable
d_T'45'Hashable_2042 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2042 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-isHashable
d_T'45'isHashable_2044 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2044 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.language
d_language_2046 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_2046 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_language_272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.toData
d_toData_2048 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  () -> AgdaAny -> AgdaAny
d_toData_2048 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.validPlutusScript
d_validPlutusScript_2050 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2050 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q1
d_Q1_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2a
d_Q2a_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2b
d_Q2b_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_268 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q4
d_Q4_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_270 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q5
d_Q5_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_252 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_272 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.net
d_net_2066 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  Integer
d_net_2066 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.stake
d_stake_2068 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2068 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2072 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2072 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.CostModel
d_CostModel_2074 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_CostModel_2074 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T
d_T_2076 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_T_2076 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.THash
d_THash_2078 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_THash_2078 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dataʰ
d_Data'688'_2080 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2080 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Datum
d_Datum_2082 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Datum_2082 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2084 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2084 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2086 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2086 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Dec'45'validPlutusScript_270
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2088 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2088 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEQ'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2090 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2090 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2092 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2092 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2094 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2094 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2096 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2096 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2098 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2098 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-T
d_DecEq'45'T_2100 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2100 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2102 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2102 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2104 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2104 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnits
d_ExUnits_2106 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_ExUnits_2106 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2108 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2108 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2110 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2110 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2112 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2112
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_Hashable'45'Script_402
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.LangDepView
d_LangDepView_2114 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_LangDepView_2114 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Language
d_Language_2116 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Language_2116 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.P1Script
d_P1Script_2118 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_P1Script_2118 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusScript
d_PlutusScript_2120 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_PlutusScript_2120 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV1
d_PlutusV1_2122 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV1_2122 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV2
d_PlutusV2_2124 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV2_2124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV3
d_PlutusV3_2126 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV3_2126 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Prices
d_Prices_2128 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Prices_2128 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Redeemer
d_Redeemer_2130 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Redeemer_2130 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Script
d_Script_2132 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Script_2132 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2134 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2134 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2136 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2136 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-Prices
d_Show'45'Prices_2138 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2138 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Show'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-THash
d_Show'45'THash_2140 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2140 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-Hashable
d_T'45'Hashable_2142 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2142 v0
  = let v1
          = MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-isHashable
d_T'45'isHashable_2144 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2144 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2146 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2146 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isNativeScript
d_isNativeScript_2148 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2148 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script
d_isP1Script_2150 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2150 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script?
d_isP1Script'63'_2152 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2152 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP1Script'63'_408
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script
d_isP2Script_2154 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2154 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script?
d_isP2Script'63'_2156 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2156 v0 v1
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_isP2Script'63'_422
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.language
d_language_2158 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny
d_language_2158 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_language_272
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.p1s
d_p1s_2160 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2160 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ps
d_ps_2162 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_PlutusStructure_128
d_ps_2162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toData
d_toData_2164 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  () -> AgdaAny -> AgdaAny
d_toData_2164 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_toData_276
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP1Script
d_toP1Script_2166 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2166 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP1Script_416
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP2Script
d_toP2Script_2168 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2168 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Script.Base.du_toP2Script_428
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validP1Script
d_validP1Script_2170 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2170 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validPlutusScript
d_validPlutusScript_2172 ::
  MAlonzo.Code.Ledger.Core.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2172 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.cost
d_cost_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_cost_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1090 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.margin
d_margin_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1092
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.owners
d_owners_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  [Integer]
d_owners_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.pledge
d_pledge_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  Integer
d_pledge_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1094
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.rewardAccount
d_rewardAccount_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1076 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1096
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._∙_
d__'8729'__2202 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2202 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≈_
d__'8776'__2204 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2204 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2206 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2206 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2208 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2208 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2210 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2212 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2216 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2220 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value
d_Value_2224 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2224 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2226 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2226 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.addValue
d_addValue_2228 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2228
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin
d_coin_2230 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2232 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2232 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2234 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2234 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2236 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2236 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.inject
d_inject_2238 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.monoid
d_monoid_2240 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2240 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.policies
d_policies_2242 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2242 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.rawMonoid
d_rawMonoid_2244 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2244 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.size
d_size_2246 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.sumᵛ
d_sum'7515'_2248 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2248
  = coe
      MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.ε
d_ε_2250 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2250 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2254 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2256 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2260 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2262 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2266 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2272 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2272 ~v0 = du_isMagmaIsomorphism_2272
du_isMagmaIsomorphism_2272 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2272 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2274 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2274 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2274 v2
du_isMagmaMonomorphism_2274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2274 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2276 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2278 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2280 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2280 v0
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
d_isRelIsomorphism_2282 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2282 ~v0 ~v1 v2 = du_isRelIsomorphism_2282 v2
du_isRelIsomorphism_2282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2282 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2284 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2284 ~v0 ~v1 v2 = du_isRelMonomorphism_2284 v2
du_isRelMonomorphism_2284 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2284 v0
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
d_surjective_2286 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2286 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2288 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2288 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2290 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2290 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2294 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2294 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2296 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2296 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2298 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2298 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2300 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2300 ~v0 = du_isMagmaMonomorphism_2300
du_isMagmaMonomorphism_2300 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2300 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2302 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2302 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2304 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2304 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2306 ::
  MAlonzo.Code.Ledger.Core.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2306 ~v0 ~v1 v2 = du_isRelMonomorphism_2306 v2
du_isRelMonomorphism_2306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2306 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2308 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2308 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2310 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2310 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scripts
d_scripts_2314 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2314 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_scripts_3274
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scriptsP1
d_scriptsP1_2316 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_362]
d_scriptsP1_2316
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.du_scriptsP1_3280
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txdats
d_txdats_2318 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  [Integer]
d_txdats_2318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txdats_3276
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txrdmrs
d_txrdmrs_2320 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_txrdmrs_3278
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.vkSigs
d_vkSigs_2322 ::
  MAlonzo.Code.Ledger.Core.Specification.Transaction.T_TxWitnesses_3262 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2322 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Transaction.d_vkSigs_3272
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERT
d_Computational'45'CERT_2358 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2358
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2060
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTS
d_Computational'45'CERTS_2360 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2360
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2532
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-DELEG
d_Computational'45'DELEG_2362 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_2362
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'DELEG_1582
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-GOVCERT
d_Computational'45'GOVCERT_2364 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_2364
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'GOVCERT_1784
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-POST-CERT
d_Computational'45'POST'45'CERT_2366 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POST'45'CERT_2366
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'POST'45'CERT_2510
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-PRE-CERT
d_Computational'45'PRE'45'CERT_2368 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'PRE'45'CERT_2368
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'PRE'45'CERT_2368
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupDeposit
d_lookupDeposit_2370 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1100 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_2370
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_lookupDeposit_1574
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Transaction.d_govStructure_2502
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_774
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-UnitInterval
d_HsTy'45'UnitInterval_2372 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UnitInterval_2372 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-UnitInterval
d_Conv'45'UnitInterval_2374 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UnitInterval_2374
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
d_HsTy'45'PosNat_2384 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PosNat_2384 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-PosNat
d_Conv'45'PosNat_2386 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PosNat_2386
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
