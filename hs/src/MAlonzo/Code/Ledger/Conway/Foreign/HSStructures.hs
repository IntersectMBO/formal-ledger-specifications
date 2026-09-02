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
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._+ᵉ'_
d__'43''7497'''__12 :: Integer -> Integer -> Integer
d__'43''7497'''__12
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._∙_
d__'8729'__14 :: Integer -> Integer -> Integer
d__'8729'__14
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._._≈_
d__'8776'__16 :: Integer -> Integer -> ()
d__'8776'__16 = erased
-- Ledger.Conway.Foreign.HSStructures._._≤ᵗ_
d__'8804''7511'__18 :: Integer -> Integer -> ()
d__'8804''7511'__18 = erased
-- Ledger.Conway.Foreign.HSStructures._._≥ᵉ_
d__'8805''7497'__20 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__20 = erased
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460 ->
  ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__22 = erased
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__24 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__26 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__28 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__30 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__32 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_34 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_34 = erased
-- Ledger.Conway.Foreign.HSStructures._.==-GovAction
d_'61''61''45'GovAction_36 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  Bool
d_'61''61''45'GovAction_36
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_956
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_38 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_938
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_40 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Bool
d_'61''61''45'GovProposal_40
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_42 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_926
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_44 :: ()
d_THash_44 = erased
-- Ledger.Conway.Foreign.HSStructures._.Acnt
d_Acnt_46 = ()
-- Ledger.Conway.Foreign.HSStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_50 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_50
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Addr
d_Addr_52 :: ()
d_Addr_52 = erased
-- Ledger.Conway.Foreign.HSStructures._.Anchor
d_Anchor_56 = ()
-- Ledger.Conway.Foreign.HSStructures._.AttrSizeOf
d_AttrSizeOf_60 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_60 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.AuxiliaryData
d_AuxiliaryData_62 :: ()
d_AuxiliaryData_62 = erased
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr
d_BaseAddr_64 = ()
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr
d_BootstrapAddr_68 = ()
-- Ledger.Conway.Foreign.HSStructures._.CCHotKeys
d_CCHotKeys_74 :: ()
d_CCHotKeys_74 = erased
-- Ledger.Conway.Foreign.HSStructures._.CCHotKeysOf
d_CCHotKeysOf_76 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1244
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv
d_CertEnv_88 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertState
d_CertState_92 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertStateOf
d_CertStateOf_96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460
d_CertStateOf_96 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1564
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CostModel
d_CostModel_100 :: ()
d_CostModel_100 = erased
-- Ledger.Conway.Foreign.HSStructures._.Credential
d_Credential_102 = ()
-- Ledger.Conway.Foreign.HSStructures._.CredentialOf
d_CredentialOf_106 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_106 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DCert
d_DCert_108 = ()
-- Ledger.Conway.Foreign.HSStructures._.DCertsOf
d_DCertsOf_110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
d_DCertsOf_110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DReps
d_DReps_122 :: ()
d_DReps_122 = erased
-- Ledger.Conway.Foreign.HSStructures._.DRepsOf
d_DRepsOf_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState
d_DState_126 = ()
-- Ledger.Conway.Foreign.HSStructures._.DStateOf
d_DStateOf_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1496 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
d_DStateOf_130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.T
d_T_132 :: ()
d_T_132 = erased
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_134 :: ()
d_THash_134 = erased
-- Ledger.Conway.Foreign.HSStructures._.Dataʰ
d_Data'688'_136 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_136
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Datum
d_Datum_138 :: ()
d_Datum_138 = erased
-- Ledger.Conway.Foreign.HSStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_140 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_108 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_166
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
            (coe v0))
         (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isScript
d_Dec'45'isScript_142 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_142
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Conway.Foreign.HSStructures._.Dec-isSigned
d_Dec'45'isSigned_144 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isVKey
d_Dec'45'isVKey_146 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_146
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Conway.Foreign.HSStructures._.Dec-validP1Script
d_Dec'45'validP1Script_148 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_148
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_150 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_150
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_152 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_154 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_248
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_156 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_158 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_160 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_162 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_164 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_166 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1372
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_168 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1216
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_172 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_174 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_920
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_178 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1226
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_180 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_182 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_182
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_DecEq'45'HSTimelock_320
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_184 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_184
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_186 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_236
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_188 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_188
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_190
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_448
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_192
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_194 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_196 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_196
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_128
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_198 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_200 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_208 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Sig
d_DecEq'45'Sig_210 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Slot
d_DecEq'45'Slot_212 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_212
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_214
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1370
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_216
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_218 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_218
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_220 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_220
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_224
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Timelock
d_DecEq'45'Timelock_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_226
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_122
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
            (coe v0))
         (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1354
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_230 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_230
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_232 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_232
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-VRF
d_DecEq'45'VRF_234 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_234
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_236 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_236
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1228
-- Ledger.Conway.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_240 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_240
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv
d_DelegEnv_242 = ()
-- Ledger.Conway.Foreign.HSStructures._.DepositPurpose
d_DepositPurpose_246 = ()
-- Ledger.Conway.Foreign.HSStructures._.Deposits
d_Deposits_248 :: ()
d_Deposits_248 = erased
-- Ledger.Conway.Foreign.HSStructures._.DepositsOf
d_DepositsOf_250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1208
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_252 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2510
d_HSAbstractFunctions_256
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSAbstractFunctions_3154
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_258
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.Epoch
d_Epoch_262 :: ()
d_Epoch_262 = erased
-- Ledger.Conway.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_264 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_264
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ExUnits
d_ExUnits_266 :: ()
d_ExUnits_266 = erased
-- Ledger.Conway.Foreign.HSStructures._.GState
d_GState_274 = ()
-- Ledger.Conway.Foreign.HSStructures._.GStateOf
d_GStateOf_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1536 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1448
d_GStateOf_278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1544
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction
d_GovAction_280 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionData
d_GovActionData_284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_GovActionData_284 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionID
d_GovActionID_288 :: ()
d_GovActionID_288 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionOf
d_GovActionOf_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_GovActionOf_290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_906
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState
d_GovActionState_292 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionType
d_GovActionType_296 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_GovActionTypeOf_298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_876
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams
d_GovParams_300 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposal
d_GovProposal_304 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100]
d_GovProposalsOf_308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovRole
d_GovRole_310 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_840 ->
  ()
