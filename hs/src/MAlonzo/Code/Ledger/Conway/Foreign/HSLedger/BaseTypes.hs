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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._+ᵉ'_
d__'43''7497'''__94 :: Integer -> Integer -> Integer
d__'43''7497'''__94
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._._∙_
d__'8729'__96 :: Integer -> Integer -> Integer
d__'8729'__96
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_442 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv
d_CertEnv_162 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState
d_CertState_166 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertStateOf
d_CertStateOf_170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
d_CertStateOf_170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1490
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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_DCertsOf_184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DReps
d_DReps_196 :: ()
d_DReps_196 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DRepsOf
d_DRepsOf_198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState
d_DState_200 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DStateOf
d_DStateOf_204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_DStateOf_204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1430
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_358 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_222
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_224 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_378 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_224
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_266
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEQ-Prices
d_DecEQ'45'Prices_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_228
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_236
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_230 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_230
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_270
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_232 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_232
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_272
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-CostModel
d_DecEq'45'CostModel_234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_234
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Credential
d_DecEq'45'Credential_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_236
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_238 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_238
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1146
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_566
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Epoch
d_DecEq'45'Epoch_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_242
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ExUnits
d_DecEq'45'ExUnits_244 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_244
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovActionType
d_DecEq'45'GovActionType_246 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_246
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_1102
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovRole
d_DecEq'45'GovRole_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_248
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1104
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-GovVoter
d_DecEq'45'GovVoter_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_250
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_252 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_252
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HSTimelock_376
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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1264
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-LangDepView
d_DecEq'45'LangDepView_256 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_256
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Language
d_DecEq'45'Language_258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_258
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Netw
d_DecEq'45'Netw_260 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_260
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-P1Script
d_DecEq'45'P1Script_262 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_262
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_264 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_264
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_572
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PParams
d_DecEq'45'PParams_266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_266
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_570
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_268 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_268
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_568
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_270 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_270
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RwdAddr_274
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_272 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_272
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Ser
d_DecEq'45'Ser_274 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_274
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_280 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_280
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1268
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-T
d_DecEq'45'T_282 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_282
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1268
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-THash
d_DecEq'45'THash_286 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_286
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
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
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1266
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-UpdT
d_DecEq'45'UpdT_294 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_294
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1530
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2356
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-VDeleg
d_DecEq'45'VDeleg_296 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_296
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1108
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Value
d_DecEq'45'Value_298 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_298
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecEq-Vote
d_DecEq'45'Vote_300 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_300
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DecPo-Slot
d_DecPo'45'Slot_302 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_302
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds
d_DrepThresholds_314 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSAbstractFunctions
d_HSAbstractFunctions_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2388
d_HSAbstractFunctions_318
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSAbstractFunctions_3104
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTransactionStructure
d_HSTransactionStructure_320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_320
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
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
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ExUnits
d_ExUnits_328 :: ()
d_ExUnits_328 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState
d_GState_336 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GStateOf
d_GStateOf_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_GStateOf_340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction
d_GovAction_342 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionData
d_GovActionData_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794 ->
  ()
d_GovActionData_346 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionID
d_GovActionID_350 :: ()
d_GovActionID_350 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionOf
d_GovActionOf_352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_842 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828
d_GovActionOf_352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_848
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState
d_GovActionState_354 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionType
d_GovActionType_358 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionTypeOf
d_GovActionTypeOf_360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794
d_GovActionTypeOf_360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_818
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams
d_GovParams_362 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposal
d_GovProposal_366 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovProposalsOf
d_GovProposalsOf_370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3374 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRole
d_GovRole_372 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovRoleCredential
d_GovRoleCredential_374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_782 ->
  ()
