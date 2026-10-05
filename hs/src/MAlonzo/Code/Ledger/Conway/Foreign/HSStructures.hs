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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._+ᵉ'_
d__'43''7497'''__12 :: Integer -> Integer -> Integer
d__'43''7497'''__12
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._∙_
d__'8729'__14 :: Integer -> Integer -> Integer
d__'8729'__14
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470 ->
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
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  Bool
d_'61''61''45'GovAction_36
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_966
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_38 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_948
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_40 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Bool
d_'61''61''45'GovProposal_40
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1350
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_42 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_936
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_76 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_458 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv
d_CertEnv_88 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertState
d_CertState_92 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertStateOf
d_CertStateOf_96 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1566 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470
d_CertStateOf_96 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1574
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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362]
d_DCertsOf_110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DReps
d_DReps_122 :: ()
d_DReps_122 = erased
-- Ledger.Conway.Foreign.HSStructures._.DRepsOf
d_DRepsOf_124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState
d_DState_126 = ()
-- Ledger.Conway.Foreign.HSStructures._.DStateOf
d_DStateOf_130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1506 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1426
d_DStateOf_130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1514
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Datum
d_Datum_138 :: ()
d_Datum_138 = erased
-- Ledger.Conway.Foreign.HSStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_140 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_110 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_168
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_152 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_154 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_156 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1242
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_158 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_160 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_162 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_164 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_166 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1382
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_168 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1226
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_172 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_174 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_176 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_176
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_930
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_178 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_178
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1236
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_180 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_180
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1244
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_182 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_182
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_DecEq'45'HSTimelock_320
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_184 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_184
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_186 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_188 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_188
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_190
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_450
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_192
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_194 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_196 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_196
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_198 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_590
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_200 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_588
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_586
-- Ledger.Conway.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_206
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_208 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_214 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_214
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1380
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_216
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_218 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_218
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_124
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
            (coe v0))
         (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1364
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_230 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_230
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1506
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_232 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_232
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-VRF
d_DecEq'45'VRF_234 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_234
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_236 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_236
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_238
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1238
-- Ledger.Conway.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_240 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_240
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1210 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_252 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2520
d_HSAbstractFunctions_256
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSAbstractFunctions_3164
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Conway.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_258
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
-- Ledger.Conway.Foreign.HSStructures._.Epoch
d_Epoch_262 :: ()
d_Epoch_262 = erased
-- Ledger.Conway.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_264 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_264
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ExUnits
d_ExUnits_266 :: ()
d_ExUnits_266 = erased
-- Ledger.Conway.Foreign.HSStructures._.GState
d_GState_274 = ()
-- Ledger.Conway.Foreign.HSStructures._.GStateOf
d_GStateOf_278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1546 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1458
d_GStateOf_278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1554
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction
d_GovAction_280 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionData
d_GovActionData_284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_GovActionData_284 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionID
d_GovActionID_288 :: ()
d_GovActionID_288 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionOf
d_GovActionOf_290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_GovActionOf_290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_916
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState
d_GovActionState_292 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionType
d_GovActionType_296 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_GovActionTypeOf_298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_886
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams
d_GovParams_300 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposal
d_GovProposal_304 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110]
d_GovProposalsOf_308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovRole
d_GovRole_310 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_850 ->
  ()
d_GovRoleCredential_312 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovVote
d_GovVote_314 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoter
d_GovVoter_318 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovVotes
d_GovVotes_324 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVotesOf
d_GovVotesOf_328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030]
d_GovVotesOf_328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_HSP1ScriptStructure_332
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP1ScriptStructure_322
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_HSP2ScriptStructure_334
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP2ScriptStructure_344
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript
d_HSPlutusScript_336 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSScriptStructure
d_HSScriptStructure_340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286
d_HSScriptStructure_340
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_374
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1246
d_HasCCHotKeys'45'CertState_356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1610
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1246
d_HasCCHotKeys'45'GState_358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1598
-- Ledger.Conway.Foreign.HSStructures._.HasCCMaxTermLength
d_HasCCMaxTermLength_360 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCast-Acnt
d_HasCast'45'Acnt_364 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_364
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_206
-- Ledger.Conway.Foreign.HSStructures._.HasCast-CertEnv
d_HasCast'45'CertEnv_366 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_366
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1626
-- Ledger.Conway.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1634
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_370 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_370
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1628
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_372 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_372
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1636
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_374 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_374
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1632
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_376 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_926
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_378 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1342
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_380 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1104
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_382 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1106
-- Ledger.Conway.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_384 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1630
-- Ledger.Conway.Foreign.HSStructures._.HasCertState
d_HasCertState_386 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCoin-CertState
d_HasCoin'45'CertState_390 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_390
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1624
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_392 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_392
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3808
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
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3554
d_HasDCerts'45'Tx_404
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3682
-- Ledger.Conway.Foreign.HSStructures._.HasDReps
d_HasDReps_406 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468
d_HasDReps'45'CertState_410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1608
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468
d_HasDReps'45'GState_412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1596
-- Ledger.Conway.Foreign.HSStructures._.HasDState
d_HasDState_414 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1506
d_HasDState'45'CertState_418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1600
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits
d_HasDeposits_420 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_424 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3694
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_426 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3630
-- Ledger.Conway.Foreign.HSStructures._.HasFees-Tx
d_HasFees'45'Tx_428 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
d_HasFees'45'Tx_428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3680
-- Ledger.Conway.Foreign.HSStructures._.HasGState
d_HasGState_430 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1546
d_HasGState'45'CertState_434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1604
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction
d_HasGovAction_436 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovActionState_440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1230
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovProposal_442
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1228
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_444 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovAction_448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_924
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovActionState_450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1234
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovProposal_452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1232
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_454 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3574
d_HasGovProposals'45'Tx_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3684
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_460 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166
d_HasGovVoter'45'GovVote_464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1222
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes
d_HasGovVotes_466 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes-Tx
d_HasGovVotes'45'Tx_470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3594
d_HasGovVotes'45'Tx_470
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3686
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
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438
d_HasPParams'45'CertEnv_490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1582
-- Ledger.Conway.Foreign.HSStructures._.HasPState
d_HasPState_492 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1526
d_HasPState'45'CertState_496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1602
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy
d_HasPolicy_498 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206
d_HasPolicy'45'GovProposal_502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1226
-- Ledger.Conway.Foreign.HSStructures._.HasPools
d_HasPools_504 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1262
d_HasPools'45'CertState_508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1612
-- Ledger.Conway.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1262
d_HasPools'45'PState_510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1592
-- Ledger.Conway.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_512 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_204
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring
d_HasRetiring_514 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1278
d_HasRetiring'45'PState_518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1594
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_520 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards
d_HasRewards_524 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1294
d_HasRewards'45'CertState_528
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1606
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1294
d_HasRewards'45'DState_530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1590
-- Ledger.Conway.Foreign.HSStructures._.HasStake
d_HasStake_532 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_536 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1326
d_HasStakeDelegs'45'CertState_540
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1616
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1326
d_HasStakeDelegs'45'DState_542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1588
-- Ledger.Conway.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_544 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody
d_HasTxBody_546 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3534
d_HasTxBody'45'Tx_550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3678
-- Ledger.Conway.Foreign.HSStructures._.HasTxId
d_HasTxId_552 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3614
d_HasTxId'45'Tx_556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3692
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO
d_HasUTxO_558 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote
d_HasVote_562 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186
d_HasVote'45'GovVote_566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1224
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_568 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080
d_HasVoteDelegs'45'CertState_572
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1614
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080
d_HasVoteDelegs'45'DState_574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1586
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_576 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_580 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'CertEnv_580
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1584
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_582 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3690
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_584 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3688
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
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_592 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_592
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_594 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_594
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_410
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_596 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_596
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2680
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.HsGovParams
d_HsGovParams_598 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474
d_HsGovParams_598
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_644
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24)
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
-- Ledger.Conway.Foreign.HSStructures._.MaxKESEvoᶜ
d_MaxKESEvo'7580'_640 :: Integer
d_MaxKESEvo'7580'_640
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_642 :: Integer
d_MaxLovelaceSupply'7580'_642
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_644 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_646 :: ()
d_MemoryEstimate_646 = erased
-- Ledger.Conway.Foreign.HSStructures._.NeedsHash
d_NeedsHash_650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_NeedsHash_650 = erased
-- Ledger.Conway.Foreign.HSStructures._.Network
d_Network_652 :: ()
d_Network_652 = erased
-- Ledger.Conway.Foreign.HSStructures._.NetworkId
d_NetworkId_656 :: Integer
d_NetworkId_656
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_658 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_658 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_664 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_664
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_666 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_666
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_668 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_668
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_670 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_670
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.P1Script
d_P1Script_672 :: ()
d_P1Script_672 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure
d_P1ScriptStructure_674 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusScript
d_PlutusScript_678 :: ()
d_PlutusScript_678 = erased
-- Ledger.Conway.Foreign.HSStructures._.POSIXTimeRange
d_POSIXTimeRange_684 :: ()
d_POSIXTimeRange_684 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamGroup
d_PParamGroup_686 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParams
d_PParams_688 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff
d_PParamsDiff_692 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsOf
d_PParamsOf_696 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.UpdateT
d_UpdateT_698 :: ()
d_UpdateT_698 = erased
-- Ledger.Conway.Foreign.HSStructures._.PState
d_PState_700 = ()
-- Ledger.Conway.Foreign.HSStructures._.PStateOf
d_PStateOf_704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1526 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1442
d_PStateOf_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1534
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure
d_PlutusStructure_706 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusV1
d_PlutusV1_710 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_710
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV2
d_PlutusV2_712 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_712
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV3
d_PlutusV3_714 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_714
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Policy
d_Policy_716 :: ()
d_Policy_716 = erased
-- Ledger.Conway.Foreign.HSStructures._.PolicyOf
d_PolicyOf_718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolEnv
d_PoolEnv_722 :: ()
d_PoolEnv_722 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_724 = ()
-- Ledger.Conway.Foreign.HSStructures._.Pools
d_Pools_728 :: ()
d_Pools_728 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolsOf
d_PoolsOf_730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1262 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1270
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_732 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_732
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Prices
d_Prices_734 :: ()
d_Prices_734 = erased
-- Ledger.Conway.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_736 :: ()
d_ProposedPPUpdates_736 = erased
-- Ledger.Conway.Foreign.HSStructures._.Quorum
d_Quorum_738 :: Integer
d_Quorum_738
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_740 :: Integer
d_RandomnessStabilisationWindow_740
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_742 :: Integer
d_RandomnessStabilisationWindow'7580'_742
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RdmrPtr
d_RdmrPtr_744 :: ()
d_RdmrPtr_744 = erased
-- Ledger.Conway.Foreign.HSStructures._.Redeemer
d_Redeemer_746 :: ()
d_Redeemer_746 = erased
-- Ledger.Conway.Foreign.HSStructures._.Retiring
d_Retiring_760 :: ()
d_Retiring_760 = erased
-- Ledger.Conway.Foreign.HSStructures._.RetiringOf
d_RetiringOf_762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1278 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1286
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress
d_RewardAddress_764 = ()
-- Ledger.Conway.Foreign.HSStructures._.RewardAddressOf
d_RewardAddressOf_768 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_768 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Rewards
d_Rewards_770 :: ()
d_Rewards_770 = erased
-- Ledger.Conway.Foreign.HSStructures._.RewardsOf
d_RewardsOf_772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1302
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.SKey
d_SKey_776 :: ()
d_SKey_776 = erased
-- Ledger.Conway.Foreign.HSStructures._.Script
d_Script_780 :: ()
d_Script_780 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptAddr
d_ScriptAddr_782 :: ()
d_ScriptAddr_782 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBaseAddr
d_ScriptBaseAddr_784 :: ()
d_ScriptBaseAddr_784 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_786 :: ()
d_ScriptBootstrapAddr_786 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptHash
d_ScriptHash_788 :: ()
d_ScriptHash_788 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_792 = ()
-- Ledger.Conway.Foreign.HSStructures._.Ser
d_Ser_798 :: ()
d_Ser_798 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_800 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_800
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_802 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_802 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_804 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_804 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_806 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_808 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_808
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_810 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_810
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_812 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_812
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_858
-- Ledger.Conway.Foreign.HSStructures._.Show-Language
d_Show'45'Language_814 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_814
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_816 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_816
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_456
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Network
d_Show'45'Network_818 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_818
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_820 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_820
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_596
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_822 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_822
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_594
-- Ledger.Conway.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_824 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_824
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_826 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_826
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_828 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_828
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_830 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_830
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_832 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_832
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_834 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_834
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_836 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_836
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1344
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Sig
d_Sig_838 :: ()
d_Sig_838 = erased
-- Ledger.Conway.Foreign.HSStructures._.Slot
d_Slot_840 :: ()
d_Slot_840 = erased
-- Ledger.Conway.Foreign.HSStructures._.SlotLengthᶜ
d_SlotLength'7580'_842 :: Integer
d_SlotLength'7580'_842
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_844 :: Integer
d_SlotsPerEpoch'7580'_844
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_846 :: Integer
d_SlotsPerKESPeriod'7580'_846
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Slotʳ
d_Slot'691'_848 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_848
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_850 :: Integer
d_StabilityWindow_850
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_852 :: Integer
d_StabilityWindow'7580'_852
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Stake
d_Stake_854 :: ()
d_Stake_854 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_856 :: ()
d_StakeDelegs_856 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_858 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1326 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1334
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakeOf
d_StakeOf_860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1310 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1318
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_862 = ()
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_866 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_866
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_868 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_868
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_870 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_870
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_872 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_872
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.Timelock
d_Timelock_876 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_878 = ()
-- Ledger.Conway.Foreign.HSStructures._.Tx
d_Tx_886 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBody
d_TxBody_890 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3534 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_TxBodyOf_894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxId
d_TxId_896 :: ()
d_TxId_896 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxIdOf
d_TxIdOf_898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3614 ->
  AgdaAny -> Integer