d_GovRoleCredential_312 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovVote
d_GovVote_314 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoter
d_GovVoter_318 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovVotes
d_GovVotes_324 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVotesOf
d_GovVotesOf_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_GovVotesOf_328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108
d_HSP1ScriptStructure_332
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP1ScriptStructure_322
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132
d_HSP2ScriptStructure_334
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP2ScriptStructure_344
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript
d_HSPlutusScript_336 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSScriptStructure
d_HSScriptStructure_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284
d_HSScriptStructure_340
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock
d_HSTimelock_342 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize
d_HasAttrSize_346 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_350 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_350
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys
d_HasCCHotKeys_352 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1236
d_HasCCHotKeys'45'CertState_356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1600
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1236
d_HasCCHotKeys'45'GState_358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1588
-- Ledger.Conway.Foreign.HSStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_360 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCast-Acnt
d_HasCast'45'Acnt_364 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_364
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Foreign.HSStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_366 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_366
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1616
-- Ledger.Conway.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1624
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_370 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_370
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1618
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_372 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_372
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1626
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_374 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_374
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1622
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_376 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_916
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_378 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1332
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_380 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1094
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_382 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1096
-- Ledger.Conway.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_384 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1620
-- Ledger.Conway.Foreign.HSStructures._.HasCertState
d_HasCertState_386 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCoin-CertState
d_HasCoin'45'CertState_390 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_390
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1614
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_392 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_392
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3788
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.HasCredential
d_HasCredential_394 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_398 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_398
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts
d_HasDCerts_400 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3534
d_HasDCerts'45'Tx_404
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3662
-- Ledger.Conway.Foreign.HSStructures._.HasDReps
d_HasDReps_406 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458
d_HasDReps'45'CertState_410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1598
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458
d_HasDReps'45'GState_412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1586
-- Ledger.Conway.Foreign.HSStructures._.HasDState
d_HasDState_414 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1496
d_HasDState'45'CertState_418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1590
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits
d_HasDeposits_420 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_424 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3674
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_426 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3610
-- Ledger.Conway.Foreign.HSStructures._.HasFees-Tx
d_HasFees'45'Tx_428 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3660
-- Ledger.Conway.Foreign.HSStructures._.HasGState
d_HasGState_430 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1536
d_HasGState'45'CertState_434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1594
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction
d_HasGovAction_436 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovActionState_440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1220
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovProposal_442
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1218
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_444 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovAction_448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_914
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovActionState_450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1224
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovProposal_452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1222
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_454 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3554
d_HasGovProposals'45'Tx_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3664
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_460 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156
d_HasGovVoter'45'GovVote_464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1212
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes
d_HasGovVotes_466 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes-Tx
d_HasGovVotes'45'Tx_470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3574
d_HasGovVotes'45'Tx_470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3666
-- Ledger.Conway.Foreign.HSStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_472 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId
d_HasNetworkId_476 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_480 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_480
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_482 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_482
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_484 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_484
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Conway.Foreign.HSStructures._.HasPParams
d_HasPParams_486 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'CertEnv_490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1572
-- Ledger.Conway.Foreign.HSStructures._.HasPState
d_HasPState_492 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1516
d_HasPState'45'CertState_496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1592
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy
d_HasPolicy_498 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196
d_HasPolicy'45'GovProposal_502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1216
-- Ledger.Conway.Foreign.HSStructures._.HasPools
d_HasPools_504 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1252
d_HasPools'45'CertState_508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1602
-- Ledger.Conway.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1252
d_HasPools'45'PState_510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1582
-- Ledger.Conway.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_512 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring
d_HasRetiring_514 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1268
d_HasRetiring'45'PState_518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1584
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_520 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards
d_HasRewards_524 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
d_HasRewards'45'CertState_528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1596
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284
d_HasRewards'45'DState_530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1580
-- Ledger.Conway.Foreign.HSStructures._.HasStake
d_HasStake_532 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_536 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1316
d_HasStakeDelegs'45'CertState_540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1606
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1316
d_HasStakeDelegs'45'DState_542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1578
-- Ledger.Conway.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_544 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody
d_HasTxBody_546 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3514
d_HasTxBody'45'Tx_550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3658
-- Ledger.Conway.Foreign.HSStructures._.HasTxId
d_HasTxId_552 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3594
d_HasTxId'45'Tx_556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3672
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO
d_HasUTxO_558 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote
d_HasVote_562 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176
d_HasVote'45'GovVote_566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1214
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_568 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070
d_HasVoteDelegs'45'CertState_572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1604
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070
d_HasVoteDelegs'45'DState_574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1576
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_576 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_580 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'CertEnv_580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1574
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_582 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3670
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_584 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3668
-- Ledger.Conway.Foreign.HSStructures._.HashProtected
d_HashProtected_586 :: () -> ()
d_HashProtected_586 = erased
-- Ledger.Conway.Foreign.HSStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_588 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_588
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du_Hashable'45'HSTimelock_318
-- Ledger.Conway.Foreign.HSStructures._.Hashable-P1Script
d_Hashable'45'P1Script_590 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_590
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_592 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_592
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_594 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_594
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_596 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_596
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2660
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.HsGovParams
d_HsGovParams_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_HsGovParams_598
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_644
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.IsBootstrapAddr
d_IsBootstrapAddr_602 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_604 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_604
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Conway.Foreign.HSStructures._.IsKeyHashObj
d_IsKeyHashObj_608 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsKeyHashObj?
d_IsKeyHashObj'63'_610 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_610
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_612 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_616 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_620 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.Ix
d_Ix_624 :: ()
d_Ix_624 = erased
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_626 :: ()
d_THash_626 = erased
-- Ledger.Conway.Foreign.HSStructures._.KeyPair
d_KeyPair_630 :: ()
d_KeyPair_630 = erased
-- Ledger.Conway.Foreign.HSStructures._.LangDepView
d_LangDepView_632 :: ()
d_LangDepView_632 = erased
-- Ledger.Conway.Foreign.HSStructures._.Language
d_Language_634 :: ()
d_Language_634 = erased
-- Ledger.Conway.Foreign.HSStructures._.LanguageCostModels
d_LanguageCostModels_636 = ()
-- Ledger.Conway.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_640 :: Integer
d_MaxLovelaceSupply'7580'_640
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_642 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_644 :: ()
d_MemoryEstimate_644 = erased
-- Ledger.Conway.Foreign.HSStructures._.NeedsHash
d_NeedsHash_648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_NeedsHash_648 = erased
-- Ledger.Conway.Foreign.HSStructures._.Network
d_Network_650 :: ()
d_Network_650 = erased
-- Ledger.Conway.Foreign.HSStructures._.NetworkId
d_NetworkId_654 :: Integer
d_NetworkId_654
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_656 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_656 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_662 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_662
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_664 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_664
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_666 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_666
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.P1Script
d_P1Script_668 :: ()
d_P1Script_668 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure
d_P1ScriptStructure_670 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusScript
d_PlutusScript_674 :: ()
d_PlutusScript_674 = erased
-- Ledger.Conway.Foreign.HSStructures._.POSIXTimeRange
d_POSIXTimeRange_680 :: ()
d_POSIXTimeRange_680 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamGroup
d_PParamGroup_682 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParams
d_PParams_684 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff
d_PParamsDiff_688 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsOf
d_PParamsOf_692 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.UpdateT
d_UpdateT_694 :: ()
d_UpdateT_694 = erased
-- Ledger.Conway.Foreign.HSStructures._.PState
d_PState_696 = ()
-- Ledger.Conway.Foreign.HSStructures._.PStateOf
d_PStateOf_700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
d_PStateOf_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1524
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure
d_PlutusStructure_702 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusV1
d_PlutusV1_706 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_706
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV2
d_PlutusV2_708 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_708
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV3
d_PlutusV3_710 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_710
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Policy
d_Policy_712 :: ()
d_Policy_712 = erased
-- Ledger.Conway.Foreign.HSStructures._.PolicyOf
d_PolicyOf_714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolEnv
d_PoolEnv_718 :: ()
d_PoolEnv_718 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_720 = ()
-- Ledger.Conway.Foreign.HSStructures._.Pools
d_Pools_724 :: ()
d_Pools_724 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolsOf
d_PoolsOf_726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1252 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1260
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_728 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_728
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Prices
d_Prices_730 :: ()
d_Prices_730 = erased
-- Ledger.Conway.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_732 :: ()
d_ProposedPPUpdates_732 = erased
-- Ledger.Conway.Foreign.HSStructures._.Quorum
d_Quorum_734 :: Integer
d_Quorum_734
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_736 :: Integer
d_RandomnessStabilisationWindow_736
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_738 :: Integer
d_RandomnessStabilisationWindow'7580'_738
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RdmrPtr
d_RdmrPtr_740 :: ()
d_RdmrPtr_740 = erased
-- Ledger.Conway.Foreign.HSStructures._.Redeemer
d_Redeemer_742 :: ()
d_Redeemer_742 = erased
-- Ledger.Conway.Foreign.HSStructures._.Retiring
d_Retiring_756 :: ()
d_Retiring_756 = erased
-- Ledger.Conway.Foreign.HSStructures._.RetiringOf
d_RetiringOf_758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1268 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1276
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress
d_RewardAddress_760 = ()
-- Ledger.Conway.Foreign.HSStructures._.RewardAddressOf
d_RewardAddressOf_764 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_764 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Rewards
d_Rewards_766 :: ()
d_Rewards_766 = erased
-- Ledger.Conway.Foreign.HSStructures._.RewardsOf
d_RewardsOf_768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.SKey
d_SKey_772 :: ()
d_SKey_772 = erased
-- Ledger.Conway.Foreign.HSStructures._.Script
d_Script_776 :: ()
d_Script_776 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptAddr
d_ScriptAddr_778 :: ()
d_ScriptAddr_778 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBaseAddr
d_ScriptBaseAddr_780 :: ()
d_ScriptBaseAddr_780 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_782 :: ()
d_ScriptBootstrapAddr_782 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptHash
d_ScriptHash_784 :: ()
d_ScriptHash_784 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_788 = ()
-- Ledger.Conway.Foreign.HSStructures._.Ser
d_Ser_794 :: ()
d_Ser_794 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_796 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_796
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_798 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_798 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_800 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_800 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_802 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_802
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_804 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_804
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_806 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_806
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_808 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_808
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_848
-- Ledger.Conway.Foreign.HSStructures._.Show-Language
d_Show'45'Language_810 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_810
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_238
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_812 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_812
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_454
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Network
d_Show'45'Network_814 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_814
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_816 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_816
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_818 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_818
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_820 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_820
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_252
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_822 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_822
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_824 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_824
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_826 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_826
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_828 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_828
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_830 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_830
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_832 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_832
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Sig
d_Sig_834 :: ()
d_Sig_834 = erased
-- Ledger.Conway.Foreign.HSStructures._.Slot
d_Slot_836 :: ()
d_Slot_836 = erased
-- Ledger.Conway.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_838 :: Integer
d_SlotsPerEpoch'7580'_838
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Slotʳ
d_Slot'691'_840 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_840
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_842 :: Integer
d_StabilityWindow_842
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_844 :: Integer
d_StabilityWindow'7580'_844
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Stake
d_Stake_846 :: ()
d_Stake_846 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_848 :: ()
d_StakeDelegs_848 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1316 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1324
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakeOf
d_StakeOf_852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1300 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1308
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_854 = ()
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_858 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_858
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_860 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_860
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_862 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_862
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_864 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_864
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.Timelock
d_Timelock_868 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_870 = ()
-- Ledger.Conway.Foreign.HSStructures._.Tx
d_Tx_878 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBody
d_TxBody_882 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3514 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_TxBodyOf_886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxId
d_TxId_888 :: ()
d_TxId_888 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxIdOf
d_TxIdOf_890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3594 ->
  AgdaAny -> Integer