d_GovRoleCredential_374 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVote
d_GovVote_376 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVoter
d_GovVoter_380 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovVoterOf
d_GovVoterOf_384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1032 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872
d_GovVoterOf_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1040
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
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272
d_HSScriptStructure_402
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_390
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock
d_HSTimelock_404 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys
d_HasCCHotKeys_408 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'CertState_412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1526
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166
d_HasCCHotKeys'45'GState_414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1514
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength
d_HasCCMaxTermLength_416 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-Acnt
d_HasCast'45'Acnt_420 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertEnv
d_HasCast'45'CertEnv_422 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1542
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-CertState
d_HasCast'45'CertState_424 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1550
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DState
d_HasCast'45'DState_426 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1544
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_428 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1552
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GState
d_HasCast'45'GState_430 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1548
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_432 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_858
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-GovVote
d_HasCast'45'GovVote_434 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1208
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected
d_HasCast'45'HashProtected_436 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_970
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_438 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_438
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_972
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCast-PState
d_HasCast'45'PState_440 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1546
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
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1540
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCoin-TxOut
d_HasCoin'45'TxOut_448 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_448
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3586
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential
d_HasCredential_450 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_454 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RwdAddr_454
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RwdAddr_164
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts
d_HasDCerts_456 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts-Tx
d_HasDCerts'45'Tx_460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3354
d_HasDCerts'45'Tx_460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3462
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps
d_HasDReps_462 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-CertState
d_HasDReps'45'CertState_466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'CertState_466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1524
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDReps-GState
d_HasDReps'45'GState_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232
d_HasDReps'45'GState_468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1512
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState
d_HasDState_470 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState-CertState
d_HasDState'45'CertState_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422
d_HasDState'45'CertState_474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1516
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits
d_HasDeposits_476 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDonations-Tx
d_HasDonations'45'Tx_480 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3472
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDonations-TxBody
d_HasDonations'45'TxBody_482 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3410
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasFees-Tx
d_HasFees'45'Tx_484 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3460
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState
d_HasGState_486 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState-CertState
d_HasGState'45'CertState_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462
d_HasGState'45'CertState_490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1520
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction
d_HasGovAction_492 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_842
d_HasGovAction'45'GovActionState_496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1096
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_842
d_HasGovAction'45'GovProposal_498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1094
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType
d_HasGovActionType_500 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812
d_HasGovActionType'45'GovAction_504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_856
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812
d_HasGovActionType'45'GovActionState_506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1100
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812
d_HasGovActionType'45'GovProposal_508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1098
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals
d_HasGovProposals_510 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3374
d_HasGovProposals'45'Tx_514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3464
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovVoter
d_HasGovVoter_516 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1032
d_HasGovVoter'45'GovVote_520
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1088
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
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_530 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122
d_HasNetworkId'45'RwdAddr_530
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RwdAddr_162
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams
d_HasPParams_532 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422
d_HasPParams'45'CertEnv_536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1498
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState
d_HasPState_538 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState-CertState
d_HasPState'45'CertState_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442
d_HasPState'45'CertState_542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1518
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPolicy
d_HasPolicy_544 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1072
d_HasPolicy'45'GovProposal_548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1092
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools
d_HasPools_550 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-CertState
d_HasPools'45'CertState_554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
d_HasPools'45'CertState_554
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1528
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools-PState
d_HasPools'45'PState_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182
d_HasPools'45'PState_556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1508
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasReserves-Acnt
d_HasReserves'45'Acnt_558 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_558
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_180
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring
d_HasRetiring_560 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring-PState
d_HasRetiring'45'PState_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1198
d_HasRetiring'45'PState_564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1510
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards
d_HasRewards_566 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-CertState
d_HasRewards'45'CertState_570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'CertState_570
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1522
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards-DState
d_HasRewards'45'DState_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214
d_HasRewards'45'DState_572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1506
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStake
d_HasStake_574 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs
d_HasStakeDelegs_578 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'CertState_582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1532
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246
d_HasStakeDelegs'45'DState_584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1504
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_586 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_586
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_178
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody
d_HasTxBody_588 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody-Tx
d_HasTxBody'45'Tx_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3334
d_HasTxBody'45'Tx_592
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3458
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId
d_HasTxId_594 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId-Tx
d_HasTxId'45'Tx_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3394
d_HasTxId'45'Tx_598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3470
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO
d_HasUTxO_600 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVote
d_HasVote_604 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVote-GovVote
d_HasVote'45'GovVote_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1052
d_HasVote'45'GovVote_608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1090
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs
d_HasVoteDelegs_610 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_946
d_HasVoteDelegs'45'CertState_614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1530
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_946
d_HasVoteDelegs'45'DState_616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1502
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals
d_HasWithdrawals_618 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_622 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'CertEnv_622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1500
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_624 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'Tx_624
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3468
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_626 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142
d_HasWithdrawals'45'TxBody_626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3466
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HashProtected
d_HashProtected_628 :: () -> ()
d_HashProtected_628 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSPlutusScript
d_Hashable'45'HSPlutusScript_630 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSPlutusScript_630
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSPlutusScript_390
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_632 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_632
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HSTimelock_374
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-P1Script
d_Hashable'45'P1Script_634 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_634
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_636 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_636
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_222
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Hashable-Script
d_Hashable'45'Script_638 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_638
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HsGovParams
d_HsGovParams_640 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498
d_HsGovParams_640
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_728
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
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_670 :: Integer
d_MaxLovelaceSupply'7580'_670
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.MemoryEstimate
d_MemoryEstimate_672 :: ()
d_MemoryEstimate_672 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NeedsHash
d_NeedsHash_676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794 ->
  ()