d_TxIdOf_898 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3622
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxIn
d_TxIn_900 :: ()
d_TxIn_900 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOut
d_TxOut_902 :: ()
d_TxOut_902 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOutʰ
d_TxOut'688'_904 :: ()
d_TxOut'688'_904 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_906 = ()
-- Ledger.Conway.Foreign.HSStructures._.UTxO
d_UTxO_910 :: ()
d_UTxO_910 = erased
-- Ledger.Conway.Foreign.HSStructures._.UTxOOf
d_UTxOOf_912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3438 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Update
d_Update_914 :: ()
d_Update_914 = erased
-- Ledger.Conway.Foreign.HSStructures._.VDeleg
d_VDeleg_918 = ()
-- Ledger.Conway.Foreign.HSStructures._.VKey
d_VKey_920 :: ()
d_VKey_920 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_922 :: ()
d_VKeyAddr_922 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_924 :: ()
d_VKeyBaseAddr_924 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_926 :: ()
d_VKeyBootstrapAddr_926 = erased
-- Ledger.Conway.Foreign.HSStructures._.VRF
d_VRF_930 :: ()
d_VRF_930 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value
d_Value_932 :: ()
d_Value_932 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_934 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_934
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_936 :: ()
d_VoteDelegs_936 = erased
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.VoteOf
d_VoteOf_940 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_VoteOf_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Withdrawals
d_Withdrawals_942 :: ()
d_Withdrawals_942 = erased
-- Ledger.Conway.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_944 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_944 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_946 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_946
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1494
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_948 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_948 = erased
-- Ledger.Conway.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_950 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_950
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Conway.Foreign.HSStructures._.addEpoch
d_addEpoch_952 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_952
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addSlot
d_addSlot_954 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_954
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addValue
d_addValue_956 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_956
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.applyUpdate
d_applyUpdate_958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_958
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.coin
d_coin_962 :: Integer -> Integer
d_coin_962
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_964 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_964 = erased
-- Ledger.Conway.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_966
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_968 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_968 = erased
-- Ledger.Conway.Foreign.HSStructures._.cryptoStructure
d_cryptoStructure_970 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_970
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_36
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.cwitness
d_cwitness_972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1384
-- Ledger.Conway.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_980 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_980
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epoch
d_epoch_982 :: Integer -> Integer
d_epoch_982
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epochStructure
d_epochStructure_984 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_984
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_382
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Conway.Foreign.HSStructures._.evalTimelock
d_evalTimelock_998 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.firstSlot
d_firstSlot_1000 :: Integer -> Integer
d_firstSlot_1000
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.gaData
d_gaData_1002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  AgdaAny
d_gaData_1002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_904
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.gaType
d_gaType_1004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_gaType_1004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_902
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.getLanguage
d_getLanguage_1006 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_getLanguage_1006
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_438
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.getScriptHash
d_getScriptHash_1008 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_1008
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Foreign.HSStructures._.getValue
d_getValue_1010 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1010
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3696
-- Ledger.Conway.Foreign.HSStructures._.getValueʰ
d_getValue'688'_1012 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1012
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3712
-- Ledger.Conway.Foreign.HSStructures._.globalConstants
d_globalConstants_1014 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_1014
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Conway.Foreign.HSStructures._.govParams
d_govParams_1016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474
d_govParams_1016
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_644
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.govStructure
d_govStructure_1018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_1018
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_1020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1020
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1450
-- Ledger.Conway.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1022 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1022
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.inject
d_inject_1024 :: Integer -> Integer
d_inject_1024
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1026 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_1026
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1028
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1446
-- Ledger.Conway.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1030 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1030 = erased
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1032 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1032
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1034 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1034
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1036 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1036 = erased
-- Ledger.Conway.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1038 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1038 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script
d_isP1Script_1040 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1040 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1042 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1042
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_416
-- Ledger.Conway.Foreign.HSStructures._.isP2Script
d_isP2Script_1044 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1044 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1046 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_430
-- Ledger.Conway.Foreign.HSStructures._.isPoolRegistered
d_isPoolRegistered_1048 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1170
d_isPoolRegistered_1048
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1720
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.isScript
d_isScript_1050 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1052 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1052 = erased
-- Ledger.Conway.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1054 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1054
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1056 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_1056 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned
d_isSigned_1058 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1058 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1060 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1060 = erased
-- Ledger.Conway.Foreign.HSStructures._.isVKey
d_isVKey_1062 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1064 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1064 = erased
-- Ledger.Conway.Foreign.HSStructures._.khs
d_khs_1066 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1066
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.language
d_language_1068 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_language_1068
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1072 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1072
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3794
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.monoid
d_monoid_1076 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1076
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.netId
d_netId_1078 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1078
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Foreign.HSStructures._.p1s
d_p1s_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_p1s_1080
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1082 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_564
      v2