d_TxIdOf_890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxIn
d_TxIn_892 :: ()
d_TxIn_892 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOut
d_TxOut_894 :: ()
d_TxOut_894 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOutʰ
d_TxOut'688'_896 :: ()
d_TxOut'688'_896 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_898 = ()
-- Ledger.Conway.Foreign.HSStructures._.UTxO
d_UTxO_902 :: ()
d_UTxO_902 = erased
-- Ledger.Conway.Foreign.HSStructures._.UTxOOf
d_UTxOOf_904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3418 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Update
d_Update_906 :: ()
d_Update_906 = erased
-- Ledger.Conway.Foreign.HSStructures._.VDeleg
d_VDeleg_910 = ()
-- Ledger.Conway.Foreign.HSStructures._.VKey
d_VKey_912 :: ()
d_VKey_912 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_914 :: ()
d_VKeyAddr_914 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_916 :: ()
d_VKeyBaseAddr_916 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_918 :: ()
d_VKeyBootstrapAddr_918 = erased
-- Ledger.Conway.Foreign.HSStructures._.VRF
d_VRF_922 :: ()
d_VRF_922 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value
d_Value_924 :: ()
d_Value_924 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_926 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_926
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_928 :: ()
d_VoteDelegs_928 = erased
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.VoteOf
d_VoteOf_932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_VoteOf_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Withdrawals
d_Withdrawals_934 :: ()
d_Withdrawals_934 = erased
-- Ledger.Conway.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_936 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_936 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_938 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_938
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1484
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_940 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_940 = erased
-- Ledger.Conway.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_942 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_942
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Conway.Foreign.HSStructures._.addEpoch
d_addEpoch_944 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_944
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addSlot
d_addSlot_946 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_946
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addValue
d_addValue_948 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_948
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.applyUpdate
d_applyUpdate_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_950
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.coin
d_coin_954 :: Integer -> Integer
d_coin_954
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_956 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_956 = erased
-- Ledger.Conway.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_958
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_960 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_960 = erased
-- Ledger.Conway.Foreign.HSStructures._.cryptoStructure
d_cryptoStructure_962 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_962
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.cwitness
d_cwitness_964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1374
-- Ledger.Conway.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_972 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_972
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epoch
d_epoch_974 :: Integer -> Integer
d_epoch_974
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epochStructure
d_epochStructure_976 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_976
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Conway.Foreign.HSStructures._.evalTimelock
d_evalTimelock_990 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.firstSlot
d_firstSlot_992 :: Integer -> Integer
d_firstSlot_992
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.gaData
d_gaData_994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  AgdaAny
d_gaData_994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_894
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.gaType
d_gaType_996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_gaType_996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.getLanguage
d_getLanguage_998 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_getLanguage_998
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_436
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.getScriptHash
d_getScriptHash_1000 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1000
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Foreign.HSStructures._.getValue
d_getValue_1002 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1002
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3676
-- Ledger.Conway.Foreign.HSStructures._.getValueʰ
d_getValue'688'_1004 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1004
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3692
-- Ledger.Conway.Foreign.HSStructures._.globalConstants
d_globalConstants_1006 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_1006
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Conway.Foreign.HSStructures._.govParams
d_govParams_1008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_1008
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_644
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.govStructure
d_govStructure_1010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1010
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_1012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1012
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1440
-- Ledger.Conway.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1014 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1014
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_330
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.inject
d_inject_1016 :: Integer -> Integer
d_inject_1016
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1018 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1018
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1020
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1436
-- Ledger.Conway.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1022 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1022 = erased
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1024 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1024
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1026 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1026
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1028 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1028 = erased
-- Ledger.Conway.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1030 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1030 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script
d_isP1Script_1032 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1032 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1034 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1034
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_414
-- Ledger.Conway.Foreign.HSStructures._.isP2Script
d_isP2Script_1036 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1036 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1038 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1038
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_428
-- Ledger.Conway.Foreign.HSStructures._.isPoolRegistered
d_isPoolRegistered_1040 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1160
d_isPoolRegistered_1040
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1710
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.isScript
d_isScript_1042 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1044 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1044 = erased
-- Ledger.Conway.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1046 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1046
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1048 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1048 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned
d_isSigned_1050 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1050 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1052 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1052 = erased
-- Ledger.Conway.Foreign.HSStructures._.isVKey
d_isVKey_1054 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1056 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1056 = erased
-- Ledger.Conway.Foreign.HSStructures._.khs
d_khs_1058 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1058
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.language
d_language_1060 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_language_1060
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1064 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1064
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3774
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.monoid
d_monoid_1068 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1068
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.netId
d_netId_1070 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1070
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Foreign.HSStructures._.p1s
d_p1s_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108
d_p1s_1072
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1074 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_1076 = erased
-- Ledger.Conway.Foreign.HSStructures._.payCred
d_payCred_1078 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1078
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Foreign.HSStructures._.pkk
d_pkk_1080 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1080
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.policies
d_policies_1082 :: Integer -> [Integer]
d_policies_1082
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.positivePParams
d_positivePParams_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_1084
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.HSStructures._.ppUpd
d_ppUpd_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1086
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1088
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_ppdWellFormed_1090 = erased
-- Ledger.Conway.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1092 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1092
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.proposedCC
d_proposedCC_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1094
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1448
-- Ledger.Conway.Foreign.HSStructures._.ps
d_ps_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132
d_ps_1096
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1098 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1098
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.refScripts
d_refScripts_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1100
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3716
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416 ->
  Integer
d_rewardsBalance_1110
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1608
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.scriptOuts
d_scriptOuts_1112 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1112
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3702
-- Ledger.Conway.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284
d_scriptStructure_1114
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.sign
d_sign_1116 :: Integer -> Integer -> Integer
d_sign_1116
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.size
d_size_1118 :: Integer -> Integer
d_size_1118
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.stakeCred
d_stakeCred_1120 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1120
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1122 :: Integer -> Integer
d_suc'7497'_1122
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1124 :: [Integer] -> Integer
d_sum'7515'_1124
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.toP1Script
d_toP1Script_1126 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
d_toP1Script_1126
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422
-- Ledger.Conway.Foreign.HSStructures._.toP2Script
d_toP2Script_1128 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
d_toP2Script_1128
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_434
-- Ledger.Conway.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1130 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1130
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Conway.Foreign.HSStructures._.txInsScript
d_txInsScript_1132 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1132
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3710
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txInsVKey
d_txInsVKey_1134 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1134
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3696
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txOutHash
d_txOutHash_1136 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1136
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txidBytes
d_txidBytes_1138 :: Integer -> Integer
d_txidBytes_1138 v0 = coe v0
-- Ledger.Conway.Foreign.HSStructures._.txscripts
d_txscripts_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3764
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.updateGroups
d_updateGroups_1142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1142
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.validP1Script
d_validP1Script_1150 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  ()
d_validP1Script_1150 = erased
-- Ledger.Conway.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1152 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  ()
d_validPlutusScript_1152 = erased
-- Ledger.Conway.Foreign.HSStructures._.ε
d_ε_1154 :: Integer
d_ε_1154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1156 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1156 = erased
-- Ledger.Conway.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1158 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1160 :: Integer -> Integer
d_ℕtoEpoch_1160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1162 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1164 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_244
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Acnt.reserves
d_reserves_1214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_1214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Acnt.treasury
d_treasury_1216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_1216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.hash
d_hash_1220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008 ->
  Integer
d_hash_1220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1016
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.url
d_url_1222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1014
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.net
d_net_1226 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1226 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.pay
d_pay_1228 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.stake
d_stake_1230 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1234 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1234 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.net
d_net_1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1238 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.coldCreds
d_coldCreds_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1392 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1392 ->
  Integer
