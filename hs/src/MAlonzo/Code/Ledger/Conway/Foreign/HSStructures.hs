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
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasAdd.Core
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
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
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
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._+ᵉ'_
d__'43''7497'''__12 :: Integer -> Integer -> Integer
d__'43''7497'''__12
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._._∙_
d__'8729'__14 :: Integer -> Integer -> Integer
d__'8729'__14
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
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
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338] ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
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
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,POST-CERT⦈_
d__'8866'_'8640''10631'_'44'POST'45'CERT'10632'__32 a0 a1 a2 a3
  = ()
-- Ledger.Conway.Foreign.HSStructures._._⊢_⇀⦇_,PRE-CERT⦈_
d__'8866'_'8640''10631'_'44'PRE'45'CERT'10632'__34 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSStructures._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_36 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_36 = erased
-- Ledger.Conway.Foreign.HSStructures._.==-GovAction
d_'61''61''45'GovAction_38 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  Bool
d_'61''61''45'GovAction_38
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_942
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovActionData
d_'61''61''45'GovActionData_40 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_40
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_924
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-GovProposal
d_'61''61''45'GovProposal_42 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Bool
d_'61''61''45'GovProposal_42
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.==-Set
d_'61''61''45'Set_44 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_44 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_912
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_46 :: ()
d_THash_46 = erased
-- Ledger.Conway.Foreign.HSStructures._.Acnt
d_Acnt_48 = ()
-- Ledger.Conway.Foreign.HSStructures._.ActiveSlotCoeff
d_ActiveSlotCoeff_52 :: MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_52
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Addr
d_Addr_54 :: ()
d_Addr_54 = erased
-- Ledger.Conway.Foreign.HSStructures._.Anchor
d_Anchor_58 = ()
-- Ledger.Conway.Foreign.HSStructures._.AttrSizeOf
d_AttrSizeOf_62 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_62 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.AuxiliaryData
d_AuxiliaryData_64 :: ()
d_AuxiliaryData_64 = erased
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr
d_BaseAddr_66 = ()
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr
d_BootstrapAddr_70 = ()
-- Ledger.Conway.Foreign.HSStructures._.CCHotKeys
d_CCHotKeys_76 :: ()
d_CCHotKeys_76 = erased
-- Ledger.Conway.Foreign.HSStructures._.CCHotKeysOf
d_CCHotKeysOf_78 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_78 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CCMaxTermLengthOf
d_CCMaxTermLengthOf_80 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_80 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv
d_CertEnv_92 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertState
d_CertState_96 = ()
-- Ledger.Conway.Foreign.HSStructures._.CertStateOf
d_CertStateOf_100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CostModel
d_CostModel_104 :: ()
d_CostModel_104 = erased
-- Ledger.Conway.Foreign.HSStructures._.Credential
d_Credential_106 = ()
-- Ledger.Conway.Foreign.HSStructures._.CredentialOf
d_CredentialOf_110 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_110 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DCert
d_DCert_112 = ()
-- Ledger.Conway.Foreign.HSStructures._.DCertsOf
d_DCertsOf_114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_DCertsOf_114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DReps
d_DReps_126 :: ()
d_DReps_126 = erased
-- Ledger.Conway.Foreign.HSStructures._.DRepsOf
d_DRepsOf_128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState
d_DState_130 = ()
-- Ledger.Conway.Foreign.HSStructures._.DStateOf
d_DStateOf_134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_DStateOf_134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.T
d_T_136 :: ()
d_T_136 = erased
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_138 :: ()
d_THash_138 = erased
-- Ledger.Conway.Foreign.HSStructures._.Dataʰ
d_Data'688'_140 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Datum
d_Datum_142 :: ()
d_Datum_142 = erased
-- Ledger.Conway.Foreign.HSStructures._.Dec-evalTimelock
d_Dec'45'evalTimelock_144 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_Dec'45'evalTimelock_162
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
            (coe v0))
         (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isScript
d_Dec'45'isScript_146 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_146
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_296
-- Ledger.Conway.Foreign.HSStructures._.Dec-isSigned
d_Dec'45'isSigned_148 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_148
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-isVKey
d_Dec'45'isVKey_150 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_150
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_282
-- Ledger.Conway.Foreign.HSStructures._.Dec-validP1Script
d_Dec'45'validP1Script_152 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_152
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_154 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_154
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Dec-≤ᵗ
d_Dec'45''8804''7511'_156 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_156
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEQ-Prices
d_DecEQ'45'Prices_158 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_158
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Anchor
d_DecEq'45'Anchor_160 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_160
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_162 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_162
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_334
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_164 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_164
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_336
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-CostModel
d_DecEq'45'CostModel_166 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_166
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Credential
d_DecEq'45'Credential_168 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_168
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DCert
d_DecEq'45'DCert_170 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DCert_170
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DCert_1358
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_172 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_172
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1202
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_174 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_174
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Epoch
d_DecEq'45'Epoch_176 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_176
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ExUnits
d_DecEq'45'ExUnits_178 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_178
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovActionType
d_DecEq'45'GovActionType_180 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_180
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_906
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovRole
d_DecEq'45'GovRole_182 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_182
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1212
-- Ledger.Conway.Foreign.HSStructures._.DecEq-GovVoter
d_DecEq'45'GovVoter_184 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_184
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSTimelock
d_DecEq'45'HSTimelock_186 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSTimelock_186
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_DecEq'45'HSTimelock_320
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ix
d_DecEq'45'Ix_188 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_188
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1338
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LangDepView
d_DecEq'45'LangDepView_190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_190
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Language
d_DecEq'45'Language_192 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_192
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_194 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_194
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_444
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-NeedsHash
d_DecEq'45'NeedsHash_196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_196
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Netw
d_DecEq'45'Netw_198 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_198
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-P1Script
d_DecEq'45'P1Script_200 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_200
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_202 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_202
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PParams
d_DecEq'45'PParams_204 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_204
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_206 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_206
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_208 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_208
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
                  (coe v1)))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                     (coe v1))))
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_210
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Ser
d_DecEq'45'Ser_212 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_212
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Sig
d_DecEq'45'Sig_214 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_214
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Slot
d_DecEq'45'Slot_216 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_216
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-StakePoolParams
d_DecEq'45'StakePoolParams_218 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'StakePoolParams_218
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'StakePoolParams_1356
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_220 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_220
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-T
d_DecEq'45'T_222 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_222
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_224 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_224
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_226 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_226
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-THash
d_DecEq'45'THash_228 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_228
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Timelock
d_DecEq'45'Timelock_230 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_230
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.d_DecEq'45'Timelock_118
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d___12
            (coe v0))
         (coe MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du___14))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-TxId
d_DecEq'45'TxId_232 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_232
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1340
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-UpdT
d_DecEq'45'UpdT_234 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_234
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-VDeleg
d_DecEq'45'VDeleg_236 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_236
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Value
d_DecEq'45'Value_238 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_238
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DecEq-Vote
d_DecEq'45'Vote_240 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_240
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1214
-- Ledger.Conway.Foreign.HSStructures._.DecPo-Slot
d_DecPo'45'Slot_242 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_242
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv
d_DelegEnv_244 = ()
-- Ledger.Conway.Foreign.HSStructures._.DepositPurpose
d_DepositPurpose_248 = ()
-- Ledger.Conway.Foreign.HSStructures._.Deposits
d_Deposits_250 :: ()
d_Deposits_250 = erased
-- Ledger.Conway.Foreign.HSStructures._.DepositsOf
d_DepositsOf_252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds
d_DrepThresholds_254 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSAbstractFunctions
d_HSAbstractFunctions_258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2492
d_HSAbstractFunctions_258
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSAbstractFunctions_3128
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.HSTransactionStructure
d_HSTransactionStructure_260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_260
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.Epoch
d_Epoch_264 :: ()
d_Epoch_264 = erased
-- Ledger.Conway.Foreign.HSStructures._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_266 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_266
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ExUnits
d_ExUnits_268 :: ()
d_ExUnits_268 = erased
-- Ledger.Conway.Foreign.HSStructures._.GState
d_GState_276 = ()
-- Ledger.Conway.Foreign.HSStructures._.GStateOf
d_GStateOf_280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_GStateOf_280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction
d_GovAction_282 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionData
d_GovActionData_286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_GovActionData_286 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionID
d_GovActionID_290 :: ()
d_GovActionID_290 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActionOf
d_GovActionOf_292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState
d_GovActionState_294 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionType
d_GovActionType_298 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActionTypeOf
d_GovActionTypeOf_300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams
d_GovParams_302 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposal
d_GovProposal_306 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovProposalsOf
d_GovProposalsOf_310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_GovProposalsOf_310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovRole
d_GovRole_312 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovRoleCredential
d_GovRoleCredential_314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_GovRoleCredential_314 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovVote
d_GovVote_316 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoter
d_GovVoter_320 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovVoterOf
d_GovVoterOf_324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovVotes
d_GovVotes_326 = ()
-- Ledger.Conway.Foreign.HSStructures._.HSP1ScriptStructure
d_HSP1ScriptStructure_332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_HSP1ScriptStructure_332
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSP1ScriptStructure_322
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSP2ScriptStructure
d_HSP2ScriptStructure_334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
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
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
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
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
d_HasAttrSize'45'BootstrapAddr_350
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_226
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys
d_HasCCHotKeys_352 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys-CertState
d_HasCCHotKeys'45'CertState_356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
d_HasCCHotKeys'45'CertState_356
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'CertState_1586
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys-GState
d_HasCCHotKeys'45'GState_358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222
d_HasCCHotKeys'45'GState_358
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCCHotKeys'45'GState_1574
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
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1602
-- Ledger.Conway.Foreign.HSStructures._.HasCast-CertState
d_HasCast'45'CertState_368 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertState_368
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertState_1610
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DState
d_HasCast'45'DState_370 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DState_370
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1604
-- Ledger.Conway.Foreign.HSStructures._.HasCast-DelegEnv
d_HasCast'45'DelegEnv_372 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'DelegEnv_372
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DelegEnv_1612
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GState
d_HasCast'45'GState_374 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GState_374
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'GState_1608
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_376 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_376
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_902
-- Ledger.Conway.Foreign.HSStructures._.HasCast-GovVote
d_HasCast'45'GovVote_378 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1318
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected
d_HasCast'45'HashProtected_380 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080
-- Ledger.Conway.Foreign.HSStructures._.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_382 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_382
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
-- Ledger.Conway.Foreign.HSStructures._.HasCast-PState
d_HasCast'45'PState_384 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'PState_384
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1606
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
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_HasCoin'45'CertState_1600
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.HasCoin-TxOut
d_HasCoin'45'TxOut_392 ::
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_392
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3746
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.HasCredential
d_HasCredential_394 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_398 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_398
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_224
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts
d_HasDCerts_400 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts-Tx
d_HasDCerts'45'Tx_404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514
d_HasDCerts'45'Tx_404
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3622
-- Ledger.Conway.Foreign.HSStructures._.HasDReps
d_HasDReps_406 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-CertState
d_HasDReps'45'CertState_410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'CertState_410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'CertState_1584
-- Ledger.Conway.Foreign.HSStructures._.HasDReps-GState
d_HasDReps'45'GState_412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444
d_HasDReps'45'GState_412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDReps'45'GState_1572
-- Ledger.Conway.Foreign.HSStructures._.HasDState
d_HasDState_414 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDState-CertState
d_HasDState'45'CertState_418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482
d_HasDState'45'CertState_418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasDState'45'CertState_1576
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits
d_HasDeposits_420 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-Tx
d_HasDonations'45'Tx_424 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_424
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3632
-- Ledger.Conway.Foreign.HSStructures._.HasDonations-TxBody
d_HasDonations'45'TxBody_426 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3570
-- Ledger.Conway.Foreign.HSStructures._.HasFees-Tx
d_HasFees'45'Tx_428 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3620
-- Ledger.Conway.Foreign.HSStructures._.HasGState
d_HasGState_430 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGState-CertState
d_HasGState'45'CertState_434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522
d_HasGState'45'CertState_434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasGState'45'CertState_1580
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction
d_HasGovAction_436 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovActionState_440
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1206
-- Ledger.Conway.Foreign.HSStructures._.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovProposal_442
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1204
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType
d_HasGovActionType_444 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovAction_448
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_900
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovActionState_450
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1210
-- Ledger.Conway.Foreign.HSStructures._.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovProposal_452
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1208
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals
d_HasGovProposals_454 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals-Tx
d_HasGovProposals'45'Tx_458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534
d_HasGovProposals'45'Tx_458
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3624
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter
d_HasGovVoter_460 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
d_HasGovVoter'45'GovVote_464
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1198
-- Ledger.Conway.Foreign.HSStructures._.HasMaybeNetworkId
d_HasMaybeNetworkId_466 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId
d_HasNetworkId_470 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_474 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BaseAddr_474
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_218
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_476 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BootstrapAddr_476
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_220
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_478 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_478
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
-- Ledger.Conway.Foreign.HSStructures._.HasPParams
d_HasPParams_480 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPParams-CertEnv
d_HasPParams'45'CertEnv_484 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436
d_HasPParams'45'CertEnv_484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPParams'45'CertEnv_1558
-- Ledger.Conway.Foreign.HSStructures._.HasPState
d_HasPState_486 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPState-CertState
d_HasPState'45'CertState_490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502
d_HasPState'45'CertState_490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPState'45'CertState_1578
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy
d_HasPolicy_492 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
d_HasPolicy'45'GovProposal_496
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1202
-- Ledger.Conway.Foreign.HSStructures._.HasPools
d_HasPools_498 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasPools-CertState
d_HasPools'45'CertState_502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
d_HasPools'45'CertState_502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'CertState_1588
-- Ledger.Conway.Foreign.HSStructures._.HasPools-PState
d_HasPools'45'PState_504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238
d_HasPools'45'PState_504
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasPools'45'PState_1568
-- Ledger.Conway.Foreign.HSStructures._.HasReserves-Acnt
d_HasReserves'45'Acnt_506 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_506
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring
d_HasRetiring_508 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring-PState
d_HasRetiring'45'PState_512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254
d_HasRetiring'45'PState_512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRetiring'45'PState_1570
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress
d_HasRewardAddress_514 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards
d_HasRewards_518 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-CertState
d_HasRewards'45'CertState_522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'CertState_522
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'CertState_1582
-- Ledger.Conway.Foreign.HSStructures._.HasRewards-DState
d_HasRewards'45'DState_524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270
d_HasRewards'45'DState_524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasRewards'45'DState_1566
-- Ledger.Conway.Foreign.HSStructures._.HasStake
d_HasStake_526 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs
d_HasStakeDelegs_530 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-CertState
d_HasStakeDelegs'45'CertState_534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
d_HasStakeDelegs'45'CertState_534
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'CertState_1592
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs-DState
d_HasStakeDelegs'45'DState_536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302
d_HasStakeDelegs'45'DState_536
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasStakeDelegs'45'DState_1564
-- Ledger.Conway.Foreign.HSStructures._.HasTreasury-Acnt
d_HasTreasury'45'Acnt_538 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_538
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody
d_HasTxBody_540 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody-Tx
d_HasTxBody'45'Tx_544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494
d_HasTxBody'45'Tx_544
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3618
-- Ledger.Conway.Foreign.HSStructures._.HasTxId
d_HasTxId_546 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasTxId-Tx
d_HasTxId'45'Tx_550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554
d_HasTxId'45'Tx_550
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3630
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO
d_HasUTxO_552 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote
d_HasVote_556 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVote-GovVote
d_HasVote'45'GovVote_560 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
d_HasVote'45'GovVote_560
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1200
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs
d_HasVoteDelegs_562 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-CertState
d_HasVoteDelegs'45'CertState_566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
d_HasVoteDelegs'45'CertState_566
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'CertState_1590
-- Ledger.Conway.Foreign.HSStructures._.HasVoteDelegs-DState
d_HasVoteDelegs'45'DState_568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056
d_HasVoteDelegs'45'DState_568
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasVoteDelegs'45'DState_1562
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals
d_HasWithdrawals_570 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-CertEnv
d_HasWithdrawals'45'CertEnv_574 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'CertEnv_574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasWithdrawals'45'CertEnv_1560
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_576 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'Tx_576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3628
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_578 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'TxBody_578
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3626
-- Ledger.Conway.Foreign.HSStructures._.HashProtected
d_HashProtected_580 :: () -> ()
d_HashProtected_580 = erased
-- Ledger.Conway.Foreign.HSStructures._.Hashable-HSTimelock
d_Hashable'45'HSTimelock_582 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'HSTimelock_582
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.du_Hashable'45'HSTimelock_318
-- Ledger.Conway.Foreign.HSStructures._.Hashable-P1Script
d_Hashable'45'P1Script_584 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_584
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_586 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_586
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-Script
d_Hashable'45'Script_588 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_588
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_590 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_590
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2632
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.HsGovParams
d_HsGovParams_592 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_HsGovParams_592
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_636
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20)
-- Ledger.Conway.Foreign.HSStructures._.IsBootstrapAddr
d_IsBootstrapAddr_596 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_598 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_598
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_310
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_600 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_604 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_608 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.Ix
d_Ix_612 :: ()
d_Ix_612 = erased
-- Ledger.Conway.Foreign.HSStructures._.THash
d_THash_614 :: ()
d_THash_614 = erased
-- Ledger.Conway.Foreign.HSStructures._.KeyPair
d_KeyPair_618 :: ()
d_KeyPair_618 = erased
-- Ledger.Conway.Foreign.HSStructures._.LangDepView
d_LangDepView_620 :: ()
d_LangDepView_620 = erased
-- Ledger.Conway.Foreign.HSStructures._.Language
d_Language_622 :: ()
d_Language_622 = erased
-- Ledger.Conway.Foreign.HSStructures._.LanguageCostModels
d_LanguageCostModels_624 = ()
-- Ledger.Conway.Foreign.HSStructures._.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_628 :: Integer
d_MaxLovelaceSupply'7580'_628
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_630 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_630 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.MemoryEstimate
d_MemoryEstimate_632 :: ()
d_MemoryEstimate_632 = erased
-- Ledger.Conway.Foreign.HSStructures._.NeedsHash
d_NeedsHash_636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_NeedsHash_636 = erased
-- Ledger.Conway.Foreign.HSStructures._.Network
d_Network_638 :: ()
d_Network_638 = erased
-- Ledger.Conway.Foreign.HSStructures._.NetworkId
d_NetworkId_642 :: Integer
d_NetworkId_642
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NetworkIdOf
d_NetworkIdOf_644 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_644 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_650 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_650
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_652 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_652
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Number-Epoch
d_Number'45'Epoch_654 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_654
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.P1Script
d_P1Script_656 :: ()
d_P1Script_656 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure
d_P1ScriptStructure_658 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusScript
d_PlutusScript_662 :: ()
d_PlutusScript_662 = erased
-- Ledger.Conway.Foreign.HSStructures._.POSIXTimeRange
d_POSIXTimeRange_668 :: ()
d_POSIXTimeRange_668 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamGroup
d_PParamGroup_670 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParams
d_PParams_672 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff
d_PParamsDiff_676 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsOf
d_PParamsOf_680 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.UpdateT
d_UpdateT_682 :: ()
d_UpdateT_682 = erased
-- Ledger.Conway.Foreign.HSStructures._.PState
d_PState_684 = ()
-- Ledger.Conway.Foreign.HSStructures._.PStateOf
d_PStateOf_688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_PStateOf_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure
d_PlutusStructure_690 = ()
-- Ledger.Conway.Foreign.HSStructures._.PlutusV1
d_PlutusV1_694 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV1_694
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV2
d_PlutusV2_696 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV2_696
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.PlutusV3
d_PlutusV3_698 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_PlutusV3_698
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Policy
d_Policy_700 :: ()
d_Policy_700 = erased
-- Ledger.Conway.Foreign.HSStructures._.PolicyOf
d_PolicyOf_702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolEnv
d_PoolEnv_706 :: ()
d_PoolEnv_706 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds
d_PoolThresholds_708 = ()
-- Ledger.Conway.Foreign.HSStructures._.Pools
d_Pools_712 :: ()
d_Pools_712 = erased
-- Ledger.Conway.Foreign.HSStructures._.PoolsOf
d_PoolsOf_714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_716 ::
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_716
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Prices
d_Prices_718 :: ()
d_Prices_718 = erased
-- Ledger.Conway.Foreign.HSStructures._.ProposedPPUpdates
d_ProposedPPUpdates_720 :: ()
d_ProposedPPUpdates_720 = erased
-- Ledger.Conway.Foreign.HSStructures._.Quorum
d_Quorum_722 :: Integer
d_Quorum_722
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_724 :: Integer
d_RandomnessStabilisationWindow_724
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_726 :: Integer
d_RandomnessStabilisationWindow'7580'_726
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.RdmrPtr
d_RdmrPtr_728 :: ()
d_RdmrPtr_728 = erased
-- Ledger.Conway.Foreign.HSStructures._.Redeemer
d_Redeemer_730 :: ()
d_Redeemer_730 = erased
-- Ledger.Conway.Foreign.HSStructures._.Retiring
d_Retiring_744 :: ()
d_Retiring_744 = erased
-- Ledger.Conway.Foreign.HSStructures._.RetiringOf
d_RetiringOf_746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1262
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress
d_RewardAddress_748 = ()
-- Ledger.Conway.Foreign.HSStructures._.RewardAddressOf
d_RewardAddressOf_752 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_752 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Rewards
d_Rewards_754 :: ()
d_Rewards_754 = erased
-- Ledger.Conway.Foreign.HSStructures._.RewardsOf
d_RewardsOf_756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.SKey
d_SKey_760 :: ()
d_SKey_760 = erased
-- Ledger.Conway.Foreign.HSStructures._.Script
d_Script_764 :: ()
d_Script_764 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptAddr
d_ScriptAddr_766 :: ()
d_ScriptAddr_766 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBaseAddr
d_ScriptBaseAddr_768 :: ()
d_ScriptBaseAddr_768 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_770 :: ()
d_ScriptBootstrapAddr_770 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptHash
d_ScriptHash_772 :: ()
d_ScriptHash_772 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure
d_ScriptStructure_776 = ()
-- Ledger.Conway.Foreign.HSStructures._.Ser
d_Ser_782 :: ()
d_Ser_782 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-CostModel
d_Show'45'CostModel_784 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_784
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential
d_Show'45'Credential_786 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_786 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_350
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_788 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_788 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_354
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.Show-DrepThresholds
d_Show'45'DrepThresholds_790 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_790
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.HSStructures._.Show-Epoch
d_Show'45'Epoch_792 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_792
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-ExUnits
d_Show'45'ExUnits_794 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_794
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-GovRole
d_Show'45'GovRole_796 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_796
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_834
-- Ledger.Conway.Foreign.HSStructures._.Show-Language
d_Show'45'Language_798 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_798
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-LanguageCostModels
d_Show'45'LanguageCostModels_800 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_800
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_450
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-Network
d_Show'45'Network_802 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_802
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PParams
d_Show'45'PParams_804 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_804
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-PoolThresholds
d_Show'45'PoolThresholds_806 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_806
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.Show-Prices
d_Show'45'Prices_808 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_808
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-RewardAddress
d_Show'45'RewardAddress_810 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_810
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_352
-- Ledger.Conway.Foreign.HSStructures._.Show-ScriptHash
d_Show'45'ScriptHash_812 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_812
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_814 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_814
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_816 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_816
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-THash
d_Show'45'THash_818 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_818
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.Show-VDeleg
d_Show'45'VDeleg_820 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_820
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Sig
d_Sig_822 :: ()
d_Sig_822 = erased
-- Ledger.Conway.Foreign.HSStructures._.Slot
d_Slot_824 :: ()
d_Slot_824 = erased
-- Ledger.Conway.Foreign.HSStructures._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_826 :: Integer
d_SlotsPerEpoch'7580'_826
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Slotʳ
d_Slot'691'_828 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_828
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindow
d_StabilityWindow_830 :: Integer
d_StabilityWindow_830
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.StabilityWindowᶜ
d_StabilityWindow'7580'_832 :: Integer
d_StabilityWindow'7580'_832
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Stake
d_Stake_834 :: ()
d_Stake_834 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegs
d_StakeDelegs_836 :: ()
d_StakeDelegs_836 = erased
-- Ledger.Conway.Foreign.HSStructures._.StakeDelegsOf
d_StakeDelegsOf_838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakeOf
d_StakeOf_840 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1294
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams
d_StakePoolParams_842 = ()
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_846 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_846
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_848 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_848
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-Hashable
d_T'45'Hashable_850 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_850
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.T-isHashable
d_T'45'isHashable_852 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_852
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.Timelock
d_Timelock_856 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra
d_TokenAlgebra_858 = ()
-- Ledger.Conway.Foreign.HSStructures._.Tx
d_Tx_866 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBody
d_TxBody_870 = ()
-- Ledger.Conway.Foreign.HSStructures._.TxBodyOf
d_TxBodyOf_874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_TxBodyOf_874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxId
d_TxId_876 :: ()
d_TxId_876 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxIdOf
d_TxIdOf_878 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554 ->
  AgdaAny -> Integer