-- Ledger.Conway.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  ()
d_paramsWellFormed_1084 = erased
-- Ledger.Conway.Foreign.HSStructures._.payCred
d_payCred_1086 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1086
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Foreign.HSStructures._.pkk
d_pkk_1088 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1088
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.policies
d_policies_1090 :: Integer -> [Integer]
d_policies_1090
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.positivePParams
d_positivePParams_1092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  [Integer]
d_positivePParams_1092
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_474
-- Ledger.Conway.Foreign.HSStructures._.ppUpd
d_ppUpd_1094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440
d_ppUpd_1094
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1096
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  ()
d_ppdWellFormed_1098 = erased
-- Ledger.Conway.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1100 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1100
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.proposedCC
d_proposedCC_1102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1458
-- Ledger.Conway.Foreign.HSStructures._.ps
d_ps_1104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_ps_1104
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1106 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1106
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.refScripts
d_refScripts_1108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1108
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3736
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1426 ->
  Integer
d_rewardsBalance_1118
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1618
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.scriptOuts
d_scriptOuts_1120 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1120
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3722
-- Ledger.Conway.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286
d_scriptStructure_1122
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_374
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.sign
d_sign_1124 :: Integer -> Integer -> Integer
d_sign_1124
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.size
d_size_1126 :: Integer -> Integer
d_size_1126
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.slotsFromDuration
d_slotsFromDuration_1128 :: Integer -> Integer
d_slotsFromDuration_1128
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.stakeCred
d_stakeCred_1130 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1130
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1132 :: Integer -> Integer
d_suc'7497'_1132
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1134 :: [Integer] -> Integer
d_sum'7515'_1134
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.toP1Script
d_toP1Script_1136 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
d_toP1Script_1136
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_424
-- Ledger.Conway.Foreign.HSStructures._.toP2Script
d_toP2Script_1138 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
d_toP2Script_1138
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_436
-- Ledger.Conway.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1140 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Conway.Foreign.HSStructures._.txInsScript
d_txInsScript_1142 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1142
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3730
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txInsVKey
d_txInsVKey_1144 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3716
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txOutHash
d_txOutHash_1146 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1146
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3702
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txidBytes
d_txidBytes_1148 :: Integer -> Integer
d_txidBytes_1148 v0 = coe v0
-- Ledger.Conway.Foreign.HSStructures._.txscripts
d_txscripts_1150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1150
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3784
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.updateGroups
d_updateGroups_1152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_1152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.validP1Script
d_validP1Script_1160 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  ()
d_validP1Script_1160 = erased
-- Ledger.Conway.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1162 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  ()
d_validPlutusScript_1162 = erased
-- Ledger.Conway.Foreign.HSStructures._.ε
d_ε_1164 :: Integer
d_ε_1164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1166 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1166 = erased
-- Ledger.Conway.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1168 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1170 :: Integer -> Integer
d_ℕtoEpoch_1170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1172 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1174 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1174
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Acnt.reserves
d_reserves_1224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_reserves_1224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_198
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Acnt.treasury
d_treasury_1226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_treasury_1226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.hash
d_hash_1230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018 ->
  Integer
d_hash_1230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1026
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.url
d_url_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1024
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.net
d_net_1236 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_1236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.pay
d_pay_1238 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.stake
d_stake_1240 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1240 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1244 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_1244 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.net
d_net_1246 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_1246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1248 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.coldCreds
d_coldCreds_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1402 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1402 ->
  Integer
d_epoch_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.pp
d_pp_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1402 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pp_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1416 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.votes
d_votes_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1402 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030]
d_votes_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.wdrls
d_wdrls_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.dState
d_dState_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1426
d_dState_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1478
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.gState
d_gState_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1458
d_gState_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1482
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.pState
d_pState_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1442
d_pState_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1480
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1278 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1278
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
d_DecEq'45'ScriptHash_1280 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1280
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1282 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1282
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
d_DecEq'45'Sig_1284 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1284
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
d_DecEq'45'THash_1286 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1286
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
d_DecEq'45'VRF_1288 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_1288
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.THash
d_THash_1290 :: ()
d_THash_1290 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1292 :: ()
d_KeyPair_1292 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.SKey
d_SKey_1294 :: ()
d_SKey_1294 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1296 :: ()
d_ScriptHash_1296 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Ser
d_Ser_1298 :: ()
d_Ser_1298 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1300 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1300
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1302 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1302
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
d_Sig_1304 :: ()
d_Sig_1304 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1306 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1306
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
d_VKey_1308 :: ()
d_VKey_1308 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.VRF
d_VRF_1310 :: ()
d_VRF_1310 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1312 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1312 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1314 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1314 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1316 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1316 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.khs
d_khs_1318 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1318
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.pkk
d_pkk_1320 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1320
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___296
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.sign
d_sign_1322 :: Integer -> Integer -> Integer
d_sign_1322
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
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
d_rewards_1344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1438
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1436
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1426 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1434
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1486 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1498
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pools
d_pools_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1486 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1496
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1486 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_pparams_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1494
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1372 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1378 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_260 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.dreps
d_dreps_1394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1458 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaData
d_gaData_1398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  AgdaAny
d_gaData_1398 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_904
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaType
d_gaType_1400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_gaType_1400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_902
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.action
d_action_1404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_action_1404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1156
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  Integer
d_expiresIn_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1154
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  AgdaAny
d_prevAction_1408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1158
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1152
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.votes
d_votes_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050
d_votes_1412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  Bool
d_'61''61''45'GovAction_1432
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_966
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1434
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_948
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Bool
d_'61''61''45'GovProposal_1436
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1350
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-Set
d_'61''61''45'Set_1438 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1438 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_936
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Anchor
d_Anchor_1440 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DReps
d_DReps_1450 :: ()
d_DReps_1450 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DRepsOf
d_DRepsOf_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1454 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1454
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1242
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1456 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1456
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_930
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1458 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1236
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1460 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1460
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1244
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1462
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1464 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1464
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1466 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1466
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1238
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovAction
d_GovAction_1468 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionData
d_GovActionData_1472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_GovActionData_1472 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionID
d_GovActionID_1474 :: ()
d_GovActionID_1474 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionOf
d_GovActionOf_1476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_GovActionOf_1476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_916
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionState
d_GovActionState_1478 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionType
d_GovActionType_1482 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_GovActionTypeOf_1484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_886
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal
d_GovProposal_1486 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRole
d_GovRole_1490 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_850 ->
  ()
d_GovRoleCredential_1492 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote
d_GovVote_1494 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter
d_GovVoter_1498 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoterOf
d_GovVoterOf_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_1502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes
d_GovVotes_1504 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1508 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_926
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1510 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1342
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1512 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1104
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1514 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1106
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps
d_HasDReps_1516 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction
d_HasGovAction_1520 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovActionState_1524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1230
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovProposal_1526
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1228
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType
d_HasGovActionType_1528 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovAction_1532
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_924
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovActionState_1534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1234
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovProposal_1536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1232
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter
d_HasGovVoter_1538 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166
d_HasGovVoter'45'GovVote_1542
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1222
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy
d_HasPolicy_1544 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206
d_HasPolicy'45'GovProposal_1548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1226
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote
d_HasVote_1550 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186
d_HasVote'45'GovVote_1554
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1224
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1556 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HashProtected
d_HashProtected_1560 :: () -> ()
d_HashProtected_1560 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.NeedsHash
d_NeedsHash_1564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_NeedsHash_1564 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Policy
d_Policy_1570 :: ()
d_Policy_1570 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.PolicyOf
d_PolicyOf_1572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1576 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_858
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1578 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1578
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1344
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VDeleg
d_VDeleg_1586 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Vote
d_Vote_1588 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegs
d_VoteDelegs_1590 :: ()
d_VoteDelegs_1590 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteOf
d_VoteOf_1594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_VoteOf_1594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1598 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1598
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1494
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeInEpoch
d_activeInEpoch_1600 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1600 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaData
d_gaData_1602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  AgdaAny
d_gaData_1602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_904
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaType
d_gaType_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_gaType_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_902
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.govVoterCredential
d_govVoterCredential_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1606
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1450
-- Ledger.Conway.Foreign.HSStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1608
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1446
-- Ledger.Conway.Foreign.HSStructures._.GovActions.proposedCC
d_proposedCC_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1612
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1458
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.action
d_action_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_action_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.anchor
d_anchor_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018
d_anchor_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1134
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.deposit
d_deposit_1632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Integer
d_deposit_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.policy
d_policy_1634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Maybe Integer
d_policy_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.prevAction
d_prevAction_1636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  AgdaAny
d_prevAction_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1132
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.anchor
d_anchor_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018
d_anchor_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1046
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.gid
d_gid_1652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1040
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.vote
d_vote_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_vote_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1044
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.voter
d_voter_1656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_voter_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  AgdaAny
d_gvCredential_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1014
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvRole
d_gvRole_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_850
d_gvRole_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1012
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvCC
d_gvCC_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1058
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_1668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_1670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_GovActionOf_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_916
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_GovActionTypeOf_1682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_886
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_1686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote.VoteOf
d_VoteOf_1694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_VoteOf_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1718 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1506
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  ()
d_UpdateT_1720 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440
d_ppUpd_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny -> ()
d_ppdWellFormed_1728 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_1734 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptHash_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptHash_336
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_1736 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptLanguage_340
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_1738 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptSize_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.timelock
d_timelock_1742 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_110
d_timelock_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_timelock_310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_1744 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptHash_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptHash_312
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_1746 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptSize_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1750 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_1750 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1246 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1254
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_458 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1566 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1470
d_CertStateOf_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1574
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_1766 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1766 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_1770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362]
d_DCertsOf_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1506 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1426
d_DStateOf_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1514
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1210 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1546 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1458
d_GStateOf_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1554
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110]
d_GovProposalsOf_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGovVotes.GovVotesOf
d_GovVotesOf_1790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030]
d_GovVotesOf_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1794 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1794 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1798 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_1798 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1526 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1442
d_PStateOf_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1534
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1262 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1270
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1278 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1286
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1818 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_1818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_1822 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1294 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1302
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_1826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1310 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1318
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1326 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1334
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_1834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3534 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_TxBodyOf_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_1838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3614 ->
  AgdaAny -> Integer