d_NeedsHash_676 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Network
d_Network_678 :: ()
d_Network_678 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkId
d_NetworkId_682 :: Integer
d_NetworkId_682
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NetworkIdOf
d_NetworkIdOf_684 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_684 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_690 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_690
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_692 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_692
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Number-Epoch
d_Number'45'Epoch_694 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_694
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1Script
d_P1Script_696 :: ()
d_P1Script_696 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure
d_P1ScriptStructure_698 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_P1ScriptStructure'45'HTL_702
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_392
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusScript
d_PlutusScript_704 :: ()
d_PlutusScript_704 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamGroup
d_PParamGroup_710 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams
d_PParams_712 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff
d_PParamsDiff_716 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsOf
d_PParamsOf_720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_PParamsOf_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UpdateT
d_UpdateT_722 :: ()
d_UpdateT_722 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState
d_PState_724 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PStateOf
d_PStateOf_728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_PStateOf_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure
d_PlutusStructure_730 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV1
d_PlutusV1_734 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_734
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV2
d_PlutusV2_736 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_736
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusV3
d_PlutusV3_738 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_738
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Policy
d_Policy_740 :: ()
d_Policy_740 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PolicyOf
d_PolicyOf_742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1072 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1080
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolEnv
d_PoolEnv_746 :: ()
d_PoolEnv_746 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds
d_PoolThresholds_748 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Pools
d_Pools_752 :: ()
d_Pools_752 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolsOf
d_PoolsOf_754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_756 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_756
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Prices
d_Prices_758 :: ()
d_Prices_758 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProposedPPUpdates
d_ProposedPPUpdates_760 :: ()
d_ProposedPPUpdates_760 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ProtVer
d_ProtVer_762 :: ()
d_ProtVer_762 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Quorum
d_Quorum_764 :: Integer
d_Quorum_764
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_766 :: Integer
d_RandomnessStabilisationWindow_766
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_768 :: Integer
d_RandomnessStabilisationWindow'7580'_768
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RdmrPtr
d_RdmrPtr_770 :: ()
d_RdmrPtr_770 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Redeemer
d_Redeemer_772 :: ()
d_Redeemer_772 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Retiring
d_Retiring_786 :: ()
d_Retiring_786 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RetiringOf
d_RetiringOf_788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1206
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Rewards
d_Rewards_790 :: ()
d_Rewards_790 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RewardsOf
d_RewardsOf_792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr
d_RwdAddr_794 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SKey
d_SKey_800 :: ()
d_SKey_800 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Script
d_Script_804 :: ()
d_Script_804 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptAddr
d_ScriptAddr_806 :: ()
d_ScriptAddr_806 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBaseAddr
d_ScriptBaseAddr_808 :: ()
d_ScriptBaseAddr_808 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_810 :: ()
d_ScriptBootstrapAddr_810 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptHash
d_ScriptHash_812 :: ()
d_ScriptHash_812 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure
d_ScriptStructure_816 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Ser
d_Ser_822 :: ()
d_Ser_822 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-CostModel
d_Show'45'CostModel_824 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_824
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential
d_Show'45'Credential_826 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_826 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_286
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_828 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_828 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_290
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-DrepThresholds
d_Show'45'DrepThresholds_830 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_830
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_574
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Epoch
d_Show'45'Epoch_832 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_832
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ExUnits
d_Show'45'ExUnits_834 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_834
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_238
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-GovRole
d_Show'45'GovRole_836 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_836
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_790
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Network
d_Show'45'Network_838 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_838
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PParams
d_Show'45'PParams_840 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_840
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_578
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-PoolThresholds
d_Show'45'PoolThresholds_842 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_842
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_576
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-Prices
d_Show'45'Prices_844 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_844
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ProtVer
d_Show'45'ProtVer_846 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_846
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-RwdAddr
d_Show'45'RwdAddr_848 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_848
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RwdAddr_288
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-ScriptHash
d_Show'45'ScriptHash_850 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_850
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_852 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_852
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1268
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_854 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_854
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-THash
d_Show'45'THash_856 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_856
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Show-VDeleg
d_Show'45'VDeleg_858 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_858
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Sig
d_Sig_860 :: ()
d_Sig_860 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slot
d_Slot_862 :: ()
d_Slot_862 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_864 :: Integer
d_SlotsPerEpoch'7580'_864
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Slotʳ
d_Slot'691'_866 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_866
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindow
d_StabilityWindow_868 :: Integer
d_StabilityWindow_868
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StabilityWindowᶜ
d_StabilityWindow'7580'_870 :: Integer
d_StabilityWindow'7580'_870
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Stake
d_Stake_872 :: ()
d_Stake_872 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegs
d_StakeDelegs_874 :: ()
d_StakeDelegs_874 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeDelegsOf
d_StakeDelegsOf_876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakeOf
d_StakeOf_878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams
d_StakePoolParams_880 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_884 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_884
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1268
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_886 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_886
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-Hashable
d_T'45'Hashable_888 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_888
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.T-isHashable
d_T'45'isHashable_890 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_890
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Timelock
d_Timelock_894 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra
d_TokenAlgebra_896 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx
d_Tx_904 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody
d_TxBody_908 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBodyOf
d_TxBodyOf_912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3334 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_TxBodyOf_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxId
d_TxId_914 :: ()
d_TxId_914 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIdOf
d_TxIdOf_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3394 ->
  AgdaAny -> Integer
d_TxIdOf_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxIn
d_TxIn_918 :: ()
d_TxIn_918 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOut
d_TxOut_920 :: ()
d_TxOut_920 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxOutʰ
d_TxOut'688'_922 :: ()
d_TxOut'688'_922 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses
d_TxWitnesses_924 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxO
d_UTxO_928 :: ()
d_UTxO_928 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.UTxOOf
d_UTxOOf_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Update
d_Update_932 :: ()
d_Update_932 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VDeleg
d_VDeleg_936 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKey
d_VKey_938 :: ()
d_VKey_938 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyAddr
d_VKeyAddr_940 :: ()
d_VKeyAddr_940 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBaseAddr
d_VKeyBaseAddr_942 :: ()
d_VKeyBaseAddr_942 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_944 :: ()
d_VKeyBootstrapAddr_944 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value
d_Value_948 :: ()
d_Value_948 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_950 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_950
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegs
d_VoteDelegs_952 :: ()
d_VoteDelegs_952 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteDelegsOf
d_VoteDelegsOf_954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_946 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_954
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.VoteOf
d_VoteOf_956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1052 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_864
d_VoteOf_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Withdrawals
d_Withdrawals_958 :: ()
d_Withdrawals_958 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.WithdrawalsOf
d_WithdrawalsOf_960 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_960 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.activeDRepsOf
d_activeDRepsOf_962 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_962
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1258
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.activeInEpoch
d_activeInEpoch_964 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_964 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.adHashingScheme
d_adHashingScheme_966 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_966
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_isHashableSet'45'ℕ_38
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addEpoch
d_addEpoch_968 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_968
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addSlot
d_addSlot_970 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_970
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.addValue
d_addValue_972 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_972
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.applyUpdate
d_applyUpdate_974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_applyUpdate_974
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1480
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2356
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin
d_coin_982 :: Integer -> Integer
d_coin_982
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin-inject-lemma
d_coin'45'inject'45'lemma_984 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_984 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_986
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.coin∘inject≗id
d_coin'8728'inject'8791'id_988 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_988 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cryptoStructure
d_cryptoStructure_990 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_990
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSCryptoStructure_16
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.cwitness
d_cwitness_992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_992
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1300
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.e<sucᵉ
d_e'60'suc'7497'_1000 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1000
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epoch
d_epoch_1002 :: Integer -> Integer
d_epoch_1002
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.epochStructure
d_epochStructure_1004 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1004
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSEpochStructure_14
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.evalTimelock
d_evalTimelock_1018 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.firstSlot
d_firstSlot_1020 :: Integer -> Integer
d_firstSlot_1020
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaData
d_gaData_1022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  AgdaAny
d_gaData_1022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.gaType
d_gaType_1024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794
d_gaType_1024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_834
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getScriptHash
d_getScriptHash_1026 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_1026
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_264
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValue
d_getValue_1028 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1028
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3474
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.getValueʰ
d_getValue'688'_1030 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1030
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3490
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.globalConstants
d_globalConstants_1032 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1032
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.du_HSGlobalConstants_12
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govParams
d_govParams_1034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498
d_govParams_1034
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HsGovParams_728
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.govStructure
d_govStructure_1036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1036
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.hashRespectsUnion
d_hashRespectsUnion_1038 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1038
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_318
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.inject
d_inject_1040 :: Integer -> Integer
d_inject_1040
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr
d_isBootstrapAddr_1042 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isBootstrapAddr?
d_isBootstrapAddr'63'_1044 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1044
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr'63'_218
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isGovVoterCredential
d_isGovVoterCredential_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_1046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterCredential_1216
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isGovVoterDRep
d_isGovVoterDRep_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1212
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHash
d_isKeyHash_1050 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1050 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObj
d_isKeyHashObj_1052 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1052
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1054 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1054
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isKeyPair
d_isKeyPair_1056 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 -> ()
d_isKeyPair_1056 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isNativeScript
d_isNativeScript_1058 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1058 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script
d_isP1Script_1060 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1060 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP1Script?
d_isP1Script'63'_1062 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1062
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_398
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script
d_isP2Script_1064 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1064 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isP2Script?
d_isP2Script'63'_1066 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1066
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_412
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isPoolRegistered
d_isPoolRegistered_1068 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090
d_isPoolRegistered_1068
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1632
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScript
d_isScript_1070 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptAddr
d_isScriptAddr_1072 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1072 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptObj
d_isScriptObj_1074 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1074
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isScriptRwdAddr
d_isScriptRwdAddr_1076 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 -> ()
d_isScriptRwdAddr_1076 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned
d_isSigned_1078 ::
  MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.T_HSVKey_14 ->
  Integer -> Integer -> ()