d_TxIdOf_878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxIn
d_TxIn_880 :: ()
d_TxIn_880 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOut
d_TxOut_882 :: ()
d_TxOut_882 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxOutʰ
d_TxOut'688'_884 :: ()
d_TxOut'688'_884 = erased
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses
d_TxWitnesses_886 = ()
-- Ledger.Conway.Foreign.HSStructures._.UTxO
d_UTxO_890 :: ()
d_UTxO_890 = erased
-- Ledger.Conway.Foreign.HSStructures._.UTxOOf
d_UTxOOf_892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3398 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3406
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Update
d_Update_894 :: ()
d_Update_894 = erased
-- Ledger.Conway.Foreign.HSStructures._.VDeleg
d_VDeleg_898 = ()
-- Ledger.Conway.Foreign.HSStructures._.VKey
d_VKey_900 :: ()
d_VKey_900 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyAddr
d_VKeyAddr_902 :: ()
d_VKeyAddr_902 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBaseAddr
d_VKeyBaseAddr_904 :: ()
d_VKeyBaseAddr_904 = erased
-- Ledger.Conway.Foreign.HSStructures._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_906 :: ()
d_VKeyBootstrapAddr_906 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value
d_Value_910 :: ()
d_Value_910 = erased
-- Ledger.Conway.Foreign.HSStructures._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_912 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_912
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegs
d_VoteDelegs_914 :: ()
d_VoteDelegs_914 = erased
-- Ledger.Conway.Foreign.HSStructures._.VoteDelegsOf
d_VoteDelegsOf_916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.VoteOf
d_VoteOf_918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Withdrawals
d_Withdrawals_920 :: ()
d_Withdrawals_920 = erased
-- Ledger.Conway.Foreign.HSStructures._.WithdrawalsOf
d_WithdrawalsOf_922 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_922 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.activeDRepsOf
d_activeDRepsOf_924 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_924
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1470
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.activeInEpoch
d_activeInEpoch_926 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_926 = erased
-- Ledger.Conway.Foreign.HSStructures._.adHashingScheme
d_adHashingScheme_928 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_928
  = coe
      MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.d_isHashableSet'45'ℕ_34
-- Ledger.Conway.Foreign.HSStructures._.addEpoch
d_addEpoch_930 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_930
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addSlot
d_addSlot_932 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_932
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.addValue
d_addValue_934 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_934
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.applyUpdate
d_applyUpdate_936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_936
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.coin
d_coin_940 :: Integer -> Integer
d_coin_940
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin-inject-lemma
d_coin'45'inject'45'lemma_942 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_942 = erased
-- Ledger.Conway.Foreign.HSStructures._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_944
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.coin∘inject≗id
d_coin'8728'inject'8791'id_946 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_946 = erased
-- Ledger.Conway.Foreign.HSStructures._.cryptoStructure
d_cryptoStructure_948 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_948
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Foreign.Crypto.Structure.d_HSCryptoStructure_34
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.cwitness
d_cwitness_950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_cwitness_950
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_cwitness_1360
-- Ledger.Conway.Foreign.HSStructures._.e<sucᵉ
d_e'60'suc'7497'_958 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_e'60'suc'7497'_958
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epoch
d_epoch_960 :: Integer -> Integer
d_epoch_960
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.epochStructure
d_epochStructure_962 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_962
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'46'extendedlambda0_362
      (coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8)
-- Ledger.Conway.Foreign.HSStructures._.evalTimelock
d_evalTimelock_976 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.firstSlot
d_firstSlot_978 :: Integer -> Integer
d_firstSlot_978
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.gaData
d_gaData_980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.gaType
d_gaType_982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.getLanguage
d_getLanguage_984 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_getLanguage_984
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.getScriptHash
d_getScriptHash_986 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_986
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_328
-- Ledger.Conway.Foreign.HSStructures._.getValue
d_getValue_988 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_988
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3634
-- Ledger.Conway.Foreign.HSStructures._.getValueʰ
d_getValue'688'_990 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_990
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3650
-- Ledger.Conway.Foreign.HSStructures._.globalConstants
d_globalConstants_992 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_992
  = coe MAlonzo.Code.Ledger.Core.Foreign.Epoch.d_HSGlobalConstants_8
-- Ledger.Conway.Foreign.HSStructures._.govParams
d_govParams_994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_994
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HsGovParams_636
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.govStructure
d_govStructure_996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_996
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.govVoterCredential
d_govVoterCredential_998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_998
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1426
-- Ledger.Conway.Foreign.HSStructures._.hashRespectsUnion
d_hashRespectsUnion_1000 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_1000
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.inject
d_inject_1002 :: Integer -> Integer
d_inject_1002
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.isBootstrapAddr
d_isBootstrapAddr_1004 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88
d_isBootstrapAddr_1004
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_278
-- Ledger.Conway.Foreign.HSStructures._.isGovVoterDRep
d_isGovVoterDRep_1006 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1006
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1422
-- Ledger.Conway.Foreign.HSStructures._.isKeyHash
d_isKeyHash_1008 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_1008 = erased
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObj
d_isKeyHashObj_1010 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1010
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1012 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1012
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSStructures._.isKeyPair
d_isKeyPair_1014 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1014 = erased
-- Ledger.Conway.Foreign.HSStructures._.isNativeScript
d_isNativeScript_1016 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_1016 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script
d_isP1Script_1018 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_1018 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP1Script?
d_isP1Script'63'_1020 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_1020
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
-- Ledger.Conway.Foreign.HSStructures._.isP2Script
d_isP2Script_1022 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_1022 = erased
-- Ledger.Conway.Foreign.HSStructures._.isP2Script?
d_isP2Script'63'_1024 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_1024
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
-- Ledger.Conway.Foreign.HSStructures._.isPoolRegistered
d_isPoolRegistered_1026 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146
d_isPoolRegistered_1026
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_isPoolRegistered_1692
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.isScript
d_isScript_1028 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isScriptAddr
d_isScriptAddr_1030 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1030 = erased
-- Ledger.Conway.Foreign.HSStructures._.isScriptObj
d_isScriptObj_1032 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1032
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSStructures._.isScriptRewardAddress
d_isScriptRewardAddress_1034 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_1034 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned
d_isSigned_1036 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1036 = erased
-- Ledger.Conway.Foreign.HSStructures._.isSigned-correct
d_isSigned'45'correct_1038 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1038 = erased
-- Ledger.Conway.Foreign.HSStructures._.isVKey
d_isVKey_1040 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.isVKeyAddr
d_isVKeyAddr_1042 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1042 = erased
-- Ledger.Conway.Foreign.HSStructures._.khs
d_khs_1044 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1044
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.language
d_language_1046 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_language_1046
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.languageCostModels
d_languageCostModels_1048 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.lookupScriptHash
d_lookupScriptHash_1050 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1050
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3732
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.monoid
d_monoid_1054 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_1054
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1066
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.netId
d_netId_1056 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_1056
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
-- Ledger.Conway.Foreign.HSStructures._.p1s
d_p1s_1058 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_1058
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.paramsWF-elim
d_paramsWF'45'elim_1060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1060 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.HSStructures._.paramsWellFormed
d_paramsWellFormed_1062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_1062 = erased
-- Ledger.Conway.Foreign.HSStructures._.payCred
d_payCred_1064 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_1064
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_250
-- Ledger.Conway.Foreign.HSStructures._.pkk
d_pkk_1066 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1066
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.policies
d_policies_1068 :: Integer -> [Integer]
d_policies_1068
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.positivePParams
d_positivePParams_1070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_1070
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.HSStructures._.ppUpd
d_ppUpd_1072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1072
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ppWF?
d_ppWF'63'_1074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1074
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.ppdWellFormed
d_ppdWellFormed_1076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_ppdWellFormed_1076 = erased
-- Ledger.Conway.Foreign.HSStructures._.preoEpoch
d_preoEpoch_1078 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_1078
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.proposedCC
d_proposedCC_1080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1080
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1434
-- Ledger.Conway.Foreign.HSStructures._.ps
d_ps_1082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_1082
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.rawMonoid
d_rawMonoid_1084 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_1084
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
                    (coe
                       MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                          (coe v1))) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.refScripts