d_TxIdOf_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3622
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_1842 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3438 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1846 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1846 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_1858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1858 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1860 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1862 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1864 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1864 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_1866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1866 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_1870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1870 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_1872 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1872 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1874 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1876 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1876 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1878 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1878 ~v0 v1 = du_isMagmaMonomorphism_1878 v1
du_isMagmaMonomorphism_1878 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1878 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1880 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1882 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1884 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1884 v0
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
d_isRelIsomorphism_1886 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1886 ~v0 v1 = du_isRelIsomorphism_1886 v1
du_isRelIsomorphism_1886 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1886 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1888 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1888 ~v0 v1 = du_isRelMonomorphism_1888 v1
du_isRelMonomorphism_1888 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1888 v0
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
d_surjective_1890 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1890 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1892 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1892 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_1894 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1894 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_1898 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1898 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_1900 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1900 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1902 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1902 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1904 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1904 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1906 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1906 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1908 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1910 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1910 ~v0 v1 = du_isRelMonomorphism_1910 v1
du_isRelMonomorphism_1910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1910 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1912 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1912 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_1914 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1914 = erased
-- Ledger.Conway.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  ()
d_P1Script_1928 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1930 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParams.Emax
d_Emax_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_Emax_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a
d_a_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_a_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a0
d_a0_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_408 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.b
d_b_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_b_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_378 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMaxTermLength_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMinSize_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_coinsPerUTxOByte_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_collateralPercentage_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdls
d_costmdls_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1962
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_430
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdlsAssoc_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepActivity_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_428
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepDeposit_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionDeposit_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionLifetime_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_keyDeposit_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxBlockSize_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxCollateralInputs_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_372
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxHeaderSize_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1986 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerBlock_1986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerTx_1988 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxTxSize_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxValSize_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_minUTxOValue_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.nopt
d_nopt_2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_nopt_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_406
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_2004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_poolDeposit_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_2006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.prices
d_prices_2008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.pv
d_pv_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  ()
d_UpdateT_2020 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny -> ()
d_ppdWellFormed_2026 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2032 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2032 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1226
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d__'8746''737''7580''7504'__2034
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_448
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
                             (coe v3))))))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2036 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2036
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2038 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyPParamsUpdate_2042
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_24 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_690
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_modifiedUpdateGroups_2044
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1210
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesEconomicGroup_2046
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_906
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesGovernanceGroup_2048
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1058
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesNetworkGroup_2050
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_830
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesSecurityGroup_2052
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1134
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesTechnicalGroup_2054
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_982
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  ()
d_paramsUpdateWellFormed_2056 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2058 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.≡-update
d_'8801''45'update_2060 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2060 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1240
      v1
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_Emax_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_a_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_716 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_b_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_690 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMaxTermLength_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMinSize_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_coinsPerUTxOByte_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_collateralPercentage_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdls_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_drepActivity_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_drepDeposit_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionDeposit_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionLifetime_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_keyDeposit_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_684
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxBlockSize_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxCollateralInputs_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxHeaderSize_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxTxSize_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxValSize_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_minUTxOValue_2114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_714
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_nopt_2118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_poolDeposit_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_2122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.fPools
d_fPools_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1442 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.pools
d_pools_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1442 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1450
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.retiring
d_retiring_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1442 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2144 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_CostModel_2146 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T
d_T_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_T_2148 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_THash_2150 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Datum_2154 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2168 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2170 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_ExUnits_2174 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_LangDepView_2178 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Language_2180 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_PlutusScript_2182 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV1_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV2_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV3_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Prices_2190 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Redeemer_2192 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2202 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2204 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2206 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.language
d_language_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> AgdaAny
d_language_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2210 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_284 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.net
d_net_2228 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_2228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.stake
d_stake_2230 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2234 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_CostModel_2236 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T
d_T_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_T_2238 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_THash_2240 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Datum_2244 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2260
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_450
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2264 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2266 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_ExUnits_2270 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2276
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_410
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_LangDepView_2278 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Language_2280 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2282 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_P1Script_2286 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_PlutusScript_2288 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV1_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV2_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV3_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Prices_2296 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Redeemer_2298 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Script_2300 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2308
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_456
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2312 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2314 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.getLanguage
d_getLanguage_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_438
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_332
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2322 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_2324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2324 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2326 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_416
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2328 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2330 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_430
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.language
d_language_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> AgdaAny
d_language_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_2338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_p1s_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ps
d_ps_2340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_ps_2340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_2342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2342 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_424
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_2344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_436
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_2346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2346 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2348 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.cost
d_cost_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1170 ->
  Integer
d_cost_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1184 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.margin
d_margin_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1170 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1186
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.owners
d_owners_2362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1170 ->
  [Integer]
d_owners_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_2364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1170 ->
  Integer
d_pledge_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1188
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_2366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1170 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2384 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2386 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2388 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2394 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2398 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2402 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_2406 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2406 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_2412 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2414 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2414 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2416 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2418 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2418 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_2420 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2422 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2426 v0
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
d_size_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2432 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2436 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2442 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2444 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2448 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2450 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2454 ~v0 = du_isMagmaIsomorphism_2454
du_isMagmaIsomorphism_2454 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2454 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2456 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2456 v2
du_isMagmaMonomorphism_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2462 v0
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
d_isRelIsomorphism_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2464 ~v0 ~v1 v2 = du_isRelIsomorphism_2464 v2
du_isRelIsomorphism_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2466 ~v0 ~v1 v2 = du_isRelMonomorphism_2466 v2
du_isRelMonomorphism_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2466 v0
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
d_surjective_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2470 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2472 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2476 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2482 ~v0 = du_isMagmaMonomorphism_2482
du_isMagmaMonomorphism_2482 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2482 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2486 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2488 ~v0 ~v1 v2 = du_isRelMonomorphism_2488 v2
du_isRelMonomorphism_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2488 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2490 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2492 = erased
-- Ledger.Conway.Foreign.HSStructures._.Tx.body
d_body_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_body_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.isValid
d_isValid_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Bool
d_isValid_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txAD
d_txAD_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Maybe Integer
d_txAD_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txsize
d_txsize_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Integer
d_txsize_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.wits
d_wits_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632
d_wits_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3496
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe Integer
d_currentTreasury_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3520
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.mint
d_mint_2512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_mint_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.refInputs
d_refInputs_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3494
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [Integer]
d_reqSignerHashes_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3524
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe Integer
d_scriptIntegrityHash_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3526
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe Integer
d_txADhash_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3510
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362]
d_txCerts_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_2524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_txDonation_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txFee
d_txFee_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_txFee_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_2528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110]
d_txGovProposals_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3516
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_2530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030]
d_txGovVotes_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3514
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txId
d_txId_2532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_txId_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3500
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txIns
d_txIns_2534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3492
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe Integer
d_txNetworkId_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3518
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3498
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3508
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3506
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3644
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
d_scriptsP1_2548
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3650
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txdats
d_txdats_2550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  [Integer]
d_txdats_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3646
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3648
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.vkSigs
d_vkSigs_2554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3642
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_2582 ::
  MAlonzo.Code.Class.Convertible.Core.T_Convertible_10
d_Convert'45'HSLanguage_2582
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Convert'45'HSLanguage_20
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_2584 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_2584
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_DecEq'45'HSLanguage_22
-- Ledger.Conway.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_2588 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_2588
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
-- Ledger.Conway.Foreign.HSStructures._.HSLanguage
d_HSLanguage_2590 = ()
-- Ledger.Conway.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_2592 ::
  MAlonzo.Code.Class.HasHsType.Core.T_HasHsType_10