d_isSigned_1078 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isSigned-correct
d_isSigned'45'correct_1080 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1080 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKey
d_isVKey_1082 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.isVKeyAddr
d_isVKeyAddr_1084 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1084 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.khs
d_khs_1086 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1086
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.language
d_language_1088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_378 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1088
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupScriptHash
d_lookupScriptHash_1090 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1090
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3572
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.monoid
d_monoid_1092 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1092
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.netId
d_netId_1094 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1094
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.p1s
d_p1s_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1096
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWF-elim
d_paramsWF'45'elim_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1098 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_546
      v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.paramsWellFormed
d_paramsWellFormed_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  ()
d_paramsWellFormed_1100 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.payCred
d_payCred_1102 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1102
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_188
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pkk
d_pkk_1104 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1104
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.policies
d_policies_1106 :: Integer -> [Integer]
d_policies_1106
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.positivePParams
d_positivePParams_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  [Integer]
d_positivePParams_1108
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_458
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppUpd
d_ppUpd_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1464
d_ppUpd_1110
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2356
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppWF?
d_ppWF'63'_1112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1112
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1488
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2356
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ppdWellFormed
d_ppdWellFormed_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  ()
d_ppdWellFormed_1114 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.preoEpoch
d_preoEpoch_1116 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1116
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.proposedCC
d_proposedCC_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1118
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1222
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ps
d_ps_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_1120
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow
d_pvCanFollow_1122 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.pvCanFollow?
d_pvCanFollow'63'_1124 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_pvCanFollow'63'_1416
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rawMonoid
d_rawMonoid_1126 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1126
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.refScripts
d_refScripts_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1128
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3514
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.rewardsBalance
d_rewardsBalance_1138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  Integer
d_rewardsBalance_1138
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1534
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptOuts
d_scriptOuts_1140 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3500
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.scriptStructure
d_scriptStructure_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272
d_scriptStructure_1142
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSScriptStructure_390
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sign
d_sign_1144 :: Integer -> Integer -> Integer
d_sign_1144
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1316
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.size
d_size_1146 :: Integer -> Integer
d_size_1146
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.stakeCred
d_stakeCred_1148 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1148
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_190
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sucᵉ
d_suc'7497'_1150 :: Integer -> Integer
d_suc'7497'_1150
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.sumᵛ
d_sum'7515'_1152 :: [Integer] -> Integer
d_sum'7515'_1152
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP1Script
d_toP1Script_1154 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_358
d_toP1Script_1154
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_406
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.toP2Script
d_toP2Script_1156 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_378
d_toP2Script_1156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_418
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.tokenAlgebra
d_tokenAlgebra_1158 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1158
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core.d_tokenAlgebra_110
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txInsScript
d_txInsScript_1160 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1160
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3508
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txInsVKey
d_txInsVKey_1162 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1162
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3494
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txOutHash
d_txOutHash_1164 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1164
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3480
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txidBytes
d_txidBytes_1166 :: Integer -> Integer
d_txidBytes_1166 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.txscripts
d_txscripts_1168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1168
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3562
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.updateGroups
d_updateGroups_1170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_194]
d_updateGroups_1170
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1482
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2356
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validP1Script
d_validP1Script_1178 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_358 ->
  ()
d_validP1Script_1178 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.validPlutusScript
d_validPlutusScript_1180 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_378 ->
  ()
d_validPlutusScript_1180 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ε
d_ε_1182 :: Integer
d_ε_1182
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2374
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1184 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1184 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕEpochStructure
d_ℕEpochStructure_1186 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1186
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1282
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ℕtoEpoch
d_ℕtoEpoch_1188 :: Integer -> Integer
d_ℕtoEpoch_1188
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.≤-predᵉ
d_'8804''45'pred'7497'_1190 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1190
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.reserves
d_reserves_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  Integer
d_reserves_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_174
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Acnt.treasury
d_treasury_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_166 ->
  Integer