d_refScripts_1086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1086
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3674
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.rewardsBalance
d_rewardsBalance_1096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  Integer
d_rewardsBalance_1096
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardsBalance_1594
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
            (coe
               MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.scriptOuts
d_scriptOuts_1098 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1098
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3660
-- Ledger.Conway.Foreign.HSStructures._.scriptStructure
d_scriptStructure_1100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d_scriptStructure_1100
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_HSScriptStructure_372
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.sign
d_sign_1102 :: Integer -> Integer -> Integer
d_sign_1102
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
               (coe
                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.size
d_size_1104 :: Integer -> Integer
d_size_1104
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.stakeCred
d_stakeCred_1106 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_1106
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_252
-- Ledger.Conway.Foreign.HSStructures._.sucᵉ
d_suc'7497'_1108 :: Integer -> Integer
d_suc'7497'_1108
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.sumᵛ
d_sum'7515'_1110 :: [Integer] -> Integer
d_sum'7515'_1110
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.toP1Script
d_toP1Script_1112 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302
d_toP1Script_1112
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.HSStructures._.toP2Script
d_toP2Script_1114 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328
d_toP2Script_1114
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.HSStructures._.tokenAlgebra
d_tokenAlgebra_1116 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_1116
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Coin.du_Coin'45'TokenAlgebra_132
-- Ledger.Conway.Foreign.HSStructures._.txInsScript
d_txInsScript_1118 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_1118
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3668
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txInsVKey
d_txInsVKey_1120 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_1120
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3654
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txOutHash
d_txOutHash_1122 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1122
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3640
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.txidBytes
d_txidBytes_1124 :: Integer -> Integer
d_txidBytes_1124 v0 = coe v0
-- Ledger.Conway.Foreign.HSStructures._.txscripts
d_txscripts_1126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1126
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3722
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.updateGroups
d_updateGroups_1128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1128
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.validP1Script
d_validP1Script_1136 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  ()
d_validP1Script_1136 = erased
-- Ledger.Conway.Foreign.HSStructures._.validPlutusScript
d_validPlutusScript_1138 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  ()
d_validPlutusScript_1138 = erased
-- Ledger.Conway.Foreign.HSStructures._.ε
d_ε_1140 :: Integer
d_ε_1140
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Class.Monoid.Core.d_ε_20
            (coe
               MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                     (coe v1))))))
-- Ledger.Conway.Foreign.HSStructures._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1142 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1142 = erased
-- Ledger.Conway.Foreign.HSStructures._.ℕEpochStructure
d_ℕEpochStructure_1144 ::
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_1144
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.ℕtoEpoch
d_ℕtoEpoch_1146 :: Integer -> Integer
d_ℕtoEpoch_1146
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≤-predᵉ
d_'8804''45'pred'7497'_1148 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_1148
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.≥ᵉ-Dec
d_'8805''7497''45'Dec_1150 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_1150
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                  (coe v1)))))
-- Ledger.Conway.Foreign.HSStructures._.Acnt.reserves
d_reserves_1204 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_1204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Acnt.treasury
d_treasury_1206 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_1206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.hash
d_hash_1210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994 ->
  Integer
d_hash_1210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1002
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Anchor.url
d_url_1212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1000
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.net
d_net_1216 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_1216 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.pay
d_pay_1218 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1218 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BaseAddr.stake
d_stake_1220 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_1220 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.attrsSize
d_attrsSize_1224 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_1224 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.net
d_net_1226 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_1226 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.BootstrapAddr.pay
d_pay_1228 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_1228 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.coldCreds
d_coldCreds_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_coldCreds_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_coldCreds_1398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.epoch
d_epoch_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  Integer
d_epoch_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_epoch_1390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.pp
d_pp_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pp_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pp_1392 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.votes
d_votes_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
d_votes_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_votes_1394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertEnv.wdrls
d_wdrls_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1378 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_wdrls_1396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.dState
d_dState_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_dState_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.gState
d_gState_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_gState_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1458
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.CertState.pState
d_pState_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_pState_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Dec-isSigned
d_Dec'45'isSigned_1258 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1258
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1260 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1260
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-Ser
d_DecEq'45'Ser_1262 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1262
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-Sig
d_DecEq'45'Sig_1264 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1264
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.DecEq-THash
d_DecEq'45'THash_1266 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1266
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.THash
d_THash_1268 :: ()
d_THash_1268 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.KeyPair
d_KeyPair_1270 :: ()
d_KeyPair_1270 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.SKey
d_SKey_1272 :: ()
d_SKey_1272 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.ScriptHash
d_ScriptHash_1274 :: ()
d_ScriptHash_1274 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Ser
d_Ser_1276 :: ()
d_Ser_1276 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-ScriptHash
d_Show'45'ScriptHash_1278 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1278
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Show-THash
d_Show'45'THash_1280 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1280
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.Sig
d_Sig_1282 :: ()
d_Sig_1282 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.T-Hashable
d_T'45'Hashable_1284 ::
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_1284
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.VKey
d_VKey_1286 :: ()
d_VKey_1286 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isKeyPair
d_isKeyPair_1288 ::
  Integer ->
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 -> ()
d_isKeyPair_1288 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned
d_isSigned_1290 ::
  MAlonzo.Code.Ledger.Core.Foreign.Crypto.Base.T_HSVKey_10 ->
  Integer -> Integer -> ()
d_isSigned_1290 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.isSigned-correct
d_isSigned'45'correct_1292 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1292 = erased
-- Ledger.Conway.Foreign.HSStructures._.Crypto.khs
d_khs_1294 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_1294
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.pkk
d_pkk_1296 ::
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_1296
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
         (coe
            MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.Crypto.sign
d_sign_1298 :: Integer -> Integer -> Integer
d_sign_1298
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d___292
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.DState.rewards
d_rewards_1320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.stakeDelegs
d_stakeDelegs_1322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DState.voteDelegs
d_voteDelegs_1324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.delegatees
d_delegatees_1328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_delegatees_1328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_delegatees_1474
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pools
d_pools_1330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1472
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DelegEnv.pparams
d_pparams_1332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DelegEnv_1462 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_pparams_1332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pparams_1470
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P1
d_P1_1346 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2a
d_P2a_1348 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P2b
d_P2b_1350 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P3
d_P3_1352 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P4
d_P4_1354 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5a
d_P5a_1356 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5b
d_P5b_1358 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5c
d_P5c_1360 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P5d
d_P5d_1362 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.DrepThresholds.P6
d_P6_1364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.ccHotKeys
d_ccHotKeys_1368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_ccHotKeys_1442
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GState.dreps
d_dreps_1370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dreps_1440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaData
d_gaData_1374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_1374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovAction.gaType
d_gaType_1376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_1376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.action
d_action_1380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_action_1380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1132
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.expiresIn
d_expiresIn_1382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  Integer
d_expiresIn_1382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.prevAction
d_prevAction_1384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  AgdaAny
d_prevAction_1384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1134
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.returnAddr
d_returnAddr_1386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActionState.votes
d_votes_1388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026
d_votes_1388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovAction
d_'61''61''45'GovAction_1408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  Bool
d_'61''61''45'GovAction_1408
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_942
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovActionData
d_'61''61''45'GovActionData_1410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_1410
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_924
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-GovProposal
d_'61''61''45'GovProposal_1412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Bool
d_'61''61''45'GovProposal_1412
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1326
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.==-Set
d_'61''61''45'Set_1414 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_1414 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_912
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Anchor
d_Anchor_1416 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DReps
d_DReps_1426 :: ()
d_DReps_1426 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DRepsOf
d_DRepsOf_1428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_1430 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_1430
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1218
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_1432 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_1432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_906
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_1434 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1434
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1212
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_1436 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_1436
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1220
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_1438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_1438
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1324
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1440 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1440
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.DecEq-Vote
d_DecEq'45'Vote_1442 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1442
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1214
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovAction
d_GovAction_1444 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionData
d_GovActionData_1448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_GovActionData_1448 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionID
d_GovActionID_1450 :: ()
d_GovActionID_1450 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionOf
d_GovActionOf_1452 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_1452 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionState
d_GovActionState_1454 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionType
d_GovActionType_1458 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovActionTypeOf
d_GovActionTypeOf_1460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_1460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal
d_GovProposal_1462 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRole
d_GovRole_1466 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovRoleCredential
d_GovRoleCredential_1468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_GovRoleCredential_1468 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote
d_GovVote_1470 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter
d_GovVoter_1474 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoterOf
d_GovVoterOf_1478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_1478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes
d_GovVotes_1480 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_1484 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_1484
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_902
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_1486 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_1486
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1318
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_1488 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_1488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_1490 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_1490
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps
d_HasDReps_1492 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction
d_HasGovAction_1496 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_1500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovActionState_1500
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1206
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_1502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovProposal_1502
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1204
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType
d_HasGovActionType_1504 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_1508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovAction_1508
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_900
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_1510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovActionState_1510
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1210
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_1512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovProposal_1512
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1208
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter
d_HasGovVoter_1514 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_1518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
d_HasGovVoter'45'GovVote_1518
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1198
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy
d_HasPolicy_1520 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_1524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
d_HasPolicy'45'GovProposal_1524
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1202
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote
d_HasVote_1526 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_1530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
d_HasVote'45'GovVote_1530
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1200
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs
d_HasVoteDelegs_1532 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HashProtected
d_HashProtected_1536 :: () -> ()
d_HashProtected_1536 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.NeedsHash
d_NeedsHash_1540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_NeedsHash_1540 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Policy
d_Policy_1546 :: ()
d_Policy_1546 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.PolicyOf
d_PolicyOf_1548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-GovRole
d_Show'45'GovRole_1552 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_1552
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_834
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Show-VDeleg
d_Show'45'VDeleg_1554 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_1554
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1320
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VDeleg
d_VDeleg_1562 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.Vote
d_Vote_1564 = ()
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegs
d_VoteDelegs_1566 :: ()
d_VoteDelegs_1566 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteDelegsOf
d_VoteDelegsOf_1568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.VoteOf
d_VoteOf_1570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_1570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeDRepsOf
d_activeDRepsOf_1574 ::
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_1574
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (\ v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1470
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
                 (coe v1))
              v3 v4 v5))
-- Ledger.Conway.Foreign.HSStructures._.GovActions.activeInEpoch
d_activeInEpoch_1576 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_1576 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaData
d_gaData_1578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_1578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.gaType
d_gaType_1580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_1580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.govVoterCredential
d_govVoterCredential_1582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_1582
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1426
-- Ledger.Conway.Foreign.HSStructures._.GovActions.isGovVoterDRep
d_isGovVoterDRep_1584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_1584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1422
-- Ledger.Conway.Foreign.HSStructures._.GovActions.proposedCC
d_proposedCC_1588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_1588
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1434
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.action
d_action_1604 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_action_1604 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1100
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.anchor
d_anchor_1606 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994
d_anchor_1606 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1110
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.deposit
d_deposit_1608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Integer
d_deposit_1608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1106
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.policy
d_policy_1610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Maybe Integer
d_policy_1610 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1104
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.prevAction
d_prevAction_1612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  AgdaAny
d_prevAction_1612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1102
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovProposal.returnAddr
d_returnAddr_1614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_1614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1108
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.anchor
d_anchor_1626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994
d_anchor_1626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1022
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.gid
d_gid_1628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1016
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.vote
d_vote_1630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_vote_1630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1020
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVote.voter
d_voter_1632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_voter_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1018
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvCredential
d_gvCredential_1636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  AgdaAny
d_gvCredential_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_990
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVoter.gvRole
d_gvRole_1638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826
d_gvRole_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_988
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvCC
d_gvCC_1642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1034
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvDRep
d_gvDRep_1644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1036
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.GovVotes.gvSPO
d_gvSPO_1646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1038
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasDReps.DRepsOf
d_DRepsOf_1650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovAction.GovActionOf
d_GovActionOf_1654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_1658 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_1662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasPolicy.PolicyOf
d_PolicyOf_1666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe Integer
d_PolicyOf_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVote.VoteOf
d_VoteOf_1670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_1674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1694 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.UpdateT
d_UpdateT_1696 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_1696 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.applyUpdate
d_applyUpdate_1698 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppUpd
d_ppUpd_1700 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_1700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppWF?
d_ppWF'63'_1702 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.GovParams.ppdWellFormed
d_ppdWellFormed_1704 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_1704 = erased
-- Ledger.Conway.Foreign.HSStructures._.GovParams.updateGroups
d_updateGroups_1706 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptHash
d_psScriptHash_1710 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptHash_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptHash_336
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptLanguage
d_psScriptLanguage_1712 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.T_HSLanguage_10
d_psScriptLanguage_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptLanguage_340
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSPlutusScript.psScriptSize
d_psScriptSize_1714 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSPlutusScript_328 ->
  Integer
d_psScriptSize_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_psScriptSize_338
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.timelock
d_timelock_1718 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Timelock.T_Timelock_104
d_timelock_1718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_timelock_310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptHash
d_tlScriptHash_1720 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptHash_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptHash_312
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HSTimelock.tlScriptSize
d_tlScriptSize_1722 ::
  MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302 ->
  Integer
d_tlScriptSize_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.d_tlScriptSize_314
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_1726 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_1726 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCHotKeys.CCHotKeysOf
d_CCHotKeysOf_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCCHotKeys_1222 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_CCHotKeysOf_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_1734 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCertState.CertStateOf
d_CertStateOf_1738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasCertState_1542 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1446
d_CertStateOf_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CertStateOf_1550
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasCredential.CredentialOf
d_CredentialOf_1742 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_1742 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDCerts.DCertsOf
d_DCertsOf_1746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_DCertsOf_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDState.DStateOf
d_DStateOf_1750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDState_1482 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1402
d_DStateOf_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasDeposits.DepositsOf
d_DepositsOf_1754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasDeposits_1186 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DepositsOf_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DepositsOf_1194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGState.GStateOf
d_GStateOf_1758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasGState_1522 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1434
d_GStateOf_1758 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1530
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasGovProposals.GovProposalsOf
d_GovProposalsOf_1762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_GovProposalsOf_1762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_1766 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_1766 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_1770 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_1770 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPParams.PParamsOf
d_PParamsOf_1774 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPState.PStateOf
d_PStateOf_1778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPState_1502 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418
d_PStateOf_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1510
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasPools.PoolsOf
d_PoolsOf_1782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1238 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_PoolsOf_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRetiring.RetiringOf
d_RetiringOf_1786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRetiring_1254 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RetiringOf_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RetiringOf_1262
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_1790 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_1790 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasRewards.RewardsOf
d_RewardsOf_1794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasRewards_1270 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_RewardsOf_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_RewardsOf_1278
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStake.StakeOf
d_StakeOf_1798 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1286 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeOf_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeOf_1294
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasStakeDelegs.StakeDelegsOf
d_StakeDelegsOf_1802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1302 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_StakeDelegsOf_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_StakeDelegsOf_1310
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxBody.TxBodyOf
d_TxBodyOf_1806 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_TxBodyOf_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasTxId.TxIdOf
d_TxIdOf_1810 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554 ->
  AgdaAny -> Integer