d_epoch_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.pp
d_pp_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1392 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pp_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1406 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.votes
d_votes_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1392 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_votes_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1408
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.wdrls
d_wdrls_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1392 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.dState
d_dState_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
d_dState_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1468
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.gState
d_gState_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1448
d_gState_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1472
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.pState
d_pState_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
d_pState_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1470
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1268 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1268
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1270 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1270
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1272 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1272
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-Sig
d_DecEq'45'Sig_1274 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1274
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-THash
d_DecEq'45'THash_1276 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1276
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-VRF
d_DecEq'45'VRF_1278 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1278
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.THash
d_THash_1280 :: ()
d_THash_1280 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1282 :: ()
d_KeyPair_1282 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.SKey
d_SKey_1284 :: ()
d_SKey_1284 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1286 :: ()
d_ScriptHash_1286 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Ser
d_Ser_1288 :: ()
d_Ser_1288 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1290 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1290
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1292 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1292
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Sig
d_Sig_1294 :: ()
d_Sig_1294 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1296 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1296
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.VKey
d_VKey_1298 :: ()
d_VKey_1298 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.VRF
d_VRF_1300 :: ()
d_VRF_1300 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1302 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1302 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1304 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1304 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1306 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1306 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.khs
d_khs_1308 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1308
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.pkk
d_pkk_1310 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1310
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.sign
d_sign_1312 :: Integer -> Integer -> Integer
d_sign_1312
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DState.rewards
d_rewards_1334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1428
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1476 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pools
d_pools_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1476 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1486
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1476 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1484
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1366 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1448 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.dreps
d_dreps_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1448 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaData
d_gaData_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  AgdaAny
d_gaData_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_894
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaType
d_gaType_1390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_gaType_1390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.action
d_action_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_action_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1146
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  Integer
d_expiresIn_1396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1144
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  AgdaAny
d_prevAction_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.votes
d_votes_1402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040
d_votes_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1140
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  Bool
d_'61''61''45'GovAction_1422
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_956
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1424
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_938
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Bool
d_'61''61''45'GovProposal_1426
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-Set
d_'61''61''45'Set_1428 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_926
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Anchor
d_Anchor_1430 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DReps
d_DReps_1440 :: ()
d_DReps_1440 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DRepsOf
d_DRepsOf_1442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1444 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1444
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1446 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_920
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1448 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1226
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1450 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1450
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1452
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1454 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1454
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1456 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1228
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovAction
d_GovAction_1458 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionData
d_GovActionData_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_GovActionData_1462 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionID
d_GovActionID_1464 :: ()
d_GovActionID_1464 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionOf
d_GovActionOf_1466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_GovActionOf_1466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_906
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionState
d_GovActionState_1468 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionType
d_GovActionType_1472 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_GovActionTypeOf_1474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_876
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal
d_GovProposal_1476 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRole
d_GovRole_1480 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_840 ->
  ()
d_GovRoleCredential_1482 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote
d_GovVote_1484 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter
d_GovVoter_1488 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoterOf
d_GovVoterOf_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_1492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes
d_GovVotes_1494 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1498 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1498
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_916
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1500 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1332
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1502 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1094
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1504 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1096
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps
d_HasDReps_1506 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction
d_HasGovAction_1510 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovActionState_1514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1220
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovProposal_1516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1218
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType
d_HasGovActionType_1518 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovAction_1522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_914
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovActionState_1524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1224
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovProposal_1526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1222
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter
d_HasGovVoter_1528 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156
d_HasGovVoter'45'GovVote_1532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1212
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy
d_HasPolicy_1534 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196
d_HasPolicy'45'GovProposal_1538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1216
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote
d_HasVote_1540 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176
d_HasVote'45'GovVote_1544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1214
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1546 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HashProtected
d_HashProtected_1550 :: () -> ()
d_HashProtected_1550 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.NeedsHash
d_NeedsHash_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_NeedsHash_1554 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Policy
d_Policy_1560 :: ()
d_Policy_1560 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.PolicyOf
d_PolicyOf_1562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1566 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_848
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1568 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1568
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VDeleg
d_VDeleg_1576 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Vote
d_Vote_1578 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegs
d_VoteDelegs_1580 :: ()
d_VoteDelegs_1580 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteOf
d_VoteOf_1584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_VoteOf_1584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1588 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1588
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1484
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeInEpoch
d_activeInEpoch_1590 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1590 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaData
d_gaData_1592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  AgdaAny
d_gaData_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_894
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaType
d_gaType_1594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_gaType_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.govVoterCredential
d_govVoterCredential_1596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1596
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1440
-- Ledger.Conway.Foreign.HSStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1598
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1436
-- Ledger.Conway.Foreign.HSStructures._.GovActions.proposedCC
d_proposedCC_1602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1602
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1448
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.action
d_action_1618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_action_1618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1114
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.anchor
d_anchor_1620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.deposit
d_deposit_1622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Integer
d_deposit_1622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1120
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.policy
d_policy_1624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Maybe Integer
d_policy_1624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1118
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.prevAction
d_prevAction_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  AgdaAny
d_prevAction_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1116
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1122
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.anchor
d_anchor_1640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008
d_anchor_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.gid
d_gid_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.vote
d_vote_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_vote_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1034
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.voter
d_voter_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_voter_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1032
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  AgdaAny
d_gvCredential_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1004
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvRole
d_gvRole_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_840
d_gvRole_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1002
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvCC
d_gvCC_1656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1048
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_1660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1052
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_GovActionOf_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_906
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_GovActionTypeOf_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_876
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote.VoteOf
d_VoteOf_1684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_VoteOf_1684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1708 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1710 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_1710 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1712 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1714 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1716 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_1718 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_1724 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptHash_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptHash_336
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_1726 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptLanguage_340
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_1728 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptSize_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.timelock
d_timelock_1732 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_108
d_timelock_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_timelock_310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_1734 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptHash_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptHash_312
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_1736 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptSize_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1740 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1740 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1236 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1244
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1748 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_1752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1556 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1460
d_CertStateOf_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1564
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_1756 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1756 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_1760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
d_DCertsOf_1760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_1764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1496 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1416
d_DStateOf_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_1768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1200 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1208
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_1772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1536 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1448
d_GStateOf_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1544
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100]
d_GovProposalsOf_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes.GovVotesOf
d_GovVotesOf_1780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_GovVotesOf_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1784 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1788 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_1788 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_1792 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_1796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1516 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432
d_PStateOf_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1524
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_1800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1252 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1260
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_1804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1268 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1276
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1808 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1808 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_1812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1284 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1292
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_1816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1300 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1308
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1316 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1324
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_1824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3514 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_TxBodyOf_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_1828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3594 ->
  AgdaAny -> Integer
d_TxIdOf_1828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_1832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3418 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1836 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1836 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_1848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1848 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1852 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1854 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_1856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1856 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_1860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1860 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_1862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1862 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1864 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1864 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1866 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1866 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1868 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1868 ~v0 v1 = du_isMagmaMonomorphism_1868 v1
du_isMagmaMonomorphism_1868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1868 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1870 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1872 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1872 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1874 v0
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
d_isRelIsomorphism_1876 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1876 ~v0 v1 = du_isRelIsomorphism_1876 v1
du_isRelIsomorphism_1876 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1876 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1878 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1878 ~v0 v1 = du_isRelMonomorphism_1878 v1
du_isRelMonomorphism_1878 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1878 v0
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
d_surjective_1880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1880 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1882 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_1884 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1884 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_1888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1888 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_1890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1890 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1892 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1892 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1894 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1894 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1896 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1896 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1898 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1898 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1900 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1900 ~v0 v1 = du_isRelMonomorphism_1900 v1
du_isRelMonomorphism_1900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1900 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1902 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_1904 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1904 = erased
-- Ledger.Conway.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  ()
d_P1Script_1918 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1920 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParams.Emax
d_Emax_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_Emax_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a
d_a_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a0
d_a0_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.b
d_b_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdls
d_costmdls_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1952
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdlsAssoc_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepActivity_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.nopt
d_nopt_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.prices
d_prices_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.pv
d_pv_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_2010 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_2016 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_2018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2022 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2022 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d__'8746''737''7580''7504'__2024
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_446
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
                             (coe v3))))))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2026 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2026
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2028 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_2032
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_2034
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_2036
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_2038
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_2040
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_2042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_2044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_2046 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2048 v0
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
d_'8801''45'update_2050 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2050 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_Emax_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdls_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepActivity_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.fPools
d_fPools_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1442
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.pools
d_pools_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.retiring
d_retiring_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1432 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2134 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_CostModel_2136 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T
d_T_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_T_2138 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_THash_2140 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Datum_2144 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_278
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_248
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_234
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_236
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2158 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2160 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_ExUnits_2164 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_LangDepView_2168 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Language_2170 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_PlutusScript_2172 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny
d_PlutusV1_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny
d_PlutusV2_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny
d_PlutusV3_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Prices_2180 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Redeemer_2182 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_240
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_238
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_252
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2192 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2194 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2196 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.language
d_language_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny -> AgdaAny
d_language_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2200 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_244
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.net
d_net_2218 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.stake
d_stake_2220 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2224 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_CostModel_2226 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T
d_T_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_T_2228 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_THash_2230 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Datum_2234 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2250
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_448
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2254 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2256 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_ExUnits_2260 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2266
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_LangDepView_2268 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Language_2270 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2272 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_P1Script_2276 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_PlutusScript_2278 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny
d_PlutusV1_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny
d_PlutusV2_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny
d_PlutusV3_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Prices_2286 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Redeemer_2288 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Script_2290 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2298
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_454
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2302 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2304 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2306 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.getLanguage
d_getLanguage_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2308
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_436
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_330
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2312 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2314 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2316 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_414
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2318 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2320 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.language
d_language_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny -> AgdaAny
d_language_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108
d_p1s_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ps
d_ps_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132
d_ps_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_434
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_2336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2336 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2338 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.cost
d_cost_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1160 ->
  Integer