d_HsType'45'HSLanguage_2592 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_2606 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_2606
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Show'45'HSLanguage_24
-- Ledger.Conway.Foreign.HSStructures._.Transaction.Tag
d_Tag_2610 = ()
-- Ledger.Conway.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_2612 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__2640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__2640 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__104
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__2642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__2642 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__106
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2644 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2646 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2648 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≥ᵉ_
d__'8805''7497'__2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2650 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_2652 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  Bool
d_'61''61''45'GovAction_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_966
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_948
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_2658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Bool
d_'61''61''45'GovProposal_2658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2660 ~v0 = du_'61''61''45'Set_2660
du_'61''61''45'Set_2660 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2660 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_936
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2662 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_2664 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_2668 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_2668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Addr_2670 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_2674 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_2678 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_2678 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_AuxiliaryData_2680 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_2682 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_2686 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_458 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_2696 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_2698 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_2700 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2700 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362]
d_DCertsOf_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_2706 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T
d_T_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_2710 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2712 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_2716 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isScript
d_Dec'45'isScript_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_2718 ~v0 = du_Dec'45'isScript_2718
du_Dec'45'isScript_2718 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_2718
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isSigned
d_Dec'45'isSigned_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_2720 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_2722 ~v0 = du_Dec'45'isVKey_2722
du_Dec'45'isVKey_2722 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_2722
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_2734 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_2736 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_2740 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2742 ~v0
  = du_DecEq'45'DrepThresholds_2742
du_DecEq'45'DrepThresholds_2742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2742
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_2744 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2748 ~v0 = du_DecEq'45'GovActionType_2748
du_DecEq'45'GovActionType_2748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2748
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_930
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2750 ~v0 = du_DecEq'45'GovRole_2750
du_DecEq'45'GovRole_2750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2750
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1236
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_2754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2760 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_450
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_2764 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2768 ~v0 = du_DecEq'45'PParamGroup_2768
du_DecEq'45'PParamGroup_2768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2768
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_590
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_588
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2772 ~v0
  = du_DecEq'45'PoolThresholds_2772
du_DecEq'45'PoolThresholds_2772 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2772
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_586
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_2774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_2774 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_332
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_2776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_2776 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_2778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_2778 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_2780 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_2782 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2784 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2786 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2788 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2790 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2792 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_2796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1506
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_2798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-VRF
d_DecEq'45'VRF_2800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VRF_2800 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'VRF_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_2804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2804 ~v0 = du_DecEq'45'Vote_2804
du_DecEq'45'Vote_2804 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2804
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1238
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_2806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_2806 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_2808 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_2814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_2814 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_2818 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_2818 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_2820 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_GovActionData_2824 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_2826 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_GovActionOf_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_916
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_2830 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_2834 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_GovActionTypeOf_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_886
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_2838 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_2842 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110]
d_GovProposalsOf_2846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_2848 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_850 ->
  ()
d_GovRoleCredential_2850 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_2852 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_2856 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_2860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_2862 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVotesOf
d_GovVotesOf_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030]
d_GovVotesOf_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_2870 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_2874 ~v0
  = du_HasAttrSize'45'BootstrapAddr_2874
du_HasAttrSize'45'BootstrapAddr_2874 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_2874
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_2876 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2880 ~v0 = du_HasCast'45'Acnt_2880
du_HasCast'45'Acnt_2880 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2880
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_206
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2882 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2882
du_HasCast'45'GovAction'45'Sigma_2882 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_926
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2884 ~v0 = du_HasCast'45'GovVote_2884
du_HasCast'45'GovVote_2884 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2884
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1342
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2886 ~v0
  = du_HasCast'45'HashProtected_2886
du_HasCast'45'HashProtected_2886 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1104
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2888 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2888
du_HasCast'45'HashProtected'45'MaybeScriptHash_2888 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2888
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1106
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2890
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3808
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_2892 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_2896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_2896 ~v0
  = du_HasCredential'45'RewardAddress_2896
du_HasCredential'45'RewardAddress_2896 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_2896
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_2898 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_2902 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3554
d_HasDCerts'45'Tx_2902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3682
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_2904 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_2908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'Tx_2908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3694
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_2910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_30
d_HasDonations'45'TxBody_2910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3630
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasFees-Tx
d_HasFees'45'Tx_2912 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_50
d_HasFees'45'Tx_2912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3680
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_2914 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovActionState_2918 ~v0
  = du_HasGovAction'45'GovActionState_2918
du_HasGovAction'45'GovActionState_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
du_HasGovAction'45'GovActionState_2918
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1230
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovProposal_2920 ~v0
  = du_HasGovAction'45'GovProposal_2920
du_HasGovAction'45'GovProposal_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
du_HasGovAction'45'GovProposal_2920
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1228
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_2922 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovAction_2926 ~v0
  = du_HasGovActionType'45'GovAction_2926
du_HasGovActionType'45'GovAction_2926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
du_HasGovActionType'45'GovAction_2926
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_924
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovActionState_2928 ~v0
  = du_HasGovActionType'45'GovActionState_2928
du_HasGovActionType'45'GovActionState_2928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
du_HasGovActionType'45'GovActionState_2928
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1234
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovProposal_2930 ~v0
  = du_HasGovActionType'45'GovProposal_2930
du_HasGovActionType'45'GovProposal_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
du_HasGovActionType'45'GovProposal_2930
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_2932 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals-Tx
d_HasGovProposals'45'Tx_2936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3574
d_HasGovProposals'45'Tx_2936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3684
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_2938 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166
d_HasGovVoter'45'GovVote_2942 ~v0 = du_HasGovVoter'45'GovVote_2942
du_HasGovVoter'45'GovVote_2942 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166
du_HasGovVoter'45'GovVote_2942
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1222
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes
d_HasGovVotes_2944 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes-Tx
d_HasGovVotes'45'Tx_2948 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3594
d_HasGovVotes'45'Tx_2948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovVotes'45'Tx_3686
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_2950 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_2954 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_2958 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_2958 ~v0
  = du_HasNetworkId'45'BaseAddr_2958
du_HasNetworkId'45'BaseAddr_2958 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_2958
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_2960 ~v0
  = du_HasNetworkId'45'BootstrapAddr_2960
du_HasNetworkId'45'BootstrapAddr_2960 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_2960
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_2962 ~v0
  = du_HasNetworkId'45'RewardAddress_2962
du_HasNetworkId'45'RewardAddress_2962 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_2962
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_2964 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_2968 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206
d_HasPolicy'45'GovProposal_2972 ~v0
  = du_HasPolicy'45'GovProposal_2972
du_HasPolicy'45'GovProposal_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206
du_HasPolicy'45'GovProposal_2972
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1226
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
d_HasReserves'45'Acnt_2974 ~v0 = du_HasReserves'45'Acnt_2974
du_HasReserves'45'Acnt_2974 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_70
du_HasReserves'45'Acnt_2974
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_204
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_2976 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
d_HasTreasury'45'Acnt_2980 ~v0 = du_HasTreasury'45'Acnt_2980
du_HasTreasury'45'Acnt_2980 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_90
du_HasTreasury'45'Acnt_2980
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_2982 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3534
d_HasTxBody'45'Tx_2986 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3678
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_2988 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_2992 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3614
d_HasTxId'45'Tx_2992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3692
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_2994 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_2998 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186
d_HasVote'45'GovVote_3002 ~v0 = du_HasVote'45'GovVote_3002
du_HasVote'45'GovVote_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186
du_HasVote'45'GovVote_3002
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1224
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_3004 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_3008 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'Tx_3012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3690
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194
d_HasWithdrawals'45'TxBody_3014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3688
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_3016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_3016 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_3020 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_3020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_3022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_410
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_3024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_3028 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_3030 ~v0 = du_IsBootstrapAddr'63'_3030
du_IsBootstrapAddr'63'_3030 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_3030
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj
d_IsKeyHashObj_3034 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsKeyHashObj?
d_IsKeyHashObj'63'_3036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_3036 ~v0 = du_IsKeyHashObj'63'_3036
du_IsKeyHashObj'63'_3036 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_3036
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_3038 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_3042 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_3046 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ix_3050 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_3052 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_3056 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_KeyPair_3056 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_3058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_LangDepView_3058 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Language
d_Language_3060 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_3060 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_3062 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaxKESEvoᶜ
d_MaxKESEvo'7580'_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxKESEvo'7580'_3066 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxKESEvo'7580'_354
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_3068 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_3068 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_3070 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_3070 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_3072 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_NeedsHash_3074 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Network
d_Network_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Network_3076 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_3080 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_352
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_3082 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_3082 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_3088 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_362
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-SlotLengthᶜ
d_NonZero'45'SlotLength'7580'_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotLength'7580'_3090 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotLength'7580'_360
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_3092 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_3094 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_290
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_3096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_P1Script_3096 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_3098 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_3102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_3102 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.POSIXTimeRange
d_POSIXTimeRange_3104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_POSIXTimeRange_3104 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_3106 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_3108 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_3112 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_3116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_3118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_3118 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_3120 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_3124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV1_3124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_3126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV2_3126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_3128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV3_3128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_3130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3130 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_3134 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_3138 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_3140 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ProposedPPUpdates_3142 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_Quorum_3144 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_3146 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_96
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_RandomnessStabilisationWindow'7580'_3148 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RdmrPtr
d_RdmrPtr_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_3150 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_3152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_3152 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_3154 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_3158 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_3158 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_3162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_SKey_3162 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Script
d_Script_3166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_3166 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_3168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptAddr_3168 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBaseAddr_3170 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBootstrapAddr
d_ScriptBootstrapAddr_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBootstrapAddr_3172 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_3174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_3174 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_3178 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ser_3184 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_3188 ~v0 = du_Show'45'Credential_3188
du_Show'45'Credential_3188 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_3188 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_3190 ~v0
  = du_Show'45'Credential'215'Coin_3190