d_TxIdOf_1810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasUTxO.UTxOOf
d_UTxOOf_1814 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3398 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3406
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_1818 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_1818 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.homo
d_homo_1826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1826 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1828 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1830 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1832 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidHomomorphism.cong
d_cong_1834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1834 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.homo
d_homo_1838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1838 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.injective
d_injective_1840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1840 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1842 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1844 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_1844 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1846 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1846 ~v0 v1 = du_isMagmaMonomorphism_1846 v1
du_isMagmaMonomorphism_1846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_1846 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1848 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_1850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1852 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1852 v0
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
d_isRelIsomorphism_1854 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_1854 ~v0 v1 = du_isRelIsomorphism_1854 v1
du_isRelIsomorphism_1854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_1854 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1856 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1856 ~v0 v1 = du_isRelMonomorphism_1856 v1
du_isRelMonomorphism_1856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1856 v0
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
d_surjective_1858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1858 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1860 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidIsomorphism.cong
d_cong_1862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1862 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.homo
d_homo_1866 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1866 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.injective
d_injective_1868 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1868 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1870 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_1870 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1872 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_1872 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1874 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_1874 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1876 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1876 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1878 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_1878 ~v0 v1 = du_isRelMonomorphism_1878 v1
du_isRelMonomorphism_1878 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_1878 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1880 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1880 = erased
-- Ledger.Conway.Foreign.HSStructures._.IsMonoidMonomorphism.cong
d_cong_1882 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1882 = erased
-- Ledger.Conway.Foreign.HSStructures._.LanguageCostModels.languageCostModels
d_languageCostModels_1886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_1886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1890 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_1894 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.P1Script
d_P1Script_1896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_1896 = erased
-- Ledger.Conway.Foreign.HSStructures._.P1ScriptStructure.validP1Script
d_validP1Script_1898 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1898 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParams.Emax
d_Emax_1914 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_Emax_1914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a
d_a_1916 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_1916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.a0
d_a0_1918 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.b
d_b_1920 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMaxTermLength
d_ccMaxTermLength_1922 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_1922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.ccMinSize
d_ccMinSize_1924 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_1924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1926 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_1926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.collateralPercentage
d_collateralPercentage_1928 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_1928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdls
d_costmdls_1930 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_1930
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParams.costmdlsAssoc
d_costmdlsAssoc_1932 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdlsAssoc_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepActivity
d_drepActivity_1934 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepActivity_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepDeposit
d_drepDeposit_1936 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.drepThresholds
d_drepThresholds_1938 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionDeposit
d_govActionDeposit_1940 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.govActionLifetime
d_govActionLifetime_1942 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_1942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.keyDeposit
d_keyDeposit_1944 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockExUnits
d_maxBlockExUnits_1946 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxBlockSize
d_maxBlockSize_1948 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxCollateralInputs
d_maxCollateralInputs_1950 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxHeaderSize
d_maxHeaderSize_1952 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1954 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1956 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_1956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxExUnits
d_maxTxExUnits_1958 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxTxSize
d_maxTxSize_1960 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_1960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.maxValSize
d_maxValSize_1962 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_1962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1964 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.minUTxOValue
d_minUTxOValue_1966 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.monetaryExpansion
d_monetaryExpansion_1968 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.nopt
d_nopt_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolDeposit
d_poolDeposit_1972 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.poolThresholds
d_poolThresholds_1974 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_1974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.prices
d_prices_1976 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.pv
d_pv_1978 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1980 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.refScriptCostStride
d_refScriptCostStride_1982 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParams.treasuryCut
d_treasuryCut_1984 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1984 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.UpdateT
d_UpdateT_1988 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_1988 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.applyUpdate
d_applyUpdate_1990 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_1990 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppWF?
d_ppWF'63'_1992 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1992 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_1994 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsDiff.updateGroups
d_updateGroups_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._?↗_
d__'63''8599'__2000 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2000 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__2002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d__'8746''737''7580''7504'__2002
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_442
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_570
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1516
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                                (coe v1))))
                       (coe
                          MAlonzo.Code.Data.List.Base.du__'43''43'__32
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
                             (coe v2))
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
                             (coe v3))))))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2004 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2004
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
               (coe v1))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2006 = ()
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_2010
  = let v0
          = MAlonzo.Code.Ledger.Core.Foreign.ExternalFunctions.d_dummyExternalFunctions_20 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Foreign.ExternalStructures.d_HSTransactionStructure_682
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v1))))
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2012 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_2012
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_2014
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_2016
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_2018
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_2020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_2020
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_2022
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_2024 = erased
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2026 v0
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
d_'8801''45'update_2028 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_2028 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_Emax_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a
d_a_2034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.a0
d_a0_2036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.b
d_b_2038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdls_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepActivity_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2068 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2076 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2080 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2082 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_2084 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2086 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2088 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2090 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.prices
d_prices_2092 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.pv
d_pv_2094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_2100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_2100 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.fPools
d_fPools_2104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fPools_2104 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_fPools_1428
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.pools
d_pools_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PState.retiring
d_retiring_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1418 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1430
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2112 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2112 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.CostModel
d_CostModel_2114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_2114 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T
d_T_2116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_2116 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.THash
d_THash_2118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_2118 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dataʰ
d_Data'688'_2120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Datum
d_Datum_2122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_2122 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2124 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2126 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2128 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2130 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-T
d_DecEq'45'T_2136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2136 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2138 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.ExUnits
d_ExUnits_2142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_2142 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.LangDepView
d_LangDepView_2146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_2146 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Language
d_Language_2148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_2148 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusScript
d_PlutusScript_2150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_2150 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV1
d_PlutusV1_2152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV2
d_PlutusV2_2154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.PlutusV3
d_PlutusV3_2156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Prices
d_Prices_2158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_2158 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Redeemer
d_Redeemer_2160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_2160 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Language
d_Show'45'Language_2166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-Prices
d_Show'45'Prices_2168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.Show-THash
d_Show'45'THash_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2170 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-Hashable
d_T'45'Hashable_2172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2172 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.T-isHashable
d_T'45'isHashable_2174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2174 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.language
d_language_2176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.validPlutusScript
d_validPlutusScript_2178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2178 = erased
-- Ledger.Conway.Foreign.HSStructures._.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q1
d_Q1_2184 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2a
d_Q2a_2186 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q2b
d_Q2b_2188 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q4
d_Q4_2190 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.PoolThresholds.Q5
d_Q5_2192 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.net
d_net_2196 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  Integer
d_net_2196 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.RewardAddress.stake
d_stake_2198 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_2198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2202 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.CostModel
d_CostModel_2204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_CostModel_2204 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T
d_T_2206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_T_2206 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.THash
d_THash_2208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_THash_2208 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dataʰ
d_Data'688'_2210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Datum
d_Datum_2212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Datum_2212 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2228
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_444
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-T
d_DecEq'45'T_2232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2232 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2234 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ExUnits
d_ExUnits_2238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_ExUnits_2238 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2244
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LangDepView
d_LangDepView_2246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_LangDepView_2246 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Language
d_Language_2248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Language_2248 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels
d_LanguageCostModels_2250 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.P1Script
d_P1Script_2254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_P1Script_2254 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusScript
d_PlutusScript_2256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_PlutusScript_2256 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV1
d_PlutusV1_2258 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV1_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV2
d_PlutusV2_2260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV2_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.PlutusV3
d_PlutusV3_2262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV3_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Prices
d_Prices_2264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Prices_2264 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Redeemer
d_Redeemer_2266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Redeemer_2266 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Script
d_Script_2268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Script_2268 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Language
d_Show'45'Language_2274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_2276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_2276
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_450
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-Prices
d_Show'45'Prices_2278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.Show-THash
d_Show'45'THash_2280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2280 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-Hashable
d_T'45'Hashable_2282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_2282 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.T-isHashable
d_T'45'isHashable_2284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_2284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.getLanguage
d_getLanguage_2286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_2286
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isNativeScript
d_isNativeScript_2290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_2290 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script
d_isP1Script_2292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_2292 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP1Script?
d_isP1Script'63'_2294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_2294 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script
d_isP2Script_2296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_2296 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.isP2Script?
d_isP2Script'63'_2298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_2298 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
      v1
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.language
d_language_2300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny
d_language_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.languageCostModels
d_languageCostModels_2302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.p1s
d_p1s_2306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.ps
d_ps_2308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP1Script
d_toP1Script_2310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.toP2Script
d_toP2Script_2312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validP1Script
d_validP1Script_2314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2314 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.validPlutusScript
d_validPlutusScript_2316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2316 = erased
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_2318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_2322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.cost
d_cost_2326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  Integer
d_cost_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_cost_1160 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.margin
d_margin_2328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_margin_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_margin_1162
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.owners
d_owners_2330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  [Integer]
d_owners_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_owners_1158
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.pledge
d_pledge_2332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  Integer
d_pledge_2332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pledge_1164
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.StakePoolParams.rewardAccount
d_rewardAccount_2334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1146 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_rewardAccount_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1166
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._∙_
d__'8729'__2352 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2352 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≈_
d__'8776'__2354 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2354 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2356 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2356 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2358 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2360 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2362 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2366 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2370 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value
d_Value_2374 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_2374 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2376 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.addValue
d_addValue_2378 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_2378
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin
d_coin_2380 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2382 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2382 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2384 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_2384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_2386 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_2386 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.inject
d_inject_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.monoid
d_monoid_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_2390 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.policies
d_policies_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [Integer]
d_policies_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.rawMonoid
d_rawMonoid_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_2394 v0
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
d_size_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.sumᵛ
d_sum'7515'_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.ε
d_ε_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_2400 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2404 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2404 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2406 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2406 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2408 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2408 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2410 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2410 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2412 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2412 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2416 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2422 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_2422 ~v0 = du_isMagmaIsomorphism_2422
du_isMagmaIsomorphism_2422 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_2422 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2424 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2424 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2424 v2
du_isMagmaMonomorphism_2424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2424 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2426 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2426 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_2428 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2430 v0
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
d_isRelIsomorphism_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_2432 ~v0 ~v1 v2 = du_isRelIsomorphism_2432 v2
du_isRelIsomorphism_2432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_2432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2434 ~v0 ~v1 v2 = du_isRelMonomorphism_2434 v2
du_isRelMonomorphism_2434 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2434 v0
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
d_surjective_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2438 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2440 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2444 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2446 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_2448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_2450 ~v0 = du_isMagmaMonomorphism_2450
du_isMagmaMonomorphism_2450 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_2450 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_2452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2456 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_2456 ~v0 ~v1 v2 = du_isRelMonomorphism_2456 v2
du_isRelMonomorphism_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_2456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2458 = erased
-- Ledger.Conway.Foreign.HSStructures._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2460 = erased
-- Ledger.Conway.Foreign.HSStructures._.Tx.body
d_body_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.isValid
d_isValid_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Bool
d_isValid_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3612
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txAD
d_txAD_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Maybe Integer
d_txAD_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3614
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.txsize
d_txsize_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Integer
d_txsize_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3610
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Tx.wits
d_wits_2472 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572
d_wits_2472 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3608
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.collateralInputs
d_collateralInputs_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.currentTreasury
d_currentTreasury_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_currentTreasury_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3480
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.mint
d_mint_2480 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_mint_2480 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3482
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.refInputs
d_refInputs_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.reqSignerHashes
d_reqSignerHashes_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [Integer]
d_reqSignerHashes_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3484
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_scriptIntegrityHash_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3486
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txADhash
d_txADhash_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_txADhash_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3470
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txCerts
d_txCerts_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_txCerts_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txDonation
d_txDonation_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txDonation_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3472
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txFee
d_txFee_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txFee_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovProposals
d_txGovProposals_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_txGovProposals_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txGovVotes
d_txGovVotes_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
d_txGovVotes_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3474
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txId
d_txId_2500 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txId_2500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3460
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txIns
d_txIns_2502 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_2502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txNetworkId
d_txNetworkId_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_txNetworkId_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3478
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txOuts
d_txOuts_2506 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_2506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3458
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txVldt
d_txVldt_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3468
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxBody.txWithdrawals
d_txWithdrawals_2510 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scripts
d_scripts_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3584
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.scriptsP1
d_scriptsP1_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [MAlonzo.Code.Ledger.Conway.Foreign.Script.Structure.T_HSTimelock_302]
d_scriptsP1_2516
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3590
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txdats
d_txdats_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [Integer]
d_txdats_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3586
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.txrdmrs
d_txrdmrs_2520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3588
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TxWitnesses.vkSigs
d_vkSigs_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3582
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.Convert-HSLanguage
d_Convert'45'HSLanguage_2550 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convert'45'HSLanguage_2550
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Convert'45'HSLanguage_20
-- Ledger.Conway.Foreign.HSStructures._.DecEq-HSLanguage
d_DecEq'45'HSLanguage_2552 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HSLanguage_2552
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_DecEq'45'HSLanguage_22
-- Ledger.Conway.Foreign.HSStructures._.Transaction.DecEq-Tag
d_DecEq'45'Tag_2556 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Tag_2556
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Tag_22
-- Ledger.Conway.Foreign.HSStructures._.HSLanguage
d_HSLanguage_2558 = ()
-- Ledger.Conway.Foreign.HSStructures._.HsType-HSLanguage
d_HsType'45'HSLanguage_2560 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsType'45'HSLanguage_2560 = erased
-- Ledger.Conway.Foreign.HSStructures._.Show-HSLanguage
d_Show'45'HSLanguage_2574 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'HSLanguage_2574
  = coe
      MAlonzo.Code.Ledger.Conway.Foreign.Script.Base.d_Show'45'HSLanguage_24
-- Ledger.Conway.Foreign.HSStructures._.Transaction.Tag
d_Tag_2578 = ()
-- Ledger.Conway.Foreign.HSStructures._.Transaction.TransactionStructure
d_TransactionStructure_2580 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ_
d__'43''7497'__2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'__2608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'__100
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._+ᵉ'_
d__'43''7497'''__2610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny -> AgdaAny
d__'43''7497'''__2610 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d__'43''7497'''__102
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._∙_
d__'8729'__2612 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2612 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≈_
d__'8776'__2614 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2614 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≤ᵗ_
d__'8804''7511'__2616 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2616 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure._≥ᵉ_
d__'8805''7497'__2618 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2618 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_2620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_2620 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovAction
d_'61''61''45'GovAction_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  Bool
d_'61''61''45'GovAction_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_942
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovActionData
d_'61''61''45'GovActionData_2624 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_924
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-GovProposal
d_'61''61''45'GovProposal_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Bool
d_'61''61''45'GovProposal_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.==-Set
d_'61''61''45'Set_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_2628 ~v0 = du_'61''61''45'Set_2628
du_'61''61''45'Set_2628 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_2628 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_912
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2630 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt
d_Acnt_2632 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ActiveSlotCoeff
d_ActiveSlotCoeff_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_ActiveSlotCoeff_2636 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ActiveSlotCoeff_328
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Addr
d_Addr_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Addr_2638 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor
d_Anchor_2642 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AttrSizeOf
d_AttrSizeOf_2646 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_2646 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.AuxiliaryData
d_AuxiliaryData_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_AuxiliaryData_2648 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr
d_BaseAddr_2650 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr
d_BootstrapAddr_2654 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CCMaxTermLengthOf
d_CCMaxTermLengthOf_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CostModel
d_CostModel_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_CostModel_2664 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Credential
d_Credential_2666 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.CredentialOf
d_CredentialOf_2668 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_2668 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DCertsOf
d_DCertsOf_2670 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_DCertsOf_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DReps
d_DReps_2674 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_2674 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DRepsOf
d_DRepsOf_2676 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_2676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T
d_T_2678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_T_2678 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_2680 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_2680 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dataʰ
d_Data'688'_2682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_2682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Datum
d_Datum_2684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Datum_2684 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isScript
d_Dec'45'isScript_2686 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_2686 ~v0 = du_Dec'45'isScript_2686
du_Dec'45'isScript_2686 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_2686
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_296
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isSigned
d_Dec'45'isSigned_2688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_2688 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Dec'45'isSigned_120
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-isVKey
d_Dec'45'isVKey_2690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_2690 ~v0 = du_Dec'45'isVKey_2690
du_Dec'45'isVKey_2690 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_2690
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_282
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validP1Script
d_Dec'45'validP1Script_2692 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Dec-≤ᵗ
d_Dec'45''8804''7511'_2696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEQ-Prices
d_DecEQ'45'Prices_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Anchor
d_DecEq'45'Anchor_2700 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_2700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BaseAddr
d_DecEq'45'BaseAddr_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_2702 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_334
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_2704 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_336
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-CostModel
d_DecEq'45'CostModel_2706 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Credential
d_DecEq'45'Credential_2708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_2708 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_2710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_2710 ~v0
  = du_DecEq'45'DrepThresholds_2710
