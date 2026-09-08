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

module MAlonzo.Code.Ledger.Conway.Foreign.HSStructures where

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
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.Convertible.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasHsType.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.TypeClasses.Hashable
import qualified MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base
import qualified MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base
import qualified MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure
import qualified MAlonzo.Code.Ledger.Core.Foreign.Epoch
import qualified MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.HasCoin
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.Qstdlib.Data.List.Relation.Unary.MOf

-- Ledger.Conway.Foreign.HSStructures._._+ᵉ_
d__'43''7497'__10 :: Integer -> Integer -> Integer
d__'43''7497'__10
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._+ᵉ'_
d__'43''7497'''__12 :: Integer -> Integer -> Integer
d__'43''7497'''__12
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._∙_
d__'8729'__14 :: Integer -> Integer -> Integer
d__'8729'__14
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._._<ᵏʰ_
d__'60''7503''688'__16 :: Integer -> Integer -> ()
d__'60''7503''688'__16 = erased
-- Ledger.Conway.Foreign.HSStructures._._≈_
d__'8776'__18 :: Integer -> Integer -> ()
d__'8776'__18 = erased
-- Ledger.Conway.Foreign.HSStructures._._≤ᵗ_
d__'8804''7511'__20 :: Integer -> Integer -> ()
d__'8804''7511'__20 = erased
-- Ledger.Conway.Foreign.HSStructures._._≥ᵉ_
d__'8805''7497'__22 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__22 = erased
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__24 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__24 = erased
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__28 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__30 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__32 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__34 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_36 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_36 = erased
-- Ledger.Conway.Foreign.HSStructures._.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_38 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovAction
d_'61''61''45'GovAction_40 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  Bool
d_'61''61''45'GovAction_40
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_1002
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_42 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_42
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_984
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_44 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Bool
d_'61''61''45'GovProposal_44
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1386
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_46 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_46 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_972
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_48 :: ()
d_THash_48 = erased
-- Ledger.Conway.Foreign.HSStructures._.Acnt
d_Acnt_50 = ()
-- Ledger.Conway.Foreign.HSStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_54 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_54
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Addr
d_Addr_56 :: ()
d_Addr_56 = erased
-- Ledger.Conway.Foreign.HSStructures._.Anchor
d_Anchor_60 = ()
-- Ledger.Conway.Foreign.HSStructures._.AttrSizeOf
d_AttrSizeOf_64 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_64 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.AuxiliaryData
d_AuxiliaryData_66 :: ()
d_AuxiliaryData_66 = erased
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr
d_BaseAddr_68 = ()
-- Ledger.Conway.Foreign.HSStructures._.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_72 :: Integer
d_BlsKeyMaxAge'7580'_72
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.BlsPoP
d_BlsPoP_74 :: ()
d_BlsPoP_74 = erased
-- Ledger.Conway.Foreign.HSStructures._.BlsSig
d_BlsSig_76 :: ()
d_BlsSig_76 = erased
-- Ledger.Conway.Foreign.HSStructures._.BlsVKey
d_BlsVKey_78 :: ()
d_BlsVKey_78 = erased
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr
d_BootstrapAddr_80 = ()
-- Ledger.Conway.Foreign.HSStructures._.CCHotKeys
d_CCHotKeys_86 :: ()
d_CCHotKeys_86 = erased
-- Ledger.Conway.Foreign.HSStructures._.CCHotKeysOf
d_CCHotKeysOf_88 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_88 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1290
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_90 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_90 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv
d_CertEnv_100 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertState
d_CertState_104 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertStateOf
d_CertStateOf_108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_CertStateOf_108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CostModel
d_CostModel_112 :: ()
d_CostModel_112 = erased
-- Ledger.Conway.Foreign.HSStructures._.Credential
d_Credential_114 = ()
-- Ledger.Conway.Foreign.HSStructures._.CredentialOf
d_CredentialOf_118 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_118 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DCert
d_DCert_120 = ()
-- Ledger.Conway.Foreign.HSStructures._.DCertsOf
d_DCertsOf_122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_DCertsOf_122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3634
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DReps
d_DReps_134 :: ()
d_DReps_134 = erased
-- Ledger.Conway.Foreign.HSStructures._.DRepsOf
d_DRepsOf_136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState
d_DState_138 = ()
-- Ledger.Conway.Foreign.HSStructures._.DStateOf
d_DStateOf_142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_DStateOf_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.T
d_T_144 :: ()
d_T_144 = erased
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_146 :: ()
d_THash_146 = erased
-- Ledger.Conway.Foreign.HSStructures._.Dataʰ
d_Data'688'_148 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_148
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Datum
d_Datum_150 :: ()
d_Datum_150 = erased
-- Ledger.Conway.Foreign.HSStructures._.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_152 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_154 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_152 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_210
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
            (coe v0))
         (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isScript
d_Dec'45'isScript_156 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_156
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Conway.Foreign.HSStructures._.Dec-isSigned
d_Dec'45'isSigned_158 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isSignedBy
d_Dec'45'isSignedBy_160 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_162 ::
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isVKey
d_Dec'45'isVKey_164 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_164
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Conway.Foreign.HSStructures._.Dec-isValidPoP
d_Dec'45'isValidPoP_166 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-validP1Script
d_Dec'45'validP1Script_168 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_170 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_172 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_174 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_176 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_176
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_178 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BlsPoP
d_DecEq'45'BlsPoP_180 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BlsSig
d_DecEq'45'BlsSig_182 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_182
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BlsVKey
d_DecEq'45'BlsVKey_184 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_184
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_186 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_188 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_188
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_190
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_192 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_192
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1418
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_194 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1262
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_196 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_196
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.HSStructures._.DecEq-EBHash
d_DecEq'45'EBHash_198 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_200 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_202 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_202
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_204
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_966
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_206 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1272
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_208 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_DecEq'45'HSTimelock_320
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_212 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_212
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1398
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_214
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_216
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_218
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_492
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_220
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1384
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_224
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_226 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_226
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_230 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_230
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_232 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_232
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_234
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_236
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_238
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Sig
d_DecEq'45'Sig_240 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_240
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Slot
d_DecEq'45'Slot_242 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_242
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_244 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_244
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1416
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_246 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_246
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_248 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_248
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_250 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_250
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_252 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_252
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_254 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_254
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Timelock
d_DecEq'45'Timelock_256 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_256
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_166
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
            (coe v0))
         (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_258 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_258
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1400
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-TxRefHash
d_DecEq'45'TxRefHash_260 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_260
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_262 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_262
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_264 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_264
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1276
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-VRF
d_DecEq'45'VRF_266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_266
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_268 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_268
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_270 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_270
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1274
-- Ledger.Conway.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_272 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_272
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv
d_DelegEnv_274 = ()
-- Ledger.Conway.Foreign.HSStructures._.DepositPurpose
d_DepositPurpose_278 = ()
-- Ledger.Conway.Foreign.HSStructures._.Deposits
d_Deposits_280 :: ()
d_Deposits_280 = erased
-- Ledger.Conway.Foreign.HSStructures._.DepositsOf
d_DepositsOf_282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_284 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2556
d_HSAbstractFunctions_288
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSAbstractFunctions_3288
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_290
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.EBHash
d_EBHash_292 :: ()
d_EBHash_292 = erased
-- Ledger.Conway.Foreign.HSStructures._.Epoch
d_Epoch_296 :: ()
d_Epoch_296 = erased
-- Ledger.Conway.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_298 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_298
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ExUnits
d_ExUnits_300 :: ()
d_ExUnits_300 = erased
-- Ledger.Conway.Foreign.HSStructures._.GState
d_GState_308 = ()
-- Ledger.Conway.Foreign.HSStructures._.GStateOf
d_GStateOf_312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1582 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494
d_GStateOf_312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1590
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction
d_GovAction_314 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionData
d_GovActionData_318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_GovActionData_318 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionID
d_GovActionID_322 :: ()
d_GovActionID_322 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionOf
d_GovActionOf_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState
d_GovActionState_326 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionType
d_GovActionType_330 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams
d_GovParams_334 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposal
d_GovProposal_338 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_GovProposalsOf_342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3654
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovRole
d_GovRole_344 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886 ->
  ()
d_GovRoleCredential_346 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovVote
d_GovVote_348 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoter
d_GovVoter_352 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovVotes
d_GovVotes_358 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVotesOf
d_GovVotesOf_362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_GovVotesOf_362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_HSP1ScriptStructure_366
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP1ScriptStructure_322
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_HSP2ScriptStructure_368
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP2ScriptStructure_344
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript
d_HSPlutusScript_370 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSScriptStructure
d_HSScriptStructure_374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328
d_HSScriptStructure_374
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock
d_HSTimelock_376 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize
d_HasAttrSize_380 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_384 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_384
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys
d_HasCCHotKeys_386 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282
d_HasCCHotKeys'45'CertState_390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1646
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282
d_HasCCHotKeys'45'GState_392
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1634
-- Ledger.Conway.Foreign.HSStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_394 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCast-Acnt
d_HasCast'45'Acnt_398 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Foreign.HSStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_400 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1662
-- Ledger.Conway.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_402 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_402
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1670
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_404 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_404
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1664
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_406 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_406
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1672
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_408 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_408
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1668
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_410 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_962
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_412 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1378
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_414 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_416 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_416
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1142
-- Ledger.Conway.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_418 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1666
-- Ledger.Conway.Foreign.HSStructures._.HasCertState
d_HasCertState_420 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCoin-CertState
d_HasCoin'45'CertState_424 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_424
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1660
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_426 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_426
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3880
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.HasCredential
d_HasCredential_428 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_432 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_432
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts
d_HasDCerts_434 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626
d_HasDCerts'45'Tx_438
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3754
-- Ledger.Conway.Foreign.HSStructures._.HasDReps
d_HasDReps_440 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504
d_HasDReps'45'CertState_444
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1644
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504
d_HasDReps'45'GState_446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1632
-- Ledger.Conway.Foreign.HSStructures._.HasDState
d_HasDState_448 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542
d_HasDState'45'CertState_452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1636
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits
d_HasDeposits_454 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_458 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3766
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_460 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3702
-- Ledger.Conway.Foreign.HSStructures._.HasFees-Tx
d_HasFees'45'Tx_462 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_462
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3752
-- Ledger.Conway.Foreign.HSStructures._.HasGState
d_HasGState_464 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1582
d_HasGState'45'CertState_468
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1640
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction
d_HasGovAction_470 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovActionState_474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovProposal_476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_478 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovAction_482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_960
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovActionState_484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovProposal_486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_488 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646
d_HasGovProposals'45'Tx_492
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3756
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_494 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
d_HasGovVoter'45'GovVote_498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1258
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes
d_HasGovVotes_500 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes-Tx
d_HasGovVotes'45'Tx_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666
d_HasGovVotes'45'Tx_504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3758
-- Ledger.Conway.Foreign.HSStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_506 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId
d_HasNetworkId_510 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_514 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_514
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_516 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_516
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_518 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_518
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Conway.Foreign.HSStructures._.HasPParams
d_HasPParams_520 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_524 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'CertEnv_524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1618
-- Ledger.Conway.Foreign.HSStructures._.HasPState
d_HasPState_526 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1562
d_HasPState'45'CertState_530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1638
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy
d_HasPolicy_532 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
d_HasPolicy'45'GovProposal_536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1262
-- Ledger.Conway.Foreign.HSStructures._.HasPools
d_HasPools_538 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
d_HasPools'45'CertState_542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1648
-- Ledger.Conway.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298
d_HasPools'45'PState_544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1628
-- Ledger.Conway.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_546 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring
d_HasRetiring_548 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1314
d_HasRetiring'45'PState_552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1630
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_554 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards
d_HasRewards_558 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'CertState_562
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1642
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330
d_HasRewards'45'DState_564
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1626
-- Ledger.Conway.Foreign.HSStructures._.HasStake
d_HasStake_566 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_570 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
d_HasStakeDelegs'45'CertState_574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1652
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362
d_HasStakeDelegs'45'DState_576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1624
-- Ledger.Conway.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_578 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody
d_HasTxBody_580 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606
d_HasTxBody'45'Tx_584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3750
-- Ledger.Conway.Foreign.HSStructures._.HasTxId
d_HasTxId_586 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686
d_HasTxId'45'Tx_590
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3764
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO
d_HasUTxO_592 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote
d_HasVote_596 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
d_HasVote'45'GovVote_600
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1260
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_602 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116
d_HasVoteDelegs'45'CertState_606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1650
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116
d_HasVoteDelegs'45'DState_608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1622
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_610 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_614 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'CertEnv_614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1620
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_616 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3762
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_618 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_618
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3760
-- Ledger.Conway.Foreign.HSStructures._.HashProtected
d_HashProtected_620 :: () -> ()
d_HashProtected_620 = erased
-- Ledger.Conway.Foreign.HSStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_622 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_622
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du_Hashable'45'HSTimelock_318
-- Ledger.Conway.Foreign.HSStructures._.Hashable-P1Script
d_Hashable'45'P1Script_624 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_624
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_626 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_626
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_628 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_628
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_452
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_630 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_630
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2752
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.HsGovParams
d_HsGovParams_632 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_HsGovParams_632
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_732
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.IsBootstrapAddr
d_IsBootstrapAddr_636 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_638 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_638
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Conway.Foreign.HSStructures._.IsKeyHashObj
d_IsKeyHashObj_642 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_644
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_646 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_650 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_654 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.Ix
d_Ix_658 :: ()
d_Ix_658 = erased
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_660 :: ()
d_THash_660 = erased
-- Ledger.Conway.Foreign.HSStructures._.KeyPair
d_KeyPair_664 :: ()
d_KeyPair_664 = erased
-- Ledger.Conway.Foreign.HSStructures._.LangDepView
d_LangDepView_666 :: ()
d_LangDepView_666 = erased
-- Ledger.Conway.Foreign.HSStructures._.Language
d_Language_668 :: ()
d_Language_668 = erased
-- Ledger.Conway.Foreign.HSStructures._.LanguageCostModels
d_LanguageCostModels_670 = ()
-- Ledger.Conway.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_674 :: Integer
d_MaxLovelaceSupply'7580'_674
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_676 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_676 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_678 :: ()
d_MemoryEstimate_678 = erased
-- Ledger.Conway.Foreign.HSStructures._.NeedsHash
d_NeedsHash_682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_NeedsHash_682 = erased
-- Ledger.Conway.Foreign.HSStructures._.Network
d_Network_684 :: ()
d_Network_684 = erased
-- Ledger.Conway.Foreign.HSStructures._.NetworkId
d_NetworkId_688 :: Integer
d_NetworkId_688
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_690 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_696 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_696
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_698 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_698
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_700 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_700
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.P1Script
d_P1Script_702 :: ()
d_P1Script_702 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure
d_P1ScriptStructure_704 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusScript
d_PlutusScript_708 :: ()
d_PlutusScript_708 = erased
-- Ledger.Conway.Foreign.HSStructures._.POSIXTimeRange
d_POSIXTimeRange_714 :: ()
d_POSIXTimeRange_714 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamGroup
d_PParamGroup_716 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParams
d_PParams_718 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff
d_PParamsDiff_722 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsOf
d_PParamsOf_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.UpdateT
d_UpdateT_728 :: ()
d_UpdateT_728 = erased
-- Ledger.Conway.Foreign.HSStructures._.PState
d_PState_730 = ()
-- Ledger.Conway.Foreign.HSStructures._.PStateOf
d_PStateOf_734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_PStateOf_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1570
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure
d_PlutusStructure_736 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusV1
d_PlutusV1_740 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_740
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV2
d_PlutusV2_742 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_742
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV3
d_PlutusV3_744 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_744
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Policy
d_Policy_746 :: ()
d_Policy_746 = erased
-- Ledger.Conway.Foreign.HSStructures._.PolicyOf
d_PolicyOf_748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolEnv
d_PoolEnv_752 :: ()
d_PoolEnv_752 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_754 = ()
-- Ledger.Conway.Foreign.HSStructures._.Pools
d_Pools_758 :: ()
d_Pools_758 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolsOf
d_PoolsOf_760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1306
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_762 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_762
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Prices
d_Prices_764 :: ()
d_Prices_764 = erased
-- Ledger.Conway.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_766 :: ()
d_ProposedPPUpdates_766 = erased
-- Ledger.Conway.Foreign.HSStructures._.Quorum
d_Quorum_768 :: Integer
d_Quorum_768
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RBHeaderHash
d_RBHeaderHash_770 :: ()
d_RBHeaderHash_770 = erased
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_772 :: Integer
d_RandomnessStabilisationWindow_772
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_774 :: Integer
d_RandomnessStabilisationWindow'7580'_774
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RdmrPtr
d_RdmrPtr_776 :: ()
d_RdmrPtr_776 = erased
-- Ledger.Conway.Foreign.HSStructures._.Redeemer
d_Redeemer_778 :: ()
d_Redeemer_778 = erased
-- Ledger.Conway.Foreign.HSStructures._.Retiring
d_Retiring_792 :: ()
d_Retiring_792 = erased
-- Ledger.Conway.Foreign.HSStructures._.RetiringOf
d_RetiringOf_794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1314 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1322
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress
d_RewardAddress_796 = ()
-- Ledger.Conway.Foreign.HSStructures._.RewardAddressOf
d_RewardAddressOf_800 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Rewards
d_Rewards_802 :: ()
d_Rewards_802 = erased
-- Ledger.Conway.Foreign.HSStructures._.RewardsOf
d_RewardsOf_804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.SKey
d_SKey_808 :: ()
d_SKey_808 = erased
-- Ledger.Conway.Foreign.HSStructures._.Script
d_Script_812 :: ()
d_Script_812 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptAddr
d_ScriptAddr_814 :: ()
d_ScriptAddr_814 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBaseAddr
d_ScriptBaseAddr_816 :: ()
d_ScriptBaseAddr_816 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_818 :: ()
d_ScriptBootstrapAddr_818 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptHash
d_ScriptHash_820 :: ()
d_ScriptHash_820 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_824 = ()
-- Ledger.Conway.Foreign.HSStructures._.Ser
d_Ser_830 :: ()
d_Ser_830 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_832 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_832
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_834 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_834 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_836 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_836 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_838 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_838
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_840 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_840
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_842 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_842
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_844 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_844
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_894
-- Ledger.Conway.Foreign.HSStructures._.Show-Language
d_Show'45'Language_846 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_846
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_848 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_848
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_498
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Network
d_Show'45'Network_850 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_850
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_852 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_852
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_854 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_856 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_856
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_858 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_858
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_860 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_860
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_862 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_862
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_864 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_864
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_866 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_866
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_868 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_868
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1380
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Sig
d_Sig_870 :: ()
d_Sig_870 = erased
-- Ledger.Conway.Foreign.HSStructures._.Slot
d_Slot_872 :: ()
d_Slot_872 = erased
-- Ledger.Conway.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_874 :: Integer
d_SlotsPerEpoch'7580'_874
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Slotʳ
d_Slot'691'_876 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_876
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_878 :: Integer
d_StabilityWindow_878
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_880 :: Integer
d_StabilityWindow'7580'_880
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Stake
d_Stake_882 :: ()
d_Stake_882 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_884 :: ()
d_StakeDelegs_884 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakeOf
d_StakeOf_888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1346 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1354
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_890 = ()
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_894 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_894
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_896 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_896
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_898 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_898
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_900 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_900
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.Timelock
d_Timelock_904 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_906 = ()
-- Ledger.Conway.Foreign.HSStructures._.Tx
d_Tx_914 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBody
d_TxBody_918 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_TxBodyOf_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3614
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxId
d_TxId_924 :: ()
d_TxId_924 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxIdOf
d_TxIdOf_926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686 ->
  AgdaAny -> Integer
d_TxIdOf_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxIn
d_TxIn_928 :: ()
d_TxIn_928 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOut
d_TxOut_930 :: ()
d_TxOut_930 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOutʰ
d_TxOut'688'_932 :: ()
d_TxOut'688'_932 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxRefHash
d_TxRefHash_934 :: ()
d_TxRefHash_934 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_936 = ()
-- Ledger.Conway.Foreign.HSStructures._.UTxO
d_UTxO_940 :: ()
d_UTxO_940 = erased
-- Ledger.Conway.Foreign.HSStructures._.UTxOOf
d_UTxOOf_942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3510 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3518
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Update
d_Update_944 :: ()
d_Update_944 = erased
-- Ledger.Conway.Foreign.HSStructures._.VDeleg
d_VDeleg_948 = ()
-- Ledger.Conway.Foreign.HSStructures._.VKey
d_VKey_950 :: ()
d_VKey_950 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_952 :: ()
d_VKeyAddr_952 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_954 :: ()
d_VKeyBaseAddr_954 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_956 :: ()
d_VKeyBootstrapAddr_956 = erased
-- Ledger.Conway.Foreign.HSStructures._.VRF
d_VRF_960 :: ()
d_VRF_960 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value
d_Value_962 :: ()
d_Value_962 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_964 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_964
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_966 :: ()
d_VoteDelegs_966 = erased
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.VoteOf
d_VoteOf_970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Withdrawals
d_Withdrawals_972 :: ()
d_Withdrawals_972 = erased
-- Ledger.Conway.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_974 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_974 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_976 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_976
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1530
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_978 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_978 = erased
-- Ledger.Conway.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_980 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_980
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Conway.Foreign.HSStructures._.addEpoch
d_addEpoch_982 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_982
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addSlot
d_addSlot_984 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_984
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addValue
d_addValue_986 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_986
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.applyUpdate
d_applyUpdate_988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_988
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.coin
d_coin_992 :: Integer -> Integer
d_coin_992
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_994 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_994 = erased
-- Ledger.Conway.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_996
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_998 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_998 = erased
-- Ledger.Conway.Foreign.HSStructures._.cryptoStructure
d_cryptoStructure_1000 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_1000
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.cwitness
d_cwitness_1002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_1002
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1420
-- Ledger.Conway.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_1010 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_1010
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epoch
d_epoch_1012 :: Integer -> Integer
d_epoch_1012
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epochStructure
d_epochStructure_1014 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_1014
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_366
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Conway.Foreign.HSStructures._.evalTimelock
d_evalTimelock_1028 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.firstSlot
d_firstSlot_1030 :: Integer -> Integer
d_firstSlot_1030
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.gaData
d_gaData_1032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_1032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.gaType
d_gaType_1034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_1034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.getLanguage
d_getLanguage_1036 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_getLanguage_1036
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_480
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.getScriptHash
d_getScriptHash_1038 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1038
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Foreign.HSStructures._.getValue
d_getValue_1040 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1040
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3768
-- Ledger.Conway.Foreign.HSStructures._.getValueʰ
d_getValue'688'_1042 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3784
-- Ledger.Conway.Foreign.HSStructures._.globalConstants
d_globalConstants_1044 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1044
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Conway.Foreign.HSStructures._.govParams
d_govParams_1046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_1046
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_732
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.govStructure
d_govStructure_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1048
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_1050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1486
-- Ledger.Conway.Foreign.HSStructures._.hashEBRefs
d_hashEBRefs_1052 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_1052
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1054 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1054
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_374
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.inject
d_inject_1056 :: Integer -> Integer
d_inject_1056
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1058 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1058
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1060
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1482
-- Ledger.Conway.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1062 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1062 = erased
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1064 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1064
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1066 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1066
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1068 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1068 = erased
-- Ledger.Conway.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1070 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1070 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script
d_isP1Script_1072 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1072 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1074 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1074
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_458
-- Ledger.Conway.Foreign.HSStructures._.isP2Script
d_isP2Script_1076 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1076 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1078 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1078
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_472
-- Ledger.Conway.Foreign.HSStructures._.isPoolRegistered
d_isPoolRegistered_1080 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206
d_isPoolRegistered_1080
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1756
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.isScript
d_isScript_1082 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1084 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1084 = erased
-- Ledger.Conway.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1086 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1086
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1088 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1088 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned
d_isSigned_1090 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1090 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1092 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1092 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSignedBy
d_isSignedBy_1094 :: Integer -> Integer -> Integer -> ()
d_isSignedBy_1094 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSignedByAggregate
d_isSignedByAggregate_1096 :: [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_1096 = erased
-- Ledger.Conway.Foreign.HSStructures._.isVKey
d_isVKey_1098 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1100 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1100 = erased
-- Ledger.Conway.Foreign.HSStructures._.isValidPoP
d_isValidPoP_1102 :: Integer -> Integer -> ()
d_isValidPoP_1102 = erased
-- Ledger.Conway.Foreign.HSStructures._.khs
d_khs_1104 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1104
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.language
d_language_1106 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_language_1106
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1110 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1110
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3866
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.monoid
d_monoid_1114 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1114
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.netId
d_netId_1116 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1116
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Foreign.HSStructures._.p1s
d_p1s_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_p1s_1118
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1120 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_1122 = erased
-- Ledger.Conway.Foreign.HSStructures._.payCred
d_payCred_1124 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1124
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Foreign.HSStructures._.pkk
d_pkk_1126 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1126
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.policies
d_policies_1128 :: Integer -> [Integer]
d_policies_1128
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.positivePParams
d_positivePParams_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_1130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.HSStructures._.ppUpd
d_ppUpd_1132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1132
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1134
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_ppdWellFormed_1136 = erased
-- Ledger.Conway.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1138 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1138
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.proposedCC
d_proposedCC_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1494
-- Ledger.Conway.Foreign.HSStructures._.ps
d_ps_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_ps_1142
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1144 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.refScripts
d_refScripts_1146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1146
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3808
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  Integer
d_rewardsBalance_1156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1654
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.scriptOuts
d_scriptOuts_1158 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1158
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3794
-- Ledger.Conway.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328
d_scriptStructure_1160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.sign
d_sign_1162 :: Integer -> Integer -> Integer
d_sign_1162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.size
d_size_1164 :: Integer -> Integer
d_size_1164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.stakeCred
d_stakeCred_1166 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1166
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1168 :: Integer -> Integer
d_suc'7497'_1168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1170 :: [Integer] -> Integer
d_sum'7515'_1170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.toP1Script
d_toP1Script_1172 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
d_toP1Script_1172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_466
-- Ledger.Conway.Foreign.HSStructures._.toP2Script
d_toP2Script_1174 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
d_toP2Script_1174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_478
-- Ledger.Conway.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1176 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Conway.Foreign.HSStructures._.txInsScript
d_txInsScript_1178 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3802
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txInsVKey
d_txInsVKey_1180 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3788
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txOutHash
d_txOutHash_1182 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1182
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txidBytes
d_txidBytes_1184 :: Integer -> Integer
d_txidBytes_1184 v0 = coe v0
-- Ledger.Conway.Foreign.HSStructures._.txscripts
d_txscripts_1186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3856
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.updateGroups
d_updateGroups_1188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1188
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.validP1Script
d_validP1Script_1196 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  ()
d_validP1Script_1196 = erased
-- Ledger.Conway.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1198 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  ()
d_validPlutusScript_1198 = erased
-- Ledger.Conway.Foreign.HSStructures._.ε
d_ε_1200 :: Integer
d_ε_1200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1202 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1202 = erased
-- Ledger.Conway.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1204 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1206 :: Integer -> Integer
d_ℕtoEpoch_1206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1208 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1210 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Acnt.reserves
d_reserves_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Acnt.treasury
d_treasury_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.hash
d_hash_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054 ->
  Integer
d_hash_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.url
d_url_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.net
d_net_1272 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1272 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.pay
d_pay_1274 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1274 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.stake
d_stake_1276 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1276 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1280 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1280 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.net
d_net_1282 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1282 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1284 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.coldCreds
d_coldCreds_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  Integer
d_epoch_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1450
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.pp
d_pp_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pp_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1452 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.votes
d_votes_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_votes_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.wdrls
d_wdrls_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1438 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.dState
d_dState_1300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_dState_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1514
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.gState
d_gState_1302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494
d_gState_1302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1518
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.pState
d_pState_1304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_pState_1304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1516
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Crypto._<ᵏʰ_
d__'60''7503''688'__1314 :: Integer -> Integer -> ()
d__'60''7503''688'__1314 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_1316 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_1316
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.BlsPoP
d_BlsPoP_1318 :: ()
d_BlsPoP_1318 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.BlsSig
d_BlsSig_1320 :: ()
d_BlsSig_1320 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.BlsVKey
d_BlsVKey_1322 :: ()
d_BlsVKey_1322 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_1324 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_1324
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1326 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1326
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-isSignedBy
d_Dec'45'isSignedBy_1328 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_1328
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_1330 ::
  [Integer] ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_1330
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-isValidPoP
d_Dec'45'isValidPoP_1332 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_1332
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-BlsPoP
d_DecEq'45'BlsPoP_1334 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_1334
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-BlsSig
d_DecEq'45'BlsSig_1336 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_1336
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-BlsVKey
d_DecEq'45'BlsVKey_1338 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_1338
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-EBHash
d_DecEq'45'EBHash_1340 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_1340
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_1342 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_1342
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1344 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1344
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1346 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1346
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-Sig
d_DecEq'45'Sig_1348 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1348
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-THash
d_DecEq'45'THash_1350 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1350
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-TxRefHash
d_DecEq'45'TxRefHash_1352 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_1352
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-VRF
d_DecEq'45'VRF_1354 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1354
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.EBHash
d_EBHash_1356 :: ()
d_EBHash_1356 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.THash
d_THash_1358 :: ()
d_THash_1358 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1360 :: ()
d_KeyPair_1360 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.RBHeaderHash
d_RBHeaderHash_1362 :: ()
d_RBHeaderHash_1362 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.SKey
d_SKey_1364 :: ()
d_SKey_1364 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1366 :: ()
d_ScriptHash_1366 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Ser
d_Ser_1368 :: ()
d_Ser_1368 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1370 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1370
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1372 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1372
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Sig
d_Sig_1374 :: ()
d_Sig_1374 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1376 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1376
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.TxRefHash
d_TxRefHash_1378 :: ()
d_TxRefHash_1378 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.VKey
d_VKey_1380 :: ()
d_VKey_1380 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.VRF
d_VRF_1382 :: ()
d_VRF_1382 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.hashEBRefs
d_hashEBRefs_1384 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Integer
d_hashEBRefs_1384
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1386 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1386 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1388 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1388 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1390 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1390 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSignedBy
d_isSignedBy_1392 :: Integer -> Integer -> Integer -> ()
d_isSignedBy_1392 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSignedByAggregate
d_isSignedByAggregate_1394 :: [Integer] -> Integer -> Integer -> ()
d_isSignedByAggregate_1394 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isValidPoP
d_isValidPoP_1396 :: Integer -> Integer -> ()
d_isValidPoP_1396 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.khs
d_khs_1398 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1398
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.pkk
d_pkk_1400 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1400
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.sign
d_sign_1402 :: Integer -> Integer -> Integer
d_sign_1402
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___340
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DState.rewards
d_rewards_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1474
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1472
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1470
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1522 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1534
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pools
d_pools_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1522 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1532
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1522 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_1436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1454 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1456 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1458 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1464 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.dreps
d_dreps_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1500
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaData
d_gaData_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaType
d_gaType_1480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_1480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.action
d_action_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_action_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1192
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  Integer
d_expiresIn_1486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  AgdaAny
d_prevAction_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1188
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.votes
d_votes_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086
d_votes_1492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1186
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  Bool
d_'61''61''45'GovAction_1512
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_1002
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1514
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_984
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Bool
d_'61''61''45'GovProposal_1516
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1386
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-Set
d_'61''61''45'Set_1518 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1518 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_972
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Anchor
d_Anchor_1520 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DReps
d_DReps_1530 :: ()
d_DReps_1530 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DRepsOf
d_DRepsOf_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1534 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1534
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1536 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_966
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1538 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1272
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1540 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1540
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1542
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1384
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1544 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1544
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1276
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1546 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1546
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1274
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovAction
d_GovAction_1548 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionData
d_GovActionData_1552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_GovActionData_1552 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionID
d_GovActionID_1554 :: ()
d_GovActionID_1554 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionOf
d_GovActionOf_1556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_1556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionState
d_GovActionState_1558 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionType
d_GovActionType_1562 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_1564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal
d_GovProposal_1566 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRole
d_GovRole_1570 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886 ->
  ()
d_GovRoleCredential_1572 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote
d_GovVote_1574 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter
d_GovVoter_1578 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoterOf
d_GovVoterOf_1582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes
d_GovVotes_1584 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1588 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1588
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_962
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1590 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1590
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1378
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1592 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1594 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1142
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps
d_HasDReps_1596 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction
d_HasGovAction_1600 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovActionState_1604
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovProposal_1606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType
d_HasGovActionType_1608 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovAction_1612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_960
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovActionState_1614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovProposal_1616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter
d_HasGovVoter_1618 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
d_HasGovVoter'45'GovVote_1622
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1258
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy
d_HasPolicy_1624 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
d_HasPolicy'45'GovProposal_1628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1262
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote
d_HasVote_1630 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
d_HasVote'45'GovVote_1634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1260
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1636 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HashProtected
d_HashProtected_1640 :: () -> ()
d_HashProtected_1640 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.NeedsHash
d_NeedsHash_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_NeedsHash_1644 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Policy
d_Policy_1650 :: ()
d_Policy_1650 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.PolicyOf
d_PolicyOf_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1656 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1656
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_894
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1658 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1658
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1380
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VDeleg
d_VDeleg_1666 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Vote
d_Vote_1668 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegs
d_VoteDelegs_1670 :: ()
d_VoteDelegs_1670 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteOf
d_VoteOf_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1678 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1678
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1530
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeInEpoch
d_activeInEpoch_1680 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1680 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaData
d_gaData_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaType
d_gaType_1684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.govVoterCredential
d_govVoterCredential_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1486
-- Ledger.Conway.Foreign.HSStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1688
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1482
-- Ledger.Conway.Foreign.HSStructures._.GovActions.proposedCC
d_proposedCC_1692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1494
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.action
d_action_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_action_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1160
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.anchor
d_anchor_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054
d_anchor_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.deposit
d_deposit_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Integer
d_deposit_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1166
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.policy
d_policy_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Maybe Integer
d_policy_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.prevAction
d_prevAction_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  AgdaAny
d_prevAction_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1168
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.anchor
d_anchor_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054
d_anchor_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.gid
d_gid_1732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1076
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.vote
d_vote_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_vote_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1080
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.voter
d_voter_1736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_voter_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  AgdaAny
d_gvCredential_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvRole
d_gvRole_1742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886
d_gvRole_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1048
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvCC
d_gvCC_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1094
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1096
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1098
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote.VoteOf
d_VoteOf_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_1800 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1808 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_1808 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_1814 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptHash_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptHash_336
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_1816 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptLanguage_340
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_1818 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptSize_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.timelock
d_timelock_1822 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_152
d_timelock_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_timelock_310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_1824 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptHash_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptHash_312
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_1826 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptSize_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1830 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1830 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1282 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1290
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1602 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1506
d_CertStateOf_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1610
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_1846 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1846 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_1850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_DCertsOf_1850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3634
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_1854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1462
d_DStateOf_1854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_1858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_1862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1582 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1494
d_GStateOf_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1590
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_GovProposalsOf_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3654
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes.GovVotesOf
d_GovVotesOf_1870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_GovVotesOf_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1874 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1874 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1878 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_1878 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_1882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1562 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478
d_PStateOf_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1570
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1298 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1306
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1314 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1322
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1898 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1898 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_1902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1330 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1338
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1346 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1354
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1362 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_TxBodyOf_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3614
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686 ->
  AgdaAny -> Integer
d_TxIdOf_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3510 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3518
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1926 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1926 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1938 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1942 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1944 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_1946 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1946 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1950 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1952 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1954 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1954 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1956 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1956 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1958 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1958 ~v0 v1 = du_isMagmaMonomorphism_1958 v1
du_isMagmaMonomorphism_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1962 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1964 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1966 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1966 ~v0 v1 = du_isRelIsomorphism_1966 v1
du_isRelIsomorphism_1966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1966 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1968 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1968 ~v0 v1 = du_isRelMonomorphism_1968 v1
du_isRelMonomorphism_1968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1968 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.surjective
d_surjective_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1972 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1972 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1974 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_1978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1978 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_1980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1980 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1982 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1984 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1984 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1986 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1988 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1990 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1990 ~v0 v1 = du_isRelMonomorphism_1990 v1
du_isRelMonomorphism_1990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1990 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1992 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_1994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1994 = erased
-- Ledger.Conway.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  ()
d_P1Script_2008 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2010 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParams.Emax
d_Emax_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_Emax_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a
d_a_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a0
d_a0_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.b
d_b_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdls
d_costmdls_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_2042
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdlsAssoc_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepActivity_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.nopt
d_nopt_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.prices
d_prices_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.pv
d_pv_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_2100 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_2106 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2112 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2112 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d__'8746''737''7580''7504'__2114
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_490
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
                             (coe v3))))))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2116 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2116
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2118 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_2122
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_778
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_2124
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_2126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_2128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_2130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_2132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_2134
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_2136 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2138 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2140 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2140 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_Emax_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdls_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepActivity_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.fPools
d_fPools_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.pools
d_pools_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1486
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.retiring
d_retiring_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1478 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2224 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_CostModel_2226 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T
d_T_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_T_2228 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_THash_2230 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Datum_2234 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2248 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2250 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_ExUnits_2254 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_LangDepView_2258 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Language_2260 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_PlutusScript_2262 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV1_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV2_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV3_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Prices_2270 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Redeemer_2272 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2282 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2284 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2286 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.language
d_language_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> AgdaAny
d_language_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2290 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.net
d_net_2308 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.stake
d_stake_2310 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2310 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2314 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_CostModel_2316 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T
d_T_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_T_2318 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_THash_2320 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Datum_2324 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2340
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_492
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2344 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2346 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_ExUnits_2350 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_452
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_LangDepView_2358 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Language_2360 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2362 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_P1Script_2366 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_PlutusScript_2368 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV1_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV2_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV3_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Prices_2376 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Redeemer_2378 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Script_2380 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2388
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_498
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2392 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2394 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2396 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.getLanguage
d_getLanguage_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_480
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_374
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2402 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2404 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2406 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_458
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2408 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2410 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_472
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.language
d_language_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> AgdaAny
d_language_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_p1s_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ps
d_ps_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_ps_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_466
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_478
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2426 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2428 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.cost
d_cost_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  Integer
d_cost_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1220 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.margin
d_margin_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.owners
d_owners_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  [Integer]
d_owners_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  Integer
d_pledge_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1224
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1206 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2464 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2466 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2468 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2474 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2478 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2482 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2486 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2494 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2498 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2502 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2506 v0
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
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.size
d_size_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2512 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2516 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2516 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2518 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2518 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2520 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2522 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2522 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2524 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2524 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2528 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2530 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2530 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2532 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2532 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2534 ~v0 = du_isMagmaIsomorphism_2534
du_isMagmaIsomorphism_2534 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2534 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2536 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2536 v2
du_isMagmaMonomorphism_2536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2536 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2538 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2538 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2540 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2542 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2544 ~v0 ~v1 v2 = du_isRelIsomorphism_2544 v2
du_isRelIsomorphism_2544 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2544 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2546 ~v0 ~v1 v2 = du_isRelMonomorphism_2546 v2
du_isRelMonomorphism_2546 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2546 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2548 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2548 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2550 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2550 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2552 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2552 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2556 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2556 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2558 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2558 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2560 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2560 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2562 ~v0 = du_isMagmaMonomorphism_2562
du_isMagmaMonomorphism_2562 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2562 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2564 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2564 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2566 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2566 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2568 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2568 ~v0 ~v1 v2 = du_isRelMonomorphism_2568 v2
du_isRelMonomorphism_2568 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2568 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2570 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2570 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2572 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2572 = erased
-- Ledger.Conway.Foreign.HSStructures._.Tx.body
d_body_2576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_body_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.isValid
d_isValid_2578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Bool
d_isValid_2578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3744
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txAD
d_txAD_2580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Maybe Integer
d_txAD_2580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3746
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txsize
d_txsize_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Integer
d_txsize_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3742
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.wits
d_wits_2584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704
d_wits_2584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3740
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3568
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_currentTreasury_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3592
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.mint
d_mint_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_mint_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3594
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.refInputs
d_refInputs_2594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3566
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [Integer]
d_reqSignerHashes_2596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3596
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_scriptIntegrityHash_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3598
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_2600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_txADhash_2600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_2602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_txCerts_2602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3574
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_2604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txDonation_2604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3584
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txFee
d_txFee_2606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txFee_2606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3576
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_txGovProposals_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3588
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_txGovVotes_2610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3586
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txId
d_txId_2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txId_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3572
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txIns
d_txIns_2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3564
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_txNetworkId_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3590
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3570
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3580
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3578
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
d_scriptsP1_2628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3722
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txdats
d_txdats_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [Integer]
d_txdats_2630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.vkSigs
d_vkSigs_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3714
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_2662 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_2662
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Convert'45'HSLanguage_20
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_2664 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_2664
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_DecEq'45'HSLanguage_22
-- Ledger.Conway.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_2668 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_2668
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
-- Ledger.Conway.Foreign.HSStructures._.HSLanguage
d_HSLanguage_2670 = ()
-- Ledger.Conway.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_2672 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_2672 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_2686 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_2686
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Show'45'HSLanguage_24
-- Ledger.Conway.Foreign.HSStructures._.Transaction.Tag
d_Tag_2690 = ()
-- Ledger.Conway.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_2692 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__2720 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__2722 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2724 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._<ᵏʰ_
d__'60''7503''688'__2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'60''7503''688'__2726 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2728 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2730 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≥ᵉ_
d__'8805''7497'__2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2732 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_2734 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.<ᵏʰ-isSTO
d_'60''7503''688''45'isSTO_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_624
d_'60''7503''688''45'isSTO_2736 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_'60''7503''688''45'isSTO_300
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  Bool
d_'61''61''45'GovAction_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_1002
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_984
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Bool
d_'61''61''45'GovProposal_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1386
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2744 ~v0 = du_'61''61''45'Set_2744
du_'61''61''45'Set_2744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2744 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_972
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2746 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_2748 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_2752 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_330
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Addr_2754 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_2758 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_2762 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2762 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_AuxiliaryData_2764 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_2766 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BlsKeyMaxAgeᶜ
d_BlsKeyMaxAge'7580'_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_BlsKeyMaxAge'7580'_2770 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_BlsKeyMaxAge'7580'_344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BlsPoP
d_BlsPoP_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_BlsPoP_2772 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BlsSig
d_BlsSig_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_BlsSig_2774 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BlsVKey
d_BlsVKey_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_BlsVKey_2776 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_2778 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_2788 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_2790 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_2792 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2792 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_DCertsOf_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3634
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_2798 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T
d_T_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_2802 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2804 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_2808 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-<ᵏʰ
d_Dec'45''60''7503''688'_2810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''60''7503''688'_2810 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45''60''7503''688'_310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isScript
d_Dec'45'isScript_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_2812 ~v0 = du_Dec'45'isScript_2812
du_Dec'45'isScript_2812 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_2812
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isSigned
d_Dec'45'isSigned_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_2814 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isSignedBy
d_Dec'45'isSignedBy_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedBy_2816 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedBy_320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isSignedByAggregate
d_Dec'45'isSignedByAggregate_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSignedByAggregate_2818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSignedByAggregate_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_2820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_2820 ~v0 = du_Dec'45'isVKey_2820
du_Dec'45'isVKey_2820 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_2820
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isValidPoP
d_Dec'45'isValidPoP_2822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isValidPoP_2822 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isValidPoP_318
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_2830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_2832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_2834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_2834 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BlsPoP
d_DecEq'45'BlsPoP_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsPoP_2836 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsPoP_316
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BlsSig
d_DecEq'45'BlsSig_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsSig_2838 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsSig_314
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BlsVKey
d_DecEq'45'BlsVKey_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BlsVKey_2840 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'BlsVKey_312
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_2842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_2842 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_2846 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2848 ~v0
  = du_DecEq'45'DrepThresholds_2848