d_treasury_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_172
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.hash
d_hash_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_884 ->
  Integer
d_hash_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_892
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Anchor.url
d_url_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_884 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_890
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.net
d_net_1256 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1256 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.pay
d_pay_1258 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BaseAddr.stake
d_stake_1260 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.attrsSize
d_attrsSize_1264 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1264 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.net
d_net_1266 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.BootstrapAddr.pay
d_pay_1268 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1268 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.coldCreds
d_coldCreds_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.epoch
d_epoch_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  Integer
d_epoch_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1330
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.pp
d_pp_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pp_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.votes
d_votes_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896]
d_votes_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1334
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertEnv.wdrls
d_wdrls_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1318 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1336
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.dState
d_dState_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_dState_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1394
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.gState
d_gState_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_gState_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.CertState.pState
d_pState_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_pState_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.rewards
d_rewards_1316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.stakeDelegs
d_stakeDelegs_1318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DState.voteDelegs
d_voteDelegs_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.delegatees
d_delegatees_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1402 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pools
d_pools_1326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DelegEnv.pparams
d_pparams_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_pparams_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P1
d_P1_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2a
d_P2a_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P2b
d_P2b_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_232 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P3
d_P3_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P4
d_P4_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5a
d_P5a_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5b
d_P5b_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5c
d_P5c_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P5d
d_P5d_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.DrepThresholds.P6
d_P6_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.ccHotKeys
d_ccHotKeys_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GState.dreps
d_dreps_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaData
d_gaData_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  AgdaAny
d_gaData_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovAction.gaType
d_gaType_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794
d_gaType_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_834
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.action
d_action_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828
d_action_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1022
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.expiresIn
d_expiresIn_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1004 ->
  Integer
d_expiresIn_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1020
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.prevAction
d_prevAction_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1004 ->
  AgdaAny
d_prevAction_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1024
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.returnAddr
d_returnAddr_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1018
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActionState.votes
d_votes_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_916
d_votes_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1016
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Anchor
d_Anchor_1404 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DReps
d_DReps_1414 :: ()
d_DReps_1414 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DRepsOf
d_DRepsOf_1416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1418 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_1102
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1420 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1104
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1422 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1422
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1424 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1424
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1108
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1426 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1106
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovAction
d_GovAction_1428 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionData
d_GovActionData_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794 ->
  ()
d_GovActionData_1432 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionID
d_GovActionID_1434 :: ()
d_GovActionID_1434 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionOf
d_GovActionOf_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_842 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828
d_GovActionOf_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_848
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionState
d_GovActionState_1438 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionType
d_GovActionType_1442 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794
d_GovActionTypeOf_1444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_818
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal
d_GovProposal_1446 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRole
d_GovRole_1450 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovRoleCredential
d_GovRoleCredential_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_782 ->
  ()
d_GovRoleCredential_1452 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote
d_GovVote_1454 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter
d_GovVoter_1458 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoterOf
d_GovVoterOf_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1032 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872
d_GovVoterOf_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1040
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes
d_GovVotes_1464 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1468 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_858
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1470 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1208
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1472 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_970
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1474 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_972
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasDReps
d_HasDReps_1476 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction
d_HasGovAction_1480 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_842
d_HasGovAction'45'GovActionState_1484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1096
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_842
d_HasGovAction'45'GovProposal_1486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1094
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType
d_HasGovActionType_1488 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812
d_HasGovActionType'45'GovAction_1492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_856
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812
d_HasGovActionType'45'GovActionState_1494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1100
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812
d_HasGovActionType'45'GovProposal_1496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1098
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter
d_HasGovVoter_1498 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1032
d_HasGovVoter'45'GovVote_1502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1088
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy
d_HasPolicy_1504 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1072
d_HasPolicy'45'GovProposal_1508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1092
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote
d_HasVote_1510 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1052
d_HasVote'45'GovVote_1514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1090
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1516 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HashProtected
d_HashProtected_1520 :: () -> ()
d_HashProtected_1520 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.NeedsHash
d_NeedsHash_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794 ->
  ()
d_NeedsHash_1524 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Policy
d_Policy_1530 :: ()
d_Policy_1530 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.PolicyOf
d_PolicyOf_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1072 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1080
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Show-GovRole
d_Show'45'GovRole_1536 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_790
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1538 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1538
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VDeleg
d_VDeleg_1546 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.Vote
d_Vote_1548 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegs
d_VoteDelegs_1550 :: ()
d_VoteDelegs_1550 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_946 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_954
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.VoteOf
d_VoteOf_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1052 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_864
d_VoteOf_1554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.activeDRepsOf
d_activeDRepsOf_1558 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1558
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1258
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.activeInEpoch
d_activeInEpoch_1560 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1560 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaData
d_gaData_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  AgdaAny
d_gaData_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_836
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.gaType
d_gaType_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794
d_gaType_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_834
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.isGovVoterCredential
d_isGovVoterCredential_1566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterCredential_1566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterCredential_1216
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1568
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1212
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.proposedCC
d_proposedCC_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1222
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.action
d_action_1588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828
d_action_1588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_990
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.anchor
d_anchor_1590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_884
d_anchor_1590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1000
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.deposit
d_deposit_1592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  Integer
d_deposit_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_996
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.policy
d_policy_1594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  Maybe Integer
d_policy_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_994
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.prevAction
d_prevAction_1596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  AgdaAny
d_prevAction_1596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_992
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovProposal.returnAddr
d_returnAddr_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104
d_returnAddr_1598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_998
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.anchor
d_anchor_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_884
d_anchor_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_912
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.gid
d_gid_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_906
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.vote
d_vote_1614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_864
d_vote_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_910
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVote.voter
d_voter_1616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872
d_voter_1616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_908
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvCredential
d_gvCredential_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872 ->
  AgdaAny