du_DecEq'45'DrepThresholds_2710 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'DrepThresholds_2710
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'DrepThresholds_582
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Epoch
d_DecEq'45'Epoch_2712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_2712 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_80
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2714 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovActionType
d_DecEq'45'GovActionType_2716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_2716 ~v0 = du_DecEq'45'GovActionType_2716
du_DecEq'45'GovActionType_2716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_2716
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_906
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovRole
d_DecEq'45'GovRole_2718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_2718 ~v0 = du_DecEq'45'GovRole_2718
du_DecEq'45'GovRole_2718 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_2718
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1212
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-GovVoter
d_DecEq'45'GovVoter_2720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_2720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ix
d_DecEq'45'Ix_2722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_2722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'Ix_1338
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Language
d_DecEq'45'Language_2726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_2728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_2728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_444
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-NeedsHash
d_DecEq'45'NeedsHash_2730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_2730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Netw
d_DecEq'45'Netw_2732 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_2732 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-P1Script
d_DecEq'45'P1Script_2734 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParamGroup
d_DecEq'45'PParamGroup_2736 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_2736 ~v0 = du_DecEq'45'PParamGroup_2736
du_DecEq'45'PParamGroup_2736 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PParamGroup_2736
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamGroup_588
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PParams
d_DecEq'45'PParams_2738 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_2738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParams_586
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_2740 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_2740 ~v0
  = du_DecEq'45'PoolThresholds_2740
du_DecEq'45'PoolThresholds_2740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'PoolThresholds_2740
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PoolThresholds_584
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-RewardAddress
d_DecEq'45'RewardAddress_2742 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_2742 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Netw_320
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
            (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
               (coe v0))))
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-ScriptHash
d_DecEq'45'ScriptHash_2744 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_2744 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Ser
d_DecEq'45'Ser_2746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_2746 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Ser_136
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Sig
d_DecEq'45'Sig_2748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_2748 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'Sig_134
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Slot
d_DecEq'45'Slot_2750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_2750 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Slot_88
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2752 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-T
d_DecEq'45'T_2754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2754 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2756 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2758 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2758 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-THash
d_DecEq'45'THash_2760 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2760 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-TxId
d_DecEq'45'TxId_2762 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_2762 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DecEq'45'TxId_1340
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-UpdT
d_DecEq'45'UpdT_2764 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_2764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-VDeleg
d_DecEq'45'VDeleg_2766 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_2766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Value
d_DecEq'45'Value_2768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecEq-Vote
d_DecEq'45'Vote_2770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_2770 ~v0 = du_DecEq'45'Vote_2770
du_DecEq'45'Vote_2770 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_2770
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1214
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DecPo-Slot
d_DecPo'45'Slot_2772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_262
d_DecPo'45'Slot_2772 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecPo'45'Slot_86
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds
d_DrepThresholds_2774 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Epoch
d_Epoch_2780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_2780 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ExUnits
d_ExUnits_2784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ExUnits_2784 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction
d_GovAction_2786 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionData
d_GovActionData_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_GovActionData_2790 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionID
d_GovActionID_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_2792 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionOf
d_GovActionOf_2794 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState
d_GovActionState_2796 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionType
d_GovActionType_2800 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionTypeOf
d_GovActionTypeOf_2802 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams
d_GovParams_2804 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposal
d_GovProposal_2808 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovProposalsOf
d_GovProposalsOf_2812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_GovProposalsOf_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRole
d_GovRole_2814 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovRoleCredential
d_GovRoleCredential_2816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_GovRoleCredential_2816 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVote
d_GovVote_2818 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoter
d_GovVoter_2822 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVoterOf
d_GovVoterOf_2826 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovVotes
d_GovVotes_2828 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize
d_HasAttrSize_2834 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_2838 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
d_HasAttrSize'45'BootstrapAddr_2838 ~v0
  = du_HasAttrSize'45'BootstrapAddr_2838
du_HasAttrSize'45'BootstrapAddr_2838 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
du_HasAttrSize'45'BootstrapAddr_2838
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_226
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength
d_HasCCMaxTermLength_2840 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-Acnt
d_HasCast'45'Acnt_2844 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Acnt_2844 ~v0 = du_HasCast'45'Acnt_2844
du_HasCast'45'Acnt_2844 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Acnt_2844
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasCast'45'Acnt_204
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_2846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_2846 ~v0
  = du_HasCast'45'GovAction'45'Sigma_2846
du_HasCast'45'GovAction'45'Sigma_2846 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_2846
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_902
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-GovVote
d_HasCast'45'GovVote_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_2848 ~v0 = du_HasCast'45'GovVote_2848
du_HasCast'45'GovVote_2848 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_2848
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1318
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected
d_HasCast'45'HashProtected_2850 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_2850 ~v0
  = du_HasCast'45'HashProtected_2850
du_HasCast'45'HashProtected_2850 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_2852 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_2852
du_HasCast'45'HashProtected'45'MaybeScriptHash_2852 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_2852
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCoin-TxOut
d_HasCoin'45'TxOut_2854 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_2854
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_HasCoin'45'TxOut_3746
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential
d_HasCredential_2856 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_2860 ~v0
  = du_HasCredential'45'RewardAddress_2860
du_HasCredential'45'RewardAddress_2860 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
du_HasCredential'45'RewardAddress_2860
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_224
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts
d_HasDCerts_2862 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts-Tx
d_HasDCerts'45'Tx_2866 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514
d_HasDCerts'45'Tx_2866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDCerts'45'Tx_3622
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDReps
d_HasDReps_2868 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-Tx
d_HasDonations'45'Tx_2872 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'Tx_2872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'Tx_3632
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDonations-TxBody
d_HasDonations'45'TxBody_2874 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasDonations_20
d_HasDonations'45'TxBody_2874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasDonations'45'TxBody_3570
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasFees-Tx
d_HasFees'45'Tx_2876 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Tx_2876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasFees'45'Tx_3620
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction
d_HasGovAction_2878 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovActionState_2882 ~v0
  = du_HasGovAction'45'GovActionState_2882
du_HasGovAction'45'GovActionState_2882 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovActionState_2882
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1206
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovProposal_2884 ~v0
  = du_HasGovAction'45'GovProposal_2884
du_HasGovAction'45'GovProposal_2884 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovProposal_2884
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1204
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType
d_HasGovActionType_2886 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovAction_2890 ~v0
  = du_HasGovActionType'45'GovAction_2890
du_HasGovActionType'45'GovAction_2890 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovAction_2890
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_900
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovActionState_2892 ~v0
  = du_HasGovActionType'45'GovActionState_2892
du_HasGovActionType'45'GovActionState_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovActionState_2892
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1210
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovProposal_2894 ~v0
  = du_HasGovActionType'45'GovProposal_2894
du_HasGovActionType'45'GovProposal_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovProposal_2894
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1208
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals
d_HasGovProposals_2896 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals-Tx
d_HasGovProposals'45'Tx_2900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534
d_HasGovProposals'45'Tx_2900 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasGovProposals'45'Tx_3624
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter
d_HasGovVoter_2902 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
d_HasGovVoter'45'GovVote_2906 ~v0 = du_HasGovVoter'45'GovVote_2906
du_HasGovVoter'45'GovVote_2906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
du_HasGovVoter'45'GovVote_2906
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1198
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId
d_HasMaybeNetworkId_2908 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId
d_HasNetworkId_2912 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_2916 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BaseAddr_2916 ~v0
  = du_HasNetworkId'45'BaseAddr_2916
du_HasNetworkId'45'BaseAddr_2916 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BaseAddr_2916
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_218
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BootstrapAddr_2918 ~v0
  = du_HasNetworkId'45'BootstrapAddr_2918
du_HasNetworkId'45'BootstrapAddr_2918 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'BootstrapAddr_2918
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_220
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_2920 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_2920 ~v0
  = du_HasNetworkId'45'RewardAddress_2920
du_HasNetworkId'45'RewardAddress_2920 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
du_HasNetworkId'45'RewardAddress_2920
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams
d_HasPParams_2922 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy
d_HasPolicy_2926 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
d_HasPolicy'45'GovProposal_2930 ~v0
  = du_HasPolicy'45'GovProposal_2930
du_HasPolicy'45'GovProposal_2930 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
du_HasPolicy'45'GovProposal_2930
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1202
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasReserves-Acnt
d_HasReserves'45'Acnt_2932 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
d_HasReserves'45'Acnt_2932 ~v0 = du_HasReserves'45'Acnt_2932
du_HasReserves'45'Acnt_2932 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasReserves_60
du_HasReserves'45'Acnt_2932
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasReserves'45'Acnt_202
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress
d_HasRewardAddress_2934 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTreasury-Acnt
d_HasTreasury'45'Acnt_2938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
d_HasTreasury'45'Acnt_2938 ~v0 = du_HasTreasury'45'Acnt_2938
du_HasTreasury'45'Acnt_2938 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasTreasury_80
du_HasTreasury'45'Acnt_2938
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_200
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody
d_HasTxBody_2940 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody-Tx
d_HasTxBody'45'Tx_2944 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494
d_HasTxBody'45'Tx_2944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxBody'45'Tx_3618
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId
d_HasTxId_2946 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId-Tx
d_HasTxId'45'Tx_2950 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554
d_HasTxId'45'Tx_2950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasTxId'45'Tx_3630
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO
d_HasUTxO_2952 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote
d_HasVote_2956 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVote-GovVote
d_HasVote'45'GovVote_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
d_HasVote'45'GovVote_2960 ~v0 = du_HasVote'45'GovVote_2960
du_HasVote'45'GovVote_2960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
du_HasVote'45'GovVote_2960
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1200
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasVoteDelegs
d_HasVoteDelegs_2962 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals
d_HasWithdrawals_2966 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-Tx
d_HasWithdrawals'45'Tx_2970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'Tx_2970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'Tx_3628
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals-TxBody
d_HasWithdrawals'45'TxBody_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182
d_HasWithdrawals'45'TxBody_2972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_HasWithdrawals'45'TxBody_3626
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HashProtected
d_HashProtected_2974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_2974 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-P1Script
d_Hashable'45'P1Script_2976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_2976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_2978 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-Script
d_Hashable'45'Script_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_2980 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Hashable-ScriptIntegrity
d_Hashable'45'ScriptIntegrity_2982 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'ScriptIntegrity_2982 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_Hashable'45'ScriptIntegrity_2632
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr
d_IsBootstrapAddr_2986 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsBootstrapAddr?
d_IsBootstrapAddr'63'_2988 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_2988 ~v0 = du_IsBootstrapAddr'63'_2988
du_IsBootstrapAddr'63'_2988 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_2988
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_310
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2990 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2994 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2998 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ix
d_Ix_3002 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ix_3002 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.THash
d_THash_3004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_THash_3004 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.KeyPair
d_KeyPair_3008 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_KeyPair_3008 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LangDepView
d_LangDepView_3010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_LangDepView_3010 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Language
d_Language_3012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Language_3012 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels
d_LanguageCostModels_3014 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaxLovelaceSupplyᶜ
d_MaxLovelaceSupply'7580'_3018 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_MaxLovelaceSupply'7580'_3018 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_MaxLovelaceSupply'7580'_336
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MaybeNetworkIdOf
d_MaybeNetworkIdOf_3020 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_3020 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.MemoryEstimate
d_MemoryEstimate_3022 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_MemoryEstimate_3022 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NeedsHash
d_NeedsHash_3024 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_NeedsHash_3024 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Network
d_Network_3026 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Network_3026 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkId
d_NetworkId_3030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_NetworkId_3030 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NetworkId_340
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NetworkIdOf
d_NetworkIdOf_3032 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_3032 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-ActiveSlotCoeff
d_NonZero'45'ActiveSlotCoeff_3038 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'ActiveSlotCoeff_3038 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'ActiveSlotCoeff_342
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_3040 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Number-Epoch
d_Number'45'Epoch_3042 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_3042 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Number'45'Epoch_286
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1Script
d_P1Script_3044 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_P1Script_3044 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure
d_P1ScriptStructure_3046 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusScript
d_PlutusScript_3050 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_PlutusScript_3050 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.POSIXTimeRange
d_POSIXTimeRange_3052 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_POSIXTimeRange_3052 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamGroup
d_PParamGroup_3054 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams
d_PParams_3056 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff
d_PParamsDiff_3060 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsOf
d_PParamsOf_3064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_3064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UpdateT
d_UpdateT_3066 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UpdateT_3066 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure
d_PlutusStructure_3068 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV1
d_PlutusV1_3072 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV1_3072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV2
d_PlutusV2_3074 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV2_3074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusV3
d_PlutusV3_3076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_PlutusV3_3076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Policy
d_Policy_3078 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3078 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PolicyOf
d_PolicyOf_3080 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds
d_PoolThresholds_3082 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Positive-ActiveSlotCoeff
d_Positive'45'ActiveSlotCoeff_3086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Integer.Base.T_Positive_134
d_Positive'45'ActiveSlotCoeff_3086 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Positive'45'ActiveSlotCoeff_330
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Prices
d_Prices_3088 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Prices_3088 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ProposedPPUpdates
d_ProposedPPUpdates_3090 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ProposedPPUpdates_3090 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Quorum
d_Quorum_3092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_Quorum_3092 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Quorum_338
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindow
d_RandomnessStabilisationWindow_3094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_RandomnessStabilisationWindow_3094 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow_94
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RandomnessStabilisationWindowᶜ
d_RandomnessStabilisationWindow'7580'_3096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_RandomnessStabilisationWindow'7580'_3096 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_RandomnessStabilisationWindow'7580'_332
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RdmrPtr
d_RdmrPtr_3098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_RdmrPtr_3098 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Redeemer
d_Redeemer_3100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Redeemer_3100 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress
d_RewardAddress_3102 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddressOf
d_RewardAddressOf_3106 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_3106 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SKey
d_SKey_3110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_SKey_3110 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Script
d_Script_3114 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Script_3114 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptAddr
d_ScriptAddr_3116 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptAddr_3116 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBaseAddr
d_ScriptBaseAddr_3118 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBaseAddr_3118 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptBootstrapAddr
d_ScriptBootstrapAddr_3120 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptBootstrapAddr_3120 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptHash
d_ScriptHash_3122 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_ScriptHash_3122 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure
d_ScriptStructure_3126 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Ser
d_Ser_3132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Ser_3132 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-CostModel
d_Show'45'CostModel_3134 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_3134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential
d_Show'45'Credential_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_3136 ~v0 = du_Show'45'Credential_3136
du_Show'45'Credential_3136 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_3136 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_350
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Credential×Coin
d_Show'45'Credential'215'Coin_3138 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_3138 ~v0
  = du_Show'45'Credential'215'Coin_3138
du_Show'45'Credential'215'Coin_3138 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_3138 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_354
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-DrepThresholds
d_Show'45'DrepThresholds_3140 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_3140 ~v0 = du_Show'45'DrepThresholds_3140
du_Show'45'DrepThresholds_3140 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'DrepThresholds_3140
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'DrepThresholds_590
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Epoch
d_Show'45'Epoch_3142 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_3142 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Epoch_82
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ExUnits
d_Show'45'ExUnits_3144 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_3144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-GovRole
d_Show'45'GovRole_3146 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3146 ~v0 = du_Show'45'GovRole_3146
du_Show'45'GovRole_3146 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3146
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_834
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Language
d_Show'45'Language_3148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_3148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_3150 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_3150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_450
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Network
d_Show'45'Network_3152 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_3152 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Show'45'Network_322
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PParams
d_Show'45'PParams_3154 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_3154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PParams_594
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-PoolThresholds
d_Show'45'PoolThresholds_3156 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_3156 ~v0 = du_Show'45'PoolThresholds_3156
du_Show'45'PoolThresholds_3156 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'PoolThresholds_3156
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_Show'45'PoolThresholds_592
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-Prices
d_Show'45'Prices_3158 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_3158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-RewardAddress
d_Show'45'RewardAddress_3160 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_3160 ~v0 = du_Show'45'RewardAddress_3160
du_Show'45'RewardAddress_3160 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_3160
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_352
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-ScriptHash
d_Show'45'ScriptHash_3162 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_3162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'ScriptHash_212
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3164 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3166 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3166 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-THash
d_Show'45'THash_3168 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_3168 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Show-VDeleg
d_Show'45'VDeleg_3170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Sig
d_Sig_3172 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Sig_3172 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slot
d_Slot_3174 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Slot_3174 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_3176 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_SlotsPerEpoch'7580'_3176 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_SlotsPerEpoch'7580'_324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Slotʳ
d_Slot'691'_3178 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Semiring_2356
d_Slot'691'_3178 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_76
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindow
d_StabilityWindow_3180 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_StabilityWindow_3180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow_96
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.StabilityWindowᶜ
d_StabilityWindow'7580'_3182 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer
d_StabilityWindow'7580'_3182 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_StabilityWindow'7580'_334
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3184 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3184 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3186 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-Hashable
d_T'45'Hashable_3188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_3188 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.T-isHashable
d_T'45'isHashable_3190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_3190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra
d_TokenAlgebra_3194 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx
d_Tx_3202 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody
d_TxBody_3206 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBodyOf
d_TxBodyOf_3210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_TxBodyOf_3210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxId
d_TxId_3212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxId_3212 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIdOf
d_TxIdOf_3214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554 ->
  AgdaAny -> AgdaAny