du_DecEq'45'DrepThresholds_2848 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-EBHash
d_DecEq'45'EBHash_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'EBHash_2850 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'EBHash_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_2852 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2856 ~v0 = du_DecEq'45'GovActionType_2856
du_DecEq'45'GovActionType_2856 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2856
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_966
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_2858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2858 ~v0 = du_DecEq'45'GovRole_2858
du_DecEq'45'GovRole_2858 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2858
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1272
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_2862 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_2862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_2872 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2876 ~v0 = du_DecEq'45'PParamGroup_2876
du_DecEq'45'PParamGroup_2876 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2876
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2880 ~v0
  = du_DecEq'45'PoolThresholds_2880
du_DecEq'45'PoolThresholds_2880 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-RBHeaderHash
d_DecEq'45'RBHeaderHash_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RBHeaderHash_2882 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'RBHeaderHash_328
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_2884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_322
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_2886 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_2888 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_2890 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_2892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2894 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2896 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2898 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2900 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2902 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_2904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_2904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-TxRefHash
d_DecEq'45'TxRefHash_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxRefHash_2906 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'TxRefHash_326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-VRF
d_DecEq'45'VRF_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_2912 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_2914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2916 ~v0 = du_DecEq'45'Vote_2916
du_DecEq'45'Vote_2916 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2916
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1274
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_2918 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_2920 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.EBHash
d_EBHash_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_EBHash_2924 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_2928 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_2932 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_2934 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_GovActionData_2938 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_2940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_2940 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_2942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_2942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_2944 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_2948 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_2950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_2952 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_2956 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_GovProposalsOf_2960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3654
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_2962 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886 ->
  ()