d_gvCredential_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_880
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVoter.gvRole
d_gvRole_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_782
d_gvRole_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_878
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvCC
d_gvCC_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_924
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvDRep
d_gvDRep_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_926
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.GovVotes.gvSPO
d_gvSPO_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_928
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1232 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_842 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_828
d_GovActionOf_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_848
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_812 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_794
d_GovActionTypeOf_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_818
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1032 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_872
d_GovVoterOf_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1040
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1072 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1080
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVote.VoteOf
d_VoteOf_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1052 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_864
d_VoteOf_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_946 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_954
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.UpdateT
d_UpdateT_1680 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498 ->
  ()
d_UpdateT_1680 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.applyUpdate
d_applyUpdate_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_applyUpdate_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppUpd
d_ppUpd_1684 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1464
d_ppUpd_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppWF?
d_ppWF'63'_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1488
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.ppdWellFormed
d_ppdWellFormed_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498 ->
  AgdaAny -> ()
d_ppdWellFormed_1688 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.GovParams.updateGroups
d_updateGroups_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1498 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_194]
d_updateGroups_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1482
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1516
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptHash
d_psScriptHash_1694 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_378 ->
  Integer
d_psScriptHash_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptHash_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSPlutusScript.psScriptSize
d_psScriptSize_1696 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSPlutusScript_378 ->
  Integer
d_psScriptSize_1696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_psScriptSize_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.timelock
d_timelock_1700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_358 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104
d_timelock_1700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptHash
d_tlScriptHash_1702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_358 ->
  Integer
d_tlScriptHash_1702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptHash_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HSTimelock.tlScriptSize
d_tlScriptSize_1704 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_358 ->
  Integer
d_tlScriptSize_1704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_tlScriptSize_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1166 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_442 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCertState.CertStateOf
d_CertStateOf_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1386
d_CertStateOf_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasCredential.CredentialOf
d_CredentialOf_1720 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDCerts.DCertsOf
d_DCertsOf_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3354 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_DCertsOf_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDState.DStateOf
d_DStateOf_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1342
d_DStateOf_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasDeposits.DepositsOf
d_DepositsOf_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1130 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1138
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGState.GStateOf
d_GStateOf_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1462 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1374
d_GStateOf_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1470
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3374 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976]
d_GovProposalsOf_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1744 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_122 ->
  AgdaAny -> Integer
d_NetworkIdOf_1744 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPParams.PParamsOf
d_PParamsOf_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_422 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_PParamsOf_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_430
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPState.PStateOf
d_PStateOf_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1442 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358
d_PStateOf_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasPools.PoolsOf
d_PoolsOf_1756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRetiring.RetiringOf
d_RetiringOf_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1198 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1206
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasRewards.RewardsOf
d_RewardsOf_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1214 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStake.StakeOf
d_StakeOf_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1230 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxBody.TxBodyOf
d_TxBodyOf_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3334 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_TxBodyOf_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasTxId.TxIdOf
d_TxIdOf_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3394 ->
  AgdaAny -> Integer
d_TxIdOf_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasUTxO.UTxOOf
d_UTxOOf_1784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3246
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1788 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_142 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1788 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.homo
d_homo_1792 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1792 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1794 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1794 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1796 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1796 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1798 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1798 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidHomomorphism.cong
d_cong_1800 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1800 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.homo
d_homo_1804 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1804 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.injective
d_injective_1806 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1806 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1808 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1808 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1810 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1810 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1812 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1812 ~v0 v1 = du_isMagmaMonomorphism_1812 v1
du_isMagmaMonomorphism_1812 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1812 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1814 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1814 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1816 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1816 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1818 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1818 v0
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
d_isRelIsomorphism_1820 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1820 ~v0 v1 = du_isRelIsomorphism_1820 v1
du_isRelIsomorphism_1820 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1820 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1822 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1822 ~v0 v1 = du_isRelMonomorphism_1822 v1
du_isRelMonomorphism_1822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1822 v0
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
d_surjective_1824 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1824 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1826 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidIsomorphism.cong
d_cong_1828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1828 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.homo
d_homo_1832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1832 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.injective
d_injective_1834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1834 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1836 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1836 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1838 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1838 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1840 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1842 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1844 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1844 ~v0 v1 = du_isRelMonomorphism_1844 v1
du_isRelMonomorphism_1844 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1844 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1846 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.IsMonoidMonomorphism.cong
d_cong_1848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1848 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.P1Script
d_P1Script_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_1858 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.P1ScriptStructure.validP1Script
d_validP1Script_1860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1860 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.Emax
d_Emax_1876 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_Emax_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_390
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a
d_a_1878 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_a_1878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.a0
d_a0_1880 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_394 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.b
d_b_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_b_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMaxTermLength
d_ccMaxTermLength_1884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMaxTermLength_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_406
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.ccMinSize
d_ccMinSize_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_ccMinSize_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_404
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_coinsPerUTxOByte_1888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.collateralPercentage
d_collateralPercentage_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_collateralPercentage_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_396
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.costmdls
d_costmdls_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_398
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepActivity
d_drepActivity_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_drepActivity_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_414
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepDeposit
d_drepDeposit_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_drepDeposit_1896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.drepThresholds
d_drepThresholds_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206
d_drepThresholds_1898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_402
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionDeposit
d_govActionDeposit_1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionDeposit_1900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.govActionLifetime
d_govActionLifetime_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_govActionLifetime_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.keyDeposit
d_keyDeposit_1904 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_keyDeposit_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockExUnits
d_maxBlockExUnits_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxBlockSize
d_maxBlockSize_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxBlockSize_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxCollateralInputs
d_maxCollateralInputs_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxCollateralInputs_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxHeaderSize
d_maxHeaderSize_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxHeaderSize_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerBlock_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_382
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxRefScriptSizePerTx_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxExUnits
d_maxTxExUnits_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxTxSize
d_maxTxSize_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxTxSize_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.maxValSize
d_maxValSize_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_maxValSize_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_356
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.minUTxOValue
d_minUTxOValue_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_minUTxOValue_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.monetaryExpansion
d_monetaryExpansion_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.nopt
d_nopt_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_nopt_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_392
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolDeposit
d_poolDeposit_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  Integer
d_poolDeposit_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.poolThresholds
d_poolThresholds_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250
d_poolThresholds_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_400
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.prices
d_prices_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.pv
d_pv_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_386
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.refScriptCostStride
d_refScriptCostStride_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_384
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParams.treasuryCut
d_treasuryCut_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.UpdateT
d_UpdateT_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1464 ->
  ()