d_cost_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1174 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.margin
d_margin_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1160 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1176
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.owners
d_owners_2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1160 ->
  [Integer]
d_owners_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1172
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1160 ->
  Integer
d_pledge_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1178
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1160 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1180
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2374 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2376 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2378 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2384 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2388 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2392 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2396 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2404 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2404 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2408 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2412 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2416 v0
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
d_size_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2422 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2426 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2432 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2434 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2438 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2444 ~v0 = du_isMagmaIsomorphism_2444
du_isMagmaIsomorphism_2444 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2444 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2446 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2446 v2
du_isMagmaMonomorphism_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2452 v0
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
d_isRelIsomorphism_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2454 ~v0 ~v1 v2 = du_isRelIsomorphism_2454 v2
du_isRelIsomorphism_2454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2456 ~v0 ~v1 v2 = du_isRelMonomorphism_2456 v2
du_isRelMonomorphism_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2456 v0
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
d_surjective_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2460 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2462 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2466 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2470 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2472 ~v0 = du_isMagmaMonomorphism_2472
du_isMagmaMonomorphism_2472 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2472 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2476 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2478 ~v0 ~v1 v2 = du_isRelMonomorphism_2478 v2
du_isRelMonomorphism_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2480 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2482 = erased
-- Ledger.Conway.Foreign.HSStructures._.Tx.body
d_body_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.isValid
d_isValid_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Bool
d_isValid_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txAD
d_txAD_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Maybe Integer
d_txAD_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txsize
d_txsize_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_txsize_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.wits
d_wits_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe Integer
d_currentTreasury_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3500
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.mint
d_mint_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_mint_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.refInputs
d_refInputs_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [Integer]
d_reqSignerHashes_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe Integer
d_scriptIntegrityHash_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3506
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe Integer
d_txADhash_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
d_txCerts_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3482
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_txDonation_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3492
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txFee
d_txFee_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_txFee_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100]
d_txGovProposals_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3496
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_txGovVotes_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3494
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txId
d_txId_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_txId_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txIns
d_txIns_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe Integer
d_txNetworkId_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3498
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3486
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3624
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
d_scriptsP1_2538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3630
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txdats
d_txdats_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  [Integer]
d_txdats_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3626
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.vkSigs
d_vkSigs_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3622
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_2572 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_2572
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Convert'45'HSLanguage_20
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_2574 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_2574
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_DecEq'45'HSLanguage_22
-- Ledger.Conway.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_2578 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_2578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
-- Ledger.Conway.Foreign.HSStructures._.HSLanguage
d_HSLanguage_2580 = ()
-- Ledger.Conway.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_2582 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_2582 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_2596 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_2596
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Show'45'HSLanguage_24
-- Ledger.Conway.Foreign.HSStructures._.Transaction.Tag
d_Tag_2600 = ()
-- Ledger.Conway.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_2602 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__2630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__2632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__2632 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2634 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2636 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2638 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≥ᵉ_
d__'8805''7497'__2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2640 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_2642 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  Bool
d_'61''61''45'GovAction_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_956
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_938
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Bool
d_'61''61''45'GovProposal_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2650 ~v0 = du_'61''61''45'Set_2650
du_'61''61''45'Set_2650 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2650 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_926
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2652 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_2654 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_2658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Addr_2660 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_2664 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_2668 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_AuxiliaryData_2670 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_2672 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_2676 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_2686 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_2688 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_2690 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2690 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
d_DCertsOf_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_2696 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T
d_T_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_2700 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2702 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_2706 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isScript
d_Dec'45'isScript_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_2708 ~v0 = du_Dec'45'isScript_2708
du_Dec'45'isScript_2708 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_2708
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isSigned
d_Dec'45'isSigned_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_2710 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_2712 ~v0 = du_Dec'45'isVKey_2712
du_Dec'45'isVKey_2712 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_2712
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_2724 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_2726 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_2730 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2732 ~v0
  = du_DecEq'45'DrepThresholds_2732
du_DecEq'45'DrepThresholds_2732 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2732
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_2734 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2738 ~v0 = du_DecEq'45'GovActionType_2738
du_DecEq'45'GovActionType_2738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2738
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_920
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2740 ~v0 = du_DecEq'45'GovRole_2740
du_DecEq'45'GovRole_2740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2740
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1226
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_2744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1352
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_448
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_2754 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2758 ~v0 = du_DecEq'45'PParamGroup_2758
du_DecEq'45'PParamGroup_2758 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2758
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2762 ~v0
  = du_DecEq'45'PoolThresholds_2762
du_DecEq'45'PoolThresholds_2762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2762
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_2764 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_2766 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_2768 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_2770 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_2772 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2774 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2776 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2778 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2780 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2782 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_2784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1354
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-VRF
d_DecEq'45'VRF_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_2790 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2794 ~v0 = du_DecEq'45'Vote_2794
du_DecEq'45'Vote_2794 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2794
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1228
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_2796 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_2798 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_2804 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_2808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_2808 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_2810 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_GovActionData_2814 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_2816 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_GovActionOf_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_906
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_2820 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_2824 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_GovActionTypeOf_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_876
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_2828 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_2832 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100]
d_GovProposalsOf_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_2838 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_2840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_840 ->
  ()
d_GovRoleCredential_2840 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_2842 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_2846 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_2852 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVotesOf
d_GovVotesOf_2856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_GovVotesOf_2856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_2860 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_2864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_2864 ~v0
  = du_HasAttrSize'45'BootstrapAddr_2864
du_HasAttrSize'45'BootstrapAddr_2864 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_2864
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_2866 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_2870 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2870 ~v0 = du_HasCast'45'Acnt_2870
du_HasCast'45'Acnt_2870 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2870
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2872 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2872
du_HasCast'45'GovAction'45'Sigma_2872 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2872
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_916
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2874 ~v0 = du_HasCast'45'GovVote_2874
du_HasCast'45'GovVote_2874 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2874
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1332
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2876 ~v0
  = du_HasCast'45'HashProtected_2876
du_HasCast'45'HashProtected_2876 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1094
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2878 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2878
du_HasCast'45'HashProtected'45'MaybeScriptHash_2878 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2878
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1096
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3788
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_2882 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_2886 ~v0
  = du_HasCredential'45'RewardAddress_2886
du_HasCredential'45'RewardAddress_2886 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_2886
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_2888 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3534
d_HasDCerts'45'Tx_2892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3662
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_2894 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_2898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_2898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3674
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3610
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasFees-Tx
d_HasFees'45'Tx_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3660
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_2904 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovActionState_2908 ~v0
  = du_HasGovAction'45'GovActionState_2908
du_HasGovAction'45'GovActionState_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
du_HasGovAction'45'GovActionState_2908
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1220
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovProposal_2910 ~v0
  = du_HasGovAction'45'GovProposal_2910
du_HasGovAction'45'GovProposal_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
du_HasGovAction'45'GovProposal_2910
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1218
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_2912 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovAction_2916 ~v0
  = du_HasGovActionType'45'GovAction_2916
du_HasGovActionType'45'GovAction_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
du_HasGovActionType'45'GovAction_2916
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_914
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovActionState_2918 ~v0
  = du_HasGovActionType'45'GovActionState_2918
du_HasGovActionType'45'GovActionState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
du_HasGovActionType'45'GovActionState_2918
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1224
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovProposal_2920 ~v0
  = du_HasGovActionType'45'GovProposal_2920
du_HasGovActionType'45'GovProposal_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
du_HasGovActionType'45'GovProposal_2920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1222
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_2922 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals-Tx
d_HasGovProposals'45'Tx_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3554
d_HasGovProposals'45'Tx_2926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3664
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_2928 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156
d_HasGovVoter'45'GovVote_2932 ~v0 = du_HasGovVoter'45'GovVote_2932
du_HasGovVoter'45'GovVote_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156
du_HasGovVoter'45'GovVote_2932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1212
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes
d_HasGovVotes_2934 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes-Tx
d_HasGovVotes'45'Tx_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3574
d_HasGovVotes'45'Tx_2938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3666
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_2940 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_2944 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_2948 ~v0
  = du_HasNetworkId'45'BaseAddr_2948
du_HasNetworkId'45'BaseAddr_2948 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_2948
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_2950 ~v0
  = du_HasNetworkId'45'BootstrapAddr_2950
du_HasNetworkId'45'BootstrapAddr_2950 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_2950
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_2952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_2952 ~v0
  = du_HasNetworkId'45'RewardAddress_2952
du_HasNetworkId'45'RewardAddress_2952 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_2952
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_2954 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_2958 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196
d_HasPolicy'45'GovProposal_2962 ~v0
  = du_HasPolicy'45'GovProposal_2962