d_GovRoleCredential_2964 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_2966 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_2970 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_2974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_2976 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVotesOf
d_GovVotesOf_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_GovVotesOf_2980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_2984 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_2988 ~v0
  = du_HasAttrSize'45'BootstrapAddr_2988
du_HasAttrSize'45'BootstrapAddr_2988 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_2988
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_2990 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_2994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2994 ~v0 = du_HasCast'45'Acnt_2994
du_HasCast'45'Acnt_2994 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2994
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2996 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2996
du_HasCast'45'GovAction'45'Sigma_2996 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2996
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_962
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_2998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2998 ~v0 = du_HasCast'45'GovVote_2998
du_HasCast'45'GovVote_2998 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2998
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1378
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_3000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3000 ~v0
  = du_HasCast'45'HashProtected_3000
du_HasCast'45'HashProtected_3000 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3002 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3002
du_HasCast'45'HashProtected'45'MaybeScriptHash_3002 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3002
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1142
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_3004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_3004
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3880
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_3006 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_3010 ~v0
  = du_HasCredential'45'RewardAddress_3010
du_HasCredential'45'RewardAddress_3010 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_3010
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_3012 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626
d_HasDCerts'45'Tx_3016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3754
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_3018 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_3022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3766
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_3024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3702
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasFees-Tx
d_HasFees'45'Tx_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_3026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3752
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_3028 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovActionState_3032 ~v0
  = du_HasGovAction'45'GovActionState_3032