d_TxIdOf_3214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxIn
d_TxIn_3216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxIn_3216 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOut
d_TxOut_3218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut_3218 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxOutʰ
d_TxOut'688'_3220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_TxOut'688'_3220 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses
d_TxWitnesses_3222 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxO
d_UTxO_3226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_UTxO_3226 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.UTxOOf
d_UTxOOf_3228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3398 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3406
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Update
d_Update_3230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Update_3230 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VDeleg
d_VDeleg_3234 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKey
d_VKey_3236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKey_3236 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyAddr
d_VKeyAddr_3238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyAddr_3238 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBaseAddr
d_VKeyBaseAddr_3240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBaseAddr_3240 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VKeyBootstrapAddr
d_VKeyBootstrapAddr_3242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VKeyBootstrapAddr_3242 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value
d_Value_3246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Value_3246 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_3248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_3248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegs
d_VoteDelegs_3250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3250 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteDelegsOf
d_VoteDelegsOf_3252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.VoteOf
d_VoteOf_3254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_3254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Withdrawals
d_Withdrawals_3256 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Withdrawals_3256 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.WithdrawalsOf
d_WithdrawalsOf_3258 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_3258 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeDRepsOf
d_activeDRepsOf_3260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3260 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1470
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.activeInEpoch
d_activeInEpoch_3262 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3262 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.adHashingScheme
d_adHashingScheme_3264 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_adHashingScheme_3264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_adHashingScheme_1342
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addEpoch
d_addEpoch_3266 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addEpoch_3266 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addEpoch_280
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addSlot
d_addSlot_3268 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addSlot_3268 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_addSlot_278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.addValue
d_addValue_3270 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_3270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.applyUpdate
d_applyUpdate_3272 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_3272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin
d_coin_3274 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_coin_3274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin-inject-lemma
d_coin'45'inject'45'lemma_3276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_3276 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_3278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_3278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.coin∘inject≗id
d_coin'8728'inject'8791'id_3280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_3280 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.cryptoStructure
d_cryptoStructure_3282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_CryptoStructure_140
d_cryptoStructure_3282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.e<sucᵉ
d_e'60'suc'7497'_3284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_e'60'suc'7497'_3284 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_e'60'suc'7497'_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epoch
d_epoch_3286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_3286 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_90
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.epochStructure
d_epochStructure_3288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_epochStructure_3288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.firstSlot
d_firstSlot_3290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_firstSlot_3290 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_92
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaData
d_gaData_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_3292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.gaType
d_gaType_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_3294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getLanguage
d_getLanguage_3296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_3296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getScriptHash
d_getScriptHash_3298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
d_getScriptHash_3298 ~v0 = du_getScriptHash_3298
du_getScriptHash_3298 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  AgdaAny
du_getScriptHash_3298
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_328
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValue
d_getValue_3300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue_3300 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue_3634
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.getValueʰ
d_getValue'688'_3302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_getValue'688'_3302 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_getValue'688'_3650
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.globalConstants
d_globalConstants_3304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_GlobalConstants_292
d_globalConstants_3304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govParams
d_govParams_3306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472
d_govParams_3306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govStructure
d_govStructure_3308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Base.T_GovStructure_10
d_govStructure_3308
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.govVoterCredential
d_govVoterCredential_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3310 ~v0 = du_govVoterCredential_3310
du_govVoterCredential_3310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3310
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1426
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.hashRespectsUnion
d_hashRespectsUnion_3312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_3312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.inject
d_inject_3314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_inject_3314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isBootstrapAddr
d_isBootstrapAddr_3316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88
d_isBootstrapAddr_3316 ~v0 = du_isBootstrapAddr_3316
du_isBootstrapAddr_3316 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88
du_isBootstrapAddr_3316
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_278
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isGovVoterDRep
d_isGovVoterDRep_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3318 ~v0 = du_isGovVoterDRep_3318
du_isGovVoterDRep_3318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1422
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHash
d_isKeyHash_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_3320 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObj
d_isKeyHashObj_3322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isKeyHashObj_3322 ~v0 = du_isKeyHashObj_3322
du_isKeyHashObj_3322 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isKeyHashObj_3322
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyHashObjᵇ
d_isKeyHashObj'7495'_3324 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_3324 ~v0 = du_isKeyHashObj'7495'_3324
du_isKeyHashObj'7495'_3324 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
du_isKeyHashObj'7495'_3324
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isKeyPair
d_isKeyPair_3326 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> ()
d_isKeyPair_3326 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isNativeScript
d_isNativeScript_3328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_3328 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script
d_isP1Script_3330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_3330 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP1Script?
d_isP1Script'63'_3332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_3332 ~v0 = du_isP1Script'63'_3332
du_isP1Script'63'_3332 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_3332
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script
d_isP2Script_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_3334 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isP2Script?
d_isP2Script'63'_3336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_3336 ~v0 = du_isP2Script'63'_3336
du_isP2Script'63'_3336 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_3336
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScript
d_isScript_3338 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptAddr
d_isScriptAddr_3340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_3340 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptObj
d_isScriptObj_3342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
d_isScriptObj_3342 ~v0 = du_isScriptObj_3342
du_isScriptObj_3342 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe AgdaAny
du_isScriptObj_3342
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isScriptRewardAddress
d_isScriptRewardAddress_3344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_3344 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned
d_isSigned_3346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny -> ()
d_isSigned_3346 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isSigned-correct
d_isSigned'45'correct_3348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_isSigned'45'correct_3348 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_isSigned'45'correct_132
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKey
d_isVKey_3350 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.isVKeyAddr
d_isVKeyAddr_3352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_3352 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.khs
d_khs_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_khs_3354 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.language
d_language_3356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_language_3356 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.languageCostModels
d_languageCostModels_3358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.lookupScriptHash
d_lookupScriptHash_3360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_3360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_lookupScriptHash_3732
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.monoid
d_monoid_3364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_3364 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.netId
d_netId_3366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_3366 ~v0 = du_netId_3366
du_netId_3366 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_3366
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.p1s
d_p1s_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_3368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWF-elim
d_paramsWF'45'elim_3370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_3370 ~v0 = du_paramsWF'45'elim_3370
du_paramsWF'45'elim_3370 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_paramsWF'45'elim_3370 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_paramsWF'45'elim_562
      v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.paramsWellFormed
d_paramsWellFormed_3372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  ()
d_paramsWellFormed_3372 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.payCred
d_payCred_3374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_3374 ~v0 = du_payCred_3374
du_payCred_3374 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_payCred_3374
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_250
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.pkk
d_pkk_3376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_PKKScheme_60
d_pkk_3376 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.policies
d_policies_3378 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny]
d_policies_3378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.positivePParams
d_positivePParams_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
d_positivePParams_3380 ~v0 = du_positivePParams_3380
du_positivePParams_3380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  [Integer]
du_positivePParams_3380
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_positivePParams_472
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppUpd
d_ppUpd_3382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_3382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppWF?
d_ppWF'63'_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_3384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ppdWellFormed
d_ppdWellFormed_3386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> ()
d_ppdWellFormed_3386 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.preoEpoch
d_preoEpoch_3388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_28
d_preoEpoch_3388 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_preoEpoch_110
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.proposedCC
d_proposedCC_3390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3390 ~v0 = du_proposedCC_3390
du_proposedCC_3390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3390
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1434
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ps
d_ps_3392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_3392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.rawMonoid
d_rawMonoid_3394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_3394 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
                    (coe v0))) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_986
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1066 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.refScripts
d_refScripts_3396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_3396
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refScripts_3674
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptOuts
d_scriptOuts_3398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_3398 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptOuts_3660
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.scriptStructure
d_scriptStructure_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280
d_scriptStructure_3400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sign
d_sign_3402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_3402 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1390
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_sign_112
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_pkk_178 (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.size
d_size_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> Integer
d_size_3404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.stakeCred
d_stakeCred_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_3406 ~v0 = du_stakeCred_3406
du_stakeCred_3406 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_stakeCred_3406
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_252
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sucᵉ
d_suc'7497'_3408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_suc'7497'_3408 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_suc'7497'_98
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.sumᵛ
d_sum'7515'_3410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_3410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP1Script
d_toP1Script_3412 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_3412 ~v0 = du_toP1Script_3412
du_toP1Script_3412 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_3412
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.toP2Script
d_toP2Script_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_3414 ~v0 = du_toP2Script_3414
du_toP2Script_3414 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_3414
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.tokenAlgebra
d_tokenAlgebra_3416 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14
d_tokenAlgebra_3416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsScript
d_txInsScript_3418 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsScript_3418
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsScript_3668
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txInsVKey
d_txInsVKey_3420 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txInsVKey_3420
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txInsVKey_3654
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txOutHash
d_txOutHash_3422 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_3422
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOutHash_3640
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txidBytes
d_txidBytes_3424 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_txidBytes_3424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txidBytes_2630
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.txscripts
d_txscripts_3426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_3426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txscripts_3722
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.updateGroups
d_updateGroups_3428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_3428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govParams_2498
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validP1Script
d_validP1Script_3436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3436 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.validPlutusScript
d_validPlutusScript_3438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_3438 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ε
d_ε_3440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny
d_ε_3440 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_tokenAlgebra_2516
               (coe v0))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_3442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_3442 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕEpochStructure
d_ℕEpochStructure_3444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Core.Specification.Epoch.T_EpochStructure_22
d_ℕEpochStructure_3444 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕEpochStructure_356
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_globalConstants_1356
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ℕtoEpoch
d_ℕtoEpoch_3446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  Integer -> AgdaAny
d_ℕtoEpoch_3446 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≤-predᵉ
d_'8804''45'pred'7497'_3448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8804''45'pred'7497'_3448 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_'8804''45'pred'7497'_126
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_3450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_3450 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.reserves
d_reserves_3460 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_reserves_3460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_196
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Acnt.treasury
d_treasury_3462 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_188 ->
  Integer
d_treasury_3462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_194
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.hash
d_hash_3466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994 ->
  AgdaAny
d_hash_3466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_hash_1002
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Anchor.url
d_url_3468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_3468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_url_1000
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.net
d_net_3472 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  AgdaAny
d_net_3472 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.pay
d_pay_3474 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3474 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BaseAddr.stake
d_stake_3476 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_3476 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.attrsSize
d_attrsSize_3480 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_3480 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.net
d_net_3482 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  AgdaAny
d_net_3482 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.BootstrapAddr.pay
d_pay_3484 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_3484 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P1
d_P1_3494 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_3494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P1_240 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2a
d_P2a_3496 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_3496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2a_242 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P2b
d_P2b_3498 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_3498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P2b_244 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P3
d_P3_3500 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_3500 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P3_246 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P4
d_P4_3502 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_3502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P4_248 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5a
d_P5a_3504 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_3504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5a_250 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5b
d_P5b_3506 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_3506 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5b_252 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5c
d_P5c_3508 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_3508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5c_254 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P5d
d_P5d_3510 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_3510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P5d_256 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.DrepThresholds.P6
d_P6_3512 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_3512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_P6_258 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaData
d_gaData_3516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_3516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovAction.gaType
d_gaType_3518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_3518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.action
d_action_3522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_action_3522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1132
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.expiresIn
d_expiresIn_3524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  AgdaAny
d_expiresIn_3524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_expiresIn_1130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.prevAction
d_prevAction_3526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  AgdaAny
d_prevAction_3526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1134
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.returnAddr
d_returnAddr_3528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_3528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1128
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActionState.votes
d_votes_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionState_1114 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026
d_votes_3530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_votes_1126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovAction
d_'61''61''45'GovAction_3550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  Bool
d_'61''61''45'GovAction_3550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovAction_942
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovActionData
d_'61''61''45'GovActionData_3552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  AgdaAny -> AgdaAny -> Bool
d_'61''61''45'GovActionData_3552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovActionData_924
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-GovProposal
d_'61''61''45'GovProposal_3554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Bool
d_'61''61''45'GovProposal_3554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_'61''61''45'GovProposal_1326
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.==-Set
d_'61''61''45'Set_3556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
d_'61''61''45'Set_3556 ~v0 = du_'61''61''45'Set_3556
du_'61''61''45'Set_3556 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> Bool
du_'61''61''45'Set_3556 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_'61''61''45'Set_912
      v1 v2 v3
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Anchor
d_Anchor_3558 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DReps
d_DReps_3568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_DReps_3568 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DRepsOf
d_DRepsOf_3570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Anchor
d_DecEq'45'Anchor_3572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Anchor_3572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'Anchor_1218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovActionType
d_DecEq'45'GovActionType_3574 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovActionType_3574 ~v0 = du_DecEq'45'GovActionType_3574
du_DecEq'45'GovActionType_3574 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovActionType_3574
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovActionType_906
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovRole
d_DecEq'45'GovRole_3576 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_3576 ~v0 = du_DecEq'45'GovRole_3576
du_DecEq'45'GovRole_3576 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'GovRole_3576
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'GovRole_1212
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-GovVoter
d_DecEq'45'GovVoter_3578 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovVoter_3578 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'GovVoter_1220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-NeedsHash
d_DecEq'45'NeedsHash_3580 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'NeedsHash_3580 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'NeedsHash_1324
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-VDeleg
d_DecEq'45'VDeleg_3582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_3582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DecEq'45'VDeleg_1216
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.DecEq-Vote
d_DecEq'45'Vote_3584 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_3584 ~v0 = du_DecEq'45'Vote_3584
du_DecEq'45'Vote_3584 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Vote_3584
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_DecEq'45'Vote_1214
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovAction
d_GovAction_3586 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionData
d_GovActionData_3590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_GovActionData_3590 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionID
d_GovActionID_3592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_GovActionID_3592 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionOf
d_GovActionOf_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_3594 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionState
d_GovActionState_3596 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionType
d_GovActionType_3600 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovActionTypeOf
d_GovActionTypeOf_3602 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_3602 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal
d_GovProposal_3604 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRole
d_GovRole_3608 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovRoleCredential
d_GovRoleCredential_3610 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826 ->
  ()
d_GovRoleCredential_3610 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote
d_GovVote_3612 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter
d_GovVoter_3616 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoterOf
d_GovVoterOf_3620 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_3620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes
d_GovVotes_3622 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovAction-Sigma
d_HasCast'45'GovAction'45'Sigma_3626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovAction'45'Sigma_3626 ~v0
  = du_HasCast'45'GovAction'45'Sigma_3626
du_HasCast'45'GovAction'45'Sigma_3626 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovAction'45'Sigma_3626
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovAction'45'Sigma_902
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-GovVote
d_HasCast'45'GovVote_3628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovVote_3628 ~v0 = du_HasCast'45'GovVote_3628
du_HasCast'45'GovVote_3628 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovVote_3628
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'GovVote_1318
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected
d_HasCast'45'HashProtected_3630 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected_3630 ~v0
  = du_HasCast'45'HashProtected_3630
du_HasCast'45'HashProtected_3630 ::
  () ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected_3630 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected_1080
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasCast-HashProtected-MaybeScriptHash
d_HasCast'45'HashProtected'45'MaybeScriptHash_3632 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'HashProtected'45'MaybeScriptHash_3632 ~v0
  = du_HasCast'45'HashProtected'45'MaybeScriptHash_3632