du_HasPolicy'45'GovProposal_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196
du_HasPolicy'45'GovProposal_2962
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1216
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_2964 ~v0 = du_HasReserves'45'Acnt_2964
du_HasReserves'45'Acnt_2964 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_2964
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_2966 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_2970 ~v0 = du_HasTreasury'45'Acnt_2970
du_HasTreasury'45'Acnt_2970 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_2970
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_2972 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_2976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3514
d_HasTxBody'45'Tx_2976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3658
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_2978 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3594
d_HasTxId'45'Tx_2982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3672
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_2984 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_2988 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176
d_HasVote'45'GovVote_2992 ~v0 = du_HasVote'45'GovVote_2992
du_HasVote'45'GovVote_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176
du_HasVote'45'GovVote_2992
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1214
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_2994 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_2998 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_3002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3670
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_3004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3668
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_3006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_3006 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_3008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_3014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2660
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_3018 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_3020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_3020 ~v0 = du_IsBootstrapAddr'63'_3020
du_IsBootstrapAddr'63'_3020 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_3020
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj
d_IsKeyHashObj_3024 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj?
d_IsKeyHashObj'63'_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_3026 ~v0 = du_IsKeyHashObj'63'_3026
du_IsKeyHashObj'63'_3026 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_3026
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3028 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3032 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3036 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ix_3040 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_3042 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_3046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_KeyPair_3046 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_3048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_LangDepView_3048 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Language
d_Language_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_3050 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_3052 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_3056 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_3058 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_3058 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_3060 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_3062 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_NeedsHash_3062 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Network
d_Network_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Network_3064 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_3068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_3068 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_3070 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_3070 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_3076 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_3078 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_3080 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_3082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_P1Script_3082 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_3084 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_3088 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.POSIXTimeRange
d_POSIXTimeRange_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_POSIXTimeRange_3090 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_3092 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_3094 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_3098 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_3102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_3104 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_3106 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV1_3110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_3112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV2_3112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV3_3114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3116 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_3118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_3120 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_3124 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_3126 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ProposedPPUpdates_3128 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_3130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_Quorum_3130 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_3132 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_3134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_RandomnessStabilisationWindow'7580'_3134 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RdmrPtr
d_RdmrPtr_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_3136 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_3138 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_3140 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_3144 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_3144 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_SKey_3148 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Script
d_Script_3152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_3152 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptAddr_3154 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBaseAddr_3156 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBootstrapAddr
d_ScriptBootstrapAddr_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBootstrapAddr_3158 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_3160 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_3164 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ser_3170 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_3174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_3174 ~v0 = du_Show'45'Credential_3174
du_Show'45'Credential_3174 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_3174 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_3176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_3176 ~v0
  = du_Show'45'Credential'215'Coin_3176
du_Show'45'Credential'215'Coin_3176 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_3176 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_3178 ~v0 = du_Show'45'DrepThresholds_3178
du_Show'45'DrepThresholds_3178 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_3178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_3180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_3180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_3182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3184 ~v0 = du_Show'45'GovRole_3184
du_Show'45'GovRole_3184 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3184
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_848
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_3188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_3190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_3192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_3192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_3194 ~v0 = du_Show'45'PoolThresholds_3194
du_Show'45'PoolThresholds_3194 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_3194
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_3196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_3198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_3198 ~v0 = du_Show'45'RewardAddress_3198
du_Show'45'RewardAddress_3198 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_3198
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_3200 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3202 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3204 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3206 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_3210 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_3212 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_3214 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_3216 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_StabilityWindow_3218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_StabilityWindow'7580'_3220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3222 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3224 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3226 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_3232 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_3240 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_3244 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_3248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3514 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_TxBodyOf_3248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_3250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxId_3250 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_3252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3594 ->
  AgdaAny -> AgdaAny
d_TxIdOf_3252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_3254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_3254 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_3256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_3256 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOutʰ
d_TxOut'688'_3258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_3258 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_3260 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_3264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_3264 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_3266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3418 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Update
d_Update_3268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Update_3268 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_3272 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_3274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_3274 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_3276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyAddr_3276 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_3278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBaseAddr_3278 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBootstrapAddr
d_VKeyBootstrapAddr_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBootstrapAddr_3280 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VRF
d_VRF_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VRF_3284 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value
d_Value_3286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_3286 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_3290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3290 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_VoteOf_3294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_3296 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_3298 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_3298 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3300 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3302 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_3304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_3304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1356
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_3306 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_3308 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_3312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin
d_coin_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_3314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_3316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3316 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3320 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_3322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_3324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_3326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_3328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_3328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_3330 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  AgdaAny
d_gaData_3332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_894
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_gaType_3334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getLanguage
d_getLanguage_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_3336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_436
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_3338 ~v0 = du_getScriptHash_3338
du_getScriptHash_3338 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_3338
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValue
d_getValue_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3340 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3676
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValueʰ
d_getValue'688'_3342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3342 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3692
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_3344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_3344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_3346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_3348
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3350 ~v0 = du_govVoterCredential_3350
du_govVoterCredential_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1440
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_330
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.inject
d_inject_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_3354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_3356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_3356 ~v0 = du_isBootstrapAddr_3356
du_isBootstrapAddr_3356 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_3356
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3358 ~v0 = du_isGovVoterDRep_3358
du_isGovVoterDRep_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1436
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_3360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_3360 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_3362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_3362 ~v0 = du_isKeyHashObj_3362
du_isKeyHashObj_3362 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_3362
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_3364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_3364 ~v0 = du_isKeyHashObj'7495'_3364
du_isKeyHashObj'7495'_3364 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_3364
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_3366 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3368 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_3370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3370 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_3372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3372 ~v0 = du_isP1Script'63'_3372
du_isP1Script'63'_3372 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_3372
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_414
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_3374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3374 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3376 ~v0 = du_isP2Script'63'_3376
du_isP2Script'63'_3376 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_428
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_3378 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_3380 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_3382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_3382 ~v0 = du_isScriptObj_3382
du_isScriptObj_3382 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_3382
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_3384 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_3386 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_3388 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_3390 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_3392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_3392 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.khs
d_khs_3394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_3394 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.language
d_language_3396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_language_3396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_3398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3774
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3404 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.netId
d_netId_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_3406 ~v0 = du_netId_3406
du_netId_3406 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_3406
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_3408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108
d_p1s_3408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_3410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_3410 ~v0 = du_paramsWF'45'elim_3410
du_paramsWF'45'elim_3410 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_3410 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_3412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_3412 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_3414 ~v0 = du_payCred_3414
du_payCred_3414 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_3414
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_3416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_3416 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.policies
d_policies_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny]
d_policies_3418 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_3420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_3420 ~v0 = du_positivePParams_3420
du_positivePParams_3420 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
du_positivePParams_3420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_3422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_3424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_3424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> ()
d_ppdWellFormed_3426 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_3428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_3428 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3430 ~v0 = du_proposedCC_3430
du_proposedCC_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1448
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ps
d_ps_3432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132
d_ps_3432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_3434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3434 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.refScripts
d_refScripts_3436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3436
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3716
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptOuts
d_scriptOuts_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3438 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3702
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_3440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284
d_scriptStructure_3440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sign
d_sign_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_3442 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1404
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.size
d_size_3444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_size_3444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_3446 ~v0 = du_stakeCred_3446
du_stakeCred_3446 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_3446
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_suc'7497'_3448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3452 ~v0 = du_toP1Script_3452
du_toP1Script_3452 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_3452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3454 ~v0 = du_toP2Script_3454
du_toP2Script_3454 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_3454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_434
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_3456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsScript
d_txInsScript_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_3458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3710
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsVKey
d_txInsVKey_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_3460
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3696
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txOutHash
d_txOutHash_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3462
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3682
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_txidBytes_3464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2658
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txscripts
d_txscripts_3466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3764
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_3468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2526
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3476 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3478 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ε
d_ε_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_ε_3480 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2544
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_3482 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_3484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1370
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_ℕtoEpoch_3486 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_3488 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_3500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_3502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008 ->
  AgdaAny
d_hash_3506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1016
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1014
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_3512 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_3512 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_3514 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3514 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_3516 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_3516 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_3520 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_3520 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_3522 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_3522 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_3524 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3524 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_3534 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_3534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_3536 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_3536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_3538 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_3538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_3540 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_3540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_3542 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_3542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_3544 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_3544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_3546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_3546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_3548 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_3548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_3550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_3552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  AgdaAny
d_gaData_3556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_894
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_gaType_3558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_action_3562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1146
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  AgdaAny
d_expiresIn_3564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1144
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  AgdaAny
d_prevAction_3566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1148
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1128 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040
d_votes_3570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1140
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovAction
d_'61''61''45'GovAction_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  Bool
d_'61''61''45'GovAction_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_956
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovActionData
d_'61''61''45'GovActionData_3592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_938
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovProposal
d_'61''61''45'GovProposal_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Bool
d_'61''61''45'GovProposal_3594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-Set
d_'61''61''45'Set_3596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3596 ~v0 = du_'61''61''45'Set_3596
du_'61''61''45'Set_3596 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3596 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_926
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Anchor
d_Anchor_3598 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DReps
d_DReps_3608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_3608 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DRepsOf
d_DRepsOf_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_3614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3614 ~v0 = du_DecEq'45'GovActionType_3614
du_DecEq'45'GovActionType_3614 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3614
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_920
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3616 ~v0 = du_DecEq'45'GovRole_3616
du_DecEq'45'GovRole_3616 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3616
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1226
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_3618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_3622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Vote
d_DecEq'45'Vote_3624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3624 ~v0 = du_DecEq'45'Vote_3624
du_DecEq'45'Vote_3624 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3624
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1228
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovAction
d_GovAction_3626 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionData
d_GovActionData_3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_GovActionData_3630 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionID
d_GovActionID_3632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_3632 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionOf
d_GovActionOf_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_GovActionOf_3634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_906
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionState
d_GovActionState_3636 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionType
d_GovActionType_3640 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionTypeOf
d_GovActionTypeOf_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_GovActionTypeOf_3642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_876
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal
d_GovProposal_3644 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRole
d_GovRole_3648 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRoleCredential
d_GovRoleCredential_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_840 ->
  ()