du_HasGovAction'45'GovActionState_3032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovActionState_3032
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovProposal_3034 ~v0
  = du_HasGovAction'45'GovProposal_3034
du_HasGovAction'45'GovProposal_3034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovProposal_3034
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_3036 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovAction_3040 ~v0
  = du_HasGovActionType'45'GovAction_3040
du_HasGovActionType'45'GovAction_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovAction_3040
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_960
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovActionState_3042 ~v0
  = du_HasGovActionType'45'GovActionState_3042
du_HasGovActionType'45'GovActionState_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovActionState_3042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovProposal_3044 ~v0
  = du_HasGovActionType'45'GovProposal_3044
du_HasGovActionType'45'GovProposal_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovProposal_3044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_3046 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals-Tx
d_HasGovProposals'45'Tx_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646
d_HasGovProposals'45'Tx_3050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3756
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_3052 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
d_HasGovVoter'45'GovVote_3056 ~v0 = du_HasGovVoter'45'GovVote_3056
du_HasGovVoter'45'GovVote_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
du_HasGovVoter'45'GovVote_3056
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1258
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes
d_HasGovVotes_3058 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes-Tx
d_HasGovVotes'45'Tx_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666
d_HasGovVotes'45'Tx_3062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3758
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_3064 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_3068 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_3072 ~v0
  = du_HasNetworkId'45'BaseAddr_3072