d_UpdateT_1948 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.applyUpdate
d_applyUpdate_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1464 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_applyUpdate_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1480
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppWF?
d_ppWF'63'_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1488
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny -> ()
d_ppdWellFormed_1954 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsDiff.updateGroups
d_updateGroups_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1464 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_194]
d_updateGroups_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1482
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate._?↗_
d__'63''8599'__1960 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1960 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1208
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1962 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1962
  = let v0
          = MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1410
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1650
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_1894
               (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1964 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_274
d_applyPParamsUpdate_1968
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1256
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_194]
d_modifiedUpdateGroups_1970
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1192
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Bool
d_modifiesEconomicGroup_1972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_888
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Bool
d_modifiesGovernanceGroup_1974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1040
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Bool
d_modifiesNetworkGroup_1976
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_812
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Bool
d_modifiesSecurityGroup_1978
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1116
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Bool
d_modifiesTechnicalGroup_1980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_964
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  ()
d_paramsUpdateWellFormed_1982 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1984 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_654
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_656
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_658
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_660
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_682
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_676
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_704
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_722
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_712
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_714
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_716
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.≡-update
d_'8801''45'update_1986 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_1986 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1222
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_Emax_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_700
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a
d_a_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_a_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_670 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.a0
d_a0_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_698 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.b
d_b_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_b_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_672 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_ccMaxTermLength_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_722
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_ccMinSize_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_720
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_coinsPerUTxOByte_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_682
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_collateralPercentage_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_704
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_706
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_drepActivity_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_drepDeposit_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_206
d_drepThresholds_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_708
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_govActionDeposit_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_714
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_govActionLifetime_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_712
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_keyDeposit_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_674
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_666
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_maxBlockSize_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_654
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_maxCollateralInputs_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_662
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_maxHeaderSize_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_658
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_690
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_688
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_664
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_maxTxSize_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_656
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_maxValSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_660
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_686
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_minUTxOValue_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_696
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_678
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_nopt_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_702
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe Integer
d_poolDeposit_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_676
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250
d_poolThresholds_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_710
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.prices
d_prices_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_684
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.pv
d_pv_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_668 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_694
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_692
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_582 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_680
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.fPools
d_fPools_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.pools
d_pools_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PState.retiring
d_retiring_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1358 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2070 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.CostModel
d_CostModel_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_2072 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T
d_T_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_2074 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.THash
d_THash_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_2076 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dataʰ
d_Data'688'_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Datum
d_Datum_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_2080 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_266
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_236
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_234
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_224
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-T
d_DecEq'45'T_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2094 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2096 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.ExUnits
d_ExUnits_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_2100 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_222
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.LangDepView
d_LangDepView_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_2104 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Language
d_Language_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_2106 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusScript
d_PlutusScript_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_2108 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV1
d_PlutusV1_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV2
d_PlutusV2_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.PlutusV3
d_PlutusV3_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Prices
d_Prices_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_2116 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Redeemer
d_Redeemer_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_2118 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_238
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-Prices
d_Show'45'Prices_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_240
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.Show-THash
d_Show'45'THash_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2126 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-Hashable
d_T'45'Hashable_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2128 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.T-isHashable
d_T'45'isHashable_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.language
d_language_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_268
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PlutusStructure.validPlutusScript
d_validPlutusScript_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2134 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q1
d_Q1_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2a
d_Q2a_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_264 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q2b
d_Q2b_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_266 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q4
d_Q4_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_268 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.PoolThresholds.Q5
d_Q5_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_270 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.net
d_net_2150 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  Integer
d_net_2150 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.RwdAddr.stake
d_stake_2152 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RwdAddr_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2152 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2156 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.CostModel
d_CostModel_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_CostModel_2158 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T
d_T_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_T_2160 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.THash
d_THash_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_THash_2162 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dataʰ
d_Data'688'_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Datum
d_Datum_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_Datum_2166 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-T
d_DecEq'45'T_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2184 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2186 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ExUnits
d_ExUnits_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_ExUnits_2190 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_392
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.LangDepView
d_LangDepView_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_LangDepView_2198 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Language
d_Language_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_Language_2200 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.P1Script
d_P1Script_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_P1Script_2202 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusScript
d_PlutusScript_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_PlutusScript_2204 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV1
d_PlutusV1_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  AgdaAny
d_PlutusV1_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV2
d_PlutusV2_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  AgdaAny
d_PlutusV2_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.PlutusV3
d_PlutusV3_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  AgdaAny
d_PlutusV3_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Prices
d_Prices_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_Prices_2212 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Redeemer
d_Redeemer_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_Redeemer_2214 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Script
d_Script_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  ()
d_Script_2216 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-Prices
d_Show'45'Prices_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.Show-THash
d_Show'45'THash_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2224 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-Hashable
d_T'45'Hashable_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2226 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.T-isHashable
d_T'45'isHashable_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_200
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_318
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isNativeScript
d_isNativeScript_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2232 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script
d_isP1Script_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2234 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP1Script?
d_isP1Script'63'_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2236 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_398
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script
d_isP2Script_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2238 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.isP2Script?
d_isP2Script'63'_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2240 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_412
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.language
d_language_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  AgdaAny -> AgdaAny
d_language_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.p1s
d_p1s_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_298
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.ps
d_ps_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_320
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP1Script
d_toP1Script_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_406
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.toP2Script
d_toP2Script_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_418
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validP1Script
d_validP1Script_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2252 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.ScriptStructure.validPlutusScript
d_validPlutusScript_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_272 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2254 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.cost
d_cost_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  Integer
d_cost_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1104 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.margin
d_margin_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1106
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.owners
d_owners_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  [Integer]
d_owners_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1102
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.pledge
d_pledge_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  Integer
d_pledge_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1108
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.StakePoolParams.rewardAccount
d_rewardAccount_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1090 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1110
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._∙_
d__'8729'__2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2284 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≈_
d__'8776'__2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2286 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2288 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2294 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2298 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2302 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value
d_Value_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2306 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.addValue
d_addValue_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin
d_coin_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2314 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2318 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.inject
d_inject_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.monoid
d_monoid_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2322 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.policies
d_policies_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.rawMonoid
d_rawMonoid_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2326 v0
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
d_size_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.sumᵛ
d_sum'7515'_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2330
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.ε
d_ε_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2332 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2336 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2336 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2338 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2338 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2340 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2340 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2342 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2342 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2344 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2348 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2348 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2350 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2350 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2352 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2352 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2354 ~v0 = du_isMagmaIsomorphism_2354
du_isMagmaIsomorphism_2354 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2354 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2356 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2356 v2
du_isMagmaMonomorphism_2356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2356 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2358 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2360 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2362 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2362 v0
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
d_isRelIsomorphism_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2364 ~v0 ~v1 v2 = du_isRelIsomorphism_2364 v2
du_isRelIsomorphism_2364 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2364 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2366 ~v0 ~v1 v2 = du_isRelMonomorphism_2366 v2
du_isRelMonomorphism_2366 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2366 v0
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
d_surjective_2368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2368 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2370 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2370 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2372 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2372 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2376 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2376 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2378 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2378 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2380 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2380 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2382 ~v0 = du_isMagmaMonomorphism_2382
du_isMagmaMonomorphism_2382 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2382 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2384 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2384 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2386 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2386 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2388 ~v0 ~v1 v2 = du_isRelMonomorphism_2388 v2
du_isRelMonomorphism_2388 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2388 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2390 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2390 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2392 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2392 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.body
d_body_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254
d_body_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3446
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.isValid
d_isValid_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Bool
d_isValid_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3452
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txAD
d_txAD_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Maybe Integer
d_txAD_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3454
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.txsize
d_txsize_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  Integer
d_txsize_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3450
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Tx.wits
d_wits_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412
d_wits_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3448
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.collateralInputs
d_collateralInputs_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3296
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.currentTreasury
d_currentTreasury_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe Integer
d_currentTreasury_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3320
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.mint
d_mint_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_mint_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3322
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.refInputs
d_refInputs_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3294
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.reqSignerHashes
d_reqSignerHashes_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [Integer]
d_reqSignerHashes_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3324
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe Integer
d_scriptIntegrityHash_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txADhash
d_txADhash_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe Integer
d_txADhash_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3310
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txCerts
d_txCerts_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1282]
d_txCerts_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txDonation
d_txDonation_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_txDonation_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3312
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txFee
d_txFee_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_txFee_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3304
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txGovProposals
d_txGovProposals_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_976]
d_txGovProposals_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3316
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txGovVotes
d_txGovVotes_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_896]
d_txGovVotes_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3314
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txId
d_txId_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Integer
d_txId_2432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3300
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txIns
d_txIns_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3292
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txNetworkId
d_txNetworkId_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  Maybe Integer
d_txNetworkId_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3318
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txOuts
d_txOuts_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3298
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txVldt
d_txVldt_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3308
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxBody.txWithdrawals
d_txWithdrawals_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3254 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3306
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scripts
d_scripts_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3424
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.scriptsP1
d_scriptsP1_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HSTimelock_358]
d_scriptsP1_2448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3430
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txdats
d_txdats_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412 ->
  [Integer]