d_GovRoleCredential_3650 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote
d_GovVote_3652 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter
d_GovVoter_3656 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoterOf
d_GovVoterOf_3660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_3660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes
d_GovVotes_3662 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3666 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3666
du_HasCast'45'GovAction'45'Sigma_3666 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3666
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_916
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_3668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3668 ~v0 = du_HasCast'45'GovVote_3668
du_HasCast'45'GovVote_3668 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3668
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1332
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_3670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3670 ~v0
  = du_HasCast'45'HashProtected_3670
du_HasCast'45'HashProtected_3670 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1094
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3672 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3672
du_HasCast'45'HashProtected'45'MaybeScriptHash_3672 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3672
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1096
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps
d_HasDReps_3674 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction
d_HasGovAction_3678 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovActionState_3682 ~v0
  = du_HasGovAction'45'GovActionState_3682
du_HasGovAction'45'GovActionState_3682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
du_HasGovAction'45'GovActionState_3682
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1220
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
d_HasGovAction'45'GovProposal_3684 ~v0
  = du_HasGovAction'45'GovProposal_3684
du_HasGovAction'45'GovProposal_3684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900
du_HasGovAction'45'GovProposal_3684
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1218
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType
d_HasGovActionType_3686 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovAction_3690 ~v0
  = du_HasGovActionType'45'GovAction_3690
du_HasGovActionType'45'GovAction_3690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
du_HasGovActionType'45'GovAction_3690
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_914
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovActionState_3692 ~v0
  = du_HasGovActionType'45'GovActionState_3692
du_HasGovActionType'45'GovActionState_3692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
du_HasGovActionType'45'GovActionState_3692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1224
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
d_HasGovActionType'45'GovProposal_3694 ~v0
  = du_HasGovActionType'45'GovProposal_3694
du_HasGovActionType'45'GovProposal_3694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870
du_HasGovActionType'45'GovProposal_3694
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1222
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter
d_HasGovVoter_3696 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156
d_HasGovVoter'45'GovVote_3700 ~v0 = du_HasGovVoter'45'GovVote_3700
du_HasGovVoter'45'GovVote_3700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156
du_HasGovVoter'45'GovVote_3700
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1212
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy
d_HasPolicy_3702 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196
d_HasPolicy'45'GovProposal_3706 ~v0
  = du_HasPolicy'45'GovProposal_3706
du_HasPolicy'45'GovProposal_3706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196
du_HasPolicy'45'GovProposal_3706
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1216
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote
d_HasVote_3708 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_3712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176
d_HasVote'45'GovVote_3712 ~v0 = du_HasVote'45'GovVote_3712
du_HasVote'45'GovVote_3712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176
du_HasVote'45'GovVote_3712
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1214
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs
d_HasVoteDelegs_3714 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HashProtected
d_HashProtected_3718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_3718 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.NeedsHash
d_NeedsHash_3722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852 ->
  ()
d_NeedsHash_3722 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Policy
d_Policy_3728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3728 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.PolicyOf
d_PolicyOf_3730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-GovRole
d_Show'45'GovRole_3734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3734 ~v0 = du_Show'45'GovRole_3734
du_Show'45'GovRole_3734 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3734
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_848
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-VDeleg
d_Show'45'VDeleg_3736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VDeleg
d_VDeleg_3744 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Vote
d_Vote_3746 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegs
d_VoteDelegs_3748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3748 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegsOf
d_VoteDelegsOf_3750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteOf
d_VoteOf_3752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_VoteOf_3752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeDRepsOf
d_activeDRepsOf_3756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3756 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1484
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2662
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeInEpoch
d_activeInEpoch_3758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3758 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaData
d_gaData_3760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  AgdaAny
d_gaData_3760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_894
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaType
d_gaType_3762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_gaType_3762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.govVoterCredential
d_govVoterCredential_3764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3764 ~v0 = du_govVoterCredential_3764
du_govVoterCredential_3764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3764
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1440
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.isGovVoterDRep
d_isGovVoterDRep_3766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3766 ~v0 = du_isGovVoterDRep_3766
du_isGovVoterDRep_3766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3766
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1436
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.proposedCC
d_proposedCC_3770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3770 ~v0 = du_proposedCC_3770
du_proposedCC_3770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3770
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1448
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.action
d_action_3786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_action_3786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1114
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.anchor
d_anchor_3788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008
d_anchor_3788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.deposit
d_deposit_3790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Integer
d_deposit_3790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1120
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.policy
d_policy_3792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  Maybe AgdaAny
d_policy_3792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1118
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.prevAction
d_prevAction_3794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  AgdaAny
d_prevAction_3794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1116
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.returnAddr
d_returnAddr_3796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1122
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.anchor
d_anchor_3808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1008
d_anchor_3808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1036
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.gid
d_gid_3810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1030
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.vote
d_vote_3812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_vote_3812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1034
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.voter
d_voter_3814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_voter_3814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1032
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvCredential
d_gvCredential_3818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  AgdaAny
d_gvCredential_3818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1004
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvRole
d_gvRole_3820 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_840
d_gvRole_3820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1002
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvCC
d_gvCC_3824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1048
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvDRep
d_gvDRep_3826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1050
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvSPO
d_gvSPO_3828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1040 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1052
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps.DRepsOf
d_DRepsOf_3832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1458 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction.GovActionOf
d_GovActionOf_3836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_900 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_886
d_GovActionOf_3836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_906
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_870 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_852
d_GovActionTypeOf_3840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_876
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1156 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_996
d_GovVoterOf_3844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy.PolicyOf
d_PolicyOf_3848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1196 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote.VoteOf
d_VoteOf_3852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1176 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_988
d_VoteOf_3852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1184
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1070 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1078
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_3876 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_3876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_3878 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_3878 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_3880 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_3880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_3882 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_3882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_3884 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_3884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_3886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_3886 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_3888 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_3888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_3892 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_3892 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_3896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_3896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_3900 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_3900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_3904 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
d_DCertsOf_3904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_3908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100]
d_GovProposalsOf_3908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes.GovVotesOf
d_GovVotesOf_3912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_GovVotesOf_3912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_3916 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_3916 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_3920 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_3920 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_3924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_3924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_3928 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_3928 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3514 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_TxBodyOf_3932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_3936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3594 ->
  AgdaAny -> AgdaAny
d_TxIdOf_3936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3418 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_3944 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_3944 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_3956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3956 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3962 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_3964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3964 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_3968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3968 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_3970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3972 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3972 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3974 ~v0 = du_isMagmaIsomorphism_3974
du_isMagmaIsomorphism_3974 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3974 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3976 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3976 v2
du_isMagmaMonomorphism_3976 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3976 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3978 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3980 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3982 v0
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
d_isRelIsomorphism_3984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3984 ~v0 ~v1 v2 = du_isRelIsomorphism_3984 v2
du_isRelIsomorphism_3984 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3984 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3986 ~v0 ~v1 v2 = du_isRelMonomorphism_3986 v2
du_isRelMonomorphism_3986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3986 v0
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
d_surjective_3988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3988 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3990 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_3992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3992 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_3996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3996 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_3998 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3998 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4000 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4000 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4002 ~v0 = du_isMagmaMonomorphism_4002
du_isMagmaMonomorphism_4002 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4002 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4004 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4004 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_4006 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4006 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_4008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4008 ~v0 ~v1 v2 = du_isRelMonomorphism_4008 v2
du_isRelMonomorphism_4008 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4008 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_4010 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4010 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_4012 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4012 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_4016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_4020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_4020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_4022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_4022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_4024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_4024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_4026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  ()
d_P1Script_4026 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_4028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4028 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_4044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_Emax_4044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_4046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_4046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_4048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_4050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_4050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_4052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_4052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_4054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_4054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_4056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_4056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_4058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_4058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_4060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_4060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_4062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdlsAssoc_4062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_4064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_drepActivity_4064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_4066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_4066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_4068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_4068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_4070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_4070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_4072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_4072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_4074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_4074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_4076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxBlockExUnits_4076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_4078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_4078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_4080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_4080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_4082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_4082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_4084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_4086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_4088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxTxExUnits_4088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_4090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_4090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_4092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_4092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_4096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_4096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_4098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_4100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_4100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_4102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_4102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_4104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_4104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_4106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_prices_4106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_4108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_4110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_4112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_4114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_4118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_4118 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_4120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_4120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_4122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_4124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_4124 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_4126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_4126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__4130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__4130 ~v0 = du__'63''8599'__4130
du__'63''8599'__4130 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__4130 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__4132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d__'8746''737''7580''7504'__4132 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_446
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_4134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_4134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1786
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_4136 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_4140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_4140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2056
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_4142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_4142 ~v0 = du_modifiedUpdateGroups_4142
du_modifiedUpdateGroups_4142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_4142
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_4144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_4144 ~v0 = du_modifiesEconomicGroup_4144
du_modifiesEconomicGroup_4144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesEconomicGroup_4144
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_4146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_4146 ~v0
  = du_modifiesGovernanceGroup_4146