du_HasNetworkId'45'BaseAddr_3072 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_3072
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_3074 ~v0
  = du_HasNetworkId'45'BootstrapAddr_3074
du_HasNetworkId'45'BootstrapAddr_3074 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_3074
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_3076 ~v0
  = du_HasNetworkId'45'RewardAddress_3076
du_HasNetworkId'45'RewardAddress_3076 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_3076
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_3078 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_3082 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
d_HasPolicy'45'GovProposal_3086 ~v0
  = du_HasPolicy'45'GovProposal_3086
du_HasPolicy'45'GovProposal_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
du_HasPolicy'45'GovProposal_3086
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1262
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_3088 ~v0 = du_HasReserves'45'Acnt_3088
du_HasReserves'45'Acnt_3088 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_3088
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_3090 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_3094 ~v0 = du_HasTreasury'45'Acnt_3094
du_HasTreasury'45'Acnt_3094 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_3094
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_3096 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606
d_HasTxBody'45'Tx_3100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3750
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_3102 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_3106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686
d_HasTxId'45'Tx_3106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3764
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_3108 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_3112 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
d_HasVote'45'GovVote_3116 ~v0 = du_HasVote'45'GovVote_3116
du_HasVote'45'GovVote_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
du_HasVote'45'GovVote_3116
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1260
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_3118 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_3122 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_3126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3762
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_3128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3760
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_3130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_3130 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_452
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_3138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2752
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_3142 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_3144 ~v0 = du_IsBootstrapAddr'63'_3144
du_IsBootstrapAddr'63'_3144 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_3144
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj
d_IsKeyHashObj_3148 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj?
d_IsKeyHashObj'63'_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_3150 ~v0 = du_IsKeyHashObj'63'_3150
du_IsKeyHashObj'63'_3150 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_3150
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3152 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3156 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3160 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_3164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ix_3164 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_3166 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_KeyPair_3170 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_LangDepView_3172 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Language
d_Language_3174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_3174 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_3176 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_3180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_3180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_3182 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_3182 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_3184 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_NeedsHash_3186 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Network
d_Network_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Network_3188 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_3192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_3192 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_3194 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_3194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_3200 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_3202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_328
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_3204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_3204 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_3206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_P1Script_3206 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_3208 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_3212 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.POSIXTimeRange
d_POSIXTimeRange_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_POSIXTimeRange_3214 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_3216 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_3218 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_3222 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_3226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_3228 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_3230 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV1_3234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV2_3236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV3_3238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_3240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3240 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_3242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_3244 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_3248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_3248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_3250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_3250 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ProposedPPUpdates_3252 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_3254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_Quorum_3254 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RBHeaderHash
d_RBHeaderHash_3256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RBHeaderHash_3256 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_3258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_3258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_3260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_RandomnessStabilisationWindow'7580'_3260 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RdmrPtr
d_RdmrPtr_3262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_3262 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_3264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_3264 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_3266 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_3270 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_3270 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_3274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_SKey_3274 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Script
d_Script_3278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_3278 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptAddr_3280 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_3282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBaseAddr_3282 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBootstrapAddr
d_ScriptBootstrapAddr_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBootstrapAddr_3284 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_3286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_3286 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_3290 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ser_3296 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_3300 ~v0 = du_Show'45'Credential_3300
du_Show'45'Credential_3300 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_3300 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_3302 ~v0
  = du_Show'45'Credential'215'Coin_3302