du_Show'45'Credential'215'Coin_3190 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_3190 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_3192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_3192 ~v0 = du_Show'45'DrepThresholds_3192
du_Show'45'DrepThresholds_3192 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_3192
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_3194 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_84
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_3196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_3198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3198 ~v0 = du_Show'45'GovRole_3198
du_Show'45'GovRole_3198 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3198
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_858
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_3200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_3202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_3202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_3204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_3204 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_3206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_3206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_596
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_3208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_3208 ~v0 = du_Show'45'PoolThresholds_3208
du_Show'45'PoolThresholds_3208 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_3208
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_594
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_3212 ~v0 = du_Show'45'RewardAddress_3212
du_Show'45'RewardAddress_3212 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_3212
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_3214 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3216 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3218 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3220 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_3222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_3224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_3224 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_3226 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SlotLengthᶜ
d_SlotLength'7580'_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotLength'7580'_3228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotLength'7580'_358
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_3230 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SlotsPerKESPeriodᶜ
d_SlotsPerKESPeriod'7580'_3232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerKESPeriod'7580'_3232 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerKESPeriod'7580'_356
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_3234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_3234 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_78
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_StabilityWindow_3236 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_98
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_StabilityWindow'7580'_3238 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_346
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3240 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3242 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3244 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_3246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3246 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_3250 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_3258 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_3262 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_3266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3534 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_TxBodyOf_3266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_3268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxId_3268 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_3270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3614 ->
  AgdaAny -> AgdaAny
d_TxIdOf_3270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3622
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_3272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_3272 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_3274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_3274 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOutʰ
d_TxOut'688'_3276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_3276 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_3278 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_3282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_3282 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3438 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Update
d_Update_3286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Update_3286 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_3290 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_3292 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyAddr_3294 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBaseAddr_3296 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBootstrapAddr
d_VKeyBootstrapAddr_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBootstrapAddr_3298 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VRF
d_VRF_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VRF_3302 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value
d_Value_3304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_3304 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3308 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_VoteOf_3312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_3314 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_3316 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_3316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3318 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3320 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_3322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_3324 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_284
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_3326 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_3328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_3330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin
d_coin_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_3332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3334 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_3338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3338 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_3340 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_3342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_3342 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_3344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_3344 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_3346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_3348 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_3350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  AgdaAny
d_gaData_3350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_904
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_gaType_3352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_902
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getLanguage
d_getLanguage_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_3354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_438
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_3356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
d_getScriptHash_3356 ~v0 = du_getScriptHash_3356
du_getScriptHash_3356 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  AgdaAny
du_getScriptHash_3356
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValue
d_getValue_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3358 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3696
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValueʰ
d_getValue'688'_3360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3360 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3712
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_3362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_296
d_globalConstants_3362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_3364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474
d_govParams_3364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_3366
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3368 ~v0 = du_govVoterCredential_3368
du_govVoterCredential_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1450
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_3370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.inject
d_inject_3372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_3372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_3374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_3374 ~v0 = du_isBootstrapAddr_3374
du_isBootstrapAddr_3374 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
du_isBootstrapAddr_3374
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3376 ~v0 = du_isGovVoterDRep_3376
du_isGovVoterDRep_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1446
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_3378 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_3380 ~v0 = du_isKeyHashObj_3380
du_isKeyHashObj_3380 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_3380
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_3382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_3382 ~v0 = du_isKeyHashObj'7495'_3382
du_isKeyHashObj'7495'_3382 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_3382
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_3384 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3386 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3388 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_3390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3390 ~v0 = du_isP1Script'63'_3390
du_isP1Script'63'_3390 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_3390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_416
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_3392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3392 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_3394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3394 ~v0 = du_isP2Script'63'_3394
du_isP2Script'63'_3394 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3394
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_430
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_3396 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_3398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_3398 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_3400 ~v0 = du_isScriptObj_3400
du_isScriptObj_3400 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_3400
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_3402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_3402 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_3404 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_3406 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_3408 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_3410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_3410 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.khs
d_khs_3412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_3412 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.language
d_language_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_language_3414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_3416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3794
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3422 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.netId
d_netId_3424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_3424 ~v0 = du_netId_3424
du_netId_3424 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_3424
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_p1s_3426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_3428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_3428 ~v0 = du_paramsWF'45'elim_3428
du_paramsWF'45'elim_3428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_3428 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_564
      v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  ()
d_paramsWellFormed_3430 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_3432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_3432 ~v0 = du_payCred_3432
du_payCred_3432 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_3432
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_3434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_3434 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.policies
d_policies_3436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny]
d_policies_3436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  [Integer]
d_positivePParams_3438 ~v0 = du_positivePParams_3438
du_positivePParams_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  [Integer]
du_positivePParams_3438
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_474
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_3440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440
d_ppUpd_3440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_3442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_3444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> ()
d_ppdWellFormed_3444 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_3446 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_114
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3448 ~v0 = du_proposedCC_3448
du_proposedCC_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1458
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ps
d_ps_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_ps_3450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_3452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3452 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.refScripts
d_refScripts_3454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3454
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3736
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptOuts
d_scriptOuts_3456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3456 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3722
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_3458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286
d_scriptStructure_3458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sign
d_sign_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_3460 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1422
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_192 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.size
d_size_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_size_3462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.slotsFromDuration
d_slotsFromDuration_3464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_slotsFromDuration_3464 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_slotsFromDuration_100
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_3466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_3466 ~v0 = du_stakeCred_3466
du_stakeCred_3466 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_3466
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_suc'7497'_3468 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_102
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_3470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_3472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3472 ~v0 = du_toP1Script_3472
du_toP1Script_3472 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_3472
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_424
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_3474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3474 ~v0 = du_toP2Script_3474
du_toP2Script_3474 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_3474
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_436
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_3476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_3476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsScript
d_txInsScript_3478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_3478
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3730
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsVKey
d_txInsVKey_3480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_3480
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3716
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txOutHash
d_txOutHash_3482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3702
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_3484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_txidBytes_3484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txscripts
d_txscripts_3486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3784
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_3488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_3488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2546
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3496 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3498 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ε
d_ε_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_ε_3500 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2564
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_3502 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_3504 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_376
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1380
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_ℕtoEpoch_3506 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_3508 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_reserves_3520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_198
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_190 ->
  Integer
d_treasury_3522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018 ->
  AgdaAny
d_hash_3526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1026
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1024
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_3532 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  AgdaAny
d_net_3532 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_3534 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3534 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_3536 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_3536 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_3540 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_3540 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_3542 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  AgdaAny
d_net_3542 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_3544 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3544 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_3554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_3556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_3558 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_3558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_3560 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_3560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_3562 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_3562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_3564 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_3564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_3566 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_3566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_3568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_3570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_3572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_260 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_3576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  AgdaAny
d_gaData_3576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_904
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_gaType_3578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_902
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_action_3582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1156
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  AgdaAny
d_expiresIn_3584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1154
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_3586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  AgdaAny
d_prevAction_3586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1158
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_3588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1152
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1138 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050
d_votes_3590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovAction
d_'61''61''45'GovAction_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  Bool
d_'61''61''45'GovAction_3610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_966
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovActionData
d_'61''61''45'GovActionData_3612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_948
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovProposal
d_'61''61''45'GovProposal_3614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Bool
d_'61''61''45'GovProposal_3614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1350
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-Set
d_'61''61''45'Set_3616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3616 ~v0 = du_'61''61''45'Set_3616
du_'61''61''45'Set_3616 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3616 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_936
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Anchor
d_Anchor_3618 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DReps
d_DReps_3628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_3628 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DRepsOf
d_DRepsOf_3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_3632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_3634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3634 ~v0 = du_DecEq'45'GovActionType_3634
du_DecEq'45'GovActionType_3634 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3634
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_930
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_3636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3636 ~v0 = du_DecEq'45'GovRole_3636
du_DecEq'45'GovRole_3636 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3636
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1236
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_3638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3640 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1348
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Vote
d_DecEq'45'Vote_3644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3644 ~v0 = du_DecEq'45'Vote_3644
du_DecEq'45'Vote_3644 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3644
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1238
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovAction
d_GovAction_3646 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionData
d_GovActionData_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_GovActionData_3650 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionID
d_GovActionID_3652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_3652 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionOf
d_GovActionOf_3654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_GovActionOf_3654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_916
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionState
d_GovActionState_3656 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionType
d_GovActionType_3660 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionTypeOf
d_GovActionTypeOf_3662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_GovActionTypeOf_3662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_886
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal
d_GovProposal_3664 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRole
d_GovRole_3668 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRoleCredential
d_GovRoleCredential_3670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_850 ->
  ()
d_GovRoleCredential_3670 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote
d_GovVote_3672 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter
d_GovVoter_3676 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoterOf
d_GovVoterOf_3680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_3680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes
d_GovVotes_3682 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3686 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3686
du_HasCast'45'GovAction'45'Sigma_3686 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3686
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_926
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_3688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3688 ~v0 = du_HasCast'45'GovVote_3688
du_HasCast'45'GovVote_3688 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3688
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1342
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_3690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3690 ~v0
  = du_HasCast'45'HashProtected_3690
du_HasCast'45'HashProtected_3690 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1104
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3692 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3692
du_HasCast'45'HashProtected'45'MaybeScriptHash_3692 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3692
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1106
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps
d_HasDReps_3694 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction
d_HasGovAction_3698 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovActionState_3702 ~v0
  = du_HasGovAction'45'GovActionState_3702