du_HasCast'45'HashProtected'45'MaybeScriptHash_3632 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'HashProtected'45'MaybeScriptHash_3632
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasCast'45'HashProtected'45'MaybeScriptHash_1082
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps
d_HasDReps_3634 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction
d_HasGovAction_3638 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovActionState
d_HasGovAction'45'GovActionState_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovActionState_3642 ~v0
  = du_HasGovAction'45'GovActionState_3642
du_HasGovAction'45'GovActionState_3642 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovActionState_3642
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovActionState_1206
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction-GovProposal
d_HasGovAction'45'GovProposal_3644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
d_HasGovAction'45'GovProposal_3644 ~v0
  = du_HasGovAction'45'GovProposal_3644
du_HasGovAction'45'GovProposal_3644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886
du_HasGovAction'45'GovProposal_3644
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovAction'45'GovProposal_1204
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType
d_HasGovActionType_3646 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovAction
d_HasGovActionType'45'GovAction_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovAction_3650 ~v0
  = du_HasGovActionType'45'GovAction_3650
du_HasGovActionType'45'GovAction_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovAction_3650
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovAction_900
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovActionState
d_HasGovActionType'45'GovActionState_3652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovActionState_3652 ~v0
  = du_HasGovActionType'45'GovActionState_3652
du_HasGovActionType'45'GovActionState_3652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovActionState_3652
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovActionState_1210
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType-GovProposal
d_HasGovActionType'45'GovProposal_3654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
d_HasGovActionType'45'GovProposal_3654 ~v0
  = du_HasGovActionType'45'GovProposal_3654
du_HasGovActionType'45'GovProposal_3654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856
du_HasGovActionType'45'GovProposal_3654
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovActionType'45'GovProposal_1208
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter
d_HasGovVoter_3656 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter-GovVote
d_HasGovVoter'45'GovVote_3660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
d_HasGovVoter'45'GovVote_3660 ~v0 = du_HasGovVoter'45'GovVote_3660
du_HasGovVoter'45'GovVote_3660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142
du_HasGovVoter'45'GovVote_3660
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasGovVoter'45'GovVote_1198
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy
d_HasPolicy_3662 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy-GovProposal
d_HasPolicy'45'GovProposal_3666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
d_HasPolicy'45'GovProposal_3666 ~v0
  = du_HasPolicy'45'GovProposal_3666
du_HasPolicy'45'GovProposal_3666 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182
du_HasPolicy'45'GovProposal_3666
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasPolicy'45'GovProposal_1202
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote
d_HasVote_3668 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote-GovVote
d_HasVote'45'GovVote_3672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
d_HasVote'45'GovVote_3672 ~v0 = du_HasVote'45'GovVote_3672
du_HasVote'45'GovVote_3672 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162
du_HasVote'45'GovVote_3672
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_HasVote'45'GovVote_1200
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs
d_HasVoteDelegs_3674 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HashProtected
d_HashProtected_3678 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> ()
d_HashProtected_3678 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.NeedsHash
d_NeedsHash_3682 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838 ->
  ()
d_NeedsHash_3682 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Policy
d_Policy_3688 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Policy_3688 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.PolicyOf
d_PolicyOf_3690 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-GovRole
d_Show'45'GovRole_3694 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'GovRole_3694 ~v0 = du_Show'45'GovRole_3694
du_Show'45'GovRole_3694 :: MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'GovRole_3694
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_Show'45'GovRole_834
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Show-VDeleg
d_Show'45'VDeleg_3696 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'VDeleg_3696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_Show'45'VDeleg_1320
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VDeleg
d_VDeleg_3704 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.Vote
d_Vote_3706 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegs
d_VoteDelegs_3708 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_VoteDelegs_3708 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteDelegsOf
d_VoteDelegsOf_3710 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.VoteOf
d_VoteOf_3712 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_3712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeDRepsOf
d_activeDRepsOf_3716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_activeDRepsOf_3716 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_activeDRepsOf_1470
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2634
         (coe v0))
      v2 v3 v4
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.activeInEpoch
d_activeInEpoch_3718 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_activeInEpoch_3718 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaData
d_gaData_3720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  AgdaAny
d_gaData_3720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaData_880
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.gaType
d_gaType_3722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_gaType_3722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gaType_878
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.govVoterCredential
d_govVoterCredential_3724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_govVoterCredential_3724 ~v0 = du_govVoterCredential_3724
du_govVoterCredential_3724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_govVoterCredential_3724
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_govVoterCredential_1426
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.isGovVoterDRep
d_isGovVoterDRep_3726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_isGovVoterDRep_3726 ~v0 = du_isGovVoterDRep_3726
du_isGovVoterDRep_3726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
du_isGovVoterDRep_3726
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_isGovVoterDRep_1422
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.proposedCC
d_proposedCC_3730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_proposedCC_3730 ~v0 = du_proposedCC_3730
du_proposedCC_3730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_proposedCC_3730
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.du_proposedCC_1434
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.action
d_action_3746 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_action_3746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_action_1100
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.anchor
d_anchor_3748 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994
d_anchor_3748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1110
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.deposit
d_deposit_3750 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Integer
d_deposit_3750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_deposit_1106
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.policy
d_policy_3752 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  Maybe AgdaAny
d_policy_3752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_policy_1104
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.prevAction
d_prevAction_3754 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  AgdaAny
d_prevAction_3754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_prevAction_1102
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovProposal.returnAddr
d_returnAddr_3756 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_returnAddr_3756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_returnAddr_1108
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.anchor
d_anchor_3768 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_994
d_anchor_3768 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_anchor_1022
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.gid
d_gid_3770 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_3770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gid_1016
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.vote
d_vote_3772 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_vote_3772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_vote_1020
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVote.voter
d_voter_3774 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_voter_3774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_voter_1018
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvCredential
d_gvCredential_3778 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  AgdaAny
d_gvCredential_3778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCredential_990
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVoter.gvRole
d_gvRole_3780 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982 ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovRole_826
d_gvRole_3780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvRole_988
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvCC
d_gvCC_3784 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvCC_3784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvCC_1034
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvDRep
d_gvDRep_3786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvDRep_3786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvDRep_1036
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.GovVotes.gvSPO
d_gvSPO_3788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVotes_1026 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gvSPO_3788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_gvSPO_1038
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasDReps.DRepsOf
d_DRepsOf_3792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasDReps_1444 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DRepsOf_3792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_DRepsOf_1452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovAction.GovActionOf
d_GovActionOf_3796 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovAction_886 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovAction_872
d_GovActionOf_3796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionOf_892
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovActionType.GovActionTypeOf
d_GovActionTypeOf_3800 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovActionType_856 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovActionType_838
d_GovActionTypeOf_3800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovActionTypeOf_862
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasGovVoter.GovVoterOf
d_GovVoterOf_3804 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasGovVoter_1142 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVoter_982
d_GovVoterOf_3804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_GovVoterOf_1150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasPolicy.PolicyOf
d_PolicyOf_3808 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasPolicy_1182 ->
  AgdaAny -> Maybe AgdaAny
d_PolicyOf_3808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_PolicyOf_1190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVote.VoteOf
d_VoteOf_3812 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVote_1162 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Vote_974
d_VoteOf_3812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteOf_1170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovActions.HasVoteDelegs.VoteDelegsOf
d_VoteDelegsOf_3816 ::
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_HasVoteDelegs_1056 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_VoteDelegsOf_3816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_1064
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_3836 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_3836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_DecEq'45'UpdT_1504
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.UpdateT
d_UpdateT_3838 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  ()
d_UpdateT_3838 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.applyUpdate
d_applyUpdate_3840 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_3840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppUpd
d_ppUpd_3842 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438
d_ppUpd_3842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppWF?
d_ppWF'63'_3844 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_3844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.ppdWellFormed
d_ppdWellFormed_3846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny -> ()
d_ppdWellFormed_3846 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.GovParams.updateGroups
d_updateGroups_3848 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_GovParams_1472 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_3848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppUpd_1490
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasAttrSize.AttrSizeOf
d_AttrSizeOf_3852 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_3852 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCCMaxTermLength.CCMaxTermLengthOf
d_CCMaxTermLengthOf_3856 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasCCMaxTermLength_456 ->
  AgdaAny -> Integer
d_CCMaxTermLengthOf_3856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_CCMaxTermLengthOf_464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasCredential.CredentialOf
d_CredentialOf_3860 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_3860 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasDCerts.DCertsOf
d_DCertsOf_3864 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasDCerts_3514 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_DCertsOf_3864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_DCertsOf_3522
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasGovProposals.GovProposalsOf
d_GovProposalsOf_3868 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasGovProposals_3534 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_GovProposalsOf_3868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_GovProposalsOf_3542
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_3872 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_3872 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasNetworkId.NetworkIdOf
d_NetworkIdOf_3876 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> AgdaAny
d_NetworkIdOf_3876 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasPParams.PParamsOf
d_PParamsOf_3880 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_HasPParams_436 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_PParamsOf_3880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_PParamsOf_444
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_3884 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_3884 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxBody.TxBodyOf
d_TxBodyOf_3888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxBody_3494 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_TxBodyOf_3888 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxBodyOf_3502
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasTxId.TxIdOf
d_TxIdOf_3892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasTxId_3554 ->
  AgdaAny -> AgdaAny