du_Show'45'Credential'215'Coin_3302 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_3302 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_3304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_3304 ~v0 = du_Show'45'DrepThresholds_3304
du_Show'45'DrepThresholds_3304 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_3304
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_3306 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3310 ~v0 = du_Show'45'GovRole_3310
du_Show'45'GovRole_3310 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_894
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_3314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_498
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_3316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_3316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_3318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_3320 ~v0 = du_Show'45'PoolThresholds_3320
du_Show'45'PoolThresholds_3320 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_3320
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_3324 ~v0 = du_Show'45'RewardAddress_3324
du_Show'45'RewardAddress_3324 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_3324
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_3326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3328 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3330 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3332 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1380
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_3336 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_3338 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_3340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_3342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_3342 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_3344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_StabilityWindow_3344 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_StabilityWindow'7580'_3346 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3350 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3352 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3354 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_3358 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_3366 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_3370 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_3374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_TxBodyOf_3374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3614
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxId_3376 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686 ->
  AgdaAny -> AgdaAny
d_TxIdOf_3378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_3380 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_3382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_3382 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOutʰ
d_TxOut'688'_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_3384 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxRefHash
d_TxRefHash_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxRefHash_3386 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_3388 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_3392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_3392 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_3394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3510 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3518
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Update
d_Update_3396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Update_3396 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_3400 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_3402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_3402 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyAddr_3404 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBaseAddr_3406 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBootstrapAddr
d_VKeyBootstrapAddr_3408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBootstrapAddr_3408 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VRF
d_VRF_3412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VRF_3412 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value
d_Value_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_3414 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3418 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_3420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_3422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_3424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_3424 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_3426 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_3426 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_3428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3428 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1530
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3430 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_3432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_3432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_3434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_3434 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_3436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_3436 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_3440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_3440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin
d_coin_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_3442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_3444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3444 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3448 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_3450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_3452 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_3454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_3456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_3458 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_3460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_3462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getLanguage
d_getLanguage_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_3464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_480
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_3466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_3466 ~v0 = du_getScriptHash_3466
du_getScriptHash_3466 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_3466
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValue
d_getValue_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3468 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3768
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValueʰ
d_getValue'688'_3470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3470 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3784
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_3472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_3472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_3474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_3474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_3476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3478 ~v0 = du_govVoterCredential_3478
du_govVoterCredential_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1486
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.hashEBRefs
d_hashEBRefs_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_hashEBRefs_3480 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_hashEBRefs_308
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_374
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.inject
d_inject_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_3484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_3486 ~v0 = du_isBootstrapAddr_3486
du_isBootstrapAddr_3486 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_3486
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3488 ~v0 = du_isGovVoterDRep_3488
du_isGovVoterDRep_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3488
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1482
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_3490 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_3492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_3492 ~v0 = du_isKeyHashObj_3492
du_isKeyHashObj_3492 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_3492
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_3494 ~v0 = du_isKeyHashObj'7495'_3494
du_isKeyHashObj'7495'_3494 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_3494
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_3496 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3498 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3500 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3502 ~v0 = du_isP1Script'63'_3502
du_isP1Script'63'_3502 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_3502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_458
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3504 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3506 ~v0 = du_isP2Script'63'_3506
du_isP2Script'63'_3506 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_472
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_3508 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_3510 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_3512 ~v0 = du_isScriptObj_3512
du_isScriptObj_3512 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_3512
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_3514 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_3516 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_3518 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSignedBy
d_isSignedBy_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSignedBy_3520 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSignedByAggregate
d_isSignedByAggregate_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_isSignedByAggregate_3522 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_3524 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_3526 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isValidPoP
d_isValidPoP_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d_isValidPoP_3528 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.khs
d_khs_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_3530 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.language
d_language_3532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_language_3532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3866
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3540 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.netId
d_netId_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_3542 ~v0 = du_netId_3542
du_netId_3542 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_3542
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_p1s_3544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_3546 ~v0 = du_paramsWF'45'elim_3546
du_paramsWF'45'elim_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_3546 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_3548 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_3550 ~v0 = du_payCred_3550
du_payCred_3550 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_3550
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_3552 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.policies
d_policies_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny]
d_policies_3554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_3556 ~v0 = du_positivePParams_3556
du_positivePParams_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
du_positivePParams_3556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_3558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_3560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_3560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> ()
d_ppdWellFormed_3562 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_3564 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3566 ~v0 = du_proposedCC_3566
du_proposedCC_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1494
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ps
d_ps_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_ps_3568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3570 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.refScripts
d_refScripts_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3808
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptOuts
d_scriptOuts_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3574 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3794
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_3576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328
d_scriptStructure_3576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sign
d_sign_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_3578 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1452
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_236 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.size
d_size_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_size_3580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_3582 ~v0 = du_stakeCred_3582
du_stakeCred_3582 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_3582
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_suc'7497'_3584 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_3588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3588 ~v0 = du_toP1Script_3588
du_toP1Script_3588 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_3588
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_466
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3590 ~v0 = du_toP2Script_3590
du_toP2Script_3590 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_3590
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_478
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_3592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_3592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsScript
d_txInsScript_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_3594
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3802
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsVKey
d_txInsVKey_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_3596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3788
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txOutHash
d_txOutHash_3598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3774
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_3600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_txidBytes_3600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2750
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txscripts
d_txscripts_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3856
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_3604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_3604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2618
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3612 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_3614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3614 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ε
d_ε_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_ε_3616 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2636
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_3618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_3618 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_3620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_3620 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_360
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1416
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_3622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_ℕtoEpoch_3622 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_3624 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_3636 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_3636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_3638 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_3638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054 ->
  AgdaAny