du_HasGovAction'45'GovActionState_3702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
du_HasGovAction'45'GovActionState_3702
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1230
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
d_HasGovAction'45'GovProposal_3704 ~v0
  = du_HasGovAction'45'GovProposal_3704
du_HasGovAction'45'GovProposal_3704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910
du_HasGovAction'45'GovProposal_3704
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1228
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType
d_HasGovActionType_3706 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovAction_3710 ~v0
  = du_HasGovActionType'45'GovAction_3710
du_HasGovActionType'45'GovAction_3710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
du_HasGovActionType'45'GovAction_3710
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_924
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovActionState_3712 ~v0
  = du_HasGovActionType'45'GovActionState_3712
du_HasGovActionType'45'GovActionState_3712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
du_HasGovActionType'45'GovActionState_3712
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1234
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
d_HasGovActionType'45'GovProposal_3714 ~v0
  = du_HasGovActionType'45'GovProposal_3714
du_HasGovActionType'45'GovProposal_3714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880
du_HasGovActionType'45'GovProposal_3714
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter
d_HasGovVoter_3716 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166
d_HasGovVoter'45'GovVote_3720 ~v0 = du_HasGovVoter'45'GovVote_3720
du_HasGovVoter'45'GovVote_3720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166
du_HasGovVoter'45'GovVote_3720
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1222
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy
d_HasPolicy_3722 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206
d_HasPolicy'45'GovProposal_3726 ~v0
  = du_HasPolicy'45'GovProposal_3726
du_HasPolicy'45'GovProposal_3726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206
du_HasPolicy'45'GovProposal_3726
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1226
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote
d_HasVote_3728 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_3732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186
d_HasVote'45'GovVote_3732 ~v0 = du_HasVote'45'GovVote_3732
du_HasVote'45'GovVote_3732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186
du_HasVote'45'GovVote_3732
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1224
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs
d_HasVoteDelegs_3734 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HashProtected
d_HashProtected_3738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_3738 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.NeedsHash
d_NeedsHash_3742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862 ->
  ()
d_NeedsHash_3742 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Policy
d_Policy_3748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3748 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.PolicyOf
d_PolicyOf_3750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-GovRole
d_Show'45'GovRole_3754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3754 ~v0 = du_Show'45'GovRole_3754
du_Show'45'GovRole_3754 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3754
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_858
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-VDeleg
d_Show'45'VDeleg_3756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1344
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VDeleg
d_VDeleg_3764 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Vote
d_Vote_3766 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegs
d_VoteDelegs_3768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3768 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegsOf
d_VoteDelegsOf_3770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteOf
d_VoteOf_3772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_VoteOf_3772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeDRepsOf
d_activeDRepsOf_3776 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3776 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1494
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2682
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeInEpoch
d_activeInEpoch_3778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3778 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaData
d_gaData_3780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  AgdaAny
d_gaData_3780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_904
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaType
d_gaType_3782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_gaType_3782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_902
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.govVoterCredential
d_govVoterCredential_3784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3784 ~v0 = du_govVoterCredential_3784
du_govVoterCredential_3784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3784
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1450
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.isGovVoterDRep
d_isGovVoterDRep_3786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3786 ~v0 = du_isGovVoterDRep_3786
du_isGovVoterDRep_3786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3786
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1446
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.proposedCC
d_proposedCC_3790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3790 ~v0 = du_proposedCC_3790
du_proposedCC_3790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3790
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1458
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.action
d_action_3806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_action_3806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.anchor
d_anchor_3808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018
d_anchor_3808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1134
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.deposit
d_deposit_3810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Integer
d_deposit_3810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.policy
d_policy_3812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  Maybe AgdaAny
d_policy_3812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.prevAction
d_prevAction_3814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  AgdaAny
d_prevAction_3814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.returnAddr
d_returnAddr_3816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_returnAddr_3816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1132
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.anchor
d_anchor_3828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_1018
d_anchor_3828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1046
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.gid
d_gid_3830 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1040
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.vote
d_vote_3832 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_vote_3832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1044
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.voter
d_voter_3834 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_voter_3834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1042
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvCredential
d_gvCredential_3838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  AgdaAny
d_gvCredential_3838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_1014
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvRole
d_gvRole_3840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_850
d_gvRole_3840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_1012
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvCC
d_gvCC_3844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1058
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvDRep
d_gvDRep_3846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1060
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvSPO
d_gvSPO_3848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1050 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1062
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps.DRepsOf
d_DRepsOf_3852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1468 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction.GovActionOf
d_GovActionOf_3856 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_910 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_896
d_GovActionOf_3856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_916
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_880 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_862
d_GovActionTypeOf_3860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_886
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1166 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_1006
d_GovVoterOf_3864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1174
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy.PolicyOf
d_PolicyOf_3868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1206 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote.VoteOf
d_VoteOf_3872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1186 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_998
d_VoteOf_3872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1080 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1088
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_3896 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_3896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1506
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_3898 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  ()
d_UpdateT_3898 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_3900 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_3900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_3902 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440
d_ppUpd_3902 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_3904 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_3904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_3906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny -> ()
d_ppdWellFormed_3906 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_3908 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1474 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_3908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1492
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_3912 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_3912 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_3916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_458 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_3916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_3920 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_3920 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_3924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3554 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362]
d_DCertsOf_3924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_3928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3574 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110]
d_GovProposalsOf_3928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVotes.GovVotesOf
d_GovVotesOf_3932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovVotes_3594 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030]
d_GovVotesOf_3932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovVotesOf_3602
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_3936 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_3936 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_3940 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_3940 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_3944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_438 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_PParamsOf_3944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_3948 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_3948 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3952 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3534 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_TxBodyOf_3952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_3956 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3614 ->
  AgdaAny -> AgdaAny
d_TxIdOf_3956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3622
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3438 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_3964 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_3964 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_3976 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3976 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3978 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3980 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3982 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_3984 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3984 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_3988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3988 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_3990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3990 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3992 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3994 ~v0 = du_isMagmaIsomorphism_3994
du_isMagmaIsomorphism_3994 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3994 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3996 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3996 v2
du_isMagmaMonomorphism_3996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3996 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3998 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3998 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_4000 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_4000 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_4002 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4002 v0
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
d_isRelIsomorphism_4004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_4004 ~v0 ~v1 v2 = du_isRelIsomorphism_4004 v2
du_isRelIsomorphism_4004 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_4004 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_4006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4006 ~v0 ~v1 v2 = du_isRelMonomorphism_4006 v2
du_isRelMonomorphism_4006 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4006 v0
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
d_surjective_4008 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_4008 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_4010 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4010 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_4012 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4012 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_4016 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4016 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_4018 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4018 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4020 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4020 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4022 ~v0 = du_isMagmaMonomorphism_4022
du_isMagmaMonomorphism_4022 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4022 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4024 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4024 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_4026 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4026 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_4028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4028 ~v0 ~v1 v2 = du_isRelMonomorphism_4028 v2
du_isRelMonomorphism_4028 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4028 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_4030 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4030 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_4032 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4032 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_4036 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_4040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_4040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_4042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_4042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_4044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_4044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_4046 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  ()
d_P1Script_4046 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_4048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4048 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_4064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_Emax_4064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_4066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_a_4066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_4068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_408 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_4070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_b_4070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_378 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_4072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMaxTermLength_4072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_4074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_ccMinSize_4074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_4076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_coinsPerUTxOByte_4076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_4078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_collateralPercentage_4078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_4080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_4080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_430
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_4082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdlsAssoc_4082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_4084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_drepActivity_4084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_428
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_4086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_drepDeposit_4086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_4088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_4088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_4090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionDeposit_4090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_4092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_govActionLifetime_4092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_4094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_keyDeposit_4094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_4096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_maxBlockExUnits_4096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_4098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxBlockSize_4098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_4100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxCollateralInputs_4100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_372
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_4102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxHeaderSize_4102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerBlock_4104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4106 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxRefScriptSizePerTx_4106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_4108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_maxTxExUnits_4108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_4110 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxTxSize_4110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_4112 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_maxValSize_4112 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_4116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_minUTxOValue_4116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_4118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_4120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_nopt_4120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_406
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_4122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  Integer
d_poolDeposit_4122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_4124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_4124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_4126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny
d_prices_4126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_4128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_4130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_4132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_4134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_4138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  ()
d_UpdateT_4138 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_4140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyUpdate_4140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_4142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_4144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny -> ()
d_ppdWellFormed_4144 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_4146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1440 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_updateGroups_4146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__4150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__4150 ~v0 = du__'63''8599'__4150
du__'63''8599'__4150 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__4150 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1226
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__4152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d__'8746''737''7580''7504'__4152 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_448
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_4154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_4154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1438
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1804
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_4156 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_4160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_288
d_applyPParamsUpdate_4160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2076
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_4162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
d_modifiedUpdateGroups_4162 ~v0 = du_modifiedUpdateGroups_4162
du_modifiedUpdateGroups_4162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_208]
du_modifiedUpdateGroups_4162
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1210
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_4164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesEconomicGroup_4164 ~v0 = du_modifiesEconomicGroup_4164
du_modifiesEconomicGroup_4164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesEconomicGroup_4164
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_906
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_4166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesGovernanceGroup_4166 ~v0
  = du_modifiesGovernanceGroup_4166