du_modifiesGovernanceGroup_4146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesGovernanceGroup_4146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_4148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_4148 ~v0 = du_modifiesNetworkGroup_4148
du_modifiesNetworkGroup_4148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesNetworkGroup_4148
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_4150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_4150 ~v0 = du_modifiesSecurityGroup_4150
du_modifiesSecurityGroup_4150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesSecurityGroup_4150
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_4152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_4152 ~v0 = du_modifiesTechnicalGroup_4152
du_modifiesTechnicalGroup_4152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesTechnicalGroup_4152
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_4154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_4154 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_4156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_4156 v0
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
d_'8801''45'update_4158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_4158 ~v0 = du_'8801''45'update_4158
du_'8801''45'update_4158 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_4158 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_4162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_Emax_4162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_4164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_4164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_4166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_4168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_4168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_4170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_4170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_4172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_4172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_4174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_4174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_4176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_4176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_4178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440
d_costmdls_4178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_4180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_drepActivity_4180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_4182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_4182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_4184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_4184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_4186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_4186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_4188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_4188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_4190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_4190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_4192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxBlockExUnits_4192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_4194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_4194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_4196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_4196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_4198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_4198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_4200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_4202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_4204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxTxExUnits_4204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_4206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_4206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_4208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_4208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_4212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_4212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_4214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_4216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_4216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_4218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_4218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_4220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_4220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_4222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_prices_4222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_4224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_4226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_4228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_4230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≥ᵉ_
d__'8805''7497'__4234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4234 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_4236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_CostModel_4236 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_4238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_T_4238 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_4240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_THash_4240 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_4242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_4244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Datum_4244 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_278
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_4248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_248
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_4250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_234
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_236
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_4256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_4258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4258 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_4260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4260 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_4264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_ExUnits_4264 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_4268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_LangDepView_4268 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_4270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Language_4270 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_4272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_PlutusScript_4272 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_4274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny
d_PlutusV1_4274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_4276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny
d_PlutusV2_4276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_4278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny
d_PlutusV3_4278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_4280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Prices_4280 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_4282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  ()
d_Redeemer_4282 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_4284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_240
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_4286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_4288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_238
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_4290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_252
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_4292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4292 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_4294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4294 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_4296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4296 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_4298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny -> AgdaAny
d_language_4298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_4300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4300 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_244
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_4306 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_4306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_4308 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_4308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_4310 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_4310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_4312 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_4312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_4314 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_4314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_4318 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_4318 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_4320 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4320 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≥ᵉ_
d__'8805''7497'__4324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4324 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_4326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_CostModel_4326 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_4328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_T_4328 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_4330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_THash_4330 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_4332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_4334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Datum_4334 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_4336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_4336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_4340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_4342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_4348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_4350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_4350 ~v0
  = du_DecEq'45'LanguageCostModels_4350
du_DecEq'45'LanguageCostModels_4350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_4350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_448
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_4352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_4352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_4354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4354 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_4356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4356 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_4360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_ExUnits_4360 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_4362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_4362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_4366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_4366 ~v0 = du_Hashable'45'Script_4366
du_Hashable'45'Script_4366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_4366
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_408
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_4368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_LangDepView_4368 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_4370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Language_4370 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_4372 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_4376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_P1Script_4376 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_4378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_PlutusScript_4378 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_4380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny
d_PlutusV1_4380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_4382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny
d_PlutusV2_4382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_4384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny
d_PlutusV3_4384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_4386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Prices_4386 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_4388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Redeemer_4388 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_4390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  ()
d_Script_4390 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_4392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_4394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_4396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4398 ~v0
  = du_Show'45'LanguageCostModels_4398
du_Show'45'LanguageCostModels_4398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_4398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_454
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_4400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_4402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4402 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_4404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4404 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_4406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4406 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_208
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.getLanguage
d_getLanguage_4408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_4408 ~v0 = du_getLanguage_4408
du_getLanguage_4408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_4408
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_436
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_4410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_330
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_4412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4412 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_4414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4414 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_4416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4416 ~v0 = du_isP1Script'63'_4416
du_isP1Script'63'_4416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4416 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_414
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_4418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4418 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_4420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4420 ~v0 = du_isP2Script'63'_4420
du_isP2Script'63'_4420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4420 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_4422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny -> AgdaAny
d_language_4422 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_4424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_4428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_108
d_p1s_4428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_4430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_132
d_ps_4430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_4432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4432 ~v0 = du_toP1Script_4432
du_toP1Script_4432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_422
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4434 ~v0 = du_toP2Script_4434
du_toP2Script_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_434
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_4436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4436 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_4438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4438 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_284 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_332
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_4444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_440 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__4448 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__4448 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__4450 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__4450 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__4452 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__4452 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_4454 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_4454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_4456 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_4456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_4458 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_4462 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_4466 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_4470 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_4470 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4472 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_4474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4474 ~v0 = du_addValue_4474
du_addValue_4474 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_4474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_4476 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_4476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_4478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4478 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4480 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_4482 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4482 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_4484 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_4484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_4486 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4486 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_4488 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_4488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_4490 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4490 v0
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
d_size_4492 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_4492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_4494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4494 ~v0 = du_sum'7515'_4494
du_sum'7515'_4494 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_4494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_4496 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_4496 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_4500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4500 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_4504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4504 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_4506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4506 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_4508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4508 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_4512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4512 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_4514 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4514 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4516 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4516 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_4518 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_4518 ~v0 = du_isMagmaIsomorphism_4518
du_isMagmaIsomorphism_4518 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_4518 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4520 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4520 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_4520 v2
du_isMagmaMonomorphism_4520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4520 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4522 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4522 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_4524 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_4524 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_4526 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4526 v0
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
d_isRelIsomorphism_4528 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_4528 ~v0 ~v1 v2 = du_isRelIsomorphism_4528 v2
du_isRelIsomorphism_4528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_4528 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_4530 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4530 ~v0 ~v1 v2 = du_isRelMonomorphism_4530 v2
du_isRelMonomorphism_4530 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4530 v0
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
d_surjective_4532 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_4532 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_4534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4534 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_4536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4536 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_4540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4540 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_4542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4542 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4544 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4544 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4546 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4546 ~v0 = du_isMagmaMonomorphism_4546
du_isMagmaMonomorphism_4546 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4546 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4548 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4548 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_4550 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4550 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_4552 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4552 ~v0 ~v1 v2 = du_isRelMonomorphism_4552 v2
du_isRelMonomorphism_4552 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4552 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_4554 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4554 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_4556 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4556 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.body
d_body_4560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434
d_body_4560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3646
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_4562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Bool
d_isValid_4562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3652
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txAD
d_txAD_4564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Maybe AgdaAny
d_txAD_4564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3654
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txsize
d_txsize_4566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  Integer
d_txsize_4566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3650
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.wits
d_wits_4568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3634 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612
d_wits_4568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3648
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_4572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_4572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_4574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe Integer
d_currentTreasury_4574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3500
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_4576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  AgdaAny
d_mint_4576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.refInputs
d_refInputs_4578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_4578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3474
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.reqSignerHashes
d_reqSignerHashes_4580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [AgdaAny]
d_reqSignerHashes_4580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_4582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe AgdaAny
d_scriptIntegrityHash_4582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3506
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_4584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe AgdaAny
d_txADhash_4584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_4586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1352]
d_txCerts_4586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3482
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_4588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_txDonation_4588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3492
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_4590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Integer
d_txFee_4590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3484
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_4592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1100]
d_txGovProposals_4592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3496
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_4594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1020]
d_txGovVotes_4594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3494
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_4596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  AgdaAny
d_txId_4596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3480
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_4598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_4598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3472
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_4600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  Maybe AgdaAny
d_txNetworkId_4600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3498
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_4602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3478
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_4604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3488
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_4606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_4606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3486
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_4610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_4610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3624
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_4612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  [AgdaAny]
d_scriptsP1_4612 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3630
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txdats
d_txdats_4614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  [AgdaAny]
d_txdats_4614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3626
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_4616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_4616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3628
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_4618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3612 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_4618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3622
      (coe v0)