d_hash_3642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_3644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_3648 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_3648 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_3650 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3650 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_3652 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_3652 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_3656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_3656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_3658 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_3658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_3660 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3660 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_3670 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_3670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_3672 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_3672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_3674 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_3674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_3676 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_3676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_3678 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_3678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_3680 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_3680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_3682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_3682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_3684 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_3684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_3686 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_3686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_3688 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_3688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_3692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_3692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_3694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_3694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_3698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_action_3698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1192
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_3700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  AgdaAny
d_expiresIn_3700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_3702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  AgdaAny
d_prevAction_3702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_3704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1188
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_3706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1174 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086
d_votes_3706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1186
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovAction
d_'61''61''45'GovAction_3726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  Bool
d_'61''61''45'GovAction_3726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_1002
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovActionData
d_'61''61''45'GovActionData_3728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_984
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovProposal
d_'61''61''45'GovProposal_3730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Bool
d_'61''61''45'GovProposal_3730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1386
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-Set
d_'61''61''45'Set_3732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3732 ~v0 = du_'61''61''45'Set_3732
du_'61''61''45'Set_3732 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3732 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_972
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Anchor
d_Anchor_3734 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DReps
d_DReps_3744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_3744 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DRepsOf
d_DRepsOf_3746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_3748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_3750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3750 ~v0 = du_DecEq'45'GovActionType_3750
du_DecEq'45'GovActionType_3750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3750
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_966
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_3752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3752 ~v0 = du_DecEq'45'GovRole_3752
du_DecEq'45'GovRole_3752 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3752
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1272
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_3754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1384
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_3758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Vote
d_DecEq'45'Vote_3760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3760 ~v0 = du_DecEq'45'Vote_3760
du_DecEq'45'Vote_3760 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3760
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1274
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovAction
d_GovAction_3762 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionData
d_GovActionData_3766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_GovActionData_3766 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionID
d_GovActionID_3768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_3768 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionOf
d_GovActionOf_3770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_3770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionState
d_GovActionState_3772 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionType
d_GovActionType_3776 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionTypeOf
d_GovActionTypeOf_3778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_3778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal
d_GovProposal_3780 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRole
d_GovRole_3784 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRoleCredential
d_GovRoleCredential_3786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886 ->
  ()
d_GovRoleCredential_3786 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote
d_GovVote_3788 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter
d_GovVoter_3792 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoterOf
d_GovVoterOf_3796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_3796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes
d_GovVotes_3798 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3802 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3802
du_HasCast'45'GovAction'45'Sigma_3802 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3802
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_962
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_3804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3804 ~v0 = du_HasCast'45'GovVote_3804
du_HasCast'45'GovVote_3804 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1378
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_3806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3806 ~v0
  = du_HasCast'45'HashProtected_3806
du_HasCast'45'HashProtected_3806 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1140
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3808 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3808
du_HasCast'45'HashProtected'45'MaybeScriptHash_3808 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3808
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1142
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps
d_HasDReps_3810 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction
d_HasGovAction_3814 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovActionState_3818 ~v0
  = du_HasGovAction'45'GovActionState_3818
du_HasGovAction'45'GovActionState_3818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovActionState_3818
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1266
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
d_HasGovAction'45'GovProposal_3820 ~v0
  = du_HasGovAction'45'GovProposal_3820
du_HasGovAction'45'GovProposal_3820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946
du_HasGovAction'45'GovProposal_3820
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1264
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType
d_HasGovActionType_3822 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovAction_3826 ~v0
  = du_HasGovActionType'45'GovAction_3826
du_HasGovActionType'45'GovAction_3826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovAction_3826
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_960
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovActionState_3828 ~v0
  = du_HasGovActionType'45'GovActionState_3828
du_HasGovActionType'45'GovActionState_3828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovActionState_3828
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1270
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
d_HasGovActionType'45'GovProposal_3830 ~v0
  = du_HasGovActionType'45'GovProposal_3830
du_HasGovActionType'45'GovProposal_3830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916
du_HasGovActionType'45'GovProposal_3830
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1268
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter
d_HasGovVoter_3832 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
d_HasGovVoter'45'GovVote_3836 ~v0 = du_HasGovVoter'45'GovVote_3836
du_HasGovVoter'45'GovVote_3836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202
du_HasGovVoter'45'GovVote_3836
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1258
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy
d_HasPolicy_3838 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
d_HasPolicy'45'GovProposal_3842 ~v0
  = du_HasPolicy'45'GovProposal_3842
du_HasPolicy'45'GovProposal_3842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242
du_HasPolicy'45'GovProposal_3842
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1262
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote
d_HasVote_3844 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_3848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
d_HasVote'45'GovVote_3848 ~v0 = du_HasVote'45'GovVote_3848
du_HasVote'45'GovVote_3848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222
du_HasVote'45'GovVote_3848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1260
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs
d_HasVoteDelegs_3850 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HashProtected
d_HashProtected_3854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_3854 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.NeedsHash
d_NeedsHash_3858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898 ->
  ()
d_NeedsHash_3858 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Policy
d_Policy_3864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3864 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.PolicyOf
d_PolicyOf_3866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-GovRole
d_Show'45'GovRole_3870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3870 ~v0 = du_Show'45'GovRole_3870
du_Show'45'GovRole_3870 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3870
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_894
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-VDeleg
d_Show'45'VDeleg_3872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1380
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VDeleg
d_VDeleg_3880 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Vote
d_Vote_3882 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegs
d_VoteDelegs_3884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3884 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegsOf
d_VoteDelegsOf_3886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteOf
d_VoteOf_3888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_3888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeDRepsOf
d_activeDRepsOf_3892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3892 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1530
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2754
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeInEpoch
d_activeInEpoch_3894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3894 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaData
d_gaData_3896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  AgdaAny
d_gaData_3896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_940
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaType
d_gaType_3898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_gaType_3898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_938
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.govVoterCredential
d_govVoterCredential_3900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3900 ~v0 = du_govVoterCredential_3900
du_govVoterCredential_3900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3900
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1486
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.isGovVoterDRep
d_isGovVoterDRep_3902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3902 ~v0 = du_isGovVoterDRep_3902
du_isGovVoterDRep_3902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3902
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1482
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.proposedCC
d_proposedCC_3906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3906 ~v0 = du_proposedCC_3906
du_proposedCC_3906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3906
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1494
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.action
d_action_3922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_action_3922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1160
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.anchor
d_anchor_3924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054
d_anchor_3924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.deposit
d_deposit_3926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Integer
d_deposit_3926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1166
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.policy
d_policy_3928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  Maybe AgdaAny
d_policy_3928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.prevAction
d_prevAction_3930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  AgdaAny
d_prevAction_3930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.returnAddr
d_returnAddr_3932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1168
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.anchor
d_anchor_3944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1054
d_anchor_3944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1082
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.gid
d_gid_3946 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1076
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.vote
d_vote_3948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_vote_3948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1080
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.voter
d_voter_3950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_voter_3950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvCredential
d_gvCredential_3954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  AgdaAny
d_gvCredential_3954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvRole
d_gvRole_3956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_886
d_gvRole_3956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1048
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvCC
d_gvCC_3960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1094
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvDRep
d_gvDRep_3962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1096
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvSPO
d_gvSPO_3964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1086 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1098
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps.DRepsOf
d_DRepsOf_3968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1504 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction.GovActionOf
d_GovActionOf_3972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_946 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_932
d_GovActionOf_3972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_952
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_916 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_898
d_GovActionTypeOf_3976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_922
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1202 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1042
d_GovVoterOf_3980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy.PolicyOf
d_PolicyOf_3984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1242 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote.VoteOf
d_VoteOf_3988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1222 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_1034
d_VoteOf_3988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1116 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_4012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_4012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_4014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_4014 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_4016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_4016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_4018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_4018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_4020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_4022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_4022 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_4024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_4024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_4028 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_4028 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_4032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_4032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_4036 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_4036 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_4040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3626 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_DCertsOf_4040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3634
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_4044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3646 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_GovProposalsOf_4044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3654
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes.GovVotesOf
d_GovVotesOf_4048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3666 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_GovVotesOf_4048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_4052 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_4052 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_4056 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_4056 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_4060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_4060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_4064 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_4064 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_4068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3606 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_TxBodyOf_4068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3614
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_4072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3686 ->
  AgdaAny -> AgdaAny