d_txdats_2450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3426
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.txrdmrs
d_txrdmrs_2452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3428
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.TxWitnesses.vkSigs
d_vkSigs_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3412 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3422
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERT
d_Computational'45'CERT_2490 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERT_2490
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERT_2062
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-CERTS
d_Computational'45'CERTS_2492 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'CERTS_2492
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'CERTS_2534
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-DELEG
d_Computational'45'DELEG_2494 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'DELEG_2494
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'DELEG_1584
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-GOVCERT
d_Computational'45'GOVCERT_2496 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'GOVCERT_2496
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'GOVCERT_1786
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-POST-CERT
d_Computational'45'POST'45'CERT_2498 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'POST'45'CERT_2498
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'POST'45'CERT_2512
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.Computational-PRE-CERT
d_Computational'45'PRE'45'CERT_2500 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'PRE'45'CERT_2500
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_Computational'45'PRE'45'CERT_2370
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes._.lookupDeposit
d_lookupDeposit_2502 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1114 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_lookupDeposit_2502
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.Properties.d_lookupDeposit_1576
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2490
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.ExternalStructures.d_HSTransactionStructure_770
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalFunctions.d_dummyExternalFunctions_16)))
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.HsTy-UnitInterval
d_HsTy'45'UnitInterval_2504 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'UnitInterval_2504 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-UnitInterval
d_Conv'45'UnitInterval_2506 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'UnitInterval_2506
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
d_HsTy'45'PosNat_2516 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'PosNat_2516 = erased
-- Ledger.Conway.Foreign.HSLedger.BaseTypes.Conv-PosNat
d_Conv'45'PosNat_2518 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'PosNat_2518
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