du_modifiesGovernanceGroup_4166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesGovernanceGroup_4166
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1058
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_4168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesNetworkGroup_4168 ~v0 = du_modifiesNetworkGroup_4168
du_modifiesNetworkGroup_4168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesNetworkGroup_4168
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_830
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_4170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesSecurityGroup_4170 ~v0 = du_modifiesSecurityGroup_4170
du_modifiesSecurityGroup_4170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesSecurityGroup_4170
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1134
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_4172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
d_modifiesTechnicalGroup_4172 ~v0 = du_modifiesTechnicalGroup_4172
du_modifiesTechnicalGroup_4172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Bool
du_modifiesTechnicalGroup_4172
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_982
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_4174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  ()
d_paramsUpdateWellFormed_4174 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_4176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_4176 v0
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
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
                     (coe v0))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
                        (coe v0))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
                           (coe v0))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
                              (coe v0))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
                                 (coe v0))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
                                    (coe v0))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
                                       (coe v0))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
                                          (coe v0))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
                                             (coe v0))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
                                                (coe v0))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
                                                   (coe v0))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
      (coe
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
         (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
         (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.≡-update
d_'8801''45'update_4178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_4178 ~v0 = du_'8801''45'update_4178
du_'8801''45'update_4178 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_4178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1240
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_4182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe AgdaAny
d_Emax_4182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_4184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_a_4184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_4186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_716 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_4188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_b_4188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_690 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_4190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMaxTermLength_4190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_740
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_4192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_ccMinSize_4192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_4194 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_coinsPerUTxOByte_4194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_4196 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_collateralPercentage_4196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_4198 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442
d_costmdls_4198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_4200 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe AgdaAny
d_drepActivity_4200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_4202 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_drepDeposit_4202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_4204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_220
d_drepThresholds_4204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_4206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionDeposit_4206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_4208 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_govActionLifetime_4208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_4210 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_keyDeposit_4210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_4212 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe AgdaAny
d_maxBlockExUnits_4212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_684
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_4214 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxBlockSize_4214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_4216 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxCollateralInputs_4216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_4218 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxHeaderSize_4218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4220 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_4220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4222 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxRefScriptSizePerTx_4222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_4224 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe AgdaAny
d_maxTxExUnits_4224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_4226 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxTxSize_4226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_4228 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_maxValSize_4228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4230 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_4232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_minUTxOValue_4232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_714
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_4234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_4236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_nopt_4236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_4238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe Integer
d_poolDeposit_4238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_4240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264
d_poolThresholds_4240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_4242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe AgdaAny
d_prices_4242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_4244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_4246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_4248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_4250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_600 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≥ᵉ_
d__'8805''7497'__4254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4254 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_4256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_CostModel_4256 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_4258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_T_4258 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_4260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_THash_4260 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_4262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_4264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Datum_4264 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_4268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_4270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_4276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_4278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4278 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_4280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4280 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_4284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_ExUnits_4284 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_4288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_LangDepView_4288 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_4290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Language_4290 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_4292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_PlutusScript_4292 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_4294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV1_4294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_4296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV2_4296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_4298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny
d_PlutusV3_4298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_4300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Prices_4300 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_4302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  ()
d_Redeemer_4302 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_4304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_4306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_4308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_4310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_4312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4312 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_4314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4314 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_4316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4316 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_4318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> AgdaAny
d_language_4318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_4320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4320 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_4326 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_4326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_4328 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_4328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_4330 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_4330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_4332 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_4332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_4334 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_264 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_4334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_284 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_4338 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  AgdaAny
d_net_4338 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_4340 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4340 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≥ᵉ_
d__'8805''7497'__4344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4344 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_4346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_CostModel_4346 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_4348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_T_4348 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_4350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_THash_4350 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_4352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_4354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Datum_4354 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_4356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_4356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_4360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_4362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_238
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_4368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_4370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_4370 ~v0
  = du_DecEq'45'LanguageCostModels_4370
du_DecEq'45'LanguageCostModels_4370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_4370
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_450
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_4372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_4372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_130
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_4374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4374 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_4376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4376 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_4380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_ExUnits_4380 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_4382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_4382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_128
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_4386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_4386 ~v0 = du_Hashable'45'Script_4386
du_Hashable'45'Script_4386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_4386
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_410
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_4388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_LangDepView_4388 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_4390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Language_4390 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_4392 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_4396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_P1Script_4396 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_4398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_PlutusScript_4398 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_4400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV1_4400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_4402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV2_4402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_4404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny
d_PlutusV3_4404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_4406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Prices_4406 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_4408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Redeemer_4408 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_4410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  ()
d_Script_4410 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_4412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_4414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_252
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_4416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4418 ~v0
  = du_Show'45'LanguageCostModels_4418
du_Show'45'LanguageCostModels_4418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_4418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_456
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_4420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_254
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_4422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4422 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_4424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4424 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_4426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4426 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.getLanguage
d_getLanguage_4428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_4428 ~v0 = du_getLanguage_4428
du_getLanguage_4428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_4428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_438
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_4430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_332
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_4432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4432 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4434 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_4436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4436 ~v0 = du_isP1Script'63'_4436
du_isP1Script'63'_4436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4436 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_416
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_4438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4438 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_4440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4440 ~v0 = du_isP2Script'63'_4440
du_isP2Script'63'_4440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4440 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_430
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_4442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> AgdaAny
d_language_4442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_282
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_4444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_4448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_110
d_p1s_4448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_312
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_4450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_134
d_ps_4450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_4452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4452 ~v0 = du_toP1Script_4452
du_toP1Script_4452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_424
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_4454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4454 ~v0 = du_toP2Script_4454
du_toP2Script_4454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_436
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_4456 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4456 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_4458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4458 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_286 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_334
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_4464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_442 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__4468 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__4468 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__4470 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__4470 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__4472 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__4472 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_4474 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_4474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_4476 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_4476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_4478 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_4482 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_4486 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_4490 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_4490 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4492 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_4494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4494 ~v0 = du_addValue_4494
du_addValue_4494 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_4494
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_4496 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_4496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_4498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4498 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4500 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_4502 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4502 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_4504 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_4504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_4506 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4506 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_4508 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_4508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_4510 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4510 v0
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
d_size_4512 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_4512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_4514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4514 ~v0 = du_sum'7515'_4514
du_sum'7515'_4514 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_4514
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_4516 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_4516 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_4520 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4520 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4522 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4522 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_4524 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4524 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_4526 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4526 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_4528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4528 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_4532 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4532 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_4534 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4534 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4536 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4536 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_4538 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_4538 ~v0 = du_isMagmaIsomorphism_4538
du_isMagmaIsomorphism_4538 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_4538 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4540 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4540 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_4540 v2
du_isMagmaMonomorphism_4540 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4540 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4542 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4542 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_4544 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_4544 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_4546 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4546 v0
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
d_isRelIsomorphism_4548 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_4548 ~v0 ~v1 v2 = du_isRelIsomorphism_4548 v2
du_isRelIsomorphism_4548 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_4548 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_4550 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4550 ~v0 ~v1 v2 = du_isRelMonomorphism_4550 v2
du_isRelMonomorphism_4550 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4550 v0
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
d_surjective_4552 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_4552 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_4554 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4554 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_4556 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4556 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_4560 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4560 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_4562 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4562 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4564 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4564 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4566 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4566 ~v0 = du_isMagmaMonomorphism_4566
du_isMagmaMonomorphism_4566 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4566 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4568 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4568 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_4570 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4570 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_4572 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4572 ~v0 ~v1 v2 = du_isRelMonomorphism_4572 v2
du_isRelMonomorphism_4572 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4572 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_4574 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4574 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_4576 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4576 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.body
d_body_4580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454
d_body_4580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3666
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_4582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Bool
d_isValid_4582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txAD
d_txAD_4584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Maybe AgdaAny
d_txAD_4584 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txsize
d_txsize_4586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  Integer
d_txsize_4586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.wits
d_wits_4588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3654 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632
d_wits_4588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3668
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_4592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_4592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3496
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_4594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe Integer
d_currentTreasury_4594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3520
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_4596 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  AgdaAny
d_mint_4596 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.refInputs
d_refInputs_4598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_4598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3494
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.reqSignerHashes
d_reqSignerHashes_4600 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [AgdaAny]
d_reqSignerHashes_4600 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3524
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_4602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe AgdaAny
d_scriptIntegrityHash_4602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3526
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_4604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe AgdaAny
d_txADhash_4604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3510
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_4606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1362]
d_txCerts_4606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_4608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_txDonation_4608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3512
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_4610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Integer
d_txFee_4610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_4612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1110]
d_txGovProposals_4612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3516
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_4614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1030]
d_txGovVotes_4614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3514
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_4616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  AgdaAny
d_txId_4616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3500
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_4618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_4618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3492
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_4620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  Maybe AgdaAny
d_txNetworkId_4620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3518
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_4622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3498
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_4624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3508
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_4626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3454 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_4626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3506
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_4630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_4630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3644
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_4632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  [AgdaAny]
d_scriptsP1_4632 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3650
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txdats
d_txdats_4634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  [AgdaAny]
d_txdats_4634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3646
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_4636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_4636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3648
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_4638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3632 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_4638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3642
      (coe v0)