d_TxIdOf_4072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_4076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3510 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_4076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3518
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_4080 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_4080 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_4092 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4092 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4094 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4094 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_4096 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4096 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_4098 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4098 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_4100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4100 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_4104 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4104 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_4106 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4106 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4108 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4108 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_4110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_4110 ~v0 = du_isMagmaIsomorphism_4110
du_isMagmaIsomorphism_4110 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_4110 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4112 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_4112 v2
du_isMagmaMonomorphism_4112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4112 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4114 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4114 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_4116 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_4116 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_4118 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4118 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_4120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_4120 ~v0 ~v1 v2 = du_isRelIsomorphism_4120 v2
du_isRelIsomorphism_4120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_4120 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_4122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4122 ~v0 ~v1 v2 = du_isRelMonomorphism_4122 v2
du_isRelMonomorphism_4122 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4122 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.surjective
d_surjective_4124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_4124 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_4126 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4126 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_4128 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4128 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_4132 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4132 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_4134 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4134 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4136 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4136 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4138 ~v0 = du_isMagmaMonomorphism_4138
du_isMagmaMonomorphism_4138 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4138 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4140 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4140 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_4142 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4142 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_4144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4144 ~v0 ~v1 v2 = du_isRelMonomorphism_4144 v2
du_isRelMonomorphism_4144 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4144 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_4146 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4146 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_4148 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4148 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_4152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_4156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_4156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_4158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_4158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_4160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_4160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_4162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  ()
d_P1Script_4162 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_4164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4164 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_4180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_Emax_4180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_4182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_4182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_4184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_4186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_4186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_4188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_4188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_4190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_4190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_4192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_4192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_4194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_4194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_4196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_4196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_4198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdlsAssoc_4198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_4200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_drepActivity_4200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_4202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_4202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_4204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_4204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_4206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_4206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_4208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_4208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_4210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_4210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_4212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxBlockExUnits_4212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_4214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_4214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_4216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_4216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_4218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_4218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_4220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_4222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_4224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxTxExUnits_4224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_4226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_4226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_4228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_4228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_4232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_4232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_4234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_4236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_4236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_4238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_4238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_4240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_4240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_4242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_prices_4242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_4244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_4246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_4248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_4250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_4254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_4254 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_4256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_4256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_4258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_4260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_4260 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_4262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_4262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__4266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__4266 ~v0 = du__'63''8599'__4266
du__'63''8599'__4266 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__4266 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__4268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d__'8746''737''7580''7504'__4268 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_490
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_4270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_4270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1878
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_4272 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_4276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_4276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2148
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_4278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_4278 ~v0 = du_modifiedUpdateGroups_4278
du_modifiedUpdateGroups_4278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_4278
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_4280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_4280 ~v0 = du_modifiesEconomicGroup_4280
du_modifiesEconomicGroup_4280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesEconomicGroup_4280
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_4282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_4282 ~v0
  = du_modifiesGovernanceGroup_4282
du_modifiesGovernanceGroup_4282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesGovernanceGroup_4282
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_4284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_4284 ~v0 = du_modifiesNetworkGroup_4284
du_modifiesNetworkGroup_4284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesNetworkGroup_4284
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_4286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_4286 ~v0 = du_modifiesSecurityGroup_4286
du_modifiesSecurityGroup_4286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesSecurityGroup_4286
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_4288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_4288 ~v0 = du_modifiesTechnicalGroup_4288
du_modifiesTechnicalGroup_4288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesTechnicalGroup_4288
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_4290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_4290 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_4292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_4292 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.≡-update
d_'8801''45'update_4294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_4294 ~v0 = du_'8801''45'update_4294
du_'8801''45'update_4294 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_4294 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_4298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_Emax_4298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_4300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_4300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_4302 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_4304 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_4304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_4306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_4306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_4308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_4308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_4310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_4310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_4312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_4312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_4314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484
d_costmdls_4314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_4316 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_drepActivity_4316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_4318 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_4318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_4320 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_4320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_4322 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_4322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_4324 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_4324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_4326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_4326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_4328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxBlockExUnits_4328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_4330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_4330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_4332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_4332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_4334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_4334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4336 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_4336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4338 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_4338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_4340 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxTxExUnits_4340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_4342 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_4342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_4344 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_4344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_4348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_4348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_4350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_4352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_4352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_4354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_4354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_4356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_4356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_4358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_prices_4358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_4360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_4362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_4364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_4366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≥ᵉ_
d__'8805''7497'__4370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4370 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_4372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_CostModel_4372 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_4374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_T_4374 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_4376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_THash_4376 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_4378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_4380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Datum_4380 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_4384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_4386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_4392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_4394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4394 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_4396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4396 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_4400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_ExUnits_4400 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_4404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_LangDepView_4404 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_4406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Language_4406 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_4408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_PlutusScript_4408 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_4410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV1_4410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_4412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV2_4412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_4414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny
d_PlutusV3_4414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_4416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Prices_4416 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_4418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  ()
d_Redeemer_4418 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_4420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_4422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_4424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_4426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_4428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4428 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_4430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4430 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_4432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4432 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> AgdaAny
d_language_4434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_4436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4436 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_4442 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_4442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_4444 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_4444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_4446 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_4446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_4448 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_4448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_4450 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_4450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_4454 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_4454 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_4456 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4456 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≥ᵉ_
d__'8805''7497'__4460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4460 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_4462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_CostModel_4462 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_4464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_T_4464 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_4466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_THash_4466 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_4468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_4470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Datum_4470 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_4472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_4472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_168
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_4476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_292
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_4478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_290
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_4484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_4486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_4486 ~v0
  = du_DecEq'45'LanguageCostModels_4486
du_DecEq'45'LanguageCostModels_4486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_4486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_492
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_4488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_4488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_172
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_4490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4490 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_4492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4492 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_4496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_ExUnits_4496 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_4498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_4498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_170
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_4502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_4502 ~v0 = du_Hashable'45'Script_4502
du_Hashable'45'Script_4502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_4502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_452
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_4504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_LangDepView_4504 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_4506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Language_4506 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_4508 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_4512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_P1Script_4512 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_4514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_PlutusScript_4514 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_4516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV1_4516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_266
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_4518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV2_4518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_268
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_4520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny
d_PlutusV3_4520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_270
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_4522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Prices_4522 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_4524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Redeemer_4524 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_4526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  ()
d_Script_4526 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_4528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_4530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_294
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_4532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4534 ~v0
  = du_Show'45'LanguageCostModels_4534
du_Show'45'LanguageCostModels_4534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_4534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_498
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_4536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_296
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_4538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4538 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_4540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4540 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_4542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4542 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_252
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.getLanguage
d_getLanguage_4544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_4544 ~v0 = du_getLanguage_4544
du_getLanguage_4544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_4544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_480
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_4546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_374
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_4548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4548 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_4550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4550 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_4552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4552 ~v0 = du_isP1Script'63'_4552
du_isP1Script'63'_4552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4552 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_458
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_4554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4554 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_4556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4556 ~v0 = du_isP2Script'63'_4556
du_isP2Script'63'_4556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4556 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_472
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_4558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> AgdaAny
d_language_4558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_4560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_4564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_152
d_p1s_4564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_354
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_4566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_176
d_ps_4566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_4568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4568 ~v0 = du_toP1Script_4568
du_toP1Script_4568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_466
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_4570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4570 ~v0 = du_toP2Script_4570
du_toP2Script_4570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_478
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_4572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4572 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_4574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4574 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_328 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_288
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_376
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_4580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_484 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__4584 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__4584 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__4586 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__4586 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__4588 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__4588 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_4590 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_4590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_4592 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_4592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_4594 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_4598 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_4602 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_4606 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_4606 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4608 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_4610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4610 ~v0 = du_addValue_4610
du_addValue_4610 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_4610
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_4612 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_4612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_4614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4614 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4616 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_4618 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4618 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_4620 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_4620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_4622 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4622 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_4624 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_4624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_4626 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4626 v0
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
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.size
d_size_4628 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_4628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_4630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4630 ~v0 = du_sum'7515'_4630
du_sum'7515'_4630 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_4630
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_4632 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_4632 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_4636 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4636 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4638 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4638 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_4640 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4640 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_4642 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4642 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_4644 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4644 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_4648 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4648 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_4650 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4650 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4652 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4652 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_4654 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_4654 ~v0 = du_isMagmaIsomorphism_4654
du_isMagmaIsomorphism_4654 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_4654 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4656 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4656 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_4656 v2
du_isMagmaMonomorphism_4656 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4656 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4658 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4658 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_4660 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_4660 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_4662 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4662 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_4664 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_4664 ~v0 ~v1 v2 = du_isRelIsomorphism_4664 v2
du_isRelIsomorphism_4664 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_4664 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_4666 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4666 ~v0 ~v1 v2 = du_isRelMonomorphism_4666 v2
du_isRelMonomorphism_4666 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4666 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_4668 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_4668 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_4670 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4670 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_4672 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4672 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_4676 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4676 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_4678 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4678 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4680 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4680 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4682 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4682 ~v0 = du_isMagmaMonomorphism_4682
du_isMagmaMonomorphism_4682 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4682 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4684 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4684 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_4686 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4686 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_4688 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4688 ~v0 ~v1 v2 = du_isRelMonomorphism_4688 v2
du_isRelMonomorphism_4688 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4688 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_4690 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4690 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_4692 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4692 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.body
d_body_4696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526
d_body_4696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_4698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Bool
d_isValid_4698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3744
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txAD
d_txAD_4700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Maybe AgdaAny
d_txAD_4700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3746
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txsize
d_txsize_4702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  Integer
d_txsize_4702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3742
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.wits
d_wits_4704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3726 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704
d_wits_4704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3740
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_4708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_4708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3568
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_4710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe Integer
d_currentTreasury_4710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3592
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_4712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  AgdaAny
d_mint_4712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3594
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.refInputs
d_refInputs_4714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_4714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3566
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.reqSignerHashes
d_reqSignerHashes_4716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [AgdaAny]
d_reqSignerHashes_4716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3596
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_4718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe AgdaAny
d_scriptIntegrityHash_4718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3598
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_4720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe AgdaAny
d_txADhash_4720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_4722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1398]
d_txCerts_4722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3574
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_4724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txDonation_4724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3584
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_4726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Integer
d_txFee_4726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3576
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_4728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1146]
d_txGovProposals_4728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3588
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_4730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1066]
d_txGovVotes_4730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3586
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_4732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  AgdaAny
d_txId_4732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3572
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_4734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_4734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3564
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_4736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  Maybe AgdaAny
d_txNetworkId_4736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3590
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_4738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3570
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_4740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3580
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_4742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_4742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3578
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_4746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_4746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_4748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [AgdaAny]
d_scriptsP1_4748 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3722
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txdats
d_txdats_4750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  [AgdaAny]
d_txdats_4750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_4752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_4752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_4754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3704 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_4754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3714
      (coe v0)