d_TxIdOf_3892 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_TxIdOf_3562
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasUTxO.UTxOOf
d_UTxOOf_3896 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_HasUTxO_3398 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_UTxOOf_3896 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3406
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_3900 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_3900 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.homo
d_homo_3908 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3908 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3910 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3910 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_3912 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3912 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_3914 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3914 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidHomomorphism.cong
d_cong_3916 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3916 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.homo
d_homo_3920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3920 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.injective
d_injective_3922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3922 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3924 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_3926 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_3926 ~v0 = du_isMagmaIsomorphism_3926
du_isMagmaIsomorphism_3926 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_3926 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3928 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3928 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_3928 v2
du_isMagmaMonomorphism_3928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3928 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3930 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3930 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_3932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_3932 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_3934 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3934 v0
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
d_isRelIsomorphism_3936 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_3936 ~v0 ~v1 v2 = du_isRelIsomorphism_3936 v2
du_isRelIsomorphism_3936 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_3936 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_3938 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3938 ~v0 ~v1 v2 = du_isRelMonomorphism_3938 v2
du_isRelMonomorphism_3938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3938 v0
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
d_surjective_3940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_3940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_3942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3942 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidIsomorphism.cong
d_cong_3944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3944 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.homo
d_homo_3948 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_3948 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.injective
d_injective_3950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_3950 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_3952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_3952 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_3954 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_3954 ~v0 = du_isMagmaMonomorphism_3954
du_isMagmaMonomorphism_3954 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_3954 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_3956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_3956 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_3958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_3958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_3960 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_3960 ~v0 ~v1 v2 = du_isRelMonomorphism_3960 v2
du_isRelMonomorphism_3960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_3960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_3962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_3962 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.IsMonoidMonomorphism.cong
d_cong_3964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_3964 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.LanguageCostModels.languageCostModels
d_languageCostModels_3968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_3968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_3972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_3972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_3974 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_3974 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_3976 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_3976 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.P1Script
d_P1Script_3978 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  ()
d_P1Script_3978 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.P1ScriptStructure.validP1Script
d_validP1Script_3980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_3980 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.Emax
d_Emax_3996 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_Emax_3996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_402
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a
d_a_3998 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_a_3998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_374 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.a0
d_a0_4000 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_406 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.b
d_b_4002 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_b_4002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_376 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMaxTermLength
d_ccMaxTermLength_4004 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMaxTermLength_4004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_418
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.ccMinSize
d_ccMinSize_4006 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_ccMinSize_4006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_416
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_4008 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_coinsPerUTxOByte_4008 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_386
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.collateralPercentage
d_collateralPercentage_4010 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_collateralPercentage_4010 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_408
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdls
d_costmdls_4012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_costmdls_4012 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_costmdls_428
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.costmdlsAssoc
d_costmdlsAssoc_4014 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdlsAssoc_4014 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdlsAssoc_410
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepActivity
d_drepActivity_4016 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_drepActivity_4016 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_426
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepDeposit
d_drepDeposit_4018 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_drepDeposit_4018 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_424
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.drepThresholds
d_drepThresholds_4020 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_4020 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_414
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionDeposit
d_govActionDeposit_4022 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionDeposit_4022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_422
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.govActionLifetime
d_govActionLifetime_4024 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_govActionLifetime_4024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_420
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.keyDeposit
d_keyDeposit_4026 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_keyDeposit_4026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockExUnits
d_maxBlockExUnits_4028 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxBlockExUnits_4028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_366
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxBlockSize
d_maxBlockSize_4030 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxBlockSize_4030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_358
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxCollateralInputs
d_maxCollateralInputs_4032 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxCollateralInputs_4032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_370
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxHeaderSize
d_maxHeaderSize_4034 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxHeaderSize_4034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_362
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4036 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerBlock_4036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_394
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4038 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxRefScriptSizePerTx_4038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_392
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxExUnits
d_maxTxExUnits_4040 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_maxTxExUnits_4040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_364
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxTxSize
d_maxTxSize_4042 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxTxSize_4042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_360
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.maxValSize
d_maxValSize_4044 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_maxValSize_4044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_368
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4046 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_390
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.minUTxOValue
d_minUTxOValue_4048 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_minUTxOValue_4048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_400
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.monetaryExpansion
d_monetaryExpansion_4050 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_382
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.nopt
d_nopt_4052 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_nopt_4052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_404
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolDeposit
d_poolDeposit_4054 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  Integer
d_poolDeposit_4054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_380
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.poolThresholds
d_poolThresholds_4056 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_4056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.prices
d_prices_4058 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny
d_prices_4058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.pv
d_pv_4060 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_372 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_4062 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_398
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.refScriptCostStride
d_refScriptCostStride_4064 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_396
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParams.treasuryCut
d_treasuryCut_4066 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_384
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.UpdateT
d_UpdateT_4070 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  ()
d_UpdateT_4070 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.applyUpdate
d_applyUpdate_4072 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyUpdate_4072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_applyUpdate_1454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppWF?
d_ppWF'63'_4074 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_4074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ppWF'63'_1462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.ppdWellFormed
d_ppdWellFormed_4076 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny -> ()
d_ppdWellFormed_4076 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsDiff.updateGroups
d_updateGroups_4078 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsDiff_1438 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_updateGroups_4078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_updateGroups_1456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._?↗_
d__'63''8599'__4082 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__4082 ~v0 = du__'63''8599'__4082
du__'63''8599'__4082 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
du__'63''8599'__4082 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du__'63''8599'__1224
      v1 v2
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate._∪ˡᶜᵐ_
d__'8746''737''7580''7504'__4084 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d__'8746''737''7580''7504'__4084 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.C_mkLanguageCostModels_442
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_570
         (coe
            MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_602
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1516
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_4086 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_4086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_DecEq'45'PParamsUpdate_1436
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1758
         (coe v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_4088 a0 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_4092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_286
d_applyPParamsUpdate_4092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_applyPParamsUpdate_1278
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptStructure_2028
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_4094 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
d_modifiedUpdateGroups_4094 ~v0 = du_modifiedUpdateGroups_4094
du_modifiedUpdateGroups_4094 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  [MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamGroup_206]
du_modifiedUpdateGroups_4094
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiedUpdateGroups_1208
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_4096 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesEconomicGroup_4096 ~v0 = du_modifiesEconomicGroup_4096
du_modifiesEconomicGroup_4096 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesEconomicGroup_4096
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesEconomicGroup_904
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_4098 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesGovernanceGroup_4098 ~v0
  = du_modifiesGovernanceGroup_4098
du_modifiesGovernanceGroup_4098 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesGovernanceGroup_4098
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesGovernanceGroup_1056
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_4100 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesNetworkGroup_4100 ~v0 = du_modifiesNetworkGroup_4100
du_modifiesNetworkGroup_4100 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesNetworkGroup_4100
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesNetworkGroup_828
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesSecurityGroup
d_modifiesSecurityGroup_4102 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesSecurityGroup_4102 ~v0 = du_modifiesSecurityGroup_4102
du_modifiesSecurityGroup_4102 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesSecurityGroup_4102
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesSecurityGroup_1132
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_4104 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
d_modifiesTechnicalGroup_4104 ~v0 = du_modifiesTechnicalGroup_4104
du_modifiesTechnicalGroup_4104 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Bool
du_modifiesTechnicalGroup_4104
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_modifiesTechnicalGroup_980
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_4106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  ()
d_paramsUpdateWellFormed_4106 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_4108 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_4108 v0
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
d_'8801''45'update_4110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'update_4110 ~v0 = du_'8801''45'update_4110
du_'8801''45'update_4110 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'update_4110 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.du_'8801''45'update_1238
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.Emax
d_Emax_4114 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_Emax_4114 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_716
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a
d_a_4116 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_a_4116 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_686 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.a0
d_a0_4118 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_4118 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_714 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.b
d_b_4120 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_b_4120 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_688 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_4122 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMaxTermLength_4122 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_738
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_4124 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_ccMinSize_4124 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_736
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_4126 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_coinsPerUTxOByte_4126 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_698
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_4128 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_collateralPercentage_4128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_720
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_4130 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436
d_costmdls_4130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_722
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_4132 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_drepActivity_4132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_734
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_4134 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_drepDeposit_4134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_732
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_4136 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_218
d_drepThresholds_4136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_724
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_4138 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionDeposit_4138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_730
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_4140 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_govActionLifetime_4140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_728
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_4142 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_keyDeposit_4142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_690
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_4144 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxBlockExUnits_4144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_682
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_4146 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxBlockSize_4146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_670
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_4148 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxCollateralInputs_4148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_678
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_4150 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxHeaderSize_4150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_674
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_4152 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_4152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_706
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_4154 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxRefScriptSizePerTx_4154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_704
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_4156 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_maxTxExUnits_4156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_680
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_4158 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxTxSize_4158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_672
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_4160 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_maxValSize_4160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_676
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_4162 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_4162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_702
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_4164 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_minUTxOValue_4164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_712
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.monetaryExpansion
d_monetaryExpansion_4166 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_4166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_694
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.nopt
d_nopt_4168 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_nopt_4168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_718
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_4170 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe Integer
d_poolDeposit_4170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_692
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_4172 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262
d_poolThresholds_4172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_726
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.prices
d_prices_4174 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe AgdaAny
d_prices_4174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_700
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.pv
d_pv_4176 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_4176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_684 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_4178 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_4178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_710
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_4180 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_4180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_708
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PParamsUpdate.PParamsUpdate.treasuryCut
d_treasuryCut_4182 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParamsUpdate_598 ->
  Maybe MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_4182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_696
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure._≥ᵉ_
d__'8805''7497'__4186 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4186 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.CostModel
d_CostModel_4188 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_CostModel_4188 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T
d_T_4190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_T_4190 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.THash
d_THash_4192 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_THash_4192 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dataʰ
d_Data'688'_4194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Datum
d_Datum_4196 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Datum_4196 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4198 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_4200 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_4202 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4204 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4206 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-Language
d_DecEq'45'Language_4208 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-T
d_DecEq'45'T_4210 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4210 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.DecEq-THash
d_DecEq'45'THash_4212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4212 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4214 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.ExUnits
d_ExUnits_4216 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_ExUnits_4216 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4218 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.LangDepView
d_LangDepView_4220 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_LangDepView_4220 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Language
d_Language_4222 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Language_4222 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusScript
d_PlutusScript_4224 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_PlutusScript_4224 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV1
d_PlutusV1_4226 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV1_4226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV2
d_PlutusV2_4228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV2_4228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.PlutusV3
d_PlutusV3_4230 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny
d_PlutusV3_4230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Prices
d_Prices_4232 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Prices_4232 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Redeemer
d_Redeemer_4234 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  ()
d_Redeemer_4234 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-CostModel
d_Show'45'CostModel_4236 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_4238 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Language
d_Show'45'Language_4240 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-Prices
d_Show'45'Prices_4242 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.Show-THash
d_Show'45'THash_4244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4244 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-Hashable
d_T'45'Hashable_4246 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4246 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.T-isHashable
d_T'45'isHashable_4248 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4248 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.language
d_language_4250 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> AgdaAny
d_language_4250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.validPlutusScript
d_validPlutusScript_4252 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4252 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PlutusStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4254 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q1
d_Q1_4258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_4258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q1_274 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2a
d_Q2a_4260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_4260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2a_276 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q2b
d_Q2b_4262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_4262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q2b_278 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q4
d_Q4_4264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_4264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q4_280 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.PoolThresholds.Q5
d_Q5_4266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_262 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5_4266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Q5_282 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.net
d_net_4270 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  AgdaAny
d_net_4270 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.RewardAddress.stake
d_stake_4272 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_4272 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure._≥ᵉ_
d__'8805''7497'__4276 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__4276 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.CostModel
d_CostModel_4278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_CostModel_4278 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T
d_T_4280 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_T_4280 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.THash
d_THash_4282 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_THash_4282 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dataʰ
d_Data'688'_4284 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_HashableSet_36
d_Data'688'_4284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Datum
d_Datum_4286 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Datum_4286 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_4288 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_4288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validP1Script_120
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_4290 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_4290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Dec'45'validPlutusScript_274
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_4292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_4292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEQ'45'Prices_244
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_4294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_4294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'CostModel_230
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_4296 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_4296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'ExUnits_242
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_4298 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_4298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'LangDepView_232
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-Language
d_DecEq'45'Language_4300 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_4300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'Language_228
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-LanguageCostModels
d_DecEq'45'LanguageCostModels_4302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LanguageCostModels_4302 ~v0
  = du_DecEq'45'LanguageCostModels_4302
du_DecEq'45'LanguageCostModels_4302 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'LanguageCostModels_4302
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_DecEq'45'LanguageCostModels_444
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_4304 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_4304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_DecEq'45'P1Script_124
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-T
d_DecEq'45'T_4306 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_4306 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.DecEq-THash
d_DecEq'45'THash_4308 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_4308 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_4310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_4310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ExUnit'45'CommutativeMonoid_224
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ExUnits
d_ExUnits_4312 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_ExUnits_4312 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_4314 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'P1Script_4314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'P1Script_122
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_4316 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'PlutusScript_4316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Hashable'45'PlutusScript_226
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Hashable-Script
d_Hashable'45'Script_4318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_Hashable'45'Script_4318 ~v0 = du_Hashable'45'Script_4318
du_Hashable'45'Script_4318 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
du_Hashable'45'Script_4318
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Hashable'45'Script_404
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LangDepView
d_LangDepView_4320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_LangDepView_4320 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Language
d_Language_4322 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Language_4322 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels
d_LanguageCostModels_4324 a0 a1 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.P1Script
d_P1Script_4328 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_P1Script_4328 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusScript
d_PlutusScript_4330 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_PlutusScript_4330 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV1
d_PlutusV1_4332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV1_4332 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV1_218
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV2
d_PlutusV2_4334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV2_4334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV2_220
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.PlutusV3
d_PlutusV3_4336 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny
d_PlutusV3_4336 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_PlutusV3_222
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Prices
d_Prices_4338 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Prices_4338 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Redeemer
d_Redeemer_4340 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Redeemer_4340 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Script
d_Script_4342 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  ()
d_Script_4342 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-CostModel
d_Show'45'CostModel_4344 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_4344 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'CostModel_236
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_4346 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_4346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'ExUnits_246
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Language
d_Show'45'Language_4348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Language_4348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Language_234
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-LanguageCostModels
d_Show'45'LanguageCostModels_4350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'LanguageCostModels_4350 ~v0
  = du_Show'45'LanguageCostModels_4350
du_Show'45'LanguageCostModels_4350 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'LanguageCostModels_4350
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_Show'45'LanguageCostModels_450
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-Prices
d_Show'45'Prices_4352 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_4352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Show'45'Prices_248
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.Show-THash
d_Show'45'THash_4354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_4354 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-Hashable
d_T'45'Hashable_4356 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_T'45'Hashable_4356 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
              (coe
                 MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.T-isHashable
d_T'45'isHashable_4358 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Core.Specification.Crypto.T_isHashableSet_10
d_T'45'isHashable_4358 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_Data'688'_204
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.getLanguage
d_getLanguage_4360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_getLanguage_4360 ~v0 = du_getLanguage_4360
du_getLanguage_4360 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_getLanguage_4360
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_getLanguage_432
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_4362 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10 ->
  MAlonzo.Code.Interface.TypeClasses.Hashable.T_Hashable_10
d_hashRespectsUnion_4362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_hashRespectsUnion_326
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isNativeScript
d_isNativeScript_4364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isNativeScript_4364 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script
d_isP1Script_4366 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP1Script_4366 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP1Script?
d_isP1Script'63'_4368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP1Script'63'_4368 ~v0 = du_isP1Script'63'_4368
du_isP1Script'63'_4368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP1Script'63'_4368 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP1Script'63'_410
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script
d_isP2Script_4370 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isP2Script_4370 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.isP2Script?
d_isP2Script'63'_4372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isP2Script'63'_4372 ~v0 = du_isP2Script'63'_4372
du_isP2Script'63'_4372 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isP2Script'63'_4372 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_isP2Script'63'_424
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.language
d_language_4374 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> AgdaAny
d_language_4374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_language_276
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.languageCostModels
d_languageCostModels_4376 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.p1s
d_p1s_4380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_P1ScriptStructure_104
d_p1s_4380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_p1s_306
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.ps
d_ps_4382 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_PlutusStructure_128
d_ps_4382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP1Script
d_toP1Script_4384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP1Script_4384 ~v0 = du_toP1Script_4384
du_toP1Script_4384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP1Script_4384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP1Script_418
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.toP2Script
d_toP2Script_4386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
d_toP2Script_4386 ~v0 = du_toP2Script_4386
du_toP2Script_4386 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe AgdaAny
du_toP2Script_4386 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.du_toP2Script_430
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validP1Script
d_validP1Script_4388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_4388 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.validPlutusScript
d_validPlutusScript_4390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_4390 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.≥ᵉ-Dec
d_'8805''7497''45'Dec_4392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_ScriptStructure_280 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_'8805''7497''45'Dec_4392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_'8805''7497''45'Dec_240
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_ps_328
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.ScriptStructure.LanguageCostModels.languageCostModels
d_languageCostModels_4396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Script.Base.T_LanguageCostModels_436 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_languageCostModels_4396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Script.Base.d_languageCostModels_440
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._∙_
d__'8729'__4400 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__4400 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≈_
d__'8776'__4402 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__4402 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra._≤ᵗ_
d__'8804''7511'__4404 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__4404 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_4406 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_4406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Dec'45''8804''7511'_230
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_4408 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_4408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_DecEq'45'Value_228
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_4410 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_4414 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_4418 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value
d_Value_4422 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  ()
d_Value_4422 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_4424 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_4424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.addValue
d_addValue_4426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
d_addValue_4426 ~v0 = du_addValue_4426
du_addValue_4426 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_10
du_addValue_4426
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_addValue_232
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin
d_coin_4428 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_coin_4428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coin_214
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_4430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_4430 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_4432 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_coinIsMonoidHomomorphism_4432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_coinIsMonoidHomomorphism_226
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.coin∘inject≗id
d_coin'8728'inject'8791'id_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'8728'inject'8791'id_4434 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.inject
d_inject_4436 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  Integer -> AgdaAny
d_inject_4436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_inject_216
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.monoid
d_monoid_4438 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_914
d_monoid_4438 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1066
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_46
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.policies
d_policies_4440 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> [AgdaAny]
d_policies_4440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_policies_218
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.rawMonoid
d_rawMonoid_4442 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_74
d_rawMonoid_4442 v0
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
d_size_4444 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny -> Integer
d_size_4444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_size_220
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.sumᵛ
d_sum'7515'_4446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_4446 ~v0 = du_sum'7515'_4446
du_sum'7515'_4446 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  [AgdaAny] -> AgdaAny
du_sum'7515'_4446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.du_sum'7515'_250
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.ε
d_ε_4448 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  AgdaAny
d_ε_4448 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.d_Value'45'CommutativeMonoid_126
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_4452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4452 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_4456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4456 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_4458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4458 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_4460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4460 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_4464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4464 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_4466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_4470 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
d_isMagmaIsomorphism_4470 ~v0 = du_isMagmaIsomorphism_4470
du_isMagmaIsomorphism_4470 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_240
du_isMagmaIsomorphism_4470 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4472 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4472 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_4472 v2
du_isMagmaMonomorphism_4472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_4476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404
d_isMonoidMonomorphism_4476 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_446
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_4478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4478 v0
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
d_isRelIsomorphism_4480 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
d_isRelIsomorphism_4480 ~v0 ~v1 v2 = du_isRelIsomorphism_4480 v2
du_isRelIsomorphism_4480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_98
du_isRelIsomorphism_4480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_470
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_4482 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4482 ~v0 ~v1 v2 = du_isRelMonomorphism_4482 v2
du_isRelMonomorphism_4482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4482 v0
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
d_surjective_4484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_4484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_448 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_4486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4486 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_4488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_438 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4488 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_4492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_4492 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_4494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_4494 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_414 (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_4496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_194
d_isMagmaHomomorphism_4496 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_4498 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
d_isMagmaMonomorphism_4498 ~v0 = du_isMagmaMonomorphism_4498
du_isMagmaMonomorphism_4498 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_214
du_isMagmaMonomorphism_4498 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_4500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_380
d_isMonoidHomomorphism_4500 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_4502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_4502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_202
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_388
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_4504 ::
  MAlonzo.Code.Ledger.Conway.Specification.TokenAlgebra.Base.T_TokenAlgebra_14 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
d_isRelMonomorphism_4504 ~v0 ~v1 v2 = du_isRelMonomorphism_4504 v2
du_isRelMonomorphism_4504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_66
du_isRelMonomorphism_4504 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_234
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_428
         (coe v0))
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_4506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_4506 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_4508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_4508 = erased
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.body
d_body_4512 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414
d_body_4512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3606
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.isValid
d_isValid_4514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Bool
d_isValid_4514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3612
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txAD
d_txAD_4516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Maybe AgdaAny
d_txAD_4516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3614
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.txsize
d_txsize_4518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  Integer
d_txsize_4518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3610
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.Tx.wits
d_wits_4520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3594 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572
d_wits_4520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3608
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.collateralInputs
d_collateralInputs_4524 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateralInputs_4524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_collateralInputs_3456
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.currentTreasury
d_currentTreasury_4526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe Integer
d_currentTreasury_4526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_currentTreasury_3480
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.mint
d_mint_4528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  AgdaAny
d_mint_4528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_mint_3482
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.refInputs
d_refInputs_4530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_4530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_refInputs_3454
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.reqSignerHashes
d_reqSignerHashes_4532 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [AgdaAny]
d_reqSignerHashes_4532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_reqSignerHashes_3484
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.scriptIntegrityHash
d_scriptIntegrityHash_4534 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe AgdaAny
d_scriptIntegrityHash_4534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scriptIntegrityHash_3486
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txADhash
d_txADhash_4536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe AgdaAny
d_txADhash_4536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txADhash_3470
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txCerts
d_txCerts_4538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1338]
d_txCerts_4538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3462
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txDonation
d_txDonation_4540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txDonation_4540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txDonation_3472
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txFee
d_txFee_4542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Integer
d_txFee_4542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txFee_3464
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovProposals
d_txGovProposals_4544 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_1086]
d_txGovProposals_4544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3476
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txGovVotes
d_txGovVotes_4546 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_1006]
d_txGovVotes_4546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3474
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txId
d_txId_4548 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  AgdaAny
d_txId_4548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3460
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txIns
d_txIns_4550 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txIns_4550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txIns_3452
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txNetworkId
d_txNetworkId_4552 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  Maybe AgdaAny
d_txNetworkId_4552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txNetworkId_3478
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txOuts
d_txOuts_4554 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOuts_4554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txOuts_3458
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txVldt
d_txVldt_4556 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txVldt_4556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txVldt_3468
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxBody.txWithdrawals
d_txWithdrawals_4558 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3414 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_4558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3466
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scripts
d_scripts_4562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_4562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_scripts_3584
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.scriptsP1
d_scriptsP1_4564 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [AgdaAny]
d_scriptsP1_4564 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.du_scriptsP1_3590
      v1
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txdats
d_txdats_4566 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  [AgdaAny]
d_txdats_4566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txdats_3586
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.txrdmrs
d_txrdmrs_4568 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_4568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txrdmrs_3588
      (coe v0)
-- Ledger.Conway.Foreign.HSStructures._.TransactionStructure.TxWitnesses.vkSigs
d_vkSigs_4570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3572 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_4570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_vkSigs_3582
      (coe v0)
